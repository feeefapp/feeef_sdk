import 'package:dio/dio.dart';

import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/store_templates/store_template.dart';

/// CRUD + fork + install for full-site `store_templates`.
class StoreTemplatesRepository extends ResourceRepository<
    StoreTemplate,
    StoreTemplateCreate,
    StoreTemplateUpdate> {
  StoreTemplatesRepository({required super.client}) : super(table: 'store_templates');

  @override
  StoreTemplate modelFromJson(json) =>
      StoreTemplate.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(StoreTemplate model) => model.toJson();

  @override
  StoreTemplateCreate createFromJson(json) {
    final m = json as Map<String, dynamic>;
    return StoreTemplateCreate(
      storeId: (m['storeId'] ?? m['store_id']) as String,
      title: m['title'] as String,
      subtitle: m['subtitle'] as String?,
      body: m['body'] as String?,
      category: m['category'] as String?,
      tags:
          (m['tags'] as List?)
              ?.map((item) => item.toString())
              .toList(growable: false) ??
          const [],
      imageUrl: (m['imageUrl'] ?? m['image_url']) as String?,
      screenshots:
          (m['screenshots'] as List?)
              ?.map((item) => item.toString())
              .toList(growable: false) ??
          const [],
      demoUrl: (m['demoUrl'] ?? m['demo_url']) as String?,
      price: (m['price'] as num?) ?? 0,
      discount: m['discount'] as num?,
      license: m['license'] as String?,
      schema: Map<String, dynamic>.from((m['schema'] ?? const {}) as Map),
      data: Map<String, dynamic>.from((m['data'] ?? const {}) as Map),
      policy: TemplateComponentPolicy.fromWire(m['policy'] as String?),
      parentId: (m['parentId'] ?? m['parent_id']) as String?,
    );
  }

  @override
  Map<String, dynamic> createToJson(StoreTemplateCreate model) => model.toJson();

  @override
  StoreTemplateUpdate updateFromJson(json) {
    final m = json as Map<String, dynamic>;
    return StoreTemplateUpdate(
      title: m['title'] as String?,
      subtitle: m['subtitle'] as String?,
      body: m['body'] as String?,
      category: m['category'] as String?,
      tags: (m['tags'] as List?)
          ?.map((item) => item.toString())
          .toList(growable: false),
      imageUrl: (m['imageUrl'] ?? m['image_url']) as String?,
      screenshots: (m['screenshots'] as List?)
          ?.map((item) => item.toString())
          .toList(growable: false),
      demoUrl: (m['demoUrl'] ?? m['demo_url']) as String?,
      price: m['price'] as num?,
      discount: m['discount'] as num?,
      license: m['license'] as String?,
      schema: m['schema'] is Map
          ? Map<String, dynamic>.from(m['schema'] as Map)
          : null,
      data: m['data'] is Map
          ? Map<String, dynamic>.from(m['data'] as Map)
          : null,
      policy: m['policy'] is String
          ? TemplateComponentPolicy.fromWire(m['policy'] as String?)
          : null,
      salesClosed: m['salesClosed'] as bool? ?? m['sales_closed'] as bool?,
      setToNull:
          (m['setToNull'] as List?)
              ?.map((item) => item.toString())
              .toList(growable: false) ??
          const [],
    );
  }

  @override
  Map<String, dynamic> updateToJson(StoreTemplateUpdate model) => model.toJson();

  @override
  Future<ListResponse<StoreTemplate>> list({
    String? storeId,
    String? searchQuery,
    String? filterator,
    TemplateComponentPolicy? policy,
    String? orderBy,
    String? orderDirection,
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) {
    final merged = <String, dynamic>{
      ...?params,
      'storeId': ?storeId,
      if (filterator != null && filterator.isNotEmpty) 'filterator': filterator,
      if (filterator == null && searchQuery != null && searchQuery.isNotEmpty)
        'q': searchQuery,
      'policy': ?policy?.wire,
      'orderBy': ?orderBy,
      'orderDirection': ?orderDirection,
    };
    return super.list(page: page, offset: offset, limit: limit, params: merged);
  }

  /// Platform default Lithium theme (`GET /store_templates/default`).
  ///
  /// Returns schema + data for the configured `templateMarketplace.defaultTemplateId`.
  Future<StoreTemplate> getDefault({CancelToken? cancelToken}) async {
    final response = await client.get(
      '/$table/default',
      cancelToken: cancelToken,
    );
    final body = Map<String, dynamic>.from(response.data as Map);
    return StoreTemplate.fromJson({
      'id': body['id'],
      'storeId': body['storeId'] ?? body['store_id'] ?? '',
      'userId': body['userId'] ?? body['user_id'] ?? '',
      'title': body['title'] ?? 'Default',
      'schema': body['schema'] ?? const {},
      'data': body['data'] ?? const {},
      'version': body['version'] ?? 1,
      'policy': body['policy'] ?? 'public',
      'price': body['price'] ?? 0,
      'createdAt': body['createdAt'] ?? body['created_at'] ?? DateTime.now().toIso8601String(),
      'updatedAt': body['updatedAt'] ?? body['updated_at'],
    });
  }

  /// Id-only lookup for the platform default (no `data`/`schema` payload).
  Future<String?> getDefaultId({CancelToken? cancelToken}) async {
    final response = await client.get(
      '/$table/default',
      queryParameters: const {'meta': '1'},
      cancelToken: cancelToken,
    );
    final body = response.data;
    if (body is! Map) return null;
    final id = body['id']?.toString().trim();
    return (id == null || id.isEmpty) ? null : id;
  }

  /// Ownership / version metadata without downloading `data`/`schema`.
  Future<StoreTemplate> findMeta({
    required String id,
    CancelToken? cancelToken,
  }) async {
    final response = await client.get(
      '/$table/$id',
      queryParameters: const {'meta': '1'},
      cancelToken: cancelToken,
    );
    final body = Map<String, dynamic>.from(response.data as Map);
    return StoreTemplate.fromJson({
      ...body,
      'schema': body['schema'] ?? const {},
      'data': body['data'] ?? const {},
      'title': body['title'] ?? '',
      'createdAt':
          body['createdAt'] ?? body['created_at'] ?? DateTime.now().toIso8601String(),
    });
  }

  /// PUT `data`/`schema` and ignore a slim response body.
  ///
  /// Avoids [update]'s `modelFromJson` of a multi‑MB echo and skips deep clones.
  Future<void> updateDocument({
    required String id,
    required Map<String, dynamic> data,
    Map<String, dynamic>? schema,
    CancelToken? cancelToken,
  }) async {
    await client.put(
      '/$table/$id',
      data: {
        'data': data,
        if (schema != null) 'schema': schema,
      },
      queryParameters: const {'meta': '1'},
      cancelToken: cancelToken,
    );
    addToUpdateStream(
      id,
      StoreTemplateUpdate(data: data, schema: schema),
    );
  }

  /// Fork a template into [targetStoreId].
  Future<StoreTemplate> fork({
    required String id,
    required String targetStoreId,
    String? title,
    CancelToken? cancelToken,
  }) async {
    final response = await client.post(
      '/$table/$id/fork',
      data: {
        'storeId': targetStoreId,
        'title': ?title,
      },
      cancelToken: cancelToken,
    );
    return StoreTemplate.fromJson(Map<String, dynamic>.from(response.data as Map));
  }

  /// Set this store’s `templateId` to [id] and copy template `data` to
  /// `store.metadata.templateData` (no new `store_templates` row). Use [fork] to duplicate.
  Future<StoreTemplateInstallResult> install({
    required String id,
    required String storeId,
    String? releaseId,
    CancelToken? cancelToken,
  }) async {
    final response = await client.post(
      '/$table/$id/install',
      data: {
        'storeId': storeId,
        'releaseId': ?releaseId,
      },
      cancelToken: cancelToken,
    );
    return StoreTemplateInstallResult.fromJson(
      Map<String, dynamic>.from(response.data as Map),
    );
  }

  /// One-time wallet purchase → forever license for [storeId].
  Future<StoreTemplatePurchaseResult> purchase({
    required String id,
    required String storeId,
    CancelToken? cancelToken,
  }) async {
    final response = await client.post(
      '/$table/$id/purchase',
      data: {'storeId': storeId},
      cancelToken: cancelToken,
    );
    return StoreTemplatePurchaseResult.fromJson(
      Map<String, dynamic>.from(response.data as Map),
    );
  }

  /// Immutable release history (newest first).
  Future<List<StoreTemplateReleaseSummary>> listReleases({
    required String id,
    String? storeId,
    CancelToken? cancelToken,
  }) async {
    final response = await client.get(
      '/$table/$id/releases',
      queryParameters: {
        'storeId': ?storeId,
      },
      cancelToken: cancelToken,
    );
    final body = response.data;
    final list = body is Map && body['data'] is List
        ? body['data'] as List
        : body is List
            ? body
            : const [];
    return list
        .whereType<Map>()
        .map(
          (e) => StoreTemplateReleaseSummary.fromJson(
            Map<String, dynamic>.from(e),
          ),
        )
        .toList(growable: false);
  }

  Future<StoreTemplateReviewListResult> listReviews({
    required String id,
    int? page,
    int? limit,
    CancelToken? cancelToken,
  }) async {
    final response = await client.get(
      '/$table/$id/reviews',
      queryParameters: {
        'page': ?page,
        'limit': ?limit,
      },
      cancelToken: cancelToken,
    );
    return StoreTemplateReviewListResult.fromJson(
      Map<String, dynamic>.from(response.data as Map),
    );
  }

  Future<StoreTemplateReviewUpsertResult> upsertReview({
    required String id,
    required String storeId,
    required int rating,
    String? body,
    CancelToken? cancelToken,
  }) async {
    final response = await client.post(
      '/$table/$id/reviews',
      data: {
        'storeId': storeId,
        'rating': rating,
        'body': ?body,
      },
      cancelToken: cancelToken,
    );
    return StoreTemplateReviewUpsertResult.fromJson(
      Map<String, dynamic>.from(response.data as Map),
    );
  }

  Future<StoreTemplateEarnings> earnings({CancelToken? cancelToken}) async {
    final response = await client.get(
      '/store_templates_earnings',
      cancelToken: cancelToken,
    );
    return StoreTemplateEarnings.fromJson(
      Map<String, dynamic>.from(response.data as Map),
    );
  }

  /// GET locales bundle for theme i18n hydrate.
  Future<StoreTemplateLocalesBundle> listLocales({
    required String templateId,
    CancelToken? cancelToken,
  }) async {
    final response = await client.get(
      '/$table/$templateId/locales',
      cancelToken: cancelToken,
    );
    return StoreTemplateLocalesBundle.fromJson(
      Map<String, dynamic>.from(response.data as Map),
    );
  }

  /// Replace the full locale set (CLI / publish).
  Future<StoreTemplateLocalesBundle> replaceLocales({
    required String templateId,
    required List<StoreTemplateLocaleInput> locales,
    CancelToken? cancelToken,
  }) async {
    final response = await client.put(
      '/$table/$templateId/locales',
      data: {
        'locales': locales.map((e) => e.toJson()).toList(growable: false),
      },
      cancelToken: cancelToken,
    );
    return StoreTemplateLocalesBundle.fromJson(
      Map<String, dynamic>.from(response.data as Map),
    );
  }
}
