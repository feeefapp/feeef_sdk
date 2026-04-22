import 'package:dio/dio.dart';

import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/template_components/template_component.dart';

/// CRUD repository for store-owned reusable custom components.
///
/// Endpoints (REST + a small extension):
///  - `GET    /template_components`        — list (store-owned or marketplace)
///  - `POST   /template_components`        — create
///  - `GET    /template_components/:id`    — show
///  - `PUT    /template_components/:id`    — update
///  - `DELETE /template_components/:id`    — soft delete
///  - `POST   /template_components/:id/fork` — fork into another store
///
/// The list endpoint is dual-mode on the backend:
///  - When [storeId] is provided, returns the *store's library* (private +
///    unlisted + public + deprecated rows the caller can author against).
///  - When [storeId] is omitted, returns the *public marketplace* (only
///    `policy in ('public', 'deprecated')`).
///
/// The [filterator] argument mirrors the backend `filterator` query
/// language (the same one used by `ProductRepository.list`). Pass a
/// JSON-encoded filter group string from the editor; we forward it as-is.
class TemplateComponentsRepository
    extends
        ResourceRepository<
          TemplateComponent,
          TemplateComponentCreate,
          TemplateComponentUpdate
        > {
  TemplateComponentsRepository({required super.client})
    : super(table: 'template_components');

  // ── Resource hooks ────────────────────────────────────────────────────
  @override
  TemplateComponent modelFromJson(json) =>
      TemplateComponent.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(TemplateComponent model) => model.toJson();

  @override
  TemplateComponentCreate createFromJson(json) {
    final m = json as Map<String, dynamic>;
    return TemplateComponentCreate(
      storeId: (m['storeId'] ?? m['store_id']) as String,
      title: m['title'] as String,
      code: (m['code'] as String?) ?? '',
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
      propsSchema: Map<String, dynamic>.from(
        (m['propsSchema'] ?? m['props_schema'] ?? const {}) as Map,
      ),
      slotsSchema: m['slotsSchema'] is Map
          ? Map<String, dynamic>.from(m['slotsSchema'] as Map)
          : (m['slots_schema'] is Map
                ? Map<String, dynamic>.from(m['slots_schema'] as Map)
                : null),
      propsDefault: Map<String, dynamic>.from(
        (m['propsDefault'] ?? m['props_default'] ?? const {}) as Map,
      ),
      slotsDefault: m['slotsDefault'] is Map
          ? Map<String, dynamic>.from(m['slotsDefault'] as Map)
          : (m['slots_default'] is Map
                ? Map<String, dynamic>.from(m['slots_default'] as Map)
                : null),
      slotsLayout: m['slotsLayout'] is Map
          ? Map<String, dynamic>.from(m['slotsLayout'] as Map)
          : (m['slots_layout'] is Map
                ? Map<String, dynamic>.from(m['slots_layout'] as Map)
                : null),
      policy: TemplateComponentPolicy.fromWire(m['policy'] as String?),
      parentId: (m['parentId'] ?? m['parent_id']) as String?,
    );
  }

  @override
  Map<String, dynamic> createToJson(TemplateComponentCreate model) =>
      model.toJson();

  @override
  TemplateComponentUpdate updateFromJson(json) {
    final m = json as Map<String, dynamic>;
    return TemplateComponentUpdate(
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
      code: m['code'] as String?,
      propsSchema: m['propsSchema'] is Map
          ? Map<String, dynamic>.from(m['propsSchema'] as Map)
          : (m['props_schema'] is Map
                ? Map<String, dynamic>.from(m['props_schema'] as Map)
                : null),
      slotsSchema: m['slotsSchema'] is Map
          ? Map<String, dynamic>.from(m['slotsSchema'] as Map)
          : (m['slots_schema'] is Map
                ? Map<String, dynamic>.from(m['slots_schema'] as Map)
                : null),
      propsDefault: m['propsDefault'] is Map
          ? Map<String, dynamic>.from(m['propsDefault'] as Map)
          : (m['props_default'] is Map
                ? Map<String, dynamic>.from(m['props_default'] as Map)
                : null),
      slotsDefault: m['slotsDefault'] is Map
          ? Map<String, dynamic>.from(m['slotsDefault'] as Map)
          : (m['slots_default'] is Map
                ? Map<String, dynamic>.from(m['slots_default'] as Map)
                : null),
      slotsLayout: m['slotsLayout'] is Map
          ? Map<String, dynamic>.from(m['slotsLayout'] as Map)
          : (m['slots_layout'] is Map
                ? Map<String, dynamic>.from(m['slots_layout'] as Map)
                : null),
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
  Map<String, dynamic> updateToJson(TemplateComponentUpdate model) =>
      model.toJson();

  // ── List override ─────────────────────────────────────────────────────
  /// List with the same paging contract as the base mixin, plus a few
  /// editor-friendly affordances:
  ///
  ///  * [storeId] → switches the backend into "library" mode for the
  ///    given store. Omit for the public marketplace.
  ///  * [searchQuery] → free-text search; backend matches against
  ///    title/subtitle/category/tags.
  ///  * [filterator] → JSON-encoded structured filter group (see
  ///    `template_component_filterator.ts`); takes precedence over
  ///    [searchQuery] when provided so callers can build advanced
  ///    facets without re-implementing the filterator language.
  ///  * [policy] → quick filter for a single policy bucket
  ///    (e.g. only `public` rows for the marketplace tab).
  ///  * [orderBy] / [orderDirection] → forwarded as-is.
  @override
  Future<ListResponse<TemplateComponent>> list({
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

  // ── Marketplace shorthand ─────────────────────────────────────────────
  /// Public marketplace shortcut. Equivalent to calling [list] with
  /// `policy = TemplateComponentPolicy.public` and no `storeId`.
  Future<ListResponse<TemplateComponent>> listMarketplace({
    String? searchQuery,
    String? filterator,
    String? orderBy,
    String? orderDirection,
    int? page,
    int? offset,
    int? limit,
  }) {
    return list(
      searchQuery: searchQuery,
      filterator: filterator,
      policy: TemplateComponentPolicy.public,
      orderBy: orderBy,
      orderDirection: orderDirection,
      page: page,
      offset: offset,
      limit: limit,
    );
  }

  // ── Fork (server-side copy) ───────────────────────────────────────────
  /// Forks a marketplace / unlisted component into the caller's store
  /// library. The server creates a fresh `template_components` row that
  /// mirrors the source's schema/defaults/code, links back via
  /// `parentId`, and resets `policy` to `private`. The response is the
  /// new owned [TemplateComponent].
  ///
  /// [targetStoreId] is the store that will own the fork — required so
  /// the same user with multiple stores doesn't end up forking into a
  /// random one.
  Future<TemplateComponent> fork({
    required String id,
    required String targetStoreId,
    CancelToken? cancelToken,
  }) async {
    final response = await client.post(
      '/$table/$id/fork',
      data: {'storeId': targetStoreId},
      cancelToken: cancelToken,
    );
    return TemplateComponent.fromJson(
      Map<String, dynamic>.from(response.data as Map),
    );
  }
}
