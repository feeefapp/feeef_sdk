import 'dart:async';

import 'package:dio/dio.dart';
import 'package:feeef/chat/chat_models.dart';
import 'package:feeef/realtime/realtime.dart';

/// `ff.chat.conversations.*`
class ChatConversationsRepository {
  ChatConversationsRepository({required this.client});
  final Dio client;

  Future<ChatConversation> create({
    required String modelId,
    String? title,
    List<ChatResourceRef>? resources,
    List<String>? mcpServerIds,
  }) async {
    final res = await client.post('/chat/conversations', data: {
      'modelId': modelId,
      if (title != null) 'title': title,
      if (resources != null) 'resources': [for (final r in resources) r.toJson()],
      if (mcpServerIds != null) 'mcpServerIds': mcpServerIds,
    });
    return ChatConversation.fromJson(Map<String, dynamic>.from(res.data as Map));
  }

  Future<ChatConversationPage> list({
    int page = 1,
    int limit = 20,
    String? q,
    bool archived = false,
  }) async {
    final res = await client.get('/chat/conversations', queryParameters: {
      'page': page,
      'limit': limit,
      if (q != null && q.isNotEmpty) 'q': q,
      'archived': archived,
    });
    final body = Map<String, dynamic>.from(res.data as Map);
    final meta = body['meta'] is Map ? Map<String, dynamic>.from(body['meta'] as Map) : <String, dynamic>{};
    final data = (body['data'] as List<dynamic>? ?? const [])
        .whereType<Map>()
        .map((e) => ChatConversation.fromJson(Map<String, dynamic>.from(e)))
        .toList();
    return ChatConversationPage(data: data, meta: meta);
  }

  Future<ChatConversationDetail> get(
    String id, {
    int limit = 50,
    String? before,
  }) async {
    final res = await client.get(
      '/chat/conversations/$id',
      queryParameters: {
        'limit': limit,
        if (before != null && before.isNotEmpty) 'before': before,
      },
    );
    return ChatConversationDetail.fromJson(
      Map<String, dynamic>.from(res.data as Map),
    );
  }

  Future<ChatConversation> update(String id, ChatConversationUpdate patch) async {
    final res = await client.patch('/chat/conversations/$id', data: patch.toJson());
    return ChatConversation.fromJson(Map<String, dynamic>.from(res.data as Map));
  }

  Future<void> delete(String id) async {
    await client.delete('/chat/conversations/$id');
  }
}

/// `ff.chat.messages.*`
class ChatMessagesRepository {
  ChatMessagesRepository({required this.client});
  final Dio client;

  Future<ChatSendResponse> send({
    required String conversationId,
    List<ChatPartInput>? parts,
    Map<String, dynamic>? userEvent,
  }) async {
    final res = await client.post('/chat/conversations/$conversationId/messages', data: {
      if (parts != null) 'parts': [for (final p in parts) p.toJson()],
      if (userEvent != null) 'userEvent': userEvent,
    });
    return ChatSendResponse.fromJson(Map<String, dynamic>.from(res.data as Map));
  }

  Future<void> delete({
    required String conversationId,
    required String messageId,
  }) async {
    await client.delete('/chat/conversations/$conversationId/messages/$messageId');
  }
}

/// `ff.chat.generations.*` — Transmit primary, REST poll fallback.
class ChatGenerationsRepository {
  ChatGenerationsRepository({required this.client, required this.realtime});
  final Dio client;
  final Realtime realtime;

  Stream<ChatGenerationEvent> watch({
    required String userId,
    required String generationId,
    void Function()? onRealtimeUnavailable,
    void Function()? onRealtimeActive,
  }) {
    final channel = 'users/$userId/chat/generations/$generationId';
    final controller = StreamController<ChatGenerationEvent>();
    Timer? fallbackTimer;
    var gotStart = false;

    controller.onListen = () async {
      try {
        final sub = await realtime.subscribe(channel);
        fallbackTimer = Timer(const Duration(seconds: 5), () {
          if (!gotStart) onRealtimeUnavailable?.call();
        });
        sub.onMessage((data) {
          final event = ChatGenerationEvent.fromRealtime(data);
          if (!gotStart && (event.isGenerationStart || event.isPartDelta || event.isPartPatch)) {
            gotStart = true;
            onRealtimeActive?.call();
          }
          controller.add(event);
        });
      } catch (_) {
        onRealtimeUnavailable?.call();
      }
    };

    controller.onCancel = () async {
      fallbackTimer?.cancel();
      await realtime.unsubscribe(channel);
    };

    return controller.stream;
  }

  Future<ChatGenerationSnapshot> get(String generationId, {int? sinceSeq}) async {
    final res = await client.get(
      '/chat/generations/$generationId',
      queryParameters: {if (sinceSeq != null) 'sinceSeq': sinceSeq},
    );
    return ChatGenerationSnapshot.fromJson(Map<String, dynamic>.from(res.data as Map));
  }

  Future<void> cancel(String generationId) async {
    await client.post('/chat/generations/$generationId/cancel');
  }
}

class ChatJobsRepository {
  ChatJobsRepository({required this.client});
  final Dio client;

  Future<ChatJob> get(String jobId) async {
    final res = await client.get('/chat/jobs/$jobId');
    return ChatJob.fromJson(Map<String, dynamic>.from(res.data as Map));
  }
}

class ChatMcpServersRepository {
  ChatMcpServersRepository({required this.client});
  final Dio client;

  Future<List<ChatMcpServer>> list() async {
    final res = await client.get('/chat/mcp-servers');
    final body = Map<String, dynamic>.from(res.data as Map);
    return (body['data'] as List<dynamic>? ?? const [])
        .whereType<Map>()
        .map((e) => ChatMcpServer.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  Future<ChatMcpServer> create({
    required String name,
    required String url,
    String transport = 'streamable-http',
    bool isDefault = false,
    bool enabled = true,
    Map<String, String>? headers,
  }) async {
    final res = await client.post('/chat/mcp-servers', data: {
      'name': name,
      'url': url,
      'transport': transport,
      'isDefault': isDefault,
      'enabled': enabled,
      if (headers != null && headers.isNotEmpty) 'headers': headers,
    });
    return ChatMcpServer.fromJson(Map<String, dynamic>.from(res.data as Map));
  }

  Future<ChatMcpServer> update(
    String id,
    Map<String, dynamic> patch,
  ) async {
    final res = await client.patch('/chat/mcp-servers/$id', data: patch);
    return ChatMcpServer.fromJson(Map<String, dynamic>.from(res.data as Map));
  }

  Future<void> delete(String id) async {
    await client.delete('/chat/mcp-servers/$id');
  }

  Future<ChatMcpProbeResult> test(String id) async {
    final res = await client.post('/chat/mcp-servers/$id/test');
    return ChatMcpProbeResult.fromJson(Map<String, dynamic>.from(res.data as Map));
  }

  Future<ChatMcpProbeResult> listTools(String id) async {
    final res = await client.get('/chat/mcp-servers/$id/tools');
    return ChatMcpProbeResult.fromJson(Map<String, dynamic>.from(res.data as Map));
  }

  Future<String> startOAuth(String id, {required String redirectUri}) async {
    final res = await client.post('/chat/mcp-servers/$id/oauth/start', data: {
      'redirectUri': redirectUri,
    });
    final body = Map<String, dynamic>.from(res.data as Map);
    return body['authorizeUrl'] as String;
  }

  Future<ChatMcpServer> completeOAuth(
    String id, {
    required String code,
    String? redirectUri,
  }) async {
    final res = await client.post('/chat/mcp-servers/$id/oauth/complete', data: {
      'code': code,
      if (redirectUri != null) 'redirectUri': redirectUri,
    });
    final body = Map<String, dynamic>.from(res.data as Map);
    return ChatMcpServer.fromJson(
      Map<String, dynamic>.from(body['server'] as Map),
    );
  }
}

class ChatModelsRepository {
  ChatModelsRepository({required this.client});
  final Dio client;

  Future<List<ChatModelOption>> list() async {
    final res = await client.get('/chat/models');
    final body = Map<String, dynamic>.from(res.data as Map);
    return (body['data'] as List<dynamic>? ?? const [])
        .whereType<Map>()
        .map((e) => ChatModelOption.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }
}

class ChatBillingRepository {
  ChatBillingRepository({required this.client});
  final Dio client;

  Future<ChatCostEstimate> estimate({
    required String capability,
    required Map<String, dynamic> params,
  }) async {
    final res = await client.post('/chat/estimate', data: {
      'capability': capability,
      'params': params,
    });
    return ChatCostEstimate.fromJson(Map<String, dynamic>.from(res.data as Map));
  }
}

/// Chat API entrypoint — `ff.chat.conversations.create(...)`, etc.
class ChatRepository {
  ChatRepository({required Dio client, required Realtime realtime})
    : conversations = ChatConversationsRepository(client: client),
      messages = ChatMessagesRepository(client: client),
      generations = ChatGenerationsRepository(client: client, realtime: realtime),
      jobs = ChatJobsRepository(client: client),
      mcpServers = ChatMcpServersRepository(client: client),
      models = ChatModelsRepository(client: client),
      billing = ChatBillingRepository(client: client);

  final ChatConversationsRepository conversations;
  final ChatMessagesRepository messages;
  final ChatGenerationsRepository generations;
  final ChatJobsRepository jobs;
  final ChatMcpServersRepository mcpServers;
  final ChatModelsRepository models;
  final ChatBillingRepository billing;
}
