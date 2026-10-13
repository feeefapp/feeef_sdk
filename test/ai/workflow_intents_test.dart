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
        first.post('/actions/generateSimpleCode', data: {'text': 'hello'}),
        throwsA(isA<DioException>()),
      );
      expect(adapter.calls, hasLength(1));
      final key = adapter.calls.single.headers['Idempotency-Key'];
      adapter.fail = false;
      final restarted = client(storage, adapter);
      await restarted.post(
        '/actions/generateSimpleCode',
        data: {'text': 'hello'},
      );
      expect(adapter.calls.last.headers['Idempotency-Key'], key);
      await restarted.post(
        '/actions/generateSimpleCode',
        data: {'text': 'hello'},
      );
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
      await dio.post('/image_generations/generate', data: {'prompt': 'one'});
      final key = adapter.calls.last.headers['Idempotency-Key'];
      await client(
        storage,
        adapter,
      ).post('/image_generations/generate', data: {'prompt': 'one'});
      expect(adapter.calls.last.headers['Idempotency-Key'], key);
      adapter.response = {'id': 'image', 'status': 'completed'};
      await dio.get('/image_generations/image');
      adapter.response = {'id': 'next', 'status': 'pending'};
      await dio.post('/image_generations/generate', data: {'prompt': 'one'});
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
          ).post('/actions/generateSimpleCode', data: {'text': text}),
          throwsA(isA<DioException>()),
        );
      }
      expect(
        adapter.calls.map((r) => r.headers['Idempotency-Key']).toSet(),
        hasLength(3),
      );
    },
  );
}
