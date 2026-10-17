/// One merchant-created free page (`store_pages` row).
///
/// System pages live in the theme; free pages live with the store and are
/// merged into the served template document when [status] is `published`.
class StorePage {
  const StorePage({
    required this.id,
    required this.storeId,
    required this.path,
    this.title,
    this.createdFromPage,
    this.root,
    this.props = const {},
    this.sections = const {},
    this.seo = const {},
    this.data = const {},
    this.status = 'draft',
    this.createdAt,
    this.updatedAt,
  });

  final String id;
  final String storeId;

  /// Public URL path: `/summer-sale`, `/guides/:slug`.
  final String path;
  final String? title;

  /// Theme page template this instance was created from, when any.
  /// Page this instance was cloned from at creation (provenance only —
  /// a one-time copy, never a live link).
  final String? createdFromPage;

  /// Page-as-root content node; null on legacy rows that carry [sections].
  final Map<String, dynamic>? root;
  final Map<String, dynamic> props;
  final Map<String, dynamic> sections;
  final Map<String, dynamic> seo;

  /// Declared data needs (seed name -> spec), resolved by the runtime.
  final Map<String, dynamic> data;

  /// `draft` | `published`.
  final String status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  bool get isPublished => status == 'published';

  factory StorePage.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> mapOf(dynamic v) =>
        v is Map ? Map<String, dynamic>.from(v) : <String, dynamic>{};
    DateTime? dateOf(dynamic v) => v is String ? DateTime.tryParse(v) : null;
    return StorePage(
      id: (json['id'] ?? '').toString(),
      storeId: (json['storeId'] ?? json['store_id'] ?? '').toString(),
      path: (json['path'] ?? '').toString(),
      title: json['title'] as String?,
      createdFromPage:
          (json['createdFromPage'] ?? json['created_from_page']) as String?,
      root: json['root'] is Map ? Map<String, dynamic>.from(json['root'] as Map) : null,
      props: mapOf(json['props']),
      sections: mapOf(json['sections']),
      seo: mapOf(json['seo']),
      data: mapOf(json['data']),
      status: (json['status'] ?? 'draft').toString(),
      createdAt: dateOf(json['createdAt'] ?? json['created_at']),
      updatedAt: dateOf(json['updatedAt'] ?? json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() => {
    'path': path,
    'title': title,
    'createdFromPage': createdFromPage,
    'root': root,
    'props': props,
    'sections': sections,
    'seo': seo,
    'data': data,
    'status': status,
  };

  StorePage copyWith({
    String? path,
    String? title,
    String? createdFromPage,
    Map<String, dynamic>? root,
    Map<String, dynamic>? props,
    Map<String, dynamic>? sections,
    Map<String, dynamic>? seo,
    Map<String, dynamic>? data,
    String? status,
  }) {
    return StorePage(
      id: id,
      storeId: storeId,
      path: path ?? this.path,
      title: title ?? this.title,
      createdFromPage: createdFromPage ?? this.createdFromPage,
      root: root ?? this.root,
      props: props ?? this.props,
      sections: sections ?? this.sections,
      seo: seo ?? this.seo,
      data: data ?? this.data,
      status: status ?? this.status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
