import 'package:dio/dio.dart';

/// Brandstudio projects (`/brandStudios`).
///
/// Each studio groups many [image_generations] rows (board versions + cut-outs).
class BrandStudiosRepository {
  BrandStudiosRepository({required this.client});

  final Dio client;

  Future<
    ({List<Map<String, dynamic>> data, Map<String, dynamic> meta, bool hasMore})
  >
  list({int page = 1, int limit = 24}) async {
    final response = await client.get(
      '/brandStudios',
      queryParameters: {'page': page, 'limit': limit},
    );
    return _parsePage(response.data, page);
  }

  Future<Map<String, dynamic>> create({
    required String name,
    String? brief,
    String? style,
    List<int>? palette,
    String? boardAspect,
    String? storeId,
    List<dynamic>? attachments,
    String? status,
  }) async {
    final response = await client.post(
      '/brandStudios',
      data: {
        'name': name,
        if (brief != null) 'brief': brief,
        if (style != null) 'style': style,
        if (palette != null) 'palette': palette,
        if (boardAspect != null) 'boardAspect': boardAspect,
        if (storeId != null) 'storeId': storeId,
        if (attachments != null) 'attachments': attachments,
        if (status != null) 'status': status,
      },
    );
    final body = Map<String, dynamic>.from(response.data as Map);
    final data = body['data'];
    if (data is Map) return Map<String, dynamic>.from(data);
    return body;
  }

  Future<Map<String, dynamic>> find(String id) async {
    final response = await client.get('/brandStudios/$id');
    final body = Map<String, dynamic>.from(response.data as Map);
    final data = body['data'];
    if (data is Map) return Map<String, dynamic>.from(data);
    return body;
  }

  Future<Map<String, dynamic>> update(
    String id, {
    String? name,
    String? brief,
    String? style,
    List<int>? palette,
    String? boardAspect,
    String? storeId,
    List<dynamic>? attachments,
    String? status,
  }) async {
    final response = await client.patch(
      '/brandStudios/$id',
      data: {
        if (name != null) 'name': name,
        if (brief != null) 'brief': brief,
        if (style != null) 'style': style,
        if (palette != null) 'palette': palette,
        if (boardAspect != null) 'boardAspect': boardAspect,
        if (storeId != null) 'storeId': storeId,
        if (attachments != null) 'attachments': attachments,
        if (status != null) 'status': status,
      },
    );
    final body = Map<String, dynamic>.from(response.data as Map);
    final data = body['data'];
    if (data is Map) return Map<String, dynamic>.from(data);
    return body;
  }

  Future<void> delete(String id) async {
    await client.delete('/brandStudios/$id');
  }

  /// Chat history for one deliverable kind (newest first).
  Future<
    ({
      List<Map<String, dynamic>> data,
      Map<String, dynamic> meta,
      bool hasMore,
      String? primaryGenerationId,
    })
  >
  generations({
    required String studioId,
    required String kind,
    int page = 1,
    int limit = 40,
  }) async {
    final response = await client.get(
      '/brandStudios/$studioId/generations',
      queryParameters: {'kind': kind, 'page': page, 'limit': limit},
    );
    final pageResult = _parsePage(response.data, page);
    final meta = pageResult.meta;
    return (
      data: pageResult.data,
      meta: meta,
      hasMore: pageResult.hasMore,
      primaryGenerationId: meta['primaryGenerationId']?.toString(),
    );
  }

  Future<Map<String, dynamic>> setPrimary({
    required String studioId,
    required String kind,
    required String generationId,
  }) async {
    final response = await client.patch(
      '/brandStudios/$studioId/primaries',
      data: {'kind': kind, 'generationId': generationId},
    );
    final body = Map<String, dynamic>.from(response.data as Map);
    final data = body['data'];
    if (data is Map) return Map<String, dynamic>.from(data);
    return body;
  }

  ({List<Map<String, dynamic>> data, Map<String, dynamic> meta, bool hasMore})
  _parsePage(dynamic raw, int page) {
    final body = Map<String, dynamic>.from(raw as Map);
    final meta = body['meta'] is Map
        ? Map<String, dynamic>.from(body['meta'] as Map)
        : <String, dynamic>{};
    final rawData = body['data'] as List<dynamic>? ?? const [];
    final data = rawData
        .whereType<Map>()
        .map((e) => Map<String, dynamic>.from(e))
        .toList(growable: false);
    final currentPage = (meta['current_page'] as num?)?.toInt() ?? page;
    final lastPage = (meta['last_page'] as num?)?.toInt() ?? currentPage;
    return (data: data, meta: meta, hasMore: currentPage < lastPage);
  }
}
