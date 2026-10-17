import 'package:dio/dio.dart';

import 'package:feeef/store_pages/store_page.dart';

/// Merchant free pages for one store (`stores/:storeId/pages`).
///
/// Drafts are private to this API; published pages are merged into the
/// storefront's template document by the backend on store reads.
class StorePagesRepository {
  StorePagesRepository({required this.client});

  final Dio client;

  String _base(String storeId) => '/stores/$storeId/pages';

  Future<List<StorePage>> list({
    required String storeId,
    CancelToken? cancelToken,
  }) async {
    final response = await client.get(_base(storeId), cancelToken: cancelToken);
    final body = response.data;
    final list = body is Map && body['data'] is List
        ? body['data'] as List
        : body is List
            ? body
            : const [];
    return list
        .whereType<Map>()
        .map((e) => StorePage.fromJson(Map<String, dynamic>.from(e)))
        .toList(growable: false);
  }

  Future<StorePage> create({
    required String storeId,
    required String path,
    String? title,
    String? createdFromPage,
    Map<String, dynamic>? root,
    Map<String, dynamic> props = const {},
    Map<String, dynamic> sections = const {},
    Map<String, dynamic> seo = const {},
    Map<String, dynamic> data = const {},
    String status = 'draft',
    CancelToken? cancelToken,
  }) async {
    final response = await client.post(
      _base(storeId),
      data: {
        'path': path,
        'title': title,
        'createdFromPage': createdFromPage,
        'root': root,
        'props': props,
        'sections': sections,
        'seo': seo,
        'data': data,
        'status': status,
      }..removeWhere((_, v) => v == null),
      cancelToken: cancelToken,
    );
    return StorePage.fromJson(Map<String, dynamic>.from(response.data as Map));
  }

  Future<StorePage> update({
    required String storeId,
    required String id,
    String? path,
    String? title,
    String? createdFromPage,
    Map<String, dynamic>? root,
    Map<String, dynamic>? props,
    Map<String, dynamic>? sections,
    Map<String, dynamic>? seo,
    Map<String, dynamic>? data,
    String? status,
    CancelToken? cancelToken,
  }) async {
    final response = await client.put(
      '${_base(storeId)}/$id',
      data: {
        'path': path,
        'title': title,
        'createdFromPage': createdFromPage,
        'root': root,
        'props': props,
        'sections': sections,
        'seo': seo,
        'data': data,
        'status': status,
      }..removeWhere((_, v) => v == null),
      cancelToken: cancelToken,
    );
    return StorePage.fromJson(Map<String, dynamic>.from(response.data as Map));
  }

  Future<void> delete({
    required String storeId,
    required String id,
    CancelToken? cancelToken,
  }) async {
    await client.delete('${_base(storeId)}/$id', cancelToken: cancelToken);
  }
}
