/// Shared chat protocol types — mirrors backend `app/chat/types.ts`.
class ChatResourceRef {
  final String type;
  final String? id;
  final String? label;
  final Map<String, dynamic>? meta;

  const ChatResourceRef({
    required this.type,
    this.id,
    this.label,
    this.meta,
  });

  factory ChatResourceRef.store(String id, {String? label}) =>
      ChatResourceRef(type: 'store', id: id, label: label);

  factory ChatResourceRef.product(String id, {String? label}) =>
      ChatResourceRef(type: 'product', id: id, label: label);

  factory ChatResourceRef.order(String id, {String? label}) =>
      ChatResourceRef(type: 'order', id: id, label: label);

  Map<String, dynamic> toJson() => {
    'type': type,
    if (id != null) 'id': id,
    if (label != null) 'label': label,
    if (meta != null) 'meta': meta,
  };

  factory ChatResourceRef.fromJson(Map<String, dynamic> json) => ChatResourceRef(
    type: json['type'] as String,
    id: json['id'] as String?,
    label: json['label'] as String?,
    meta: json['meta'] is Map ? Map<String, dynamic>.from(json['meta'] as Map) : null,
  );
}

class ChatPartInput {
  final String type;
  final String? text;
  final Map<String, dynamic>? attachment;

  const ChatPartInput._({required this.type, this.text, this.attachment});

  factory ChatPartInput.text(String text) =>
      ChatPartInput._(type: 'text', text: text);

  factory ChatPartInput.attachment(Map<String, dynamic> attachment) =>
      ChatPartInput._(type: 'attachment', attachment: attachment);

  /// Builds an attachment part from a typed [Attachment] model (`type`, `value`, `label?`, `prompt?`).
  factory ChatPartInput.fromAttachment(Map<String, dynamic> json) =>
      ChatPartInput.attachment(json);

  Map<String, dynamic> toJson() => switch (type) {
    'text' => {'type': 'text', 'text': text},
    'attachment' => {'type': 'attachment', 'attachment': attachment},
    _ => {'type': type},
  };
}

/// MCP tool confirmation policy for a conversation (`manual` | `readonly` | `all`).
class ChatToolPolicy {
  final String mode;
  final List<String> autoApprove;
  final List<String> requireConfirm;
  /// TRINITY thinker→worker→verifier orchestration ("Composition"). Defaults to on.
  final bool compositionEnabled;

  const ChatToolPolicy({
    this.mode = 'readonly',
    this.autoApprove = const [],
    this.requireConfirm = const [],
    this.compositionEnabled = true,
  });

  bool get isAutoEnabled => mode == 'readonly' || mode == 'all' || autoApprove.isNotEmpty;

  factory ChatToolPolicy.fromJson(Map<String, dynamic>? json) {
    if (json == null || json.isEmpty) return const ChatToolPolicy();
    return ChatToolPolicy(
      mode: json['mode'] as String? ?? 'readonly',
      autoApprove: (json['autoApprove'] as List<dynamic>? ?? const [])
          .map((e) => e.toString())
          .toList(),
      requireConfirm: (json['requireConfirm'] as List<dynamic>? ?? const [])
          .map((e) => e.toString())
          .toList(),
      compositionEnabled: json['compositionEnabled'] as bool? ?? true,
    );
  }

  Map<String, dynamic> toJson() => {
    'mode': mode,
    if (autoApprove.isNotEmpty) 'autoApprove': autoApprove,
    if (requireConfirm.isNotEmpty) 'requireConfirm': requireConfirm,
    // Always sent so PATCH merges can turn composition back on (backend default is true).
    'compositionEnabled': compositionEnabled,
  };

  ChatToolPolicy copyWith({
    String? mode,
    List<String>? autoApprove,
    List<String>? requireConfirm,
    bool? compositionEnabled,
  }) {
    return ChatToolPolicy(
      mode: mode ?? this.mode,
      autoApprove: autoApprove ?? this.autoApprove,
      requireConfirm: requireConfirm ?? this.requireConfirm,
      compositionEnabled: compositionEnabled ?? this.compositionEnabled,
    );
  }
}

class ChatConversation {
  final String id;
  final String? title;
  final String modelId;
  final List<ChatResourceRef> resources;
  final List<String> mcpServerIds;
  final ChatToolPolicy toolPolicy;
  final String? preview;
  final int? resourceCount;
  final DateTime? updatedAt;
  final DateTime? createdAt;

  const ChatConversation({
    required this.id,
    this.title,
    required this.modelId,
    this.resources = const [],
    this.mcpServerIds = const [],
    this.toolPolicy = const ChatToolPolicy(),
    this.preview,
    this.resourceCount,
    this.updatedAt,
    this.createdAt,
  });

  factory ChatConversation.fromJson(Map<String, dynamic> json) {
    final rawResources = json['resources'] as List<dynamic>? ?? const [];
    return ChatConversation(
      id: json['id'] as String,
      title: json['title'] as String?,
      modelId: json['modelId'] as String? ?? '',
      resources: rawResources
          .whereType<Map>()
          .map((e) => ChatResourceRef.fromJson(Map<String, dynamic>.from(e)))
          .toList(),
      mcpServerIds: (json['mcpServerIds'] as List<dynamic>? ?? const [])
          .map((e) => e.toString())
          .toList(),
      toolPolicy: ChatToolPolicy.fromJson(
        json['toolPolicy'] is Map
            ? Map<String, dynamic>.from(json['toolPolicy'] as Map)
            : null,
      ),
      preview: json['preview'] as String?,
      resourceCount: (json['resourceCount'] as num?)?.toInt(),
      updatedAt: json['updatedAt'] != null ? DateTime.tryParse(json['updatedAt'] as String) : null,
      createdAt: json['createdAt'] != null ? DateTime.tryParse(json['createdAt'] as String) : null,
    );
  }
}

class ChatConversationPage {
  final List<ChatConversation> data;
  final Map<String, dynamic> meta;

  const ChatConversationPage({required this.data, required this.meta});

  bool get hasMore {
    final current = (meta['current_page'] as num?)?.toInt() ?? 1;
    final last = (meta['last_page'] as num?)?.toInt() ?? current;
    return current < last;
  }
}

class ChatConversationUpdate {
  final String? title;
  final String? modelId;
  final List<ChatResourceRef>? resources;
  final List<String>? mcpServerIds;
  final bool? archived;
  final ChatToolPolicy? toolPolicy;

  const ChatConversationUpdate({
    this.title,
    this.modelId,
    this.resources,
    this.mcpServerIds,
    this.archived,
    this.toolPolicy,
  });

  Map<String, dynamic> toJson() => {
    if (title != null) 'title': title,
    if (modelId != null) 'modelId': modelId,
    if (resources != null) 'resources': [for (final r in resources!) r.toJson()],
    if (mcpServerIds != null) 'mcpServerIds': mcpServerIds,
    if (archived != null) 'archived': archived,
    if (toolPolicy != null) 'toolPolicy': toolPolicy!.toJson(),
  };
}

class SendMessageResult {
  final String userMessageId;
  final String assistantMessageId;
  final String generationId;
  final String transmitChannel;

  const SendMessageResult({
    required this.userMessageId,
    required this.assistantMessageId,
    required this.generationId,
    required this.transmitChannel,
  });

  factory SendMessageResult.fromJson(Map<String, dynamic> json) => SendMessageResult(
    userMessageId: json['userMessageId'] as String? ?? '',
    assistantMessageId: json['assistantMessageId'] as String? ?? '',
    generationId: json['generationId'] as String? ?? '',
    transmitChannel: json['transmitChannel'] as String? ?? '',
  );
}

/// Response from `POST /chat/conversations/:id/messages` (normal send or user event).
class ChatSendResponse {
  const ChatSendResponse({
    this.message,
    this.generationId,
    this.assistantMessageId,
    this.transmitChannel,
    this.isUserEvent = false,
    this.ok = true,
    this.error,
    this.errorMessage,
  });

  final SendMessageResult? message;
  final String? generationId;
  final String? assistantMessageId;
  final String? transmitChannel;
  final bool isUserEvent;
  final bool ok;
  final String? error;
  final String? errorMessage;

  factory ChatSendResponse.fromJson(Map<String, dynamic> json) {
    if (json['type'] == 'user_event') {
      return ChatSendResponse(
        isUserEvent: true,
        ok: json['ok'] as bool? ?? true,
        error: json['error'] as String?,
        errorMessage: json['message'] as String?,
        generationId: json['generationId'] as String?,
        assistantMessageId: json['assistantMessageId'] as String?,
        transmitChannel: json['transmitChannel'] as String?,
      );
    }
    final message = SendMessageResult.fromJson(json);
    return ChatSendResponse(
      message: message,
      generationId: message.generationId,
      assistantMessageId: message.assistantMessageId,
      transmitChannel: message.transmitChannel,
    );
  }
}

class ChatMessage {
  final String id;
  final String role;
  final String status;
  final List<ChatMessagePart> parts;
  final DateTime? createdAt;

  const ChatMessage({
    required this.id,
    required this.role,
    required this.status,
    required this.parts,
    this.createdAt,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    final rawParts = json['parts'] as List<dynamic>? ?? const [];
    return ChatMessage(
      id: json['id'] as String,
      role: json['role'] as String? ?? 'user',
      status: json['status'] as String? ?? 'complete',
      parts: rawParts
          .whereType<Map>()
          .map((e) => ChatMessagePart.fromJson(Map<String, dynamic>.from(e)))
          .toList(),
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'] as String)
          : null,
    );
  }
}

/// Active in-flight generation returned by `GET /chat/conversations/:id`.
class ChatActiveGeneration {
  final String id;
  final String status;
  final String assistantMessageId;
  final int seq;
  final String transmitChannel;

  const ChatActiveGeneration({
    required this.id,
    required this.status,
    required this.assistantMessageId,
    required this.seq,
    required this.transmitChannel,
  });

  factory ChatActiveGeneration.fromJson(Map<String, dynamic> json) => ChatActiveGeneration(
    id: json['id'] as String,
    status: json['status'] as String,
    assistantMessageId: json['assistantMessageId'] as String,
    seq: (json['seq'] as num?)?.toInt() ?? 0,
    transmitChannel: json['transmitChannel'] as String? ?? '',
  );

  bool get isLive =>
      status == 'pending' ||
      status == 'streaming' ||
      status == 'awaiting_confirm' ||
      status == 'awaiting_client_tool' ||
      status == 'awaiting_input';
}

/// Pagination cursor for conversation messages (`before` = oldest loaded message id).
class ChatMessagesMeta {
  final bool hasMore;
  final String? oldestMessageId;

  const ChatMessagesMeta({
    required this.hasMore,
    this.oldestMessageId,
  });

  factory ChatMessagesMeta.fromJson(Map<String, dynamic>? json) => ChatMessagesMeta(
    hasMore: json?['hasMore'] as bool? ?? false,
    oldestMessageId: json?['oldestMessageId'] as String?,
  );
}

/// Full conversation payload from `GET /chat/conversations/:id`.
class ChatConversationDetail {
  final ChatConversation conversation;
  final List<ChatMessage> messages;
  final ChatMessagesMeta messagesMeta;
  final ChatActiveGeneration? activeGeneration;
  final List<ChatQueuedPrompt> promptQueue;
  final String? queueTransmitChannel;

  const ChatConversationDetail({
    required this.conversation,
    required this.messages,
    this.messagesMeta = const ChatMessagesMeta(hasMore: false),
    this.activeGeneration,
    this.promptQueue = const [],
    this.queueTransmitChannel,
  });

  factory ChatConversationDetail.fromJson(Map<String, dynamic> json) {
    final rawMessages = json['messages'] as List<dynamic>? ?? const [];
    final rawQueue = json['promptQueue'] as List<dynamic>? ?? const [];
    return ChatConversationDetail(
      conversation: ChatConversation.fromJson(json),
      messages: rawMessages
          .whereType<Map>()
          .map((e) => ChatMessage.fromJson(Map<String, dynamic>.from(e)))
          .toList(),
      messagesMeta: ChatMessagesMeta.fromJson(
        json['messagesMeta'] is Map
            ? Map<String, dynamic>.from(json['messagesMeta'] as Map)
            : null,
      ),
      activeGeneration: json['activeGeneration'] is Map
          ? ChatActiveGeneration.fromJson(
              Map<String, dynamic>.from(json['activeGeneration'] as Map),
            )
          : null,
      promptQueue: rawQueue
          .whereType<Map>()
          .map((e) => ChatQueuedPrompt.fromJson(Map<String, dynamic>.from(e)))
          .toList(),
      queueTransmitChannel: json['queueTransmitChannel'] as String?,
    );
  }
}

/// One queued follow-up prompt for a conversation (max 5).
class ChatQueuedPrompt {
  final String id;
  final int position;
  final List<ChatPartInput> parts;
  final String previewText;
  final DateTime? createdAt;

  const ChatQueuedPrompt({
    required this.id,
    required this.position,
    required this.parts,
    required this.previewText,
    this.createdAt,
  });

  static const int maxItems = 5;

  factory ChatQueuedPrompt.fromJson(Map<String, dynamic> json) {
    final rawParts = json['parts'] as List<dynamic>? ?? const [];
    return ChatQueuedPrompt(
      id: json['id'] as String,
      position: (json['position'] as num?)?.toInt() ?? 0,
      parts: rawParts
          .whereType<Map>()
          .map((e) => _partInputFromJson(Map<String, dynamic>.from(e)))
          .whereType<ChatPartInput>()
          .toList(),
      previewText: json['previewText'] as String? ?? '',
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'] as String)
          : null,
    );
  }

  static ChatPartInput? _partInputFromJson(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    if (type == 'text') {
      final text = json['text'] as String?;
      if (text == null) return null;
      return ChatPartInput.text(text);
    }
    if (type == 'attachment') {
      final attachment = json['attachment'];
      if (attachment is! Map) return null;
      return ChatPartInput.attachment(Map<String, dynamic>.from(attachment));
    }
    return null;
  }

  String get primaryText => parts
      .where((p) => p.type == 'text')
      .map((p) => p.text ?? '')
      .join(' ')
      .trim();
}

class ChatMessagePart {
  final String id;
  final String type;
  final String? state;
  final Map<String, dynamic> content;
  final int position;

  const ChatMessagePart({
    required this.id,
    required this.type,
    this.state,
    required this.content,
    this.position = 0,
  });

  factory ChatMessagePart.fromJson(Map<String, dynamic> json) => ChatMessagePart(
    id: json['id'] as String,
    type: json['type'] as String,
    state: json['state'] as String?,
    content: Map<String, dynamic>.from(json['content'] as Map? ?? {}),
    position: (json['position'] as num?)?.toInt() ?? 0,
  );

  String get text => content['text'] as String? ?? '';

  String get reasoningText =>
      type == 'reasoning' || type == 'agent_note' ? text : content['text'] as String? ?? '';

  Map<String, dynamic>? get toolInvocation =>
      type == 'tool_invocation' ? content : null;

  Map<String, dynamic>? get toolResultSummary =>
      type == 'tool_result_summary' ? content : null;

  String get invocationId =>
      content['invocationId'] as String? ?? content['confirmId'] as String? ?? '';

  String get confirmId =>
      content['confirmId'] as String? ?? content['invocationId'] as String? ?? '';
}

class ChatGenerationSnapshot {
  final String id;
  final String conversationId;
  final String status;
  final int seq;
  final List<ChatMessagePart> parts;
  final List<Map<String, dynamic>> jobs;

  const ChatGenerationSnapshot({
    required this.id,
    required this.conversationId,
    required this.status,
    required this.seq,
    required this.parts,
    required this.jobs,
  });

  factory ChatGenerationSnapshot.fromJson(Map<String, dynamic> json) {
    final rawParts = json['parts'] as List<dynamic>? ?? const [];
    final rawJobs = json['jobs'] as List<dynamic>? ?? const [];
    return ChatGenerationSnapshot(
      id: json['id'] as String,
      conversationId: json['conversationId'] as String,
      status: json['status'] as String,
      seq: (json['seq'] as num?)?.toInt() ?? 0,
      parts: rawParts
          .whereType<Map>()
          .map((e) => ChatMessagePart.fromJson(Map<String, dynamic>.from(e)))
          .toList(),
      jobs: rawJobs.whereType<Map>().map((e) => Map<String, dynamic>.from(e)).toList(),
    );
  }
}

class ChatGenerationEvent {
  final String event;
  final Map<String, dynamic> data;

  const ChatGenerationEvent({required this.event, required this.data});

  factory ChatGenerationEvent.fromRealtime(dynamic payload) {
    if (payload is Map) {
      final map = Map<String, dynamic>.from(payload);
      return ChatGenerationEvent(
        event: map['event'] as String? ?? '',
        data: map['data'] is Map ? Map<String, dynamic>.from(map['data'] as Map) : map,
      );
    }
    return const ChatGenerationEvent(event: '', data: {});
  }

  bool get isGenerationStart => event == 'chat.generation.start';
  bool get isPartDelta => event == 'chat.part.delta';
  bool get isGenerationEnd => event == 'chat.generation.end';
  bool get isGenerationError => event == 'chat.generation.error';
  bool get isToolStart => event == 'chat.tool.start';
  bool get isToolEnd => event == 'chat.tool.end';
  bool get isPartPatch => event == 'chat.part.patch';
  bool get isPartStart => event == 'chat.part.start';
}

class ChatJob {
  final String id;
  final String status;
  final String type;
  final String source;
  final List<Map<String, dynamic>> steps;

  const ChatJob({
    required this.id,
    required this.status,
    required this.type,
    required this.source,
    required this.steps,
  });

  factory ChatJob.fromJson(Map<String, dynamic> json) => ChatJob(
    id: json['id'] as String,
    status: json['status'] as String,
    type: json['type'] as String,
    source: json['source'] as String? ?? '',
    steps: (json['steps'] as List<dynamic>? ?? const [])
        .whereType<Map>()
        .map((e) => Map<String, dynamic>.from(e))
        .toList(),
  );
}

class ChatMcpServer {
  final String id;
  final String name;
  final String url;
  final String transport;
  final bool isDefault;
  final bool isPinned;
  final bool enabled;
  final List<String> headerKeys;
  final bool hasStoredAuth;

  const ChatMcpServer({
    required this.id,
    required this.name,
    required this.url,
    required this.transport,
    required this.isDefault,
    this.isPinned = false,
    required this.enabled,
    this.headerKeys = const [],
    this.hasStoredAuth = false,
  });

  factory ChatMcpServer.fromJson(Map<String, dynamic> json) => ChatMcpServer(
    id: json['id'] as String,
    name: json['name'] as String,
    url: json['url'] as String,
    transport: json['transport'] as String? ?? 'streamable-http',
    isDefault: json['isDefault'] as bool? ?? false,
    isPinned: json['isPinned'] as bool? ?? json['isDefault'] as bool? ?? false,
    enabled: json['enabled'] as bool? ?? true,
    headerKeys: (json['headerKeys'] as List<dynamic>? ?? const [])
        .whereType<String>()
        .toList(),
    hasStoredAuth: json['hasStoredAuth'] as bool? ?? false,
  );
}

class ChatMcpToolSummary {
  final String name;
  final String? description;

  const ChatMcpToolSummary({required this.name, this.description});

  factory ChatMcpToolSummary.fromJson(Map<String, dynamic> json) =>
      ChatMcpToolSummary(
        name: json['name'] as String,
        description: json['description'] as String?,
      );
}

class ChatMcpOAuthInfo {
  final String authorizationEndpoint;
  final String tokenEndpoint;
  final List<String> scopesSupported;

  const ChatMcpOAuthInfo({
    required this.authorizationEndpoint,
    required this.tokenEndpoint,
    this.scopesSupported = const [],
  });

  factory ChatMcpOAuthInfo.fromJson(Map<String, dynamic> json) =>
      ChatMcpOAuthInfo(
        authorizationEndpoint: json['authorizationEndpoint'] as String,
        tokenEndpoint: json['tokenEndpoint'] as String,
        scopesSupported: (json['scopesSupported'] as List<dynamic>? ?? const [])
            .whereType<String>()
            .toList(),
      );
}

class ChatMcpProbeResult {
  final bool ok;
  final bool authRequired;
  final bool authenticated;
  final int toolCount;
  final List<ChatMcpToolSummary> tools;
  final String? error;
  final ChatMcpOAuthInfo? oauth;

  const ChatMcpProbeResult({
    required this.ok,
    required this.authRequired,
    required this.authenticated,
    required this.toolCount,
    required this.tools,
    this.error,
    this.oauth,
  });

  factory ChatMcpProbeResult.fromJson(Map<String, dynamic> json) =>
      ChatMcpProbeResult(
        ok: json['ok'] as bool? ?? false,
        authRequired: json['authRequired'] as bool? ?? false,
        authenticated: json['authenticated'] as bool? ?? false,
        toolCount: json['toolCount'] as int? ?? 0,
        tools: (json['tools'] as List<dynamic>? ?? const [])
            .whereType<Map>()
            .map((e) => ChatMcpToolSummary.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
        error: json['error'] as String?,
        oauth: json['oauth'] is Map
            ? ChatMcpOAuthInfo.fromJson(Map<String, dynamic>.from(json['oauth'] as Map))
            : null,
      );
}

class ChatModelOption {
  final String id;
  final String name;
  final String providerSlug;
  final List<String> capabilities;

  const ChatModelOption({
    required this.id,
    required this.name,
    required this.providerSlug,
    required this.capabilities,
  });

  factory ChatModelOption.fromJson(Map<String, dynamic> json) => ChatModelOption(
    id: json['id'] as String,
    name: json['name'] as String,
    providerSlug: json['providerSlug'] as String,
    capabilities: (json['capabilities'] as List<dynamic>? ?? const ['text'])
        .map((e) => e.toString())
        .toList(),
  );
}

class ChatCostEstimate {
  final Map<String, dynamic> raw;

  const ChatCostEstimate(this.raw);

  factory ChatCostEstimate.fromJson(Map<String, dynamic> json) =>
      ChatCostEstimate(json['estimate'] is Map ? Map<String, dynamic>.from(json['estimate'] as Map) : json);

  num? get userCostDzd => raw['userCostDzd'] as num?;
}
