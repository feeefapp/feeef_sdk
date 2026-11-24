import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';

import 'lab_chat_reduce.dart';
import 'lab_core.dart';


/// What a `send`/`events` stream reports per chunk: the parsed chunk and its SSE sequence id.
class LabChatEvent {
  const LabChatEvent(this.chunk, this.seq);
  final LabChunk chunk;
  final int? seq;
}

/// Body of `POST conversations/:id/messages` (web `SendInput`).
class LabSendInput {
  const LabSendInput({
    this.parts,
    this.parentId,
    this.editOf,
    this.regenerateOf,
    this.model,
    this.reasoningEffort,
    this.mentions,
    this.compact,
    this.template,
    this.skill,
    this.capabilities,
    this.captchaToken,
  });

  final List<LabPartMap>? parts;
  final String? parentId;
  final String? editOf;
  final String? regenerateOf;
  final String? model;

  /// `low` | `medium` | `high`.
  final String? reasoningEffort;

  /// Saved agents `@`-mentioned in the message: they join this turn as sub-agents.
  final List<String>? mentions;
  final bool? compact;
  final ({String name, String? args})? template;
  final ({String name, String? args})? skill;

  /// Media kinds the client can render (`image`, `voice`).
  final List<String>? capabilities;
  final String? captchaToken;

  LabJson toJson({bool queue = false}) => {
    'parts': ?parts,
    if (parentId != null || parts != null) 'parent_id': parentId,
    'edit_of': ?editOf,
    'regenerate_of': ?regenerateOf,
    'model': ?model,
    'reasoning_effort': ?reasoningEffort,
    'mentions': ?mentions,
    'compact': ?compact,
    if (template != null) 'template': {'name': template!.name, 'args': ?template!.args},
    if (skill != null) 'skill': {'name': skill!.name, 'args': ?skill!.args},
    'capabilities': ?capabilities,
    'captcha_token': ?captchaToken,
    if (queue) 'queue': true,
  };
}

/// Lab chat + automations client (`/api/v1/lab/chat/api/*`). Same calls as the web
/// `createChatApi` / `createAutomationApi`; JSON stays as maps (the wire contract).
class LabChatApi {
  LabChatApi(this._http);
  final LabHttp _http;

  String _p(String path) => 'chat/api/$path';
  Future<T> _json<T>(String path, {String? method, Object? body, Map<String, dynamic>? query, String? key}) =>
      _http.json<T>(_p(path), method: method, body: body, query: query, key: key);

  // ── State & conversations ─────────────────────────────────────────────
  Future<LabJson> state() async => labMap(await _json('state'));

  Future<({List<LabJson> data, String? nextCursor})> list({String? q, String? cursor}) async {
    final r = labMap(await _json('conversations', query: {'q': q, 'cursor': cursor}));
    return (data: labList(r['data']), nextCursor: r['next_cursor'] as String?);
  }

  /// A plain conversation, or one started from a saved agent.
  Future<LabJson> create({String? agentId}) async => labMap(
    await _json('conversations', body: {'agent_id': ?agentId}, key: labRequestId()),
  );
  Future<LabJson> get(String id, {String? leaf}) async =>
      labMap(await _json('conversations/$id', query: {'leaf': leaf}));
  Future<LabJson> context(String id, String model) async =>
      labMap(await _json('conversations/$id/context', query: {'model': model}));
  Future<LabJson> spend(String id) async => labMap(await _json('conversations/$id/spend'));

  /// Extra usage (Pro / Studio): settings, this month's DZD spend and whether it pays right now.
  Future<LabJson> extraUsage() async => labMap(await _json('extra-usage'));

  /// Opt in or out of extra usage and/or set the monthly DZD cap (100 to 50,000).
  Future<LabJson> updateExtraUsage({bool? enabled, int? monthlyCapDzd}) async => labMap(
    await _json(
      'extra-usage',
      method: 'PATCH',
      body: {'enabled': ?enabled, 'monthlyCapDzd': ?monthlyCapDzd},
    ),
  );
  Future<LabJson> update(String id, LabJson body) async =>
      labMap(await _json('conversations/$id', method: 'PATCH', body: body));
  Future<void> remove(String id) => _json('conversations/$id', method: 'DELETE');
  Future<LabJson> tree(String id) async => labMap(await _json('conversations/$id/tree'));
  Future<LabJson> fork(String id, String messageId) async => labMap(
    await _json('conversations/$id/fork', body: {'message_id': messageId}, key: labRequestId()),
  );

  /// Attachment upload (base64 JSON, same as web). Returns a `file` part.
  Future<LabPartMap> uploadAttachment({
    required String filename,
    required List<int> bytes,
    required String model,
  }) async => labMap(
    await _json('attachments', body: {'filename': filename, 'data': base64Encode(bytes), 'model': model}),
  );

  /// URL of an uploaded attachment / generated file (needs [LabHttp.headers]).
  String fileUrl(String path) => path.startsWith('http')
      ? path
      : _http.absolute(path.replaceFirst(RegExp(r'^/'), ''));

  // ── Runs & streaming ─────────────────────────────────────────────────
  Future<LabJson> run(String id) async => labMap(await _json('runs/$id'));

  /// Starts a turn: the run id (`x-agent-run-id`) and its live chunk stream. Retrying with the
  /// same [key] replays.
  Future<({String? runId, Stream<LabChatEvent> events})> send(
    String conversationId,
    LabSendInput input, {
    required String key,
    CancelToken? cancel,
  }) async {
    final r = await _http.sseResponse(
      _p('conversations/$conversationId/messages'),
      method: 'POST',
      body: input.toJson(),
      key: key,
      cancel: cancel,
    );
    final events = _chunks(r.frames);
    final header = r.headers.value('x-agent-run-id');
    if (header != null && header.isNotEmpty) return (runId: header, events: events);
    // Header hidden (browser CORS, proxy): the stream also announces it in `data-feeef-run`.
    return _runIdFromStream(events);
  }

  /// Reads chunks until the `data-feeef-run` announcement and replays them ahead of the rest.
  Future<({String? runId, Stream<LabChatEvent> events})> _runIdFromStream(
    Stream<LabChatEvent> events,
  ) async {
    final seen = <LabChatEvent>[];
    final iterator = StreamIterator(events);
    String? runId;
    while (runId == null && await iterator.moveNext()) {
      final e = iterator.current;
      seen.add(e);
      if (e.chunk['type'] == 'data-feeef-run' && e.chunk['data'] is Map) {
        final id = (e.chunk['data'] as Map)['runId'];
        if (id is String && id.isNotEmpty) runId = id;
      }
      if (e.chunk['type'] == '__done') break;
    }
    Stream<LabChatEvent> rest() async* {
      yield* Stream.fromIterable(seen);
      try {
        while (await iterator.moveNext()) {
          yield iterator.current;
        }
      } finally {
        await iterator.cancel();
      }
    }

    return (runId: runId, events: rest());
  }

  /// Follow a run's events after sequence [after] (resume after drops).
  Future<Stream<LabChatEvent>> events(String runId, int after, {CancelToken? cancel}) async {
    final frames = await _http.sse(
      _p('runs/$runId/events'),
      headers: {'Last-Event-ID': '$after'},
      cancel: cancel,
    );
    return _chunks(frames);
  }

  /// Queue a message behind the running reply.
  Future<LabJson> queue(String conversationId, LabSendInput input, String key) async => labMap(
    await _json('conversations/$conversationId/messages', body: input.toJson(queue: true), key: key),
  );
  Future<void> cancelFollowup(String runId, String inputId) =>
      _json('runs/$runId/followups/$inputId', method: 'DELETE');
  Future<LabJson> answer(String runId, String inputId, Object? response) async =>
      labMap(await _json('runs/$runId/inputs', body: {'input_id': inputId, 'response': response}));
  Future<LabJson> executeStudio(String runId, String inputId) async =>
      labMap(await _json('runs/$runId/studio', body: {'input_id': inputId}));
  Future<LabJson> studioStatus({required String kind, required String projectId, required String jobId}) async =>
      labMap(await _json('studio/status', query: {'kind': kind, 'projectId': projectId, 'jobId': jobId}));
  Future<LabJson> cancel(String runId) async => labMap(await _json('runs/$runId/cancel', method: 'POST'));
  Future<LabJson> steer(String runId, String text) async =>
      labMap(await _json('runs/$runId/steer', body: {'text': text}));

  Stream<LabChatEvent> _chunks(Stream<LabSseFrame> frames) async* {
    await for (final f in frames) {
      if (f.data == '[DONE]') {
        yield const LabChatEvent({'type': '__done'}, null);
        return;
      }
      try {
        final parsed = jsonDecode(f.data);
        if (parsed is Map) yield LabChatEvent(parsed.cast<String, dynamic>(), f.id);
      } catch (_) {/* ignore malformed frame */}
    }
  }

  // ── Library, memory, sharing ────────────────────────────────────────
  Future<LabJson> library() async => labMap(await _json('library'));
  Future<void> saveLibraryItem(String kind, String name, LabJson body) =>
      _json('library/$kind/${Uri.encodeComponent(name)}', method: 'PUT', body: body);
  Future<void> deleteLibraryItem(String kind, String name) =>
      _json('library/$kind/${Uri.encodeComponent(name)}', method: 'DELETE');
  Future<List<LabJson>> memories() async => labList(labMap(await _json('memories'))['data']);
  Future<void> forgetMemory(String id) => _json('memories/$id', method: 'DELETE');
  Future<List<LabJson>> shares(String conversationId) async =>
      labList(labMap(await _json('conversations/$conversationId/shares'))['data']);
  Future<LabJson> createShare(String conversationId, {required bool includeTools}) async => labMap(
    await _json('conversations/$conversationId/shares', body: {'include_tools': includeTools}),
  );
  Future<void> revokeShare(String token) => _json('shares/$token', method: 'DELETE');
  Future<LabJson> continueShared(String token) async => labMap(await _json('shared/$token/continue'));
  Future<String> export(String conversationId, String format) async {
    final b = await _http.bytes(_p('conversations/$conversationId/export'), query: {'format': format});
    return utf8.decode(b);
  }

  // ── Connectors & MCP apps ───────────────────────────────────────────
  Future<LabJson> connectors() async => labMap(await _json('connectors'));
  Future<List<LabJson>> connectorTools(String id) async =>
      labList(labMap(await _json('connectors/$id/tools'))['data']);
  Future<LabJson> addConnector(LabJson body) async => labMap(await _json('connectors', body: body));
  Future<LabJson> updateConnector(String id, LabJson body) async =>
      labMap(await _json('connectors/$id', method: 'PATCH', body: body));
  Future<void> removeConnector(String id) => _json('connectors/$id', method: 'DELETE');
  Future<LabJson> authorizeConnector(String id) async => labMap(await _json('connectors/$id/authorize', method: 'POST'));
  Future<LabJson> completeConnector(String id, String handoff) async =>
      labMap(await _json('connectors/$id/complete', body: {'handoff': handoff}));
  Future<LabJson> refreshConnector(String id) async => labMap(await _json('connectors/$id/refresh', method: 'POST'));
  Future<LabJson> logoutConnector(String id) async => labMap(await _json('connectors/$id/logout', method: 'POST'));
  Future<LabJson> appResource(String connectorId, String uri) async =>
      labMap(await _json('connectors/$connectorId/resources', query: {'uri': uri}));
  Future<dynamic> appCall(String connectorId, String tool, Object? args, {bool confirmed = false}) =>
      _json('connectors/$connectorId/app-calls', body: {'tool': tool, 'arguments': args ?? {}, 'confirmed': confirmed});

  // ── Ad accounts (chat-side connect) ─────────────────────────────────
  Future<LabJson> ads() async => labMap(await _json('ads'));
  Future<String> adsConnect(String provider, {bool readOnly = false, String? from}) async =>
      labMap(await _json('ads/connect', body: {'provider': provider, 'readOnly': readOnly, 'from': ?from}))['url'] as String;
  Future<LabJson> adsToken(String provider, String token) async =>
      labMap(await _json('ads/token', body: {'provider': provider, 'token': token}));
  Future<List<LabJson>> adsAvailable(String connection) async =>
      labList(labMap(await _json('ads/connections/$connection/available'))['data']);
  Future<LabJson> adsImport(String connection, List<String> ids) async =>
      labMap(await _json('ads/connections/$connection/accounts', body: {'ids': ids}));
  Future<void> adsDisconnect(String connection) => _json('ads/connections/$connection', method: 'DELETE');

  // ── Artifacts & generated files ─────────────────────────────────────
  Future<List<LabJson>> artifacts(String conversationId) async =>
      labList(labMap(await _json('conversations/$conversationId/artifacts'))['data']);
  Future<LabJson> artifact(String conversationId, String id, {int? version}) async =>
      labMap(await _json('conversations/$conversationId/artifacts/$id', query: {'version': version}));
  Future<LabJson> artifactProgress(String conversationId, String id) async =>
      labMap(await _json('conversations/$conversationId/artifacts/$id/progress'));
  String generatedFileUrl(String conversationId, String file) =>
      _http.absolute(_p('conversations/$conversationId/files/$file'));

  // ── Automations: saved agents, schedules, inbox ─────────────────────
  Future<List<LabJson>> agents() async => labList(labMap(await _json('agents'))['data']);
  Future<List<LabJson>> agentConversations(String agentId) async =>
      labList(labMap(await _json('agents/$agentId/conversations'))['data']);
  Future<LabJson> createAgent(LabJson body) async => labMap(await _json('agents', body: body));

  /// Throws [LabError] `agent_revision_conflict` with `data.current` on a stale revision.
  Future<LabJson> updateAgent(String id, LabJson body) async =>
      labMap(await _json('agents/$id', method: 'PATCH', body: body));
  Future<void> deleteAgent(String id) => _json('agents/$id', method: 'DELETE');
  Future<List<LabJson>> schedules() async => labList(labMap(await _json('schedules'))['data']);
  Future<LabJson> createSchedule(LabJson body) async => labMap(await _json('schedules', body: body));
  Future<LabJson> updateSchedule(String id, LabJson body) async =>
      labMap(await _json('schedules/$id', method: 'PATCH', body: body));
  Future<void> deleteSchedule(String id) => _json('schedules/$id', method: 'DELETE');
  Future<({List<LabJson> data, int unread, String? nextCursor})> inbox({String? cursor}) async {
    final r = labMap(await _json('inbox', query: {'cursor': cursor}));
    return (
      data: labList(r['data']),
      unread: (r['unread'] as num?)?.toInt() ?? 0,
      nextCursor: r['next_cursor'] as String?,
    );
  }

  Future<void> markRead({List<String>? ids, bool all = false}) =>
      _json('inbox/read', body: all ? {'all': true} : {'ids': ids ?? const []});

  /// The current agent a 409 `agent_revision_conflict` carries, if any.
  static LabJson? conflictCurrent(Object error) {
    if (error is! LabError || error.code != 'agent_revision_conflict') return null;
    final body = labMap(error.data);
    final current = body['current'] ?? labMap(body['error'])['current'];
    return current is Map && current['id'] is String ? current.cast<String, dynamic>() : null;
  }
}
