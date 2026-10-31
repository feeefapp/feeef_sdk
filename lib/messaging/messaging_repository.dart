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

import 'dart:math';

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

/// A template of the store: an approved one it can send (the default list, media-header
/// templates left out), or any template of its own number (`templates(all: true)`) with its
/// review [status], Meta's [rejectionReason] and the [draft] the editor opens.
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
    this.status = MessagingTemplateStatus.approved,
    this.rejectionReason,
    this.updatedAt,
    this.mediaHeader = false,
    this.draft,
  });

  /// `approved`, `pending`, `rejected`, `paused` or `disabled` (Meta's review).
  final String status;

  /// Meta's reason when [status] is `rejected` (`INVALID_FORMAT`, a sentence…).
  final String? rejectionReason;
  final DateTime? updatedAt;

  /// The title is a photo/video/document: order messages can't use it.
  final bool mediaHeader;

  /// The content as a create body (only in `templates(all: true)`).
  final MessagingTemplateDraft? draft;

  bool get isApproved => status == MessagingTemplateStatus.approved;

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
    status: (json['status'] as String? ?? MessagingTemplateStatus.approved)
        .toLowerCase(),
    rejectionReason: json['rejectionReason'] as String?,
    updatedAt: DateTime.tryParse(json['updatedAt'] as String? ?? ''),
    mediaHeader: json['mediaHeader'] == true,
    draft: json['draft'] is Map
        ? MessagingTemplateDraft.fromJson(
            Map<String, dynamic>.from(json['draft'] as Map),
          )
        : null,
  );
}

/// `GET stores/:id/messaging/templates`: approved templates plus the chips a slot can take.
/// With `all: true`, every template of the store's own number and that number ([sender], null
/// when the store has none: templates can only be created on an own number).
class MessagingTemplates {
  const MessagingTemplates({
    required this.data,
    this.variables = const [],
    this.sender,
  });

  final List<MessagingTemplate> data;
  final List<String> variables;
  final String? sender;

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
        sender: json['sender'] as String?,
      );
}

/// Meta's review states of a template.
abstract final class MessagingTemplateStatus {
  static const approved = 'approved';
  static const pending = 'pending';
  static const rejected = 'rejected';
  static const paused = 'paused';
  static const disabled = 'disabled';
}

/// Meta's categories: order updates (`utility`), promotions (`marketing`) and one-time codes
/// (`authentication`).
abstract final class MessagingTemplateCategory {
  static const utility = 'utility';
  static const marketing = 'marketing';
  static const authentication = 'authentication';
  static const values = [utility, marketing, authentication];
}

/// A button of a template being written: `quick_reply`, `url`, `phone_number` or `copy_code`.
class MessagingTemplateButtonDraft {
  const MessagingTemplateButtonDraft({
    required this.type,
    this.text,
    this.url,
    this.phoneNumber,
    this.example,
  });

  static const quickReply = 'quick_reply';
  static const urlType = 'url';
  static const phone = 'phone_number';
  static const copyCode = 'copy_code';

  final String type;

  /// Label, at most 25 characters (none for `copy_code`).
  final String? text;

  /// `url`: an https link, optionally ending with `{{1}}`.
  final String? url;

  /// `phone_number`: international form (`+213…`).
  final String? phoneNumber;

  /// `url` with `{{1}}`: the end of the link as an example; `copy_code`: a sample code (≤ 15).
  final String? example;

  MessagingTemplateButtonDraft copyWith({
    String? type,
    String? text,
    String? url,
    String? phoneNumber,
    String? example,
  }) => MessagingTemplateButtonDraft(
    type: type ?? this.type,
    text: text ?? this.text,
    url: url ?? this.url,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    example: example ?? this.example,
  );

  factory MessagingTemplateButtonDraft.fromJson(Map<String, dynamic> json) =>
      MessagingTemplateButtonDraft(
        type: json['type'] as String? ?? quickReply,
        text: json['text'] as String?,
        url: json['url'] as String?,
        phoneNumber: json['phone_number'] as String?,
        example: json['example'] as String?,
      );

  Map<String, dynamic> toJson() => {
    'type': type,
    if (type != copyCode && text != null) 'text': text,
    if (type == urlType && url != null) 'url': url,
    if (type == phone && phoneNumber != null) 'phone_number': phoneNumber,
    if ((type == urlType || type == copyCode) &&
        (example ?? '').trim().isNotEmpty)
      'example': example,
  };
}

/// The code button of a verification template: `copy_code`, `one_tap` or `zero_tap`.
class MessagingOtpButton {
  const MessagingOtpButton({
    this.type = 'copy_code',
    this.text,
    this.autofillText,
    this.supportedApps = const [],
    this.zeroTapTermsAccepted,
  });

  final String type;
  final String? text;
  final String? autofillText;

  /// Android apps (`package_name`, `signature_hash`) for one-tap / zero-tap.
  final List<({String packageName, String signatureHash})> supportedApps;
  final bool? zeroTapTermsAccepted;

  factory MessagingOtpButton.fromJson(Map<String, dynamic> json) =>
      MessagingOtpButton(
        type: json['type'] as String? ?? 'copy_code',
        text: json['text'] as String?,
        autofillText: json['autofill_text'] as String?,
        supportedApps: [
          for (final a in (json['supported_apps'] as List? ?? const []))
            if (a is Map)
              (
                packageName: a['package_name']?.toString() ?? '',
                signatureHash: a['signature_hash']?.toString() ?? '',
              ),
        ],
        zeroTapTermsAccepted: json['zero_tap_terms_accepted'] as bool?,
      );

  Map<String, dynamic> toJson() => {
    'type': type,
    if ((text ?? '').trim().isNotEmpty) 'text': text,
    if (type != 'copy_code' && (autofillText ?? '').trim().isNotEmpty)
      'autofill_text': autofillText,
    if (type != 'copy_code')
      'supported_apps': [
        for (final a in supportedApps)
          {'package_name': a.packageName, 'signature_hash': a.signatureHash},
      ],
    if (type == 'zero_tap' && zeroTapTermsAccepted != null)
      'zero_tap_terms_accepted': zeroTapTermsAccepted,
  };
}

/// Options of a verification-code (authentication) template; its text is Meta's own
/// ("*{{1}}* is your verification code."), sent with `variables: {"1": code}`.
class MessagingTemplateAuthentication {
  const MessagingTemplateAuthentication({
    this.securityRecommendation = true,
    this.codeExpirationMinutes,
    this.button = const MessagingOtpButton(),
    this.ttlSeconds,
  });

  /// Adds "For your security, do not share this code."
  final bool securityRecommendation;

  /// 1–90: footer "This code expires in N minutes."
  final int? codeExpirationMinutes;
  final MessagingOtpButton button;

  /// 30–900: Meta drops an undelivered code after this.
  final int? ttlSeconds;

  MessagingTemplateAuthentication copyWith({
    bool? securityRecommendation,
    int? Function()? codeExpirationMinutes,
    MessagingOtpButton? button,
  }) => MessagingTemplateAuthentication(
    securityRecommendation:
        securityRecommendation ?? this.securityRecommendation,
    codeExpirationMinutes: codeExpirationMinutes != null
        ? codeExpirationMinutes()
        : this.codeExpirationMinutes,
    button: button ?? this.button,
    ttlSeconds: ttlSeconds,
  );

  factory MessagingTemplateAuthentication.fromJson(Map<String, dynamic> json) =>
      MessagingTemplateAuthentication(
        securityRecommendation: json['security_recommendation'] == true,
        codeExpirationMinutes: (json['code_expiration_minutes'] as num?)
            ?.toInt(),
        button: json['button'] is Map
            ? MessagingOtpButton.fromJson(
                Map<String, dynamic>.from(json['button'] as Map),
              )
            : const MessagingOtpButton(),
        ttlSeconds: (json['ttl_seconds'] as num?)?.toInt(),
      );

  Map<String, dynamic> toJson() => {
    'security_recommendation': securityRecommendation,
    'code_expiration_minutes': ?codeExpirationMinutes,
    'button': button.toJson(),
    'ttl_seconds': ?ttlSeconds,
  };
}

/// A template being written: Cloud's create body without `sender` (the store's own number is
/// used). Details are named after feeef's chips (`{{customer_name}}`) so slots fill themselves;
/// [examples] holds one example per detail (`header_<name>` for a title-only one).
class MessagingTemplateDraft {
  const MessagingTemplateDraft({
    required this.name,
    required this.locale,
    required this.category,
    this.header,
    this.body = '',
    this.footer,
    this.buttons = const [],
    this.examples = const {},
    this.authentication,
  });

  final String name;
  final String locale;

  /// [MessagingTemplateCategory]: `utility`, `marketing` or `authentication`.
  final String category;

  /// Title text (≤ 60 characters, at most one detail).
  final String? header;
  final String body;

  /// ≤ 60 characters, no details.
  final String? footer;
  final List<MessagingTemplateButtonDraft> buttons;
  final Map<String, String> examples;
  final MessagingTemplateAuthentication? authentication;

  bool get isAuthentication =>
      category == MessagingTemplateCategory.authentication;

  MessagingTemplateDraft copyWith({
    String? name,
    String? locale,
    String? category,
    String? Function()? header,
    String? body,
    String? Function()? footer,
    List<MessagingTemplateButtonDraft>? buttons,
    Map<String, String>? examples,
    MessagingTemplateAuthentication? Function()? authentication,
  }) => MessagingTemplateDraft(
    name: name ?? this.name,
    locale: locale ?? this.locale,
    category: category ?? this.category,
    header: header != null ? header() : this.header,
    body: body ?? this.body,
    footer: footer != null ? footer() : this.footer,
    buttons: buttons ?? this.buttons,
    examples: examples ?? this.examples,
    authentication: authentication != null
        ? authentication()
        : this.authentication,
  );

  factory MessagingTemplateDraft.fromJson(Map<String, dynamic> json) =>
      MessagingTemplateDraft(
        name: json['name'] as String? ?? '',
        locale: json['locale'] as String? ?? '',
        category: (json['category'] as String? ?? 'utility').toLowerCase(),
        header: json['header'] is Map
            ? (json['header'] as Map)['text'] as String?
            : null,
        body: json['body'] as String? ?? '',
        footer: json['footer'] as String?,
        buttons: [
          for (final b in (json['buttons'] as List? ?? const []))
            if (b is Map)
              MessagingTemplateButtonDraft.fromJson(
                Map<String, dynamic>.from(b),
              ),
        ],
        examples: {
          for (final e in ((json['examples'] as Map?) ?? const {}).entries)
            e.key.toString(): e.value.toString(),
        },
        authentication: json['authentication'] is Map
            ? MessagingTemplateAuthentication.fromJson(
                Map<String, dynamic>.from(json['authentication'] as Map),
              )
            : null,
      );

  /// The request body. Verification templates send only their code options; empty title,
  /// footer and examples are left out.
  Map<String, dynamic> toJson() {
    if (isAuthentication) {
      return {
        'name': name,
        'locale': locale,
        'category': category,
        'authentication':
            (authentication ?? const MessagingTemplateAuthentication())
                .toJson(),
      };
    }
    return {
      'name': name,
      'locale': locale,
      'category': category,
      if ((header ?? '').trim().isNotEmpty) 'header': {'text': header},
      'body': body,
      if ((footer ?? '').trim().isNotEmpty) 'footer': footer,
      if (buttons.isNotEmpty) 'buttons': [for (final b in buttons) b.toJson()],
      if (examples.isNotEmpty) 'examples': examples,
    };
  }
}

/// A ready-made template (`GET …/template-presets?locale=`): localized [title] and
/// [description], and the [template] to create.
class MessagingTemplatePreset {
  const MessagingTemplatePreset({
    required this.key,
    required this.title,
    required this.description,
    required this.category,
    required this.use,
    this.on,
    required this.template,
  });

  /// `order_confirmation`, `order_shipped`, `verification_code`, …
  final String key;
  final String title;
  final String description;
  final String category;

  /// `confirmation`, `rule` or `verification`.
  final String use;

  /// The rule trigger it is written for (`phase:ship`), if any.
  final String? on;
  final MessagingTemplateDraft template;

  factory MessagingTemplatePreset.fromJson(Map<String, dynamic> json) =>
      MessagingTemplatePreset(
        key: json['key'] as String,
        title: json['title'] as String? ?? '',
        description: json['description'] as String? ?? '',
        category: json['category'] as String? ?? 'utility',
        use: json['use'] as String? ?? 'rule',
        on: json['on'] as String?,
        template: MessagingTemplateDraft.fromJson(
          Map<String, dynamic>.from(json['template'] as Map),
        ),
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
  const MessagingError({
    this.status,
    this.code,
    this.message,
    this.field,
    this.details = const {},
  });

  /// HTTP status (null when the request never got an answer).
  final int? status;
  final String? code;
  final String? message;

  /// The field a 422 points at (`phoneNumberId`, `to`, `template`, …).
  final String? field;

  /// The refusal's `details` (Cloud's, passed through).
  final Map<String, dynamic> details;

  /// The platform switch is off (503 `messaging_disabled`).
  bool get disabled => status == 503 && code == 'messaging_disabled';

  /// Feeef Cloud failed or refused feeef (502): worth a retry.
  bool get cloudFailed => status == 502;

  /// Meta refused a template at submission (`messaging_template_rejected`).
  bool get templateRejected => code == 'messaging_template_rejected';

  /// The name is taken in this language, or Meta still holds a deleted one (up to 4 weeks).
  bool get templateExists => code == 'messaging_template_exists';

  /// Templates need the store's own WhatsApp number (`messaging_no_own_number`).
  bool get noOwnNumber => code == 'messaging_no_own_number';

  /// Meta's own words for a refused template, to show the merchant.
  String? get providerMessage => details['provider_message']?.toString();

  /// `validation_failed` field errors by path (`body`, `header.text`, `buttons.2.text`,
  /// `examples.customer_name`, `authentication.code_expiration_minutes`…), first message kept.
  Map<String, String> get fieldErrors {
    final fields = details['fields'];
    if (fields is! List) return const {};
    final out = <String, String>{};
    for (final f in fields) {
      if (f is! Map) continue;
      final path = f['path']?.toString() ?? '';
      out.putIfAbsent(path, () => f['message']?.toString() ?? '');
    }
    return out;
  }

  static MessagingError of(Object error) {
    if (error is! DioException) return MessagingError(message: '$error');
    final data = error.response?.data;
    final map = data is Map ? data : const {};
    final details = map['details'];
    return MessagingError(
      status: error.response?.statusCode,
      code: map['code']?.toString(),
      message: map['message']?.toString() ?? error.message,
      field: map['field']?.toString(),
      details: details is Map ? Map<String, dynamic>.from(details) : const {},
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

  /// Approved templates of [sender] (default: the selected sender). With [all], every
  /// template of the store's own WhatsApp number, whatever its review status.
  Future<MessagingTemplates> templates(
    String storeId, {
    String? sender,
    bool all = false,
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      '${_base(storeId)}/templates',
      queryParameters: {'sender': ?sender, if (all) 'all': '1'},
      cancelToken: cancelToken,
    );
    return MessagingTemplates.fromJson(_map(res));
  }

  /// Ready-made templates in [locale] (`ar`, `fr` or `en`; others get English).
  Future<List<MessagingTemplatePreset>> templatePresets(
    String storeId, {
    required String locale,
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      '${_base(storeId)}/template-presets',
      queryParameters: {'locale': locale},
      cancelToken: cancelToken,
    );
    return [
      for (final row in (_map(res)['data'] as List? ?? const []))
        MessagingTemplatePreset.fromJson(Map<String, dynamic>.from(row as Map)),
    ];
  }

  /// Creates [draft] on the store's own WhatsApp number and sends it to Meta for review
  /// (usually minutes, up to 24 hours). Pass the same [idempotencyKey] when retrying one
  /// submission. Refusals: 422 `validation_failed` ([MessagingError.fieldErrors]), 409
  /// `messaging_template_exists`, 422 `messaging_template_rejected`
  /// ([MessagingError.providerMessage]), 409 `messaging_no_own_number`.
  Future<MessagingTemplate> createTemplate(
    String storeId,
    MessagingTemplateDraft draft, {
    String? idempotencyKey,
    CancelToken? cancelToken,
  }) async {
    final res = await client.post(
      '${_base(storeId)}/templates',
      data: draft.toJson(),
      options: Options(
        headers: {'Idempotency-Key': idempotencyKey ?? newIdempotencyKey()},
      ),
      cancelToken: cancelToken,
    );
    return MessagingTemplate.fromJson(
      Map<String, dynamic>.from(_map(res)['data'] as Map),
    );
  }

  /// New content for [templateId] (its name and language can't change). Meta reviews it
  /// again; an approved template can be edited once a day.
  Future<MessagingTemplate> updateTemplate(
    String storeId,
    String templateId,
    MessagingTemplateDraft draft, {
    String? idempotencyKey,
    CancelToken? cancelToken,
  }) async {
    final body = draft.toJson()
      ..remove('name')
      ..remove('locale');
    final res = await client.patch(
      '${_base(storeId)}/templates/${Uri.encodeComponent(templateId)}',
      data: body,
      options: Options(
        headers: {'Idempotency-Key': idempotencyKey ?? newIdempotencyKey()},
      ),
      cancelToken: cancelToken,
    );
    return MessagingTemplate.fromJson(
      Map<String, dynamic>.from(_map(res)['data'] as Map),
    );
  }

  /// Deletes [templateId] here and on Meta (Meta keeps the name blocked for up to 4 weeks).
  Future<void> deleteTemplate(
    String storeId,
    String templateId, {
    CancelToken? cancelToken,
  }) async {
    await client.delete(
      '${_base(storeId)}/templates/${Uri.encodeComponent(templateId)}',
      cancelToken: cancelToken,
    );
  }

  static final _random = Random.secure();

  /// A fresh key for one submission.
  static String newIdempotencyKey() {
    final bytes = List<int>.generate(16, (_) => _random.nextInt(256));
    return 'ff-tpl-${bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join()}';
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
