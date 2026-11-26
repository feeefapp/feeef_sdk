import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

import 'lab_core.dart';


/// One image sent in a multipart Lab request.
class LabUpload {
  const LabUpload(this.bytes, {this.mediaType = 'image/jpeg', this.filename});
  final Uint8List bytes;
  final String mediaType;
  final String? filename;

  String get ext => switch (mediaType) {
    'image/png' => 'png',
    'image/webp' => 'webp',
    _ => 'jpg',
  };

  MultipartFile part(String fallbackName) => MultipartFile.fromBytes(
    bytes,
    filename: filename ?? '$fallbackName.$ext',
    contentType: MediaType.parse(mediaType),
  );
}

/// Image + Poster studio (`/api/v1/lab/image/api/*`) — the web `createImageApi`.
class LabImageApi {
  LabImageApi(this._http);
  final LabHttp _http;

  String _p(String path) => 'image/api/$path';
  Future<T> _json<T>(String path, {String? method, Object? body, Map<String, dynamic>? query, String? key}) =>
      _http.json<T>(_p(path), method: method, body: body, query: query, key: key);

  Future<LabJson> models() async => labMap(await _json('models'));
  Future<LabJson> state() async => labMap(await _json('state'));
  Future<LabJson> inspiration({String? cursor, String? q}) async =>
      labMap(await _json('inspiration', query: {'cursor': cursor, 'q': q}));
  Future<LabJson> history({String? cursor}) async => labMap(await _json('history', query: {'cursor': cursor}));

  // Projects
  /// `{projects, next}`; pass `next` back as [before] for the following page.
  Future<LabJson> projects({String? before, String? q}) async =>
      labMap(await _json('projects', query: {'before': before, 'q': q}));
  Future<LabJson> createProject(LabJson body) async => labMap(await _json('projects', body: body));
  Future<LabJson> project(String id) async => labMap(await _json('projects/$id'));
  Future<LabJson> saveProject(String id, LabJson body) async =>
      labMap(await _json('projects/$id', method: 'PUT', body: body));
  Future<void> deleteProject(String id) => _json('projects/$id', method: 'DELETE');

  /// Every visible take of the project, newest first (a JSON array).
  Future<List<LabJson>> takes(String projectId) async =>
      labList(await _json('projects/$projectId/takes'));
  Future<LabJson> starTake(String projectId, String takeId, bool starred) async =>
      labMap(await _json('projects/$projectId/takes/$takeId', method: 'PATCH', body: {'starred': starred}));
  Future<void> hideTake(String projectId, String takeId) =>
      _json('projects/$projectId/takes/$takeId', method: 'DELETE');

  String takeFileUrl(String projectId, String takeId) =>
      _http.absolute(_p('projects/$projectId/takes/$takeId/file'));
  Future<Uint8List> takeFile(String projectId, String takeId) =>
      _http.bytes(_p('projects/$projectId/takes/$takeId/file'));
  String generationFileUrl(String id) => _http.absolute(_p('generations/$id/file'));
  Future<Uint8List> generationFile(String id) => _http.bytes(_p('generations/$id/file'));

  /// Authenticated headers for `Image.network(url, headers: …)`.
  Map<String, String> get fileHeaders => _http.headers;

  // Assist: same body reuses the same idempotency key until it settles (web `assistRetry`).
  ({String body, String key})? _assistRetry;
  Future<LabJson> assist(LabJson body) async {
    final serialized = jsonEncode(body);
    if (_assistRetry?.body != serialized) _assistRetry = (body: serialized, key: labRequestId());
    try {
      final value = labMap(await _json('assist', body: body, key: _assistRetry!.key));
      _assistRetry = null;
      return value;
    } on LabError catch (e) {
      if ((e.status > 0 && e.status < 500) || e.code == 'assist_failed') _assistRetry = null;
      rethrow;
    }
  }

  /// Multipart generation (web `buildGeneration`). Retrying with the same [key] replays.
  Future<LabJson> generate({
    required String model,
    required String prompt,
    required LabJson options,
    required String operation,
    required String key,
    String? projectId,
    String? parentTakeId,
    LabUpload? image,
    List<LabUpload> references = const [],
    Uint8List? mask,
    List<String> products = const [],
    CancelToken? cancel,
  }) async {
    final form = FormData()
      ..fields.addAll([
        MapEntry('model', model),
        MapEntry('prompt', prompt),
        MapEntry('options', jsonEncode(options)),
        MapEntry('operation', operation),
        if (projectId != null && projectId.isNotEmpty) MapEntry('projectId', projectId),
        if (parentTakeId != null && parentTakeId.isNotEmpty) MapEntry('parentTakeId', parentTakeId),
        // Store products: the server adds their facts to the prompt and the cover as a reference.
        if (products.isNotEmpty)
          MapEntry('attachments', jsonEncode([for (final id in products) {'type': 'product', 'value': id}])),
      ]);
    if (image != null) form.files.add(MapEntry('imageFile', image.part('source')));
    for (var i = 0; i < references.length; i++) {
      form.files.add(MapEntry('referenceFiles', references[i].part('reference-$i')));
    }
    if (mask != null) {
      form.files.add(MapEntry(
        'maskFile',
        MultipartFile.fromBytes(mask, filename: 'mask.png', contentType: MediaType.parse('image/png')),
      ));
    }
    return labMap(await _http.json(_p('generations'), body: form, key: key, cancel: cancel));
  }

  // Posters
  Future<LabJson> posterTemplates() async => labMap(await _json('posters/templates'));
  Future<LabJson> posterModels() async => labMap(await _json('posters/models'));

  /// "Suggest details": optional fields for this brief and template. A repeated key replays.
  Future<LabJson> posterQuestions(LabJson body, String key) async =>
      labMap(await _json('posters/questions', body: body, key: key));

  /// A poster (landing-page image) made from the brief and photos.
  Future<LabJson> poster({
    required String projectId,
    required String text,
    required String aspectRatio,
    required int sectionsCount,
    required String key,
    String? language,
    String? imageSize,
    String? templateId,
    String? model,
    String? textModel,
    Map<String, dynamic>? answers,
    List<LabUpload> photos = const [],
    List<String> products = const [],
    CancelToken? cancel,
  }) async {
    final form = FormData()
      ..fields.addAll([
        MapEntry('projectId', projectId),
        MapEntry('text', text.trim()),
        MapEntry('aspectRatio', aspectRatio),
        MapEntry('sectionsCount', '$sectionsCount'),
        if (language != null && language != 'auto') MapEntry('language', language),
        if (imageSize != null && imageSize.isNotEmpty) MapEntry('imageSize', imageSize),
        if (templateId != null) MapEntry('templateId', templateId),
        if (model != null) MapEntry('model', model),
        if (textModel != null) MapEntry('textModel', textModel),
        if (answers != null && answers.isNotEmpty) MapEntry('answers', jsonEncode(answers)),
        // Store products: their facts join the brief and their covers the product photos.
        if (products.isNotEmpty)
          MapEntry('resources', jsonEncode([for (final id in products) {'type': 'product', 'value': id}])),
      ]);
    for (var i = 0; i < photos.length; i++) {
      form.files.add(MapEntry('referenceFiles', photos[i].part('photo-$i')));
    }
    return labMap(await _http.json(_p('posters'), body: form, key: key, cancel: cancel));
  }
}

/// Voice studio (`/api/v1/lab/voice/api/*`) — the web `voice.tsx` `api()` helper.
class LabVoiceApi {
  LabVoiceApi(this._http);
  final LabHttp _http;

  String _p(String path) => 'voice/api/$path';
  Future<T> _json<T>(String path, {String? method, Object? body, Map<String, dynamic>? query}) =>
      _http.json<T>(_p(path), method: method, body: body, query: query);

  /// `{tier, account, usage, jobs, …}`.
  Future<LabJson> state() async => labMap(await _json('state'));

  /// Voices + saved clones for a model: `{voices, saved, next…}`.
  Future<LabJson> library({required String model, String? search, String? pageToken}) async =>
      labMap(await _json('library', query: {'model': model, 'search': search, 'page_token': pageToken}));

  /// Speech / script / design / clone. [body] carries `operation`, model, blocks…; the
  /// idempotency key travels as `key` in the body (same as the web).
  Future<LabJson> generate(LabJson body, {required String key}) async =>
      labMap(await _json('generations', body: {...body, 'key': key}));
  Future<LabJson> job(String id) async => labMap(await _json('jobs/$id'));
  String jobAudioUrl(String id) => _http.absolute(_p('jobs/$id/audio'));
  Future<Uint8List> jobAudio(String id) => _http.bytes(_p('jobs/$id/audio'));
  Future<LabJson> shareJob(String id) async => labMap(await _json('jobs/$id/share', method: 'POST'));

  /// `operation`: `rename` | `delete`.
  Future<void> manage(String id, String operation, {String? name}) =>
      _json('voices/manage', body: {'id': id, 'operation': operation, 'name': ?name, 'key': labRequestId()});

  // Projects
  /// `{projects, next}` — page with `before: next` (the web `loadProjects`).
  Future<LabJson> projects({String? before}) async =>
      labMap(await _json('projects', query: {'before': before}));
  Future<LabJson> createProject(LabJson body) async => labMap(await _json('projects', body: body));
  Future<LabJson> project(String id) async => labMap(await _json('projects/$id'));
  Future<LabJson> saveProject(String id, LabJson body) async =>
      labMap(await _json('projects/$id', method: 'PUT', body: body));
  Future<void> deleteProject(String id) => _json('projects/$id', method: 'DELETE');
  String takeAudioUrl(String projectId, String takeId) =>
      _http.absolute(_p('projects/$projectId/takes/$takeId/audio'));
  Future<Uint8List> takeAudio(String projectId, String takeId) =>
      _http.bytes(_p('projects/$projectId/takes/$takeId/audio'));
  Future<LabJson> shareTake(String projectId, String takeId) async =>
      labMap(await _json('projects/$projectId/takes/$takeId/share', method: 'POST'));

  /// Live dictation: one-use ticket for the realtime transcription socket.
  Future<LabJson> liveSession(LabJson body) async => labMap(await _json('ai/live-sessions', body: body));
  Future<void> finishLiveSession(String id, [LabJson body = const {}]) =>
      _json('ai/live-sessions/$id/finish', body: body);

  Map<String, String> get fileHeaders => _http.headers;
}

/// Media library (`/api/v1/lab/media/api/files*`) — the web `createMediaApi`.
class LabMediaApi {
  LabMediaApi(this._http);
  final LabHttp _http;
  static const _base = 'media/api/files';

  Future<({List<LabJson> objects, String? paginationToken})> list(String path, {String? token}) async {
    final r = labMap(await _http.json(_base, query: {'path': path, 'paginationToken': token}));
    return (objects: labList(r['objects']), paginationToken: r['paginationToken'] as String?);
  }

  /// Uploads one file into [folder], reporting progress 0–1. Returns `{url, path, name}`.
  Future<LabJson> upload(
    Uint8List bytes,
    String filename,
    String folder, {
    String? mediaType,
    void Function(double progress)? onProgress,
  }) async {
    final form = FormData()
      ..files.add(MapEntry(
        'file',
        MultipartFile.fromBytes(
          bytes,
          filename: filename,
          contentType: mediaType == null ? null : MediaType.parse(mediaType),
        ),
      ));
    return labMap(await _http.json(
      '$_base?folder=${Uri.encodeQueryComponent(folder)}',
      body: form,
      onSendProgress: onProgress == null ? null : (s, t) => t > 0 ? onProgress(s / t) : null,
    ));
  }

  Future<void> remove(List<String> paths) => _http.json(
    '$_base?${paths.map((p) => 'paths=${Uri.encodeQueryComponent(p)}').join('&')}',
    method: 'DELETE',
  );
  Future<void> move(String source, String destination) =>
      _http.json('$_base/move', method: 'POST', query: {'source': source, 'destination': destination});
  Future<LabJson> size(String path) async => labMap(await _http.json('$_base/size', query: {'path': path}));
  Future<Uint8List> content(String path) => _http.bytes('$_base/content', query: {'path': path});
}

/// Lab Ads (`/api/v1/lab/ads/api/*`) — the web `createAdsApi`.
class LabAdsApi {
  LabAdsApi(this._http);
  final LabHttp _http;

  String _p(String path) => 'ads/api/$path';
  Future<T> _json<T>(String path, {String? method, Object? body, Map<String, dynamic>? query, String? key}) =>
      _http.json<T>(_p(path), method: method, body: body, query: query, key: key);

  Future<List<LabJson>> accounts() async => labList(labMap(await _json('accounts'))['data']);

  /// [query]: level, account, from, to, campaign?, ad_group?, status?, q?, cursor?, metrics?.
  Future<LabJson> objects(Map<String, dynamic> query) async => labMap(await _json('objects', query: query));
  Future<LabJson> object(String level, String id) async => labMap(await _json('objects/$level/$id'));
  Future<LabJson> draft(String level, String id) async => labMap(await _json('objects/$level/$id/draft'));
  Future<LabJson> insights(Map<String, dynamic> query) async => labMap(await _json('insights', query: query));
  Future<List<LabJson>> activity(String account, String object) async =>
      labList(labMap(await _json('activity', query: {'account': account, 'object': object}))['data']);
  Future<LabJson> sync(String account) async => labMap(await _json('accounts/$account/sync', method: 'POST'));
  Future<void> removeAccount(String account) => _json('accounts/$account', method: 'DELETE');
  Future<LabJson> preview(String account, List<LabJson> operations) async => labMap(
    await _json('changes', body: {'account': account, 'operations': operations}, key: labRequestId()),
  );
  Future<LabJson> apply(String change) async => labMap(await _json('changes/$change/apply', method: 'POST'));
  Future<LabJson> change(String change) async => labMap(await _json('changes/$change'));
  Future<({List<LabJson> data, String? nextCursor})> changes(String account, {String? cursor}) async {
    final r = labMap(await _json('changes', query: {'account': account, 'cursor': cursor}));
    return (data: labList(r['data']), nextCursor: r['next_cursor'] as String?);
  }

  Future<LabJson> revert(String change) async =>
      labMap(await _json('changes/$change/revert', method: 'POST', key: labRequestId()));

  /// [kind]: identity | pixel | image | video | creative.
  Future<List<LabJson>> assets(String account, String kind) async =>
      labList(labMap(await _json('accounts/$account/assets', query: {'kind': kind}))['data']);

  /// Uploads a photo or video to the account's platform library.
  Future<LabJson> upload(
    String account,
    String kind,
    Uint8List bytes,
    String filename, {
    String? mediaType,
    void Function(double share)? onProgress,
  }) async {
    final form = FormData()
      ..fields.addAll([MapEntry('account', account), MapEntry('kind', kind)])
      ..files.add(MapEntry(
        'file',
        MultipartFile.fromBytes(bytes, filename: filename, contentType: mediaType == null ? null : MediaType.parse(mediaType)),
      ));
    return labMap(await _http.json(
      _p('media'),
      body: form,
      key: labRequestId(),
      onSendProgress: onProgress == null ? null : (s, t) => t > 0 ? onProgress(s / t) : null,
    ));
  }

  Future<List<LabJson>> metrics() async => labList(labMap(await _json('metrics'))['data']);
  Future<LabJson> preferences() async => labMap(await _json('preferences'));
  Future<LabJson> savePreferences(LabJson preferences) async =>
      labMap(await _json('preferences', method: 'PUT', body: preferences));
  Future<LabJson> createPixel(String account, String name) async =>
      labMap(await _json('accounts/$account/pixels', body: {'name': name}, key: labRequestId()));
  Future<LabJson> pixel(String account, String pixel) async =>
      labMap(await _json('accounts/$account/pixels/${Uri.encodeComponent(pixel)}'));
  Future<List<LabJson>> stores() async => labList(labMap(await _json('stores'))['data']);
  Future<List<LabJson>> copy(LabJson input) async =>
      labList(labMap(await _json('copy', body: input, key: labRequestId()))['variants']);
  Future<bool> assistant() async => labMap(await _json('assistant', method: 'POST'))['ready'] == true;

  /// Cloud's hosted connect page.
  Future<String> connect(String provider, {bool readOnly = false}) async => labMap(
    await _http.json('chat/api/ads/connect', body: {'provider': provider, 'readOnly': readOnly, 'from': 'ads'}),
  )['url'] as String;
}

/// Lab billing (`/api/v1/lab/billing/api/*`) — the web `createBillingApi` + `use_billing`.
class LabBillingApi {
  LabBillingApi(this._http);
  final LabHttp _http;

  String _p(String path) => 'billing/api/$path';

  /// `{account, balanceDzd, hasPendingCheckout, plans: {A,B,C}, topUp, signedIn}`.
  Future<LabJson> state() async => labMap(await _http.json(_p('state')));

  /// [body]: `{tier, key, locale, from}` — returns `{url}` or `{active: true}`.
  Future<LabJson> checkout(LabJson body) async => labMap(await _http.json(_p('checkout'), body: body));
  /// Pays the open renewal invoice: `{locale, from}` → `{url}`.
  Future<LabJson> portal([LabJson body = const {}]) async => labMap(await _http.json(_p('portal'), body: body));
  Future<LabJson> upgrade(LabJson body) async => labMap(await _http.json(_p('upgrade'), body: body));
  Future<LabJson> change(LabJson body) async => labMap(await _http.json(_p('change'), body: body));
  /// `{cancel, locale, from}` → `{url}` (resume) or `{canceled: true}`.
  Future<LabJson> pendingCheckout([LabJson body = const {}]) async =>
      labMap(await _http.json(_p('checkout/pending'), body: body));
  Future<LabJson> topUp(LabJson body) async => labMap(await _http.json(_p('topup'), body: body));
  Future<LabJson> topUpState(String id) async => labMap(await _http.json(_p('topup/$id')));
}
