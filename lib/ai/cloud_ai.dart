import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:feeef/attachments/attachment.dart';

Map<String, dynamic> _map(dynamic value) =>
    value is Map ? Map<String, dynamic>.from(value) : {};
List<String> _strings(dynamic value) =>
    value is List ? value.whereType<String>().toList(growable: false) : [];

/// Cloud is authoritative. Unknown metadata is retained; absent options grant no capabilities.
class CloudAiModel {
  CloudAiModel.fromJson(Map<String, dynamic> json)
    : raw = Map.unmodifiable(json);
  final Map<String, dynamic> raw;
  String get id => raw['id'] as String;
  String get name =>
      _map(raw['display'])['name'] as String? ?? raw['name'] as String? ?? id;
  String get provider => raw['owned_by'] as String? ?? id.split('/').first;
  String get canonicalModel => raw['canonical_model'] as String? ?? id;
  List<String> get endpoints => _strings(raw['endpoints']);
  Map<String, dynamic> get capabilities => _map(raw['capabilities']);
  Map<String, dynamic> get constraints => _map(raw['request_constraints']);
  CloudImageCapabilities? get image => raw['feeef_image'] is Map
      ? CloudImageCapabilities(_map(raw['feeef_image']))
      : null;
  bool get available {
    final expiry = DateTime.tryParse(
      _map(raw['pricing'])['valid_until'] as String? ?? '',
    );
    return expiry != null && expiry.isAfter(DateTime.now().toUtc());
  }
}

class CloudImageCapabilities {
  CloudImageCapabilities(this.raw);
  final Map<String, dynamic> raw;
  List<String> choices(String key) => _strings(raw[key]);
  bool get nativeGoogle => raw['nativeGoogle'] == true;
  int get maxReferences =>
      (_map(raw['references'])['maxImages'] as num?)?.toInt() ?? 0;
  int get maxReferenceBytes =>
      (_map(raw['references'])['maxTotalBytes'] as num?)?.toInt() ?? 0;
  List<String> get referenceFormats =>
      _strings(_map(raw['references'])['formats']);
  bool get masks => _map(raw['references'])['masks'] == true;
  int? get compressionMaximum => (raw['outputCompressionMax'] as num?)?.toInt();
  Map<String, dynamic> get dimensions => _map(raw['customDimensions']);
  Map<String, dynamic> defaults() {
    final options = <String, dynamic>{
      for (final entry in {
        'aspectRatio': 'aspectRatios',
        'size': 'sizes',
        'imageSize': 'imageSizes',
        'quality': 'quality',
        'background': 'background',
        'outputFormat': 'outputFormats',
      }.entries)
        if (choices(entry.value).isNotEmpty)
          entry.key: choices(entry.value).first,
    };
    if (options['background'] == 'transparent' &&
        options['outputFormat'] == 'jpeg') {
      final compatible = choices('outputFormats')
          .where((v) => ['png', 'webp'].contains(v));
      if (compatible.isNotEmpty) {
        options['outputFormat'] = compatible.first;
      } else {
        options.remove('background');
      }
    }
    return options;
  }

  void validate(
    Map<String, dynamic> options, {
    int references = 0,
    int bytes = 0,
    bool hasMask = false,
  }) {
    const fields = {
      'aspectRatio': 'aspectRatios',
      'size': 'sizes',
      'imageSize': 'imageSizes',
      'quality': 'quality',
      'background': 'background',
      'outputFormat': 'outputFormats',
    };
    for (final entry in options.entries) {
      if (entry.key == 'outputCompression') {
        final value = entry.value;
        if (value is! int ||
            compressionMaximum == null ||
            value < 0 ||
            value > compressionMaximum! ||
            !['jpeg', 'webp'].contains(options['outputFormat'])) {
          throw ArgumentError('Compression needs JPEG or WebP output');
        }
        continue;
      }
      final field = fields[entry.key];
      if (field == null) {
        throw ArgumentError('Unsupported image setting: ${entry.key}');
      }
      final advertised = choices(field).contains(entry.value);
      final pixelSize =
          entry.key == 'size' &&
          entry.value is String &&
          RegExp(r'^([1-9]\d*)x([1-9]\d*)$').hasMatch(entry.value as String);
      if (advertised && !(pixelSize && dimensions.isNotEmpty)) continue;
      if (entry.key == 'size' &&
          entry.value is String &&
          dimensions.isNotEmpty) {
        final match = RegExp(r'^([1-9]\d*)x([1-9]\d*)$')
            .firstMatch(entry.value as String);
        if (match != null) {
          final w = int.parse(match[1]!), h = int.parse(match[2]!);
          final multiple = (dimensions['multipleOf'] as num).toInt();
          final maxEdge = (dimensions['maxEdge'] as num).toInt();
          final maxRatio = dimensions['maxAspectRatio'] as num;
          if (w % multiple == 0 &&
              h % multiple == 0 &&
              w <= maxEdge &&
              h <= maxEdge &&
              w * h >= (dimensions['minPixels'] as num) &&
              w * h <= (dimensions['maxPixels'] as num) &&
              w / h <= maxRatio &&
              h / w <= maxRatio) {
            continue;
          }
        }
      }
      throw ArgumentError(
        'This model does not support ${entry.key}=${entry.value}',
      );
    }
    if (options['background'] == 'transparent' &&
        options['outputFormat'] != null &&
        !['png', 'webp'].contains(options['outputFormat'])) {
      throw ArgumentError('Transparency requires PNG or WebP');
    }
    if (references > maxReferences ||
        bytes > maxReferenceBytes ||
        (hasMask && !masks)) {
      throw ArgumentError('References exceed this model capabilities');
    }
  }
}

class CloudAiRequest {
  CloudAiRequest.fromJson(Map<String, dynamic> json)
    : raw = Map.unmodifiable(json);
  final Map<String, dynamic> raw;
  String get id => raw['id'] as String;
  String get status => raw['status'] as String;
  String? get cloudRequestId => raw['cloudRequestId'] as String?;
  bool get terminal => ['succeeded', 'failed'].contains(status);
  bool get settled => _map(raw['billing'])['settled'] == true;
  String? get chargeDzd => _map(raw['billing'])['chargeDzd'] as String?;
  String? get chargedMicros => _map(raw['billing'])['chargedMicros'] as String?;
  dynamic get result => raw['result'];
  Map<String, dynamic> get error => _map(raw['error']);
}

class CloudAiUpload {
  CloudAiUpload({
    required this.bytes,
    required this.filename,
    required this.contentType,
  });
  final Uint8List bytes;
  final String filename;
  final String contentType;
}

class CloudAiStream {
  CloudAiStream({
    required this.bytes,
    required this.contentType,
    required this.jobId,
    required this.status,
  });
  final Stream<Uint8List> bytes;
  final String contentType;
  final String? jobId;
  final int status;
}

class CloudAiApi {
  CloudAiApi({required this.client});
  final Dio client;
  void _validateKey(String key) {
    if (!RegExp(r'^[\x21-\x7e]{1,200}$').hasMatch(key)) {
      throw ArgumentError('Persist a stable Idempotency-Key before submission');
    }
  }

  Future<List<CloudAiModel>> models({String? storeId}) async {
    final response = await client.get(
      '/ai/models',
      queryParameters: {'storeId': ?storeId},
      options: Options(headers: {'Cache-Control': 'no-cache'}),
    );
    return (response.data['data'] as List)
        .whereType<Map>()
        .map((row) => CloudAiModel.fromJson(_map(row)))
        .toList(growable: false);
  }

  Future<CloudAiRequest> submit({
    required String endpoint,
    required Map<String, dynamic> body,
    required String idempotencyKey,
    String? storeId,
  }) async {
    _validateKey(idempotencyKey);
    final response = await client.post(
      '/ai/requests',
      data: {'endpoint': endpoint, 'body': body, 'storeId': ?storeId},
      options: Options(headers: {'Idempotency-Key': idempotencyKey}),
    );
    return CloudAiRequest.fromJson(_map(response.data));
  }

  Future<List<CloudAiRequest>> requests({String? idempotencyKey}) async {
    final response = await client.get(
      '/ai/requests',
      queryParameters: {'key': ?idempotencyKey},
    );
    return (response.data['data'] as List)
        .whereType<Map>()
        .map((row) => CloudAiRequest.fromJson(_map(row)))
        .toList(growable: false);
  }

  Future<CloudAiRequest> submitFile({
    required String endpoint,
    required Map<String, dynamic> body,
    required CloudAiUpload file,
    required String idempotencyKey,
    String? storeId,
  }) async {
    if (file.bytes.length > 19 * 1024 * 1024) {
      throw ArgumentError('Upload exceeds 19 MiB');
    }
    final form = FormData.fromMap({
      'endpoint': endpoint,
      'body': jsonEncode(body),
      'storeId': ?storeId,
      'files': MultipartFile.fromBytes(
        file.bytes,
        filename: file.filename,
        contentType: DioMediaType.parse(file.contentType),
      ),
    });
    _validateKey(idempotencyKey);
    final response = await client.post(
      '/ai/requests',
      data: form,
      options: Options(headers: {'Idempotency-Key': idempotencyKey}),
    );
    return CloudAiRequest.fromJson(_map(response.data));
  }

  Future<CloudAiStream> stream({
    required String endpoint,
    required Map<String, dynamic> body,
    required String idempotencyKey,
    String? storeId,
    CancelToken? cancelToken,
  }) async {
    _validateKey(idempotencyKey);
    final response = await client.post<ResponseBody>(
      '/ai/streams',
      data: {
        'endpoint': endpoint,
        'body': {...body, 'stream': true},
        'storeId': ?storeId,
      },
      cancelToken: cancelToken,
      options: Options(
        responseType: ResponseType.stream,
        headers: {'Idempotency-Key': idempotencyKey},
      ),
    );
    return CloudAiStream(
      bytes: response.data!.stream,
      contentType: response.headers.value('content-type') ?? 'application/json',
      jobId: response.headers.value('x-feeef-ai-job-id'),
      status: response.statusCode!,
    );
  }

  Future<CloudAiRequest> prepareLiveSession({
    required String model,
    required String idempotencyKey,
    String? storeId,
  }) => submit(
    endpoint: 'realtime',
    body: {'model': model, 'type': 'transcription'},
    idempotencyKey: idempotencyKey,
    storeId: storeId,
  );
  Future<Uint8List> content(String id) async {
    final response = await client.get<List<int>>(
      '/ai/requests/${Uri.encodeComponent(id)}/content',
      options: Options(responseType: ResponseType.bytes),
    );
    return Uint8List.fromList(response.data!);
  }

  Future<CloudAiRequest> request(String id) async {
    final response = await client.get(
      '/ai/requests/${Uri.encodeComponent(id)}',
    );
    return CloudAiRequest.fromJson(_map(response.data));
  }

  /// Persist this key alongside the immutable input before calling. Retrying uses the same input/key.
  Future<Map<String, dynamic>> generateImage({
    required CloudAiModel model,
    required String prompt,
    required Map<String, dynamic> settings,
    required String idempotencyKey,
    String? id,
    String? storeId,
    bool recoverOriginal = false,
    Uint8List? imageBytes,
    Uint8List? maskBytes,
    List<Attachment> attachments = const [],
  }) async {
    final caps = model.image;
    if (caps == null || (!recoverOriginal && !model.available)) {
      throw ArgumentError('Choose an available Cloud image model');
    }
    caps.validate(
      settings,
      references:
          attachments.where((a) => a.typeId == 'image').length +
          (imageBytes == null ? 0 : 1),
      bytes: (imageBytes?.length ?? 0) + (maskBytes?.length ?? 0),
      hasMask: maskBytes != null,
    );
    String type(Uint8List bytes) {
      if (bytes.length >= 8 && bytes[0] == 137 && bytes[1] == 80) {
        return 'image/png';
      }
      if (bytes.length >= 3 && bytes[0] == 255 && bytes[1] == 216) {
        return 'image/jpeg';
      }
      if (bytes.length >= 12 &&
          utf8.decode(bytes.sublist(0, 4), allowMalformed: true) == 'RIFF' &&
          utf8.decode(bytes.sublist(8, 12), allowMalformed: true) == 'WEBP') {
        return 'image/webp';
      }
      throw ArgumentError('Use PNG, JPEG or WebP references');
    }

    if (maskBytes != null && (type(maskBytes) != 'image/png' || (imageBytes == null && !attachments.any((a) => a.typeId == 'image')))) { throw ArgumentError('A PNG mask requires a reference image'); }
    for (final bytes in [imageBytes, maskBytes].whereType<Uint8List>()) {
      if (!caps.referenceFormats.contains(type(bytes))) { throw ArgumentError('Unsupported reference image format'); }
    }
    final form = FormData.fromMap({
      'model': model.id,
      'prompt': prompt,
      'options': jsonEncode(settings),
      'attachments': jsonEncode(attachments.map((a) => a.toJson()).toList()),
      if (id != null && id.isNotEmpty) 'id': id,
      'storeId': ?storeId,
      if (imageBytes != null)
        'imageFile': MultipartFile.fromBytes(
          imageBytes,
          filename: type(imageBytes) == 'image/png'
              ? 'primary.png'
              : type(imageBytes) == 'image/jpeg'
              ? 'primary.jpg'
              : 'primary.webp',
          contentType: DioMediaType.parse(type(imageBytes)),
        ),
      if (maskBytes != null)
        'maskFile': MultipartFile.fromBytes(
          maskBytes,
          filename: type(maskBytes) == 'image/png' ? 'mask.png' : 'mask.webp',
          contentType: DioMediaType.parse(type(maskBytes)),
        ),
    });
    _validateKey(idempotencyKey);
    final response = await client.post(
      '/ai/images',
      data: form,
      options: Options(headers: {'Idempotency-Key': idempotencyKey}),
    );
    return _map(response.data);
  }
}
