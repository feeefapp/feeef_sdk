import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:feeef/ai/workflow_intents.dart';
import 'package:feeef/core/feeef_storage.dart';
import 'package:test/test.dart';

class MemoryStorage extends FeeefStorage {
  final values = <String, String>{};
  @override
  Future<String?> get(String key) async => values[key];
  @override
  Future<void> set(String key, String value) async {
    values[key] = value;
  }

  @override
  Future<void> remove(String key) async {
    values.remove(key);
  }
}

class Adapter implements HttpClientAdapter {
  final calls = <RequestOptions>[];
  bool fail = true;
  dynamic response = {'success': true};
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? body,
    Future<void>? cancelFuture,
  ) async {
    calls.add(options);
    if (fail)
      throw DioException(
        requestOptions: options,
        type: DioExceptionType.connectionError,
      );
    return ResponseBody.fromString(
      jsonEncode(response),
      200,
      headers: {
        'content-type': ['application/json'],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

Dio client(MemoryStorage storage, Adapter adapter, [String account = 'payer']) {
  final dio = Dio(BaseOptions(baseUrl: 'https://feeef.test/v1'));
  dio.httpClientAdapter = adapter;
  dio.interceptors.add(
    CloudAiWorkflowIntents(storage: storage, accountId: () => account),
  );
  return dio;
}

void main() {
  test(
    'lost responses survive restart without a paid retry or replacement key',
    () async {
      final storage = MemoryStorage();
      final adapter = Adapter();
      final first = client(storage, adapter);
      await expectLater(
        first.post('/ai/code/snippet', data: {'text': 'hello'}),
        throwsA(isA<DioException>()),
      );
      expect(adapter.calls, hasLength(1));
      final key = adapter.calls.single.headers['Idempotency-Key'];
      adapter.fail = false;
      final restarted = client(storage, adapter);
      await restarted.post('/ai/code/snippet', data: {'text': 'hello'});
      expect(adapter.calls.last.headers['Idempotency-Key'], key);
      await restarted.post('/ai/code/snippet', data: {'text': 'hello'});
      expect(adapter.calls.last.headers['Idempotency-Key'], isNot(key));
    },
  );
  test(
    'async acknowledgements retain identity until completion is observed',
    () async {
      final storage = MemoryStorage();
      final adapter = Adapter()..fail = false;
      adapter.response = {'id': 'image', 'status': 'processing'};
      final dio = client(storage, adapter);
      await dio.post('/ai/image-generations', data: {'prompt': 'one'});
      final key = adapter.calls.last.headers['Idempotency-Key'];
      await client(
        storage,
        adapter,
      ).post('/ai/image-generations', data: {'prompt': 'one'});
      expect(adapter.calls.last.headers['Idempotency-Key'], key);
      adapter.response = {'id': 'image', 'status': 'completed'};
      await dio.get('/ai/image-generations/image');
      adapter.response = {'id': 'next', 'status': 'pending'};
      await dio.post('/ai/image-generations', data: {'prompt': 'one'});
      expect(adapter.calls.last.headers['Idempotency-Key'], isNot(key));
    },
  );
  test(
    'different accounts and different prompts cannot reuse an unknown key',
    () async {
      final storage = MemoryStorage();
      final adapter = Adapter();
      for (final (account, text) in [
        ('one', 'hello'),
        ('two', 'hello'),
        ('one', 'different'),
      ]) {
        await expectLater(
          client(
            storage,
            adapter,
            account,
          ).post('/ai/code/snippet', data: {'text': text}),
          throwsA(isA<DioException>()),
        );
      }
      expect(adapter.calls, hasLength(2));
      expect(
        adapter.calls.map((r) => r.headers['Idempotency-Key']).toSet(),
        hasLength(2),
      );
    },
  );

  test(
    'a finished failure releases the route for a different request',
    () async {
      final storage = MemoryStorage();
      final adapter = Adapter()
        ..fail = false
        ..response = {
          'success': false,
          'error': 'Cloud AI could not be reached. Recover the original request; do not start replacement work.',
        };
      final dio = client(storage, adapter);
      await dio.post(
        '/ai/image-landing-pages',
        data: {'text': 'one', 'aspectRatio': '9:32'},
      );
      await dio.post(
        '/ai/image-landing-pages',
        data: {'text': 'two', 'aspectRatio': '1:1'},
      );
      expect(adapter.calls, hasLength(2));
    },
  );

  test('a rejected request releases the route', () async {
    final storage = MemoryStorage();
    final adapter = Adapter()..fail = false;
    adapter.response = {
      'error': {'code': 'invalid_request', 'message': 'aspect ratio rejected'},
    };
    final dio = client(storage, adapter);
    final rejected = Adapter()
      ..fail = false
      ..response = adapter.response;
    dio.httpClientAdapter = _StatusAdapter(400, adapter.response);
    await expectLater(
      dio.post('/ai/image-landing-pages', data: {'text': 'one'}),
      throwsA(isA<DioException>()),
    );
    dio.httpClientAdapter = rejected;
    await dio.post('/ai/image-landing-pages', data: {'text': 'two'});
    expect(rejected.calls, hasLength(1));
  });

  test('streamed responses pass through untouched', () async {
    final storage = MemoryStorage();
    final dio = client(storage, Adapter()..fail = false);
    dio.httpClientAdapter = _StreamAdapter();
    for (final send in [
      () => dio.post<ResponseBody>(
        '/ai/agents/template/conversations/cnv_1/messages',
        data: {'text': 'hi'},
        options: Options(responseType: ResponseType.stream),
      ),
      () => dio.get<ResponseBody>(
        '/ai/agents/template/conversations/cnv_1/runs/run_1/events',
        options: Options(responseType: ResponseType.stream),
      ),
    ]) {
      final response = await send();
      final text = await utf8.decodeStream(response.data!.stream);
      expect(text, 'data: {"type":"start"}\n\n');
    }
    expect(storage.values, isEmpty);
  });
}

class _StatusAdapter extends Adapter {
  _StatusAdapter(this.status, this.payload);
  final int status;
  final dynamic payload;
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? body,
    Future<void>? cancelFuture,
  ) async {
    calls.add(options);
    return ResponseBody.fromString(
      jsonEncode(payload),
      status,
      headers: {
        'content-type': ['application/json'],
      },
    );
  }
}

class _StreamAdapter extends Adapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? body,
    Future<void>? cancelFuture,
  ) async {
    calls.add(options);
    return ResponseBody(
      Stream.value(utf8.encode('data: {"type":"start"}\n\n')),
      200,
      headers: {
        'content-type': ['text/event-stream'],
      },
    );
  }
}
