// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_integrations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreIntegrations _$StoreIntegrationsFromJson(
  Map<String, dynamic> json,
) => _StoreIntegrations(
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  metaPixel: json['metaPixel'] == null
      ? null
      : MetaPixelIntegration.fromJson(
          json['metaPixel'] as Map<String, dynamic>,
        ),
  tiktokPixel: json['tiktokPixel'] == null
      ? null
      : TiktokPixelIntegration.fromJson(
          json['tiktokPixel'] as Map<String, dynamic>,
        ),
  googleAnalytics: json['googleAnalytics'] == null
      ? null
      : GoogleAnalyticsIntegration.fromJson(
          json['googleAnalytics'] as Map<String, dynamic>,
        ),
  googleTags: json['googleTags'] == null
      ? null
      : GoogleTagsIntegration.fromJson(
          json['googleTags'] as Map<String, dynamic>,
        ),
  ai: json['ai'] == null
      ? null
      : AiIntegration.fromJson(json['ai'] as Map<String, dynamic>),
  yalidine: json['yalidine'] == null
      ? null
      : YalidineDeliveryIntegration.fromJson(
          json['yalidine'] as Map<String, dynamic>,
        ),
  ecotrack: json['ecotrack'] == null
      ? null
      : EcotrackDeliveryIntegration.fromJson(
          json['ecotrack'] as Map<String, dynamic>,
        ),
  ecomanager: json['ecomanager'] == null
      ? null
      : EcomanagerDeliveryIntegration.fromJson(
          json['ecomanager'] as Map<String, dynamic>,
        ),
  procolis: json['procolis'] == null
      ? null
      : ProcolisDeliveryIntegration.fromJson(
          json['procolis'] as Map<String, dynamic>,
        ),
  noest: json['noest'] == null
      ? null
      : NoestDeliveryIntegration.fromJson(
          json['noest'] as Map<String, dynamic>,
        ),
  orderdz: json['orderdz'] == null
      ? null
      : OrderdzDeliveryIntegration.fromJson(
          json['orderdz'] as Map<String, dynamic>,
        ),
  zimou: json['zimou'] == null
      ? null
      : ZimouExpressDeliveryIntegration.fromJson(
          json['zimou'] as Map<String, dynamic>,
        ),
  zrexpress: json['zrexpress'] == null
      ? null
      : ZrexpressDeliveryIntegration.fromJson(
          json['zrexpress'] as Map<String, dynamic>,
        ),
  maystroDelivery: json['maystroDelivery'] == null
      ? null
      : MaystroDeliveryIntegration.fromJson(
          json['maystroDelivery'] as Map<String, dynamic>,
        ),
  googleSheet: json['googleSheet'] == null
      ? null
      : GoogleSheetsIntegration.fromJson(
          json['googleSheet'] as Map<String, dynamic>,
        ),
  webhooks: json['webhooks'] == null
      ? null
      : WebhooksIntegration.fromJson(json['webhooks'] as Map<String, dynamic>),
  security: json['security'] == null
      ? null
      : SecurityIntegration.fromJson(json['security'] as Map<String, dynamic>),
  customFields: json['customFields'] == null
      ? null
      : CustomFieldsIntegration.fromJson(
          json['customFields'] as Map<String, dynamic>,
        ),
  payment: json['payment'] == null
      ? null
      : PaymentIntegration.fromJson(json['payment'] as Map<String, dynamic>),
  dispatcher: json['dispatcher'] == null
      ? null
      : DispatcherIntegration.fromJson(
          json['dispatcher'] as Map<String, dynamic>,
        ),
  sms: json['sms'] as Map<String, dynamic>? ?? const {},
  telegram: json['telegram'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$StoreIntegrationsToJson(_StoreIntegrations instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'metaPixel': instance.metaPixel?.toJson(),
      'tiktokPixel': instance.tiktokPixel?.toJson(),
      'googleAnalytics': instance.googleAnalytics?.toJson(),
      'googleTags': instance.googleTags?.toJson(),
      'ai': instance.ai?.toJson(),
      'yalidine': instance.yalidine?.toJson(),
      'ecotrack': instance.ecotrack?.toJson(),
      'ecomanager': instance.ecomanager?.toJson(),
      'procolis': instance.procolis?.toJson(),
      'noest': instance.noest?.toJson(),
      'orderdz': instance.orderdz?.toJson(),
      'zimou': instance.zimou?.toJson(),
      'zrexpress': instance.zrexpress?.toJson(),
      'maystroDelivery': instance.maystroDelivery?.toJson(),
      'googleSheet': instance.googleSheet?.toJson(),
      'webhooks': instance.webhooks?.toJson(),
      'security': instance.security?.toJson(),
      'customFields': instance.customFields?.toJson(),
      'payment': instance.payment?.toJson(),
      'dispatcher': instance.dispatcher?.toJson(),
      'sms': instance.sms,
      'telegram': instance.telegram,
    };

_FacebookMarketingOAuth _$FacebookMarketingOAuthFromJson(
  Map<String, dynamic> json,
) => _FacebookMarketingOAuth(
  accessToken: json['accessToken'] as String,
  tokenType: json['tokenType'] as String? ?? 'bearer',
  expiresIn: (json['expiresIn'] as num?)?.toInt(),
  expiresAt: json['expiresAt'] as String?,
  scopes:
      (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$FacebookMarketingOAuthToJson(
  _FacebookMarketingOAuth instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'tokenType': instance.tokenType,
  'expiresIn': instance.expiresIn,
  'expiresAt': instance.expiresAt,
  'scopes': instance.scopes,
};

_MetaPixelIntegration _$MetaPixelIntegrationFromJson(
  Map<String, dynamic> json,
) => _MetaPixelIntegration(
  id: json['id'] as String? ?? 'default',
  pixels:
      (json['pixels'] as List<dynamic>?)
          ?.map((e) => MetaPixel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  objective:
      $enumDecodeNullable(_$MetaPixelEventEnumMap, json['objective']) ??
      MetaPixelEvent.purchase,
  draftObjective:
      $enumDecodeNullable(_$MetaPixelEventEnumMap, json['draftObjective']) ??
      MetaPixelEvent.lead,
  active: json['active'] as bool? ?? true,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  oauth2: json['oauth2'] == null
      ? null
      : FacebookMarketingOAuth.fromJson(json['oauth2'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MetaPixelIntegrationToJson(
  _MetaPixelIntegration instance,
) => <String, dynamic>{
  'id': instance.id,
  'pixels': instance.pixels.map((e) => e.toJson()).toList(),
  'objective': _$MetaPixelEventEnumMap[instance.objective]!,
  'draftObjective': _$MetaPixelEventEnumMap[instance.draftObjective]!,
  'active': instance.active,
  'metadata': instance.metadata,
  'oauth2': instance.oauth2?.toJson(),
};

const _$MetaPixelEventEnumMap = {
  MetaPixelEvent.none: 'none',
  MetaPixelEvent.lead: 'lead',
  MetaPixelEvent.purchase: 'purchase',
  MetaPixelEvent.viewContent: 'viewContent',
  MetaPixelEvent.addToCart: 'addToCart',
  MetaPixelEvent.initiateCheckout: 'initiateCheckout',
};

_MetaPixel _$MetaPixelFromJson(Map<String, dynamic> json) => _MetaPixel(
  name: json['name'] as String? ?? 'إسم البكسل',
  id: json['id'] as String,
  key: json['key'] as String?,
);

Map<String, dynamic> _$MetaPixelToJson(_MetaPixel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'key': instance.key,
    };

_TiktokPixelIntegration _$TiktokPixelIntegrationFromJson(
  Map<String, dynamic> json,
) => _TiktokPixelIntegration(
  id: json['id'] as String? ?? 'default',
  pixels:
      (json['pixels'] as List<dynamic>?)
          ?.map((e) => TiktokPixel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  objective:
      $enumDecodeNullable(_$TiktokPixelEventEnumMap, json['objective']) ??
      TiktokPixelEvent.purchase,
  draftObjective:
      $enumDecodeNullable(_$TiktokPixelEventEnumMap, json['draftObjective']) ??
      TiktokPixelEvent.purchase,
  active: json['active'] as bool? ?? true,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$TiktokPixelIntegrationToJson(
  _TiktokPixelIntegration instance,
) => <String, dynamic>{
  'id': instance.id,
  'pixels': instance.pixels.map((e) => e.toJson()).toList(),
  'objective': _$TiktokPixelEventEnumMap[instance.objective]!,
  'draftObjective': _$TiktokPixelEventEnumMap[instance.draftObjective]!,
  'active': instance.active,
  'metadata': instance.metadata,
};

const _$TiktokPixelEventEnumMap = {
  TiktokPixelEvent.none: 'none',
  TiktokPixelEvent.viewContent: 'viewContent',
  TiktokPixelEvent.addToWishlist: 'addToWishlist',
  TiktokPixelEvent.search: 'search',
  TiktokPixelEvent.addPaymentInfo: 'addPaymentInfo',
  TiktokPixelEvent.addToCart: 'addToCart',
  TiktokPixelEvent.initiateCheckout: 'initiateCheckout',
  TiktokPixelEvent.placeAnOrder: 'placeAnOrder',
  TiktokPixelEvent.completeRegistration: 'completeRegistration',
  TiktokPixelEvent.purchase: 'purchase',
};

_TiktokPixel _$TiktokPixelFromJson(Map<String, dynamic> json) => _TiktokPixel(
  name: json['name'] as String? ?? 'TikTok Pixel',
  id: json['id'] as String,
  accessToken: json['accessToken'] as String?,
);

Map<String, dynamic> _$TiktokPixelToJson(_TiktokPixel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'accessToken': instance.accessToken,
    };

_GoogleAnalyticsIntegration _$GoogleAnalyticsIntegrationFromJson(
  Map<String, dynamic> json,
) => _GoogleAnalyticsIntegration(
  id: json['id'] as String? ?? "EMPTY",
  active: json['active'] as bool? ?? false,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$GoogleAnalyticsIntegrationToJson(
  _GoogleAnalyticsIntegration instance,
) => <String, dynamic>{
  'id': instance.id,
  'active': instance.active,
  'metadata': instance.metadata,
};

_GoogleTagsIntegration _$GoogleTagsIntegrationFromJson(
  Map<String, dynamic> json,
) => _GoogleTagsIntegration(
  key: json['key'] as String,
  active: json['active'] as bool? ?? true,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$GoogleTagsIntegrationToJson(
  _GoogleTagsIntegration instance,
) => <String, dynamic>{
  'key': instance.key,
  'active': instance.active,
  'metadata': instance.metadata,
};

_AiIntegration _$AiIntegrationFromJson(
  Map<String, dynamic> json,
) => _AiIntegration(
  active: json['active'] as bool? ?? true,
  apiKey: json['apiKey'] as String?,
  planningModel: json['planningModel'] as String? ?? 'gemini-3.1-pro-preview',
  textModel: json['textModel'] as String? ?? 'gemini-2.5-flash-lite',
  imageModel: json['imageModel'] as String? ?? 'gemini-2.5-flash-image-preview',
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$AiIntegrationToJson(_AiIntegration instance) =>
    <String, dynamic>{
      'active': instance.active,
      'apiKey': instance.apiKey,
      'planningModel': instance.planningModel,
      'textModel': instance.textModel,
      'imageModel': instance.imageModel,
      'metadata': instance.metadata,
    };

_YalidineDeliveryIntegration _$YalidineDeliveryIntegrationFromJson(
  Map<String, dynamic> json,
) => _YalidineDeliveryIntegration(
  id: json['id'] as String,
  token: json['token'] as String,
  agent:
      $enumDecodeNullable(_$YalidineAgentEnumMap, json['agent']) ??
      YalidineAgent.yalidine,
  active: json['active'] as bool? ?? true,
  autoSend: json['autoSend'] as bool? ?? false,
  forceFreeShipping: json['forceFreeShipping'] as bool? ?? false,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$YalidineDeliveryIntegrationToJson(
  _YalidineDeliveryIntegration instance,
) => <String, dynamic>{
  'id': instance.id,
  'token': instance.token,
  'agent': _$YalidineAgentEnumMap[instance.agent]!,
  'active': instance.active,
  'autoSend': instance.autoSend,
  'forceFreeShipping': instance.forceFreeShipping,
  'metadata': instance.metadata,
};

const _$YalidineAgentEnumMap = {
  YalidineAgent.yalidine: 'yalidine',
  YalidineAgent.guepex: 'guepex',
};

_EcotrackDeliveryIntegration _$EcotrackDeliveryIntegrationFromJson(
  Map<String, dynamic> json,
) => _EcotrackDeliveryIntegration(
  baseUrl: json['baseUrl'] as String,
  token: json['token'] as String,
  active: json['active'] as bool? ?? true,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$EcotrackDeliveryIntegrationToJson(
  _EcotrackDeliveryIntegration instance,
) => <String, dynamic>{
  'baseUrl': instance.baseUrl,
  'token': instance.token,
  'active': instance.active,
  'metadata': instance.metadata,
};

_EcomanagerDeliveryIntegration _$EcomanagerDeliveryIntegrationFromJson(
  Map<String, dynamic> json,
) => _EcomanagerDeliveryIntegration(
  baseUrl: json['baseUrl'] as String,
  token: json['token'] as String,
  active: json['active'] as bool? ?? true,
  autoSend: json['autoSend'] as bool? ?? true,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$EcomanagerDeliveryIntegrationToJson(
  _EcomanagerDeliveryIntegration instance,
) => <String, dynamic>{
  'baseUrl': instance.baseUrl,
  'token': instance.token,
  'active': instance.active,
  'autoSend': instance.autoSend,
  'metadata': instance.metadata,
};

_ProcolisDeliveryIntegration _$ProcolisDeliveryIntegrationFromJson(
  Map<String, dynamic> json,
) => _ProcolisDeliveryIntegration(
  key: json['key'] as String,
  token: json['token'] as String,
  active: json['active'] as bool? ?? true,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ProcolisDeliveryIntegrationToJson(
  _ProcolisDeliveryIntegration instance,
) => <String, dynamic>{
  'key': instance.key,
  'token': instance.token,
  'active': instance.active,
  'metadata': instance.metadata,
};

_NoestDeliveryIntegration _$NoestDeliveryIntegrationFromJson(
  Map<String, dynamic> json,
) => _NoestDeliveryIntegration(
  guid: json['guid'] as String,
  token: json['token'] as String,
  active: json['active'] as bool? ?? true,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$NoestDeliveryIntegrationToJson(
  _NoestDeliveryIntegration instance,
) => <String, dynamic>{
  'guid': instance.guid,
  'token': instance.token,
  'active': instance.active,
  'metadata': instance.metadata,
};

_OrderdzDeliveryIntegration _$OrderdzDeliveryIntegrationFromJson(
  Map<String, dynamic> json,
) => _OrderdzDeliveryIntegration(
  url: json['url'] as String?,
  token: json['token'] as String,
  active: json['active'] as bool? ?? true,
  autoSend: json['autoSend'] as bool? ?? false,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$OrderdzDeliveryIntegrationToJson(
  _OrderdzDeliveryIntegration instance,
) => <String, dynamic>{
  'url': instance.url,
  'token': instance.token,
  'active': instance.active,
  'autoSend': instance.autoSend,
  'metadata': instance.metadata,
};

_ZimouExpressDeliveryIntegration _$ZimouExpressDeliveryIntegrationFromJson(
  Map<String, dynamic> json,
) => _ZimouExpressDeliveryIntegration(
  id: json['id'] as String,
  apiKey: json['apiKey'] as String,
  active: json['active'] as bool? ?? true,
  silentMode: json['silentMode'] as bool? ?? false,
  autoSend: json['autoSend'] as bool? ?? false,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ZimouExpressDeliveryIntegrationToJson(
  _ZimouExpressDeliveryIntegration instance,
) => <String, dynamic>{
  'id': instance.id,
  'apiKey': instance.apiKey,
  'active': instance.active,
  'silentMode': instance.silentMode,
  'autoSend': instance.autoSend,
  'metadata': instance.metadata,
};

_ZrexpressDeliveryIntegration _$ZrexpressDeliveryIntegrationFromJson(
  Map<String, dynamic> json,
) => _ZrexpressDeliveryIntegration(
  id: json['id'] as String,
  apiKey: json['apiKey'] as String,
  tenantId: json['tenantId'] as String,
  webhookSecret: json['webhookSecret'] as String?,
  active: json['active'] as bool? ?? true,
  silentMode: json['silentMode'] as bool? ?? false,
  autoSend: json['autoSend'] as bool? ?? false,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ZrexpressDeliveryIntegrationToJson(
  _ZrexpressDeliveryIntegration instance,
) => <String, dynamic>{
  'id': instance.id,
  'apiKey': instance.apiKey,
  'tenantId': instance.tenantId,
  'webhookSecret': instance.webhookSecret,
  'active': instance.active,
  'silentMode': instance.silentMode,
  'autoSend': instance.autoSend,
  'metadata': instance.metadata,
};

_MaystroDeliveryIntegration _$MaystroDeliveryIntegrationFromJson(
  Map<String, dynamic> json,
) => _MaystroDeliveryIntegration(
  token: json['token'] as String,
  baseUrl: json['baseUrl'] as String?,
  webhookSecret: json['webhookSecret'] as String?,
  active: json['active'] as bool? ?? true,
  autoSend: json['autoSend'] as bool? ?? false,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$MaystroDeliveryIntegrationToJson(
  _MaystroDeliveryIntegration instance,
) => <String, dynamic>{
  'token': instance.token,
  'baseUrl': instance.baseUrl,
  'webhookSecret': instance.webhookSecret,
  'active': instance.active,
  'autoSend': instance.autoSend,
  'metadata': instance.metadata,
};

_SecurityIntegration _$SecurityIntegrationFromJson(Map<String, dynamic> json) =>
    _SecurityIntegration(
      key: json['key'] as String?,
      active: json['active'] as bool? ?? true,
      ordersRateLimit: (json['ordersRateLimit'] as num?)?.toInt(),
      ordersRateLimitDuration: (json['ordersRateLimitDuration'] as num?)
          ?.toInt(),
      hideProducts: json['hideProducts'] as bool?,
      orders: json['orders'] == null
          ? null
          : SecurityIntegrationOrdersProtection.fromJson(
              json['orders'] as Map<String, dynamic>,
            ),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$SecurityIntegrationToJson(
  _SecurityIntegration instance,
) => <String, dynamic>{
  'key': instance.key,
  'active': instance.active,
  'ordersRateLimit': instance.ordersRateLimit,
  'ordersRateLimitDuration': instance.ordersRateLimitDuration,
  'hideProducts': instance.hideProducts,
  'orders': instance.orders?.toJson(),
  'metadata': instance.metadata,
};

_SecurityIntegrationOrdersProtection
_$SecurityIntegrationOrdersProtectionFromJson(Map<String, dynamic> json) =>
    _SecurityIntegrationOrdersProtection(
      frontend: json['frontend'] == null
          ? null
          : SecurityIntegrationFrontendProtection.fromJson(
              json['frontend'] as Map<String, dynamic>,
            ),
      backend: json['backend'] == null
          ? null
          : SecurityIntegrationBackendProtection.fromJson(
              json['backend'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$SecurityIntegrationOrdersProtectionToJson(
  _SecurityIntegrationOrdersProtection instance,
) => <String, dynamic>{
  'frontend': instance.frontend?.toJson(),
  'backend': instance.backend?.toJson(),
};

_SecurityIntegrationFrontendProtection
_$SecurityIntegrationFrontendProtectionFromJson(Map<String, dynamic> json) =>
    _SecurityIntegrationFrontendProtection(
      active: json['active'] as bool? ?? false,
    );

Map<String, dynamic> _$SecurityIntegrationFrontendProtectionToJson(
  _SecurityIntegrationFrontendProtection instance,
) => <String, dynamic>{'active': instance.active};

_SecurityIntegrationBackendProtection
_$SecurityIntegrationBackendProtectionFromJson(Map<String, dynamic> json) =>
    _SecurityIntegrationBackendProtection(
      active: json['active'] as bool? ?? false,
      phoneTtl: (json['phoneTtl'] as num?)?.toInt(),
      ipTtl: (json['ipTtl'] as num?)?.toInt(),
      blockDirectOrders: json['blockDirectOrders'] as bool? ?? false,
      adsOnlyMode: json['adsOnlyMode'] as bool? ?? false,
    );

Map<String, dynamic> _$SecurityIntegrationBackendProtectionToJson(
  _SecurityIntegrationBackendProtection instance,
) => <String, dynamic>{
  'active': instance.active,
  'phoneTtl': instance.phoneTtl,
  'ipTtl': instance.ipTtl,
  'blockDirectOrders': instance.blockDirectOrders,
  'adsOnlyMode': instance.adsOnlyMode,
};

_GoogleSheetsColumn _$GoogleSheetsColumnFromJson(Map<String, dynamic> json) =>
    _GoogleSheetsColumn(
      field: json['field'] as String?,
      name: json['name'] as String,
      enabled: json['enabled'] as bool,
      defaultValue: json['defaultValue'],
    );

Map<String, dynamic> _$GoogleSheetsColumnToJson(_GoogleSheetsColumn instance) =>
    <String, dynamic>{
      'field': instance.field,
      'name': instance.name,
      'enabled': instance.enabled,
      'defaultValue': instance.defaultValue,
    };

_GoogleSheetsIntegration _$GoogleSheetsIntegrationFromJson(
  Map<String, dynamic> json,
) => _GoogleSheetsIntegration(
  id: json['id'] as String?,
  name: json['name'] as String?,
  active: json['active'] as bool? ?? true,
  oauth2: json['oauth2'] as Map<String, dynamic>?,
  columns:
      (json['columns'] as List<dynamic>?)
          ?.map((e) => GoogleSheetsColumn.fromJson(e as Map<String, dynamic>))
          .toList() ??
      defaultOrderColumns,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$GoogleSheetsIntegrationToJson(
  _GoogleSheetsIntegration instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'active': instance.active,
  'oauth2': instance.oauth2,
  'columns': instance.columns?.map((e) => e.toJson()).toList(),
  'metadata': instance.metadata,
};

_WebhookConfig _$WebhookConfigFromJson(Map<String, dynamic> json) =>
    _WebhookConfig(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      events:
          (json['events'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$WebhookEventEnumMap, e))
              .toList() ??
          const [],
      secret: json['secret'] as String?,
      active: json['active'] as bool? ?? true,
      headers:
          (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$WebhookConfigToJson(_WebhookConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'events': instance.events.map((e) => _$WebhookEventEnumMap[e]!).toList(),
      'secret': instance.secret,
      'active': instance.active,
      'headers': instance.headers,
      'metadata': instance.metadata,
    };

const _$WebhookEventEnumMap = {
  WebhookEvent.orderCreated: 'orderCreated',
  WebhookEvent.orderUpdated: 'orderUpdated',
  WebhookEvent.orderDeleted: 'orderDeleted',
};

_WebhooksIntegration _$WebhooksIntegrationFromJson(Map<String, dynamic> json) =>
    _WebhooksIntegration(
      webhooks:
          (json['webhooks'] as List<dynamic>?)
              ?.map((e) => WebhookConfig.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      active: json['active'] as bool? ?? true,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$WebhooksIntegrationToJson(
  _WebhooksIntegration instance,
) => <String, dynamic>{
  'webhooks': instance.webhooks.map((e) => e.toJson()).toList(),
  'active': instance.active,
  'metadata': instance.metadata,
};

_CustomField _$CustomFieldFromJson(Map<String, dynamic> json) => _CustomField(
  id: json['id'] as String,
  label: json['label'] as String,
  type: $enumDecode(_$CustomFieldTypeEnumMap, json['type']),
  required: json['required'] as bool? ?? false,
  multiple: json['multiple'] as bool? ?? false,
  minCount: (json['minCount'] as num?)?.toInt(),
  maxCount: (json['maxCount'] as num?)?.toInt(),
  placeholder: json['placeholder'] as String?,
  helpText: json['helpText'] as String?,
  regexPattern: json['regexPattern'] as String?,
  defaultValue: json['defaultValue'],
  order: (json['order'] as num?)?.toInt() ?? 0,
  active: json['active'] as bool? ?? true,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$CustomFieldToJson(_CustomField instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'type': _$CustomFieldTypeEnumMap[instance.type]!,
      'required': instance.required,
      'multiple': instance.multiple,
      'minCount': instance.minCount,
      'maxCount': instance.maxCount,
      'placeholder': instance.placeholder,
      'helpText': instance.helpText,
      'regexPattern': instance.regexPattern,
      'defaultValue': instance.defaultValue,
      'order': instance.order,
      'active': instance.active,
      'metadata': instance.metadata,
    };

const _$CustomFieldTypeEnumMap = {
  CustomFieldType.text: 'text',
  CustomFieldType.phone: 'phone',
  CustomFieldType.email: 'email',
  CustomFieldType.image: 'image',
  CustomFieldType.file: 'file',
  CustomFieldType.date: 'date',
  CustomFieldType.time: 'time',
  CustomFieldType.datetime: 'datetime',
  CustomFieldType.timerange: 'timerange',
  CustomFieldType.daterange: 'daterange',
  CustomFieldType.datetimerange: 'datetimerange',
};

_CustomFieldsIntegration _$CustomFieldsIntegrationFromJson(
  Map<String, dynamic> json,
) => _CustomFieldsIntegration(
  fields:
      (json['fields'] as List<dynamic>?)
          ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  active: json['active'] as bool? ?? true,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$CustomFieldsIntegrationToJson(
  _CustomFieldsIntegration instance,
) => <String, dynamic>{
  'fields': instance.fields.map((e) => e.toJson()).toList(),
  'active': instance.active,
  'metadata': instance.metadata,
};

_PaymentMethodConfig _$PaymentMethodConfigFromJson(Map<String, dynamic> json) =>
    _PaymentMethodConfig(
      id: json['id'] as String,
      name: json['name'] as String,
      active: json['active'] as bool? ?? true,
      apiKey: json['apiKey'] as String?,
      clientId: json['clientId'] as String?,
      clientSecret: json['clientSecret'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$PaymentMethodConfigToJson(
  _PaymentMethodConfig instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'active': instance.active,
  'apiKey': instance.apiKey,
  'clientId': instance.clientId,
  'clientSecret': instance.clientSecret,
  'metadata': instance.metadata,
};

_PaymentIntegration _$PaymentIntegrationFromJson(Map<String, dynamic> json) =>
    _PaymentIntegration(
      active: json['active'] as bool? ?? true,
      methods:
          (json['methods'] as List<dynamic>?)
              ?.map(
                (e) => PaymentMethodConfig.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      defaultMethod: json['defaultMethod'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$PaymentIntegrationToJson(_PaymentIntegration instance) =>
    <String, dynamic>{
      'active': instance.active,
      'methods': instance.methods.map((e) => e.toJson()).toList(),
      'defaultMethod': instance.defaultMethod,
      'metadata': instance.metadata,
    };

_DispatcherIntegration _$DispatcherIntegrationFromJson(
  Map<String, dynamic> json,
) => _DispatcherIntegration(
  active: json['active'] as bool? ?? true,
  strategy: json['strategy'] == null
      ? null
      : OrdersDispatchStrategy.fromJson(
          json['strategy'] as Map<String, dynamic>,
        ),
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$DispatcherIntegrationToJson(
  _DispatcherIntegration instance,
) => <String, dynamic>{
  'active': instance.active,
  'strategy': instance.strategy?.toJson(),
  'metadata': instance.metadata,
};
