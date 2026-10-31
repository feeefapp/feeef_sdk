/// WhatsApp & SMS (Feeef Cloud Messaging) for one store: the senders it may send from, its own
/// WhatsApp number, approved templates and test sends (backend `messaging_controller.ts`,
/// `stores/:storeId/messaging/*`, scope `store.integrations`).
///
/// Settings themselves are a normal integration (`store.integrations.messaging`,
/// [MessagingIntegration]) written through `stores/:id/integrations/messaging`.
///
/// Errors: 503 `{code: 'messaging_disabled'}` when the platform switch is off, 502
/// `{code, message, details?}` for Cloud failures, 422 `{field}` for a missing or bad field.
/// [MessagingError.of] reads any of them from a [DioException].
library;

import 'package:dio/dio.dart';

/// A sender in Cloud: Feeef's shared one (`platform`) or the store's own WhatsApp number.
class MessagingSender {
  const MessagingSender({
    required this.id,
    required this.scope,
    required this.channel,
    required this.provider,
    required this.displayName,
    this.address,
    required this.status,
    required this.quality,
    this.templatesSyncedAt,
  });

  final String id;

  /// `platform` or `own`.
  final String scope;
  final String channel;
  final String provider;
  final String displayName;

  /// The phone number (or bot handle) people see.
  final String? address;

  /// Cloud's status (`active`, `pending`, `disabled`, …).
  final String status;

  /// Meta's quality rating (`green`, `yellow`, `red`, `unknown`).
  final String quality;
  final DateTime? templatesSyncedAt;

  bool get isOwn => scope == 'own';
  bool get isPlatform => scope == 'platform';

  factory MessagingSender.fromJson(Map<String, dynamic> json) =>
      MessagingSender(
        id: json['id'] as String,
        scope: json['scope'] as String? ?? 'own',
        channel: json['channel'] as String? ?? 'whatsapp',
        provider: json['provider'] as String? ?? '',
        displayName: json['display_name'] as String? ?? '',
        address: json['address'] as String?,
        status: json['status'] as String? ?? 'unknown',
        quality: json['quality'] as String? ?? 'unknown',
        templatesSyncedAt: DateTime.tryParse(
          json['templates_synced_at'] as String? ?? '',
        ),
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'scope': scope,
    'channel': channel,
    'provider': provider,
    'display_name': displayName,
    'address': address,
    'status': status,
    'quality': quality,
    'templates_synced_at': templatesSyncedAt?.toIso8601String(),
  };
}

/// `GET stores/:id/messaging/senders`: every sender the store may use and the one its settings
/// pick (null = Feeef's shared senders).
class MessagingSenders {
  const MessagingSenders({required this.data, this.selected});

  final List<MessagingSender> data;
  final String? selected;

  List<MessagingSender> get own => [
    for (final s in data)
      if (s.isOwn) s,
  ];
  List<MessagingSender> get platform => [
    for (final s in data)
      if (s.isPlatform) s,
  ];

  factory MessagingSenders.fromJson(Map<String, dynamic> json) =>
      MessagingSenders(
        data: [
          for (final row in (json['data'] as List? ?? const []))
            MessagingSender.fromJson(Map<String, dynamic>.from(row as Map)),
        ],
        selected: json['selected'] as String?,
      );
}

/// One slot of a template: where it sits and Meta's example text.
class MessagingTemplateSlot {
  const MessagingTemplateSlot({
    required this.key,
    required this.part,
    this.example,
  });

  final String key;

  /// `header`, `body` or `button`.
  final String part;
  final String? example;

  factory MessagingTemplateSlot.fromJson(Map<String, dynamic> json) =>
      MessagingTemplateSlot(
        key: json['key'].toString(),
        part: json['part'] as String? ?? 'body',
        example: json['example'] as String?,
      );
}

/// A quick-reply button: [id] is `q` + its position among all the template's buttons.
class MessagingTemplateButton {
  const MessagingTemplateButton({required this.id, required this.title});

  final String id;
  final String title;

  factory MessagingTemplateButton.fromJson(Map<String, dynamic> json) =>
      MessagingTemplateButton(
        id: json['id'] as String,
        title: json['title'] as String? ?? '',
      );
}

/// An approved template the store can send (media-header templates are left out).
class MessagingTemplate {
  const MessagingTemplate({
    required this.id,
    this.sender,
    required this.name,
    required this.locale,
    this.category,
    this.slots = const [],
    this.slotInfo = const [],
    this.buttons = const [],
    this.body = '',
  });

  final String id;
  final String? sender;
  final String name;
  final String locale;

  /// Meta's category (`UTILITY`, `MARKETING`, …).
  final String? category;

  /// Slot keys in the order settings fill them (header, body, buttons).
  final List<String> slots;
  final List<MessagingTemplateSlot> slotInfo;
  final List<MessagingTemplateButton> buttons;

  /// The body text with Meta's `{{1}}` / `{{name}}` placeholders.
  final String body;

  factory MessagingTemplate.fromJson(
    Map<String, dynamic> json,
  ) => MessagingTemplate(
    id: json['id'].toString(),
    sender: json['sender'] as String?,
    name: json['name'] as String,
    locale: json['locale'] as String,
    category: json['category'] as String?,
    slots: [for (final s in (json['slots'] as List? ?? const [])) s.toString()],
    slotInfo: [
      for (final s in (json['slotInfo'] as List? ?? const []))
        MessagingTemplateSlot.fromJson(Map<String, dynamic>.from(s as Map)),
    ],
    buttons: [
      for (final b in (json['buttons'] as List? ?? const []))
        MessagingTemplateButton.fromJson(Map<String, dynamic>.from(b as Map)),
    ],
    body: json['body'] as String? ?? '',
  );
}

/// `GET stores/:id/messaging/templates`: approved templates plus the chips a slot can take.
class MessagingTemplates {
  const MessagingTemplates({required this.data, this.variables = const []});

  final List<MessagingTemplate> data;
  final List<String> variables;

  /// The template a setting points at (name + locale), if still approved.
  MessagingTemplate? find(String name, String locale) {
    for (final t in data) {
      if (t.name == name && t.locale == locale) return t;
    }
    return null;
  }

  factory MessagingTemplates.fromJson(Map<String, dynamic> json) =>
      MessagingTemplates(
        data: [
          for (final row in (json['data'] as List? ?? const []))
            MessagingTemplate.fromJson(Map<String, dynamic>.from(row as Map)),
        ],
        variables: [
          for (final v in (json['variables'] as List? ?? const []))
            v.toString(),
        ],
      );
}

/// A message Cloud accepted (`queued`, `sent`, …).
class MessagingTestResult {
  const MessagingTestResult({required this.id, required this.status});

  final String id;
  final String status;

  factory MessagingTestResult.fromJson(Map<String, dynamic> json) =>
      MessagingTestResult(
        id: json['id'].toString(),
        status: json['status'] as String? ?? 'queued',
      );
}

/// One entry of an order's message ledger (`order.claims.messageSends[key]`, keys
/// `confirmation` and `rule:<ruleId>`).
class OrderMessageSend {
  const OrderMessageSend({
    required this.key,
    this.at,
    required this.status,
    this.message,
    this.error,
  });

  final String key;
  final DateTime? at;

  /// `queued`, `sent`, `delivered`, `read`, `failed` or `unknown`.
  final String status;

  /// Cloud's message id.
  final String? message;
  final String? error;

  /// Every entry of [claims]' `messageSends`, oldest first.
  static List<OrderMessageSend> fromClaims(Map<String, dynamic>? claims) {
    final raw = claims?['messageSends'];
    if (raw is! Map) return const [];
    final out = <OrderMessageSend>[
      for (final e in raw.entries)
        if (e.value is Map)
          OrderMessageSend(
            key: e.key.toString(),
            at: DateTime.tryParse((e.value as Map)['at']?.toString() ?? ''),
            status: (e.value as Map)['status']?.toString() ?? 'unknown',
            message: (e.value as Map)['message']?.toString(),
            error: switch ((e.value as Map)['error']) {
              final String s => s,
              final Map m => m['message']?.toString(),
              _ => null,
            },
          ),
    ];
    out.sort((a, b) => (a.at ?? DateTime(0)).compareTo(b.at ?? DateTime(0)));
    return out;
  }
}

/// A refusal of the messaging API, read from a [DioException].
class MessagingError {
  const MessagingError({this.status, this.code, this.message, this.field});

  /// HTTP status (null when the request never got an answer).
  final int? status;
  final String? code;
  final String? message;

  /// The field a 422 points at (`phoneNumberId`, `to`, `template`, …).
  final String? field;

  /// The platform switch is off (503 `messaging_disabled`).
  bool get disabled => status == 503 && code == 'messaging_disabled';

  /// Feeef Cloud failed or refused feeef (502): worth a retry.
  bool get cloudFailed => status == 502;

  static MessagingError of(Object error) {
    if (error is! DioException) return MessagingError(message: '$error');
    final data = error.response?.data;
    final map = data is Map ? data : const {};
    return MessagingError(
      status: error.response?.statusCode,
      code: map['code']?.toString(),
      message: map['message']?.toString() ?? error.message,
      field: map['field']?.toString(),
    );
  }
}

/// `ff.messaging`: the merchant side of WhatsApp & SMS for one store.
class MessagingRepository {
  MessagingRepository({required this.client});

  final Dio client;

  String _base(String storeId) =>
      '/stores/${Uri.encodeComponent(storeId)}/messaging';

  Map<String, dynamic> _map(Response<dynamic> res) =>
      Map<String, dynamic>.from(res.data as Map);

  /// Senders the store may use (Feeef's shared ones and its own numbers) and the selected one.
  Future<MessagingSenders> senders(
    String storeId, {
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      '${_base(storeId)}/senders',
      cancelToken: cancelToken,
    );
    return MessagingSenders.fromJson(_map(res));
  }

  /// Connects the store's own WhatsApp number (Meta's phone number ID, WhatsApp Business
  /// Account ID, a permanent access token and the app secret). Does not select it: save the
  /// settings with `senderId` afterwards.
  Future<MessagingSender> connectWhatsApp(
    String storeId, {
    required String phoneNumberId,
    required String wabaId,
    required String accessToken,
    required String appSecret,
    String? name,
    CancelToken? cancelToken,
  }) async {
    final trimmed = name?.trim();
    final res = await client.post(
      '${_base(storeId)}/senders',
      data: {
        'phoneNumberId': phoneNumberId.trim(),
        'wabaId': wabaId.trim(),
        'accessToken': accessToken.trim(),
        'appSecret': appSecret.trim(),
        if (trimmed != null && trimmed.isNotEmpty) 'name': trimmed,
      },
      cancelToken: cancelToken,
    );
    return MessagingSender.fromJson(
      Map<String, dynamic>.from(_map(res)['data'] as Map),
    );
  }

  /// Removes one of the store's own senders (the backend clears `senderId` when it was picked).
  Future<void> deleteSender(
    String storeId,
    String senderId, {
    CancelToken? cancelToken,
  }) async {
    await client.delete(
      '${_base(storeId)}/senders/${Uri.encodeComponent(senderId)}',
      cancelToken: cancelToken,
    );
  }

  /// Reads the sender's templates from Meta again (new approvals show up after this).
  Future<Map<String, dynamic>> syncTemplates(
    String storeId,
    String senderId, {
    CancelToken? cancelToken,
  }) async {
    final res = await client.post(
      '${_base(storeId)}/senders/${Uri.encodeComponent(senderId)}/sync-templates',
      data: const <String, dynamic>{},
      cancelToken: cancelToken,
    );
    final data = _map(res)['data'];
    return data is Map ? Map<String, dynamic>.from(data) : const {};
  }

  /// Approved templates of [sender] (default: the selected sender).
  Future<MessagingTemplates> templates(
    String storeId, {
    String? sender,
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      '${_base(storeId)}/templates',
      queryParameters: {'sender': ?sender},
      cancelToken: cancelToken,
    );
    return MessagingTemplates.fromJson(_map(res));
  }

  /// Sends [template] to [to] (usually the merchant's own phone) with sample order details.
  Future<MessagingTestResult> sendTest(
    String storeId, {
    required String to,
    required String template,
    required String locale,
    List<String> variables = const [],
    CancelToken? cancelToken,
  }) async {
    final res = await client.post(
      '${_base(storeId)}/test',
      data: {
        'to': to.trim(),
        'template': template,
        'locale': locale,
        'variables': variables,
      },
      cancelToken: cancelToken,
    );
    return MessagingTestResult.fromJson(
      Map<String, dynamic>.from(_map(res)['data'] as Map),
    );
  }
}
