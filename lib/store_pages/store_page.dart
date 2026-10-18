const _unchanged = Object();

/// Independent store page, with editable draft and a separate live revision.
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
    this.locales = const {},
    this.extensions = const {},
    this.status = 'draft',
    this.draftRevision = 1,
    this.publishedRevision,
    this.publishedDocument,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.deletedAt,
  });
  final String id, storeId, path, status;
  final String? title, createdFromPage;
  final Map<String, dynamic>? root, publishedDocument;
  final Map<String, dynamic> props, sections, seo, data, locales, extensions;
  final int draftRevision;
  final int? publishedRevision;
  final DateTime? createdAt, updatedAt, publishedAt, deletedAt;
  bool get isPublished => status == 'published' && deletedAt == null;
  bool get hasDraftChanges => publishedRevision != draftRevision;
  bool get isDeleted => deletedAt != null;

  factory StorePage.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> map(dynamic v) =>
        v is Map ? Map<String, dynamic>.from(v) : {};
    DateTime? date(dynamic v) => v is String ? DateTime.tryParse(v) : null;
    return StorePage(
      id: (json['id'] ?? '').toString(),
      storeId: (json['storeId'] ?? json['store_id'] ?? '').toString(),
      path: (json['path'] ?? '').toString(),
      title: json['title'] as String?,
      createdFromPage:
          (json['createdFromPage'] ?? json['created_from_page']) as String?,
      root: json['root'] is Map ? map(json['root']) : null,
      props: map(json['props']),
      sections: map(json['sections']),
      seo: map(json['seo']),
      data: map(json['data']),
      locales: map(json['locales']),
      extensions: map(json['extensions']),
      status: (json['status'] ?? 'draft').toString(),
      draftRevision:
          ((json['draftRevision'] ?? json['draft_revision']) as num?)
              ?.toInt() ??
          1,
      publishedRevision:
          ((json['publishedRevision'] ?? json['published_revision']) as num?)
              ?.toInt(),
      publishedDocument:
          (json['publishedDocument'] ?? json['published_document']) is Map
          ? map(json['publishedDocument'] ?? json['published_document'])
          : null,
      createdAt: date(json['createdAt'] ?? json['created_at']),
      updatedAt: date(json['updatedAt'] ?? json['updated_at']),
      publishedAt: date(json['publishedAt'] ?? json['published_at']),
      deletedAt: date(json['deletedAt'] ?? json['deleted_at']),
    );
  }

  Map<String, dynamic> get document => {
    'path': path,
    'title': title,
    'createdFromPage': createdFromPage,
    'root': root,
    'props': props,
    'sections': sections,
    'seo': seo,
    'data': data,
    'locales': locales,
    'extensions': extensions,
  };
  Map<String, dynamic> toJson() => {
    ...document,
    'id': id,
    'storeId': storeId,
    'status': status,
    'draftRevision': draftRevision,
    'publishedRevision': publishedRevision,
    'publishedDocument': publishedDocument,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'publishedAt': publishedAt?.toIso8601String(),
    'deletedAt': deletedAt?.toIso8601String(),
  };

  StorePage copyWith({
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
  }) => StorePage(
    id: id,
    storeId: storeId,
    path: path ?? this.path,
    title: identical(title, _unchanged) ? this.title : title as String?,
    createdFromPage: identical(createdFromPage, _unchanged)
        ? this.createdFromPage
        : createdFromPage as String?,
    root: identical(root, _unchanged)
        ? this.root
        : root as Map<String, dynamic>?,
    props: props ?? this.props,
    sections: sections ?? this.sections,
    seo: seo ?? this.seo,
    data: data ?? this.data,
    locales: locales ?? this.locales,
    extensions: extensions ?? this.extensions,
    status: status ?? this.status,
    draftRevision: draftRevision,
    publishedRevision: publishedRevision,
    publishedDocument: publishedDocument,
    createdAt: createdAt,
    updatedAt: updatedAt,
    publishedAt: publishedAt,
    deletedAt: deletedAt,
  );
}

class StorePageList {
  const StorePageList({
    required this.data,
    required this.meta,
    required this.counts,
  });
  final List<StorePage> data;
  final Map<String, dynamic> meta;
  final Map<String, int> counts;
  bool get hasMore =>
      (meta['currentPage'] as num? ?? 1) < (meta['lastPage'] as num? ?? 1);
  int get total => (meta['total'] as num?)?.toInt() ?? data.length;
}
