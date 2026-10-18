import 'dart:math';

import 'package:dio/dio.dart';
import 'package:feeef/store_pages/store_page.dart';

const _unchanged = Object();

class StorePagesRepository {
  StorePagesRepository({required this.client});
  final Dio client;
  String _base(String storeId) =>
      '/stores/${Uri.encodeComponent(storeId)}/pages';
  StorePage _model(dynamic value) =>
      StorePage.fromJson(Map<String, dynamic>.from(value as Map));

  Future<StorePageList> query({
    required String storeId,
    String? status,
    String? search,
    String sort = 'updated_at',
    String direction = 'desc',
    int page = 1,
    int limit = 30,
    CancelToken? cancelToken,
  }) async {
    final response = await client.get(
      _base(storeId),
      queryParameters: {
        if (status != null) 'status': status,
        if (search != null) 'search': search,
        'sort': sort,
        'direction': direction,
        'page': page,
        'limit': limit,
      },
      cancelToken: cancelToken,
    );
    final body = response.data;
    return StorePageList(
      data: (body is Map ? body['data'] as List? ?? [] : body as List)
          .whereType<Map>()
          .map(_model)
          .toList(),
      meta: body is Map && body['meta'] is Map
          ? Map<String, dynamic>.from(body['meta'] as Map)
          : {},
      counts: body is Map && body['counts'] is Map
          ? (body['counts'] as Map).map(
              (key, value) => MapEntry(key.toString(), (value as num).toInt()),
            )
          : {},
    );
  }

  Future<List<StorePage>> list({
    required String storeId,
    CancelToken? cancelToken,
  }) async => (await query(
    storeId: storeId,
    limit: 100,
    cancelToken: cancelToken,
  )).data;

  Future<StorePage> find({
    required String storeId,
    required String id,
    CancelToken? cancelToken,
  }) async => _model(
    (await client.get('${_base(storeId)}/$id', cancelToken: cancelToken)).data,
  );

  Future<Map<String, dynamic>> preview({
    required String storeId,
    required String id,
    required int expectedRevision,
    CancelToken? cancelToken,
  }) async => Map<String, dynamic>.from(
    (await client.post(
          '${_base(storeId)}/$id/preview',
          data: {'expectedRevision': expectedRevision},
          cancelToken: cancelToken,
        )).data
        as Map,
  );

  Future<Map<String, dynamic>> export({
    required String storeId,
    required String id,
    CancelToken? cancelToken,
  }) async => Map<String, dynamic>.from(
    (await client.get(
          '${_base(storeId)}/$id/export',
          cancelToken: cancelToken,
        )).data
        as Map,
  );

  Future<StorePage> create({
    required String storeId,
    required String path,
    String? title,
    String? pageTemplateId,
    int? pageTemplateVersion,
    String? createdFromPage,
    Map<String, dynamic>? root,
    Map<String, dynamic>? props,
    Map<String, dynamic>? sections,
    Map<String, dynamic>? seo,
    Map<String, dynamic>? data,
    Map<String, dynamic>? locales,
    Map<String, dynamic>? extensions,
    String status = 'draft',
    CancelToken? cancelToken,
  }) async {
    // Omission requests clone defaults; an explicitly empty map replaces them.
    final page = _model(
      (await client.post(
        _base(storeId),
        data: {
          'path': path,
          if (title != null) 'title': title,
          if (createdFromPage != null) 'createdFromPage': createdFromPage,
          if (pageTemplateId != null) 'pageTemplateId': pageTemplateId,
          if (pageTemplateVersion != null)
            'pageTemplateVersion': pageTemplateVersion,
          if (root != null) 'root': root,
          if (props != null) 'props': props,
          if (sections != null) 'sections': sections,
          if (seo != null) 'seo': seo,
          if (data != null) 'data': data,
          if (locales != null) 'locales': locales,
          if (extensions != null) 'extensions': extensions,
        },
        cancelToken: cancelToken,
      )).data,
    );
    return status == 'published'
        ? publish(
            storeId: storeId,
            id: page.id,
            expectedRevision: page.draftRevision,
            cancelToken: cancelToken,
          )
        : page;
  }

  Future<StorePage> update({
    required String storeId,
    required String id,
    required int expectedRevision,
    String? path,
    Object? title = _unchanged,
    Object? createdFromPage = _unchanged,
    Object? root = _unchanged,
    Map<String, dynamic>? props,
    Map<String, dynamic>? sections,
    Map<String, dynamic>? seo,
    Map<String, dynamic>? data,
    Map<String, dynamic>? locales,
    Map<String, dynamic>? extensions,
    String? status,
    CancelToken? cancelToken,
  }) async {
    final page = _model(
      (await client.put(
        '${_base(storeId)}/$id',
        data: {
          'expectedRevision': expectedRevision,
          if (path != null) 'path': path,
          if (!identical(title, _unchanged)) 'title': title,
          if (!identical(createdFromPage, _unchanged))
            'createdFromPage': createdFromPage,
          if (!identical(root, _unchanged)) 'root': root,
          if (props != null) 'props': props,
          if (sections != null) 'sections': sections,
          if (seo != null) 'seo': seo,
          if (data != null) 'data': data,
          if (locales != null) 'locales': locales,
          if (extensions != null) 'extensions': extensions,
        },
        cancelToken: cancelToken,
      )).data,
    );
    if (status == 'published')
      return publish(
        storeId: storeId,
        id: id,
        expectedRevision: page.draftRevision,
        cancelToken: cancelToken,
      );
    if (status == 'draft' && page.isPublished)
      return unpublish(
        storeId: storeId,
        id: id,
        expectedRevision: page.draftRevision,
        cancelToken: cancelToken,
      );
    return page;
  }

  Future<StorePage> action({
    required String storeId,
    required String id,
    required String action,
    required int expectedRevision,
    String? operationId,
    CancelToken? cancelToken,
  }) async => _model(
    (await client.post(
      '${_base(storeId)}/$id/$action',
      data: {
        'expectedRevision': expectedRevision,
        if (action == 'duplicate')
          'operationId':
              operationId ??
              '${DateTime.now().microsecondsSinceEpoch}-${Random.secure().nextInt(1 << 30)}',
      },
      cancelToken: cancelToken,
    )).data,
  );

  Future<Map<String, dynamic>> publishTemplate({
    required String storeId,
    required String id,
    required int expectedRevision,
    required String title,
    String? description,
    String policy = 'public',
  }) async => Map<String, dynamic>.from(
    (await client.post(
          '${_base(storeId)}/$id/template',
          data: {
            'expectedRevision': expectedRevision,
            'title': title,
            'description': description,
            'policy': policy,
          },
        )).data
        as Map,
  );

  Future<StorePage> publish({
    required String storeId,
    required String id,
    required int expectedRevision,
    CancelToken? cancelToken,
  }) => action(
    storeId: storeId,
    id: id,
    action: 'publish',
    expectedRevision: expectedRevision,
    cancelToken: cancelToken,
  );
  Future<StorePage> unpublish({
    required String storeId,
    required String id,
    required int expectedRevision,
    CancelToken? cancelToken,
  }) => action(
    storeId: storeId,
    id: id,
    action: 'unpublish',
    expectedRevision: expectedRevision,
    cancelToken: cancelToken,
  );
  Future<StorePage> restore({
    required String storeId,
    required String id,
    required int expectedRevision,
    CancelToken? cancelToken,
  }) => action(
    storeId: storeId,
    id: id,
    action: 'restore',
    expectedRevision: expectedRevision,
    cancelToken: cancelToken,
  );
  Future<StorePage> duplicate({
    required String storeId,
    required String id,
    required int expectedRevision,
    String? operationId,
    CancelToken? cancelToken,
  }) => action(
    storeId: storeId,
    id: id,
    action: 'duplicate',
    expectedRevision: expectedRevision,
    operationId: operationId,
    cancelToken: cancelToken,
  );

  Future<Map<String, dynamic>> bulk({
    required String storeId,
    required String action,
    required List<StorePage> pages,
    String? operationId,
    CancelToken? cancelToken,
  }) async => Map<String, dynamic>.from(
    (await client.post(
          '${_base(storeId)}/bulk',
          data: {
            'action': action,
            'items': pages
                .map(
                  (page) => {
                    'id': page.id,
                    'expectedRevision': page.draftRevision,
                  },
                )
                .toList(),
            'operationId':
                operationId ??
                '${DateTime.now().microsecondsSinceEpoch}-${Random.secure().nextInt(1 << 30)}',
          },
          cancelToken: cancelToken,
        )).data
        as Map,
  );

  Future<void> delete({
    required String storeId,
    required String id,
    required int expectedRevision,
    CancelToken? cancelToken,
  }) async {
    await client.delete(
      '${_base(storeId)}/$id',
      data: {'expectedRevision': expectedRevision},
      cancelToken: cancelToken,
    );
  }
}
