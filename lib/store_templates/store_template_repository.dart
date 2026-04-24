import 'package:dio/dio.dart';

import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/interfaces/template_component.dart';
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
      if (params != null) ...params,
      if (storeId != null) 'storeId': storeId,
      if (filterator != null && filterator.isNotEmpty) 'filterator': filterator,
      if (filterator == null && searchQuery != null && searchQuery.isNotEmpty)
        'q': searchQuery,
      if (policy != null) 'policy': policy.wire,
      if (orderBy != null) 'orderBy': orderBy,
      if (orderDirection != null) 'orderDirection': orderDirection,
    };
    return super.list(page: page, offset: offset, limit: limit, params: merged);
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
        if (title != null) 'title': title,
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
    CancelToken? cancelToken,
  }) async {
    final response = await client.post(
      '/$table/$id/install',
      data: {'storeId': storeId},
      cancelToken: cancelToken,
    );
    return StoreTemplateInstallResult.fromJson(
      Map<String, dynamic>.from(response.data as Map),
    );
  }
}
