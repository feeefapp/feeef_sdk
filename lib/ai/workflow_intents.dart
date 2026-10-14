import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:cuid2/cuid2.dart';
import 'package:dio/dio.dart';

import '../core/feeef_storage.dart';

/// Persist intent keys before sending paid AI workflow requests. Unknown outcomes retain
/// their key across application restarts. The server owns all paid-step retries.
class CloudAiWorkflowIntents extends QueuedInterceptor {
  CloudAiWorkflowIntents({required this.storage, required this.accountId});
  final FeeefStorage storage;
  final String? Function() accountId;
  /// Paid `/ai/*` POSTs that run as durable Cloud workflows (mirror of the
  /// backend `workflow_routes.ts`).
  static final _paths = [
    RegExp(r'^text/(product-draft|shipping-price-draft|order-draft|list-filter|date-preset|custom-fields-draft)$'),
    RegExp(r'^code/(snippet|custom-component|template-page-edit|landing-page-template-data)$'),
    RegExp(r'^landing-pages$'),
    RegExp(r'^images/sync$'),
    RegExp(r'^image-generations(?:/[^/]+/regenerate)?$'),
    RegExp(r'^image-landing-pages$'),
    RegExp(r'^voiceovers$'),
    RegExp(r'^(brand|post|ui)-assets$'),
  ];
  static bool applies(RequestOptions options) {
    if (options.method.toUpperCase() != 'POST') return false;
    final match = RegExp(r'/ai/(.+)$').firstMatch(options.uri.path);
    return match != null && _paths.any((p) => p.hasMatch(match.group(1)!));
  }

  static dynamic canonical(dynamic value) {
    if (value is Map) {
      final keys = value.keys.map((k) => k.toString()).toList()..sort();
      return {for (final k in keys) k: canonical(value[k])};
    }
    if (value is List) return value.map(canonical).toList();
    return value;
  }

  static Future<dynamic> intentBody(dynamic body) async {
    if (body is! FormData) return canonical(body);
    final files = <dynamic>[];
    for (final entry in body.files) {
      final file = entry.value;
      if (file.length > 19 * 1024 * 1024)
        throw StateError('AI upload exceeds byte limit');
      final digest = await sha256.bind(file.clone().finalize()).first;
      files.add([
        entry.key,
        file.filename,
        file.contentType?.toString(),
        digest.toString(),
      ]);
    }
    return {
      'fields': body.fields.map((e) => [e.key, e.value]).toList(),
      'files': files,
    };
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      if (!applies(options) ||
          options.headers.keys.any(
            (k) => k.toLowerCase() == 'idempotency-key',
          )) {
        handler.next(options);
        return;
      }
      final account = accountId();
      if (account == null)
        throw StateError('Sign in before starting AI generation');
      final digest = sha256
          .convert(
            utf8.encode(
              jsonEncode([
                options.baseUrl,
                account,
                options.uri.path,
                await intentBody(options.data),
              ]),
            ),
          )
          .toString();
      final slot = 'feeef.ai.workflow.$digest';
      final route = sha256
          .convert(
            utf8.encode(
              jsonEncode([options.baseUrl, account, options.uri.path]),
            ),
          )
          .toString();
      final active = 'feeef.ai.unresolved.$route';
      final prior = await storage.get(active);
      if (prior != null && prior != digest) {
        throw StateError(
          'An earlier AI request is unresolved. Retry it with its original input before starting replacement work.',
        );
      }
      final key = await storage.get(slot) ?? 'workflow-${cuid()}';
      await storage.set(slot, key);
      await storage.set(active, digest);
      options.headers['Idempotency-Key'] = key;
      options.extra['feeefAiIntentSlot'] = slot;
      options.extra['feeefAiIntentKey'] = key;
      options.extra['feeefAiActiveSlot'] = active;
      options.extra['feeefAiFingerprint'] = digest;
      handler.next(options);
    } catch (error) {
      handler.reject(DioException(requestOptions: options, error: error));
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    final slot = response.requestOptions.extra['feeefAiIntentSlot'];
    final key = response.requestOptions.extra['feeefAiIntentKey'];
    final active = response.requestOptions.extra['feeefAiActiveSlot'];
    final digest = response.requestOptions.extra['feeefAiFingerprint'];
    final body = jsonEncode(response.data);
    final data = response.data is Map ? response.data as Map : const {};
    final status =
        data['status'] ??
        (data['metadata'] is Map ? data['metadata']['status'] : null);
    final jobId = data['jobId'] ?? data['jobIdx'] ?? data['id'];
    final pending =
        ['pending', 'processing', 'queued'].contains(status) ||
        data['jobId'] != null ||
        data['jobIdx'] != null;
    if (slot is String && key is String && pending && jobId is String) {
      await storage.set(
        'feeef.ai.result.${accountId()}.$jobId',
        jsonEncode({'slot': slot, 'key': key}),
      );
    }
    if (slot is String &&
        !pending &&
        !body.contains('reconcil') &&
        !body.contains('original request') &&
        !body.contains('ai_workflow_pending') &&
        await storage.get(slot) == key) {
      await storage.remove(slot);
    }
    if (response.requestOptions.method == 'GET') {
      final id =
          data['id'] ??
          response.requestOptions.queryParameters['jobId'] ??
          response.requestOptions.queryParameters['jobIdx'];
      final config = data['configs'] is Map ? data['configs'] as Map : const {};
      final terminal =
          ['completed', 'published'].contains(status) ||
          (status == 'failed' && config['cloudWorkflowStatus'] == 'failed');
      if (id is String && terminal) {
        final resultSlot = 'feeef.ai.result.${accountId()}.$id';
        final saved = await storage.get(resultSlot);
        if (saved != null) {
          final intent = jsonDecode(saved) as Map;
          if (await storage.get(intent['slot']) == intent['key'])
            await storage.remove(intent['slot']);
          await storage.remove(resultSlot);
        }
      }
    }
    if (active is String &&
        !body.contains('reconcil') &&
        !body.contains('original request') &&
        await storage.get(active) == digest)
      await storage.remove(active);
    handler.next(response);
  }
}
