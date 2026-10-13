import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:feeef/ai/cloud_ai.dart';
import 'package:test/test.dart';

CloudAiModel imageModel() => CloudAiModel.fromJson({
  'id': 'openai/gpt-image-2.5-sunburst',
  'owned_by': 'openai',
  'endpoints': ['images/generations', 'images/edits'],
  'pricing': {'valid_until': '2099-01-01T00:00:00Z'},
  'feeef_image': {
    'nativeGoogle': false,
    'aspectRatios': [],
    'sizes': ['auto', '1024x1024', '864x3072'],
    'imageSizes': [],
    'quality': ['auto', 'high', 'xhigh'],
    'background': ['auto', 'opaque', 'transparent'],
    'outputFormats': ['png', 'jpeg', 'webp'],
    'outputCompressionMax': 100,
    'customDimensions': {
      'multipleOf': 16,
      'maxEdge': 3840,
      'minPixels': 655360,
      'maxPixels': 8294400,
      'maxAspectRatio': 32 / 9,
    },
    'references': {
      'maxImages': 16,
      'maxTotalBytes': 19 * 1024 * 1024,
      'formats': ['image/png', 'image/jpeg', 'image/webp'],
      'masks': true,
    },
  },
});

class FixtureAdapter implements HttpClientAdapter {
  final List<RequestOptions> calls = [];
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    calls.add(options);
    return ResponseBody.fromString(
      jsonEncode({
        'id': 'job',
        'status': 'queued',
        'billing': {'settled': false, 'chargedMicros': null, 'chargeDzd': null},
      }),
      202,
      headers: {
        'content-type': ['application/json'],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

void main() {
  test('expired local snapshots can only reach the explicit original-request recovery path', () async {
    final expired = CloudAiModel.fromJson({
      ...imageModel().raw,
      'pricing': {'valid_until': '2000-01-01T00:00:00Z'},
    });
    final dio = Dio(BaseOptions(baseUrl: 'https://feeef.test/v1'));
    final adapter = FixtureAdapter();
    dio.httpClientAdapter = adapter;
    final api = CloudAiApi(client: dio);
    await expectLater(
      api.generateImage(
        model: expired,
        prompt: 'original',
        settings: {},
        idempotencyKey: 'persisted-key',
      ),
      throwsArgumentError,
    );
    expect(adapter.calls, isEmpty);
    await api.generateImage(
      model: expired,
      prompt: 'original',
      settings: {},
      idempotencyKey: 'persisted-key',
      recoverOriginal: true,
    );
    expect(adapter.calls.single.headers['Idempotency-Key'], 'persisted-key');
    expect(adapter.calls.single.path, '/ai/images');
    await expectLater(
      api.submit(endpoint: 'responses', body: {}, idempotencyKey: ''),
      throwsArgumentError,
    );
    expect(adapter.calls, hasLength(1));
  });
  test('advertised pixel presets still obey reviewed bounds', () {
    final model = CloudAiModel.fromJson({
      ...imageModel().raw,
      'feeef_image': {
        ...imageModel().image!.raw,
        'sizes': ['512x4096'],
      },
    });
    expect(
      () => model.image!.validate({'size': '512x4096'}),
      throwsArgumentError,
    );
  });

  test('9:32 dimensions are selectable only when advertised or inside reviewed custom bounds', () {
    final caps = imageModel().image!;
    expect(
      () => caps.validate({
        'size': '864x3072',
        'quality': 'xhigh',
        'outputFormat': 'webp',
        'background': 'transparent',
      }),
      returnsNormally,
    );
    for (final settings in [
      {'size': '512x4096'},
      {'size': '900x3200'},
      {'aspectRatio': '9:32'},
      {'quality': 'max'},
      {'background': 'transparent', 'outputFormat': 'jpeg'},
      {'outputCompression': 90, 'outputFormat': 'png'},
    ])
      expect(() => caps.validate(settings), throwsArgumentError);
    expect(() => caps.validate({}, references: 17), throwsArgumentError);
    expect(
      () => caps.validate({}, bytes: 20 * 1024 * 1024),
      throwsArgumentError,
    );
  });
  test('future optional metadata is retained while missing capabilities expose no controls', () {
    final model = CloudAiModel.fromJson({
      'id': 'provider/model',
      'future_metadata': {'x': true},
    });
    expect(model.image, isNull);
    expect(model.available, isFalse);
    expect(model.raw['future_metadata'], {'x': true});
  });
  test('DZD and Cloud micro-dollar charges remain strings and pending billing remains pending', () {
    final request = CloudAiRequest.fromJson({
      'id': 'job',
      'status': 'reconciliation_required',
      'billing': {'settled': false, 'chargedMicros': null, 'chargeDzd': null},
    });
    expect(request.settled, isFalse);
    expect(request.chargeDzd, isNull);
    final settled = CloudAiRequest.fromJson({
      'id': 'job',
      'status': 'succeeded',
      'billing': {
        'settled': true,
        'chargedMicros': '6325',
        'chargeDzd': '4.112',
      },
    });
    expect(settled.chargeDzd, '4.112');
    expect(settled.chargedMicros, '6325');
  });
  test(
    'client retries use the caller key and never include Cloud credentials',
    () async {
      final dio = Dio(
        BaseOptions(
          baseUrl: 'https://feeef.test/api/v1',
          headers: {'Authorization': 'Bearer feeef-account'},
        ),
      );
      final adapter = FixtureAdapter();
      dio.httpClientAdapter = adapter;
      final api = CloudAiApi(client: dio);
      for (var i = 0; i < 2; i++)
        await api.submit(
          endpoint: 'images/generations',
          body: {'model': 'provider/model', 'prompt': ''},
          idempotencyKey: 'frozen-key',
        );
      expect(
        adapter.calls.map((c) => c.headers['Idempotency-Key']),
        everyElement('frozen-key'),
      );
      expect(adapter.calls.map((c) => c.path), everyElement('/ai/requests'));
      expect(adapter.calls.first.data['body']['prompt'], '');
      expect(
        adapter.calls.first.headers['Authorization'],
        'Bearer feeef-account',
      );
    },
  );
}
