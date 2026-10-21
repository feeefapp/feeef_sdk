import 'dart:convert';

import 'package:dio/dio.dart';

/// Template system v3 API (docs/template-system/PLAN.md §6): packages, drafts, versions, the
/// live template, store pages, marketplace, licences and reviews. Errors surface as
/// [DioException]s whose `response.data` is `{code, message, ...}`.
class PackagesApi {
  PackagesApi(this.client, {Dio? artifactClient}) : artifactClient = artifactClient ?? Dio();
  final Dio client;

  /// Unauthenticated client for public artifacts (never sends the store token to the CDN).
  final Dio artifactClient;

  String _store(String storeId) => '/stores/${Uri.encodeComponent(storeId)}';
  String _pkg(String storeId, String packageId) =>
      '${_store(storeId)}/packages/${Uri.encodeComponent(packageId)}';

  Future<Map<String, dynamic>> _call(
    String method,
    String path, {
    Object? body,
    Map<String, dynamic>? query,
  }) async {
    final r = await client.request<Object?>(
      path,
      data: body,
      queryParameters: query,
      options: Options(method: method),
    );
    final data = r.data;
    if (data is! Map) throw const FormatException('Invalid packages response');
    return Map<String, dynamic>.from(data);
  }

  // ------------------------------------------------------------ store packages

  Future<Map<String, dynamic>> list(String storeId, {String? kind}) =>
      _call('GET', '${_store(storeId)}/packages', query: {'kind': ?kind});
  Future<Map<String, dynamic>> create(
    String storeId, {
    required String kind,
    required String title,
    String? slug,
  }) => _call(
    'POST',
    '${_store(storeId)}/packages',
    body: {'kind': kind, 'title': title, 'slug': ?slug},
  );
  Future<Map<String, dynamic>> show(String storeId, String packageId) =>
      _call('GET', _pkg(storeId, packageId));
  Future<Map<String, dynamic>> update(
    String storeId,
    String packageId,
    Map<String, dynamic> fields,
  ) => _call('PATCH', _pkg(storeId, packageId), body: fields);

  // -------------------------------------------------------------------- drafts

  Future<PackageDraft> draft(String storeId, String packageId) async =>
      PackageDraft.fromJson(
        await _call('GET', '${_pkg(storeId, packageId)}/draft'),
      );

  /// Apply file changes (`text: null` deletes) if the draft is still at [expectedVersion].
  /// Returns the new version (files are not echoed back).
  Future<int> patch(
    String storeId,
    String packageId, {
    required int expectedVersion,
    required Map<String, String?> changes,
  }) async {
    final r = await _call(
      'PATCH',
      '${_pkg(storeId, packageId)}/draft',
      body: {
        'expectedVersion': expectedVersion,
        'changes': [
          for (final e in changes.entries) {'path': e.key, 'text': e.value},
        ],
      },
    );
    return (r['version'] as num).toInt();
  }

  Future<PackageDraft> discard(
    String storeId,
    String packageId, {
    String? versionId,
  }) async => PackageDraft.fromJson(
    await _call(
      'POST',
      '${_pkg(storeId, packageId)}/draft/discard',
      body: {'versionId': ?versionId},
    ),
  );

  /// Compile the draft; `{ok, draftVersion, artifactHash?, diagnostics}`.
  Future<Map<String, dynamic>> check(String storeId, String packageId) =>
      _call('POST', '${_pkg(storeId, packageId)}/draft/check');

  /// Compile and mint a preview token; open `<store url>?preview=<token>`.
  Future<Map<String, dynamic>> preview(String storeId, String packageId) =>
      _call('POST', '${_pkg(storeId, packageId)}/draft/preview');

  Future<Map<String, dynamic>> publish(
    String storeId,
    String packageId, {
    required int expectedDraftVersion,
    String? message,
    bool activate = false,
  }) => _call(
    'POST',
    '${_pkg(storeId, packageId)}/publish',
    body: {
      'expectedDraftVersion': expectedDraftVersion,
      'message': ?message,
      'activate': activate,
    },
  );

  // ------------------------------------------------------------------ versions

  Future<Map<String, dynamic>> versionFiles(
    String storeId,
    String packageId,
    String versionId,
  ) => _call(
    'GET',
    '${_pkg(storeId, packageId)}/versions/${Uri.encodeComponent(versionId)}/files',
  );
  Future<Map<String, dynamic>> setPublished(
    String storeId,
    String packageId,
    String versionId,
    bool published,
  ) => _call(
    'POST',
    '${_pkg(storeId, packageId)}/versions/${Uri.encodeComponent(versionId)}/published',
    body: {'published': published},
  );
  Future<Map<String, dynamic>> yank(
    String storeId,
    String packageId,
    String versionId,
  ) => _call(
    'POST',
    '${_pkg(storeId, packageId)}/versions/${Uri.encodeComponent(versionId)}/yank',
  );

  Future<Map<String, dynamic>> updateStatus(String storeId, String packageId) =>
      _call('GET', '${_pkg(storeId, packageId)}/update');
  Future<Map<String, dynamic>> mergeUpdate(String storeId, String packageId) =>
      _call('POST', '${_pkg(storeId, packageId)}/update/merge');

  // ------------------------------------------------------------- live template

  /// `{versionId, packageId, engine, artifactHash, artifactUrl}`; 404 when none is installed.
  Future<Map<String, dynamic>> live(String storeId) =>
      _call('GET', '${_store(storeId)}/template');
  Future<Map<String, dynamic>> setLive(String storeId, String versionId) =>
      _call(
        'PUT',
        '${_store(storeId)}/template',
        body: {'versionId': versionId},
      );

  /// The compiled artifact (public, immutable by hash): components catalog for page editors.
  Future<Map<String, dynamic>> artifact(String artifactUrl) async {
    final r = await artifactClient.get<String>(
      artifactUrl,
      options: Options(responseType: ResponseType.plain),
    );
    final data = jsonDecode(r.data ?? '');
    if (data is! Map) throw const FormatException('Invalid artifact');
    return Map<String, dynamic>.from(data);
  }

  // --------------------------------------------------------------- marketplace

  Future<Map<String, dynamic>> marketplace({
    String? kind,
    String? q,
    int page = 1,
  }) => _call(
    'GET',
    '/packages',
    query: {'kind': ?kind, if (q != null && q.isNotEmpty) 'q': q, 'page': page},
  );
  Future<Map<String, dynamic>> marketplaceShow(String packageId) =>
      _call('GET', '/packages/${Uri.encodeComponent(packageId)}');
  Future<Map<String, dynamic>> install(
    String storeId,
    String packageId, {
    num? expectedPrice,
    bool activate = true,
  }) => _call(
    'POST',
    '${_store(storeId)}/packages/install',
    body: {
      'packageId': packageId,
      'expectedPrice': ?expectedPrice,
      'activate': activate,
    },
  );
  Future<Map<String, dynamic>> licences(String storeId) =>
      _call('GET', '${_store(storeId)}/licences');
  Future<Map<String, dynamic>> reviews(String packageId) =>
      _call('GET', '/packages/${Uri.encodeComponent(packageId)}/reviews');
  Future<Map<String, dynamic>> review(
    String storeId,
    String packageId, {
    required int rating,
    String? body,
  }) => _call(
    'POST',
    '${_store(storeId)}/packages/${Uri.encodeComponent(packageId)}/review',
    body: {'rating': rating, 'body': ?body},
  );

  // ---------------------------------------------------------------- store pages

  Future<Map<String, dynamic>> pages(
    String storeId, {
    String? kind,
    String? productId,
    String? search,
  }) => _call(
    'GET',
    '${_store(storeId)}/pages',
    query: {
      'kind': ?kind,
      'productId': ?productId,
      if (search != null && search.isNotEmpty) 'search': search,
    },
  );
  Future<Map<String, dynamic>> page(String storeId, String pageId) =>
      _call('GET', '${_store(storeId)}/pages/${Uri.encodeComponent(pageId)}');
  Future<Map<String, dynamic>> createPage(
    String storeId, {
    required String path,
    String? title,
    Map<String, dynamic>? root,
    String? productId,
  }) => _call(
    'POST',
    '${_store(storeId)}/pages',
    body: {
      'path': path,
      'title': ?title,
      'root': ?root,
      'productId': ?productId,
    },
  );

  /// Version-checked edit of any of `path, title, root, seo, data, productId`.
  Future<Map<String, dynamic>> updatePage(
    String storeId,
    String pageId, {
    required int expectedVersion,
    required Map<String, dynamic> fields,
  }) => _call(
    'PATCH',
    '${_store(storeId)}/pages/${Uri.encodeComponent(pageId)}',
    body: {'expectedVersion': expectedVersion, ...fields},
  );
  Future<Map<String, dynamic>> publishPage(
    String storeId,
    String pageId, {
    int? expectedVersion,
  }) => _call(
    'POST',
    '${_store(storeId)}/pages/${Uri.encodeComponent(pageId)}/publish',
    body: {'expectedVersion': ?expectedVersion},
  );
  Future<Map<String, dynamic>> unpublishPage(String storeId, String pageId) =>
      _call(
        'POST',
        '${_store(storeId)}/pages/${Uri.encodeComponent(pageId)}/unpublish',
      );
  Future<Map<String, dynamic>> duplicatePage(String storeId, String pageId) =>
      _call(
        'POST',
        '${_store(storeId)}/pages/${Uri.encodeComponent(pageId)}/duplicate',
      );
  Future<Map<String, dynamic>> deletePage(String storeId, String pageId) =>
      _call(
        'DELETE',
        '${_store(storeId)}/pages/${Uri.encodeComponent(pageId)}',
      );

  /// `{token, path}`; open `<store url><path>?pagePreview=<token>`.
  Future<Map<String, dynamic>> previewPage(String storeId, String pageId) =>
      _call(
        'POST',
        '${_store(storeId)}/pages/${Uri.encodeComponent(pageId)}/preview',
      );
}

/// The editable files of a package for one store.
class PackageDraft {
  PackageDraft({
    required this.id,
    required this.storeId,
    required this.packageId,
    required this.baseVersionId,
    required this.version,
    required this.files,
  });
  final String id;
  final String storeId;
  final String packageId;
  final String? baseVersionId;
  final int version;
  final Map<String, String> files;

  factory PackageDraft.fromJson(Map<String, dynamic> json) => PackageDraft(
    id: json['id'] as String,
    storeId: json['storeId'] as String,
    packageId: json['packageId'] as String,
    baseVersionId: json['baseVersionId'] as String?,
    version: (json['version'] as num).toInt(),
    files: {
      for (final e in ((json['files'] as Map?) ?? const {}).entries)
        e.key as String: e.value as String,
    },
  );

  PackageDraft copyWith({int? version, Map<String, String>? files}) =>
      PackageDraft(
        id: id,
        storeId: storeId,
        packageId: packageId,
        baseVersionId: baseVersionId,
        version: version ?? this.version,
        files: files ?? this.files,
      );
}
