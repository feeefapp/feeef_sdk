import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:feeef/attachments/attachment.dart';
import 'package:http_parser/http_parser.dart' show MediaType;

/// Image generations repository.
/// Usage: `ff.imageGenerations.createImageGeneration(...)`
class ImageGenerationsRepository {
  final Dio client;

  ImageGenerationsRepository({required this.client});

  /// List user's image generations (paginated).
  /// Backend returns Lucid paginator json: `{ meta: {...}, data: [...] }`.
  Future<
    ({List<Map<String, dynamic>> data, Map<String, dynamic> meta, bool hasMore})
  >
  list({int page = 1, int limit = 10, List<String>? tags}) async {
    final queryParams = <String, dynamic>{'page': page, 'limit': limit};
    if (tags != null && tags.isNotEmpty) {
      queryParams['tags'] = tags;
    }
    final response = await client.get(
      '/image_generations',
      queryParameters: queryParams,
    );

    final body = Map<String, dynamic>.from(response.data as Map);
    final meta = body['meta'] is Map<String, dynamic>
        ? Map<String, dynamic>.from(body['meta'] as Map)
        : <String, dynamic>{};
    final rawData = body['data'] as List<dynamic>? ?? const [];
    final data = rawData
        .whereType<Map>()
        .map((e) => Map<String, dynamic>.from(e))
        .toList(growable: false);

    final currentPage = (meta['current_page'] as num?)?.toInt() ?? page;
    final lastPage = (meta['last_page'] as num?)?.toInt() ?? currentPage;
    final hasMore = currentPage < lastPage;

    return (data: data, meta: meta, hasMore: hasMore);
  }

  /// Global gallery feed (completed generations from all users).
  Future<
    ({List<Map<String, dynamic>> data, Map<String, dynamic> meta, bool hasMore})
  >
  gallery({int page = 1, int limit = 24}) async {
    final response = await client.get(
      '/image_generations/gallery',
      queryParameters: {'page': page, 'limit': limit},
    );

    final body = Map<String, dynamic>.from(response.data as Map);
    final meta = body['meta'] is Map<String, dynamic>
        ? Map<String, dynamic>.from(body['meta'] as Map)
        : <String, dynamic>{};
    final rawData = body['data'] as List<dynamic>? ?? const [];
    final data = rawData
        .whereType<Map>()
        .map((e) => Map<String, dynamic>.from(e))
        .toList(growable: false);

    final currentPage = (meta['current_page'] as num?)?.toInt() ?? page;
    final lastPage = (meta['last_page'] as num?)?.toInt() ?? currentPage;
    final hasMore = currentPage < lastPage;

    return (data: data, meta: meta, hasMore: hasMore);
  }

  /// Fetch a single image generation record (includes `generations` history).
  Future<Map<String, dynamic>> find(String id) async {
    final response = await client.get('/image_generations/$id');
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Publish/unpublish an existing generation.
  /// Uses `status` (published <-> completed).
  Future<Map<String, dynamic>> setPublished({
    required String id,
    required bool isPublished,
  }) async {
    final response = await client.patch(
      '/image_generations/$id',
      data: {'status': isPublished ? 'published' : 'completed'},
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Creates a new image generation record and dispatches generation.
  ///
  /// [storeId] is required by this entry point for store-scoped flows.
  /// For the same payload as [generateImageGeneration] (including optional
  /// [attachments]), use [generateImageGeneration] with [id] null.
  Future<Map<String, dynamic>> createImageGeneration({
    required String storeId,
    String? title,
    String? prompt,
    Uint8List? imageBytes,
    String? aspectRatio,
    String resolution = 'MEDIA_RESOLUTION_LOW',
    String? systemInstructions,
    List<Attachment>? attachments,
    String? model,
  }) async {
    return generateImageGeneration(
      id: null,
      storeId: storeId,
      title: title,
      prompt: prompt,
      imageBytes: imageBytes,
      aspectRatio: aspectRatio,
      resolution: resolution,
      systemInstructions: systemInstructions,
      attachments: attachments,
      model: model,
    );
  }

  /// Generates inside an existing record if [id] is valid and accessible;
  /// otherwise the backend creates a new one and returns it.
  ///
  /// [attachments]: unified reference context (image URLs, store IDs, product IDs,
  /// audio URLs). Backend resolves store/product to structured context and
  /// reference images; audio is described by an audio-capable model and injected
  /// into the image prompt.
  Future<Map<String, dynamic>> generateImageGeneration({
    String? id,
    String? storeId,
    String? title,
    String? prompt,
    Uint8List? imageBytes,
    String? aspectRatio,
    String resolution = 'MEDIA_RESOLUTION_LOW',
    String? systemInstructions,
    List<Attachment>? attachments,
    String? model,
  }) async {
    final attachmentMaps = attachments != null && attachments.isNotEmpty
        ? attachments.map((a) => a.toJson()).toList()
        : null;
    final formData = FormData.fromMap({
      if (id != null && id.trim().isNotEmpty) 'id': id.trim(),
      if (storeId != null && storeId.trim().isNotEmpty) 'storeId': storeId.trim(),
      if (title != null && title.trim().isNotEmpty) 'title': title.trim(),
      if (prompt != null && prompt.trim().isNotEmpty) 'prompt': prompt.trim(),
      if (aspectRatio != null) 'aspectRatio': aspectRatio,
      'resolution': resolution,
      if (systemInstructions != null && systemInstructions.trim().isNotEmpty)
        'systemInstructions': systemInstructions.trim(),
      if (attachmentMaps != null && attachmentMaps.isNotEmpty)
        'attachments': jsonEncode(attachmentMaps),
      if (model != null && model.trim().isNotEmpty) 'model': model.trim(),
      if (imageBytes != null)
        'imageFile': MultipartFile.fromBytes(
          imageBytes,
          filename: 'image_${DateTime.now().millisecondsSinceEpoch}.png',
          contentType: MediaType('image', 'png'),
        ),
    });

    final response = await client.post(
      '/image_generations/generate',
      data: formData,
    );
    return Map<String, dynamic>.from(response.data as Map);
  }
}

/// Backward-compat alias (temporary).
/// Prefer `ff.imageGenerations`.
typedef AiRepository = ImageGenerationsRepository;
