import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:dio/dio.dart';

/// A failed Lab call. Mirrors the web Lab errors (`ImageApiError`, `ChatApiError`, …):
/// [status] 0 = offline, [code] is the stable server code (`upgrade_required`,
/// `login_required`, `session_expired`, `daily_limit`, …), [message] is already localized.
class LabError implements Exception {
  LabError(this.message, this.status, this.code, [this.data]);

  final String message;
  final int status;
  final String code;

  /// Raw response body (e.g. `current` on `agent_revision_conflict`, limit details).
  final Object? data;

  /// A gate or limit surface already presented this failure; callers must not toast it too.
  bool handled = false;

  bool get offline => status == 0;

  @override
  String toString() => 'LabError($status, $code): $message';

  /// Lab wraps its own errors as `{message, code}`; Cloud-backed ones arrive as
  /// `{error:{message, code}}`.
  static LabError fromBody(int status, Object? body) {
    final map = body is Map ? body : const {};
    final nested = map['error'] is Map ? map['error'] as Map : const {};
    String? str(Object? v) => v is String && v.isNotEmpty ? v : null;
    return LabError(
      str(nested['message']) ?? str(map['message']) ?? '',
      status,
      str(nested['code']) ?? str(map['code']) ?? 'request_failed',
      body,
    );
  }
}

/// Same shape as the web `labRequestId()`: a fresh idempotency key per intent.
String labRequestId() {
  final r = Random.secure();
  final bytes = List<int>.generate(16, (_) => r.nextInt(256));
  bytes[6] = (bytes[6] & 0x0f) | 0x40;
  bytes[8] = (bytes[8] & 0x3f) | 0x80;
  String hex(int from, int to) =>
      bytes.sublist(from, to).map((b) => b.toRadixString(16).padLeft(2, '0')).join();
  return '${hex(0, 4)}-${hex(4, 6)}-${hex(6, 8)}-${hex(8, 10)}-${hex(10, 16)}';
}

/// Lab effects hooks shared by every area client (same as the web `effects` arg).
class LabEffects {
  /// `upgrade_required`: open the Pro dialog. The error is marked handled.
  void Function(LabError error)? onUpgrade;

  /// Allowance, wallet and library limits. Return true when a limit notice took the failure.
  bool Function(LabError error)? onLimit;
}

/// One SSE frame: `id:` (sequence number, may be null) and joined `data:` lines.
class LabSseFrame {
  const LabSseFrame(this.id, this.data);
  final int? id;
  final String data;
}

/// Splits an SSE byte stream into frames (same parser as the web `readChunks`).
Stream<LabSseFrame> labSseFrames(Stream<Uint8List> bytes) async* {
  var buffer = '';
  await for (final chunk in bytes.cast<List<int>>().transform(utf8.decoder)) {
    buffer = (buffer + chunk).replaceAll('\r\n', '\n');
    int end;
    while ((end = buffer.indexOf('\n\n')) != -1) {
      final frame = buffer.substring(0, end);
      buffer = buffer.substring(end + 2);
      int? id;
      final data = <String>[];
      for (final line in frame.split('\n')) {
        if (line.startsWith('id:')) {
          id = int.tryParse(line.substring(3).trim());
        } else if (line.startsWith('data:')) {
          data.add(line.substring(5).trimLeft());
        }
      }
      final payload = data.join('\n');
      if (payload.isEmpty) continue;
      yield LabSseFrame(id, payload);
    }
  }
}

/// Shared HTTP core for every Lab area. All paths are relative to `/api/v1/lab`, so the
/// merchant app hits the exact controllers the web Lab uses (bearer auth, no CSRF).
class LabHttp {
  LabHttp(this.client, {LabEffects? effects}) : effects = effects ?? LabEffects();

  final Dio client;
  final LabEffects effects;

  static const prefix = '/lab';

  String url(String path) => '$prefix/$path';

  /// Absolute URL for `<img>`/audio players (they need the bearer header too, see [headers]).
  String absolute(String path) => '${client.options.baseUrl}${url(path)}';

  /// Headers a raw player/downloader must send for authenticated Lab files.
  Map<String, String> get headers {
    final out = <String, String>{};
    client.options.headers.forEach((k, v) {
      if (v is String) out[k] = v;
    });
    return out;
  }

  Future<T> json<T>(
    String path, {
    String? method,
    Object? body,
    Map<String, dynamic>? query,
    String? key,
    CancelToken? cancel,
    void Function(int, int)? onSendProgress,
  }) async {
    final verb = method ?? (body == null ? 'GET' : 'POST');
    Response<dynamic> response;
    try {
      response = await client.request<dynamic>(
        url(path),
        data: body ?? (verb == 'GET' ? null : const <String, dynamic>{}),
        queryParameters: query == null ? null : _clean(query),
        cancelToken: cancel,
        onSendProgress: onSendProgress,
        options: Options(
          method: verb,
          headers: {
            'Accept': 'application/json',
            'Idempotency-Key': ?key,
          },
          validateStatus: (_) => true,
        ),
      );
    } on DioException catch (e) {
      if (CancelToken.isCancel(e)) rethrow;
      throw LabError('', 0, 'offline');
    }
    final status = response.statusCode ?? 0;
    var data = response.data;
    if (data is String && data.isNotEmpty) {
      try {
        data = jsonDecode(data);
      } catch (_) {/* proxy error page */}
    }
    if (status < 200 || status >= 300) throw _effects(LabError.fromBody(status, data));
    return data as T;
  }

  /// Raw bytes (audio, images, exports).
  Future<Uint8List> bytes(String path, {Map<String, dynamic>? query, CancelToken? cancel}) async {
    try {
      final r = await client.get<List<int>>(
        url(path),
        queryParameters: query == null ? null : _clean(query),
        cancelToken: cancel,
        options: Options(responseType: ResponseType.bytes, validateStatus: (_) => true),
      );
      final status = r.statusCode ?? 0;
      if (status < 200 || status >= 300) {
        Object? body;
        try {
          body = jsonDecode(utf8.decode(r.data ?? const []));
        } catch (_) {}
        throw _effects(LabError.fromBody(status, body));
      }
      return Uint8List.fromList(r.data ?? const []);
    } on DioException catch (e) {
      if (CancelToken.isCancel(e)) rethrow;
      throw LabError('', 0, 'offline');
    }
  }

  /// An SSE response (chat turns and run events).
  Future<Stream<LabSseFrame>> sse(
    String path, {
    String method = 'GET',
    Object? body,
    Map<String, String>? headers,
    String? key,
    CancelToken? cancel,
  }) async {
    Response<ResponseBody> r;
    try {
      r = await client.request<ResponseBody>(
        url(path),
        data: body,
        cancelToken: cancel,
        options: Options(
          method: method,
          responseType: ResponseType.stream,
          validateStatus: (_) => true,
          headers: {
            'Accept': 'text/event-stream',
            'Idempotency-Key': ?key,
            ...?headers,
          },
        ),
      );
    } on DioException catch (e) {
      if (CancelToken.isCancel(e)) rethrow;
      throw LabError('', 0, 'offline');
    }
    final status = r.statusCode ?? 0;
    if (status < 200 || status >= 300) {
      final text = await r.data!.stream.cast<List<int>>().transform(utf8.decoder).join();
      Object? parsed;
      try {
        parsed = jsonDecode(text);
      } catch (_) {}
      throw _effects(LabError.fromBody(status, parsed));
    }
    return labSseFrames(r.data!.stream);
  }

  LabError _effects(LabError error) {
    if (error.code == 'upgrade_required' && effects.onUpgrade != null) {
      effects.onUpgrade!(error);
      error.handled = true;
    } else if (effects.onLimit?.call(error) ?? false) {
      error.handled = true;
    }
    return error;
  }

  static Map<String, dynamic> _clean(Map<String, dynamic> q) => {
    for (final e in q.entries)
      if (e.value != null && e.value != '') e.key: e.value,
  };
}

typedef LabJson = Map<String, dynamic>;

Map<String, dynamic> labMap(Object? v) =>
    v is Map ? v.cast<String, dynamic>() : <String, dynamic>{};

List<Map<String, dynamic>> labList(Object? v) =>
    v is List ? v.whereType<Map>().map((m) => m.cast<String, dynamic>()).toList() : const [];
