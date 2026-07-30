// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Store _$StoreFromJson(Map<String, dynamic> json) => _Store(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  slug: json['slug'] as String,
  banner: json['banner'] == null
      ? null
      : StoreBanner.fromJson(json['banner'] as Map<String, dynamic>),
  action: json['action'] == null
      ? null
      : StoreAction.fromJson(json['action'] as Map<String, dynamic>),
  domain: json['domain'] == null
      ? null
      : StoreDomain.fromJson(json['domain'] as Map<String, dynamic>),
  decoration: json['decoration'] == null
      ? null
      : StoreDecoration.fromJson(json['decoration'] as Map<String, dynamic>),
  name: json['name'] as String,
  iconUrl: json['iconUrl'] as String?,
  logoUrl: json['logoUrl'] as String?,
  ondarkLogoUrl: json['ondarkLogoUrl'] as String?,
  userId: json['userId'] as String,
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => EmbaddedCategory.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  categoriesRelation: (json['categoriesRelation'] as List<dynamic>?)
      ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  addresses:
      (json['addresses'] as List<dynamic>?)
          ?.map((e) => EmbaddedAddress.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  address: json['address'] == null
      ? null
      : EmbaddedAddress.fromJson(json['address'] as Map<String, dynamic>),
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  contacts:
      (json['contacts'] as List<dynamic>?)
          ?.map((e) => EmbaddedContact.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  integrations: json['integrations'] == null
      ? const StoreIntegrations()
      : _storeIntegrationsFromJson(
          json['integrations'] as Map<String, dynamic>?,
        ),
  defaultShippingRates:
      (json['defaultShippingRates'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)?.map((e) => e as num?).toList())
          .toList() ??
      const [],
  verifiedAt: json['verifiedAt'] == null
      ? null
      : DateTime.parse(json['verifiedAt'] as String),
  blockedAt: json['blockedAt'] == null
      ? null
      : DateTime.parse(json['blockedAt'] as String),
  subscription: _storeSubscriptionFromJson(json['subscription']),
  due: json['due'] as num?,
  configs: json['configs'] == null
      ? null
      : StoreConfigs.fromJson(json['configs'] as Map<String, dynamic>),
  shippingPriceId: json['shippingPriceId'] as String?,
  templateId: json['templateId'] as String?,
  projectId: json['projectId'] as String?,
  metaPixelIds: (json['metaPixelIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  members:
      (json['members'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, StoreMember.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  lor: _storeLorFromJson(json['lor']),
  template: _storeTemplateFromJson(json['template']),
);

Map<String, dynamic> _$StoreToJson(_Store instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'slug': instance.slug,
  'banner': instance.banner,
  'action': instance.action,
  'domain': instance.domain,
  'decoration': instance.decoration,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'logoUrl': instance.logoUrl,
  'ondarkLogoUrl': instance.ondarkLogoUrl,
  'userId': instance.userId,
  'categories': instance.categories,
  'categoriesRelation': instance.categoriesRelation,
  'title': instance.title,
  'description': instance.description,
  'addresses': instance.addresses,
  'address': instance.address,
  'metadata': instance.metadata,
  'contacts': instance.contacts,
  'integrations': _storeIntegrationsToJson(instance.integrations),
  'defaultShippingRates': instance.defaultShippingRates,
  'verifiedAt': instance.verifiedAt?.toIso8601String(),
  'blockedAt': instance.blockedAt?.toIso8601String(),
  'subscription': _storeSubscriptionToJson(instance.subscription),
  'due': instance.due,
  'configs': instance.configs,
  'shippingPriceId': instance.shippingPriceId,
  'templateId': instance.templateId,
  'projectId': instance.projectId,
  'metaPixelIds': instance.metaPixelIds,
  'members': instance.members,
  'lor': _storeLorToJson(instance.lor),
  'template': _storeTemplateToJson(instance.template),
};

_StoreCreate _$StoreCreateFromJson(Map<String, dynamic> json) => _StoreCreate(
  id: json['id'] as String?,
  name: json['name'] as String,
  slug: json['slug'] as String,
  banner: json['banner'] == null
      ? null
      : StoreBanner.fromJson(json['banner'] as Map<String, dynamic>),
  action: json['action'] == null
      ? null
      : StoreAction.fromJson(json['action'] as Map<String, dynamic>),
  domain: json['domain'] == null
      ? null
      : StoreDomain.fromJson(json['domain'] as Map<String, dynamic>),
  decoration: json['decoration'] == null
      ? null
      : StoreDecoration.fromJson(json['decoration'] as Map<String, dynamic>),
  logoUrl: json['logoUrl'] as String?,
  ondarkLogoUrl: json['ondarkLogoUrl'] as String?,
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => EmbaddedCategory.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  title: json['title'] as String?,
  description: json['description'] as String?,
  addresses:
      (json['addresses'] as List<dynamic>?)
          ?.map((e) => EmbaddedAddress.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  address: json['address'] == null
      ? null
      : EmbaddedAddress.fromJson(json['address'] as Map<String, dynamic>),
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  contacts:
      (json['contacts'] as List<dynamic>?)
          ?.map((e) => EmbaddedContact.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  integrations: json['integrations'] == null
      ? const StoreIntegrations()
      : _storeIntegrationsFromJson(
          json['integrations'] as Map<String, dynamic>?,
        ),
  defaultShippingRates:
      (json['defaultShippingRates'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)?.map((e) => e as num?).toList())
          .toList() ??
      const [],
  shippingPriceId: json['shippingPriceId'] as String?,
  projectId: json['projectId'] as String?,
  subscription: _storeSubscriptionFromJson(json['subscription']),
  due: json['due'] as num?,
);

Map<String, dynamic> _$StoreCreateToJson(_StoreCreate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'banner': instance.banner,
      'action': instance.action,
      'domain': instance.domain,
      'decoration': instance.decoration,
      'logoUrl': instance.logoUrl,
      'ondarkLogoUrl': instance.ondarkLogoUrl,
      'categories': instance.categories,
      'title': instance.title,
      'description': instance.description,
      'addresses': instance.addresses,
      'address': instance.address,
      'metadata': instance.metadata,
      'contacts': instance.contacts,
      'integrations': _storeIntegrationsToJson(instance.integrations),
      'defaultShippingRates': instance.defaultShippingRates,
      'shippingPriceId': instance.shippingPriceId,
      'projectId': instance.projectId,
      'subscription': _storeSubscriptionToJson(instance.subscription),
      'due': instance.due,
    };

_StoreUpdate _$StoreUpdateFromJson(Map<String, dynamic> json) => _StoreUpdate(
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  banner: json['banner'] == null
      ? null
      : StoreBanner.fromJson(json['banner'] as Map<String, dynamic>),
  action: json['action'] == null
      ? null
      : StoreAction.fromJson(json['action'] as Map<String, dynamic>),
  domain: json['domain'] == null
      ? null
      : StoreDomain.fromJson(json['domain'] as Map<String, dynamic>),
  decoration: json['decoration'] == null
      ? null
      : StoreDecoration.fromJson(json['decoration'] as Map<String, dynamic>),
  logoUrl: json['logoUrl'] as String?,
  iconUrl: json['iconUrl'] as String?,
  ondarkLogoUrl: json['ondarkLogoUrl'] as String?,
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => EmbaddedCategory.fromJson(e as Map<String, dynamic>))
      .toList(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  addresses: (json['addresses'] as List<dynamic>?)
      ?.map((e) => EmbaddedAddress.fromJson(e as Map<String, dynamic>))
      .toList(),
  address: json['address'] == null
      ? null
      : EmbaddedAddress.fromJson(json['address'] as Map<String, dynamic>),
  metadata: json['metadata'] as Map<String, dynamic>?,
  contacts: (json['contacts'] as List<dynamic>?)
      ?.map((e) => EmbaddedContact.fromJson(e as Map<String, dynamic>))
      .toList(),
  integrations: _storeIntegrationsFromJsonNullable(
    json['integrations'] as Map<String, dynamic>?,
  ),
  defaultShippingRates: (json['defaultShippingRates'] as List<dynamic>?)
      ?.map((e) => (e as List<dynamic>?)?.map((e) => e as num?).toList())
      .toList(),
  subscription: _storeSubscriptionFromJson(json['subscription']),
  due: json['due'] as num?,
  configs: json['configs'] == null
      ? null
      : StoreConfigs.fromJson(json['configs'] as Map<String, dynamic>),
  shippingPriceId: json['shippingPriceId'] as String?,
  templateId: json['templateId'] as String?,
  projectId: json['projectId'] as String?,
);

Map<String, dynamic> _$StoreUpdateToJson(_StoreUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'banner': instance.banner,
      'action': instance.action,
      'domain': instance.domain,
      'decoration': instance.decoration,
      'logoUrl': instance.logoUrl,
      'iconUrl': instance.iconUrl,
      'ondarkLogoUrl': instance.ondarkLogoUrl,
      'categories': instance.categories,
      'title': instance.title,
      'description': instance.description,
      'addresses': instance.addresses,
      'address': instance.address,
      'metadata': instance.metadata,
      'contacts': instance.contacts,
      'integrations': _storeIntegrationsToJson(instance.integrations),
      'defaultShippingRates': instance.defaultShippingRates,
      'subscription': _storeSubscriptionToJson(instance.subscription),
      'due': instance.due,
      'configs': instance.configs,
      'shippingPriceId': instance.shippingPriceId,
      'templateId': instance.templateId,
      'projectId': instance.projectId,
    };

_StoreIntegrationSubscription _$StoreIntegrationSubscriptionFromJson(
  Map<String, dynamic> json,
) => _StoreIntegrationSubscription(
  startAt: DateTime.parse(json['startAt'] as String),
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
  status:
      $enumDecodeNullable(_$IntegrationBillingStatusEnumMap, json['status']) ??
      IntegrationBillingStatus.active,
  price: json['price'] as num? ?? 0,
  autoRenew: json['autoRenew'] as bool? ?? true,
  failedAttempts: (json['failedAttempts'] as num?)?.toInt() ?? 0,
  nextRetryAt: json['nextRetryAt'] == null
      ? null
      : DateTime.parse(json['nextRetryAt'] as String),
);

Map<String, dynamic> _$StoreIntegrationSubscriptionToJson(
  _StoreIntegrationSubscription instance,
) => <String, dynamic>{
  'startAt': instance.startAt.toIso8601String(),
  'expiresAt': instance.expiresAt?.toIso8601String(),
  'status': _$IntegrationBillingStatusEnumMap[instance.status]!,
  'price': instance.price,
  'autoRenew': instance.autoRenew,
  'failedAttempts': instance.failedAttempts,
  'nextRetryAt': instance.nextRetryAt?.toIso8601String(),
};

const _$IntegrationBillingStatusEnumMap = {
  IntegrationBillingStatus.active: 'active',
  IntegrationBillingStatus.grace: 'grace',
  IntegrationBillingStatus.past_due: 'past_due',
  IntegrationBillingStatus.canceled: 'canceled',
};

_StoreSubscription _$StoreSubscriptionFromJson(Map<String, dynamic> json) =>
    _StoreSubscription(
      type: $enumDecode(_$StoreSubscriptionTypeEnumMap, json['type']),
      status: $enumDecode(_$StoreSubscriptionStatusEnumMap, json['status']),
      quota: json['quota'] as num? ?? 0,
      consumed: json['consumed'] as num? ?? 0,
      startedAt: DateTime.parse(json['startedAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      integrations: json['integrations'] == null
          ? const {}
          : _storeSubscriptionIntegrationsFromJson(json['integrations']),
    );

Map<String, dynamic> _$StoreSubscriptionToJson(
  _StoreSubscription instance,
) => <String, dynamic>{
  'type': _$StoreSubscriptionTypeEnumMap[instance.type]!,
  'status': _$StoreSubscriptionStatusEnumMap[instance.status]!,
  'quota': instance.quota,
  'consumed': instance.consumed,
  'startedAt': instance.startedAt.toIso8601String(),
  'expiresAt': instance.expiresAt?.toIso8601String(),
  'metadata': instance.metadata,
  'integrations': _storeSubscriptionIntegrationsToJson(instance.integrations),
};

const _$StoreSubscriptionTypeEnumMap = {
  StoreSubscriptionType.free: 'free',
  StoreSubscriptionType.premium: 'premium',
  StoreSubscriptionType.vip: 'vip',
  StoreSubscriptionType.ultra: 'ultra',
  StoreSubscriptionType.custom: 'custom',
};

const _$StoreSubscriptionStatusEnumMap = {
  StoreSubscriptionStatus.active: 'active',
  StoreSubscriptionStatus.inactive: 'inactive',
  StoreSubscriptionStatus.expired: 'expired',
  StoreSubscriptionStatus.canceled: 'canceled',
};

_StoreConfigs _$StoreConfigsFromJson(
  Map<String, dynamic> json,
) => _StoreConfigs(
  currencies: (json['currencies'] as List<dynamic>)
      .map((e) => StoreCurrencyConfig.fromJson(e as Map<String, dynamic>))
      .toList(),
  selectedCurrency: json['selectedCurrency'] as String?,
  languages:
      (json['languages'] as List<dynamic>?)
          ?.map((e) => StoreLanguageConfig.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  defaultLanguage: json['defaultLanguage'] as String?,
  countries:
      (json['countries'] as List<dynamic>?)
          ?.map((e) => StoreCountryConfig.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  selectedCountry: json['selectedCountry'] as String?,
  customStatusMappings:
      (json['customStatusMappings'] as List<dynamic>?)
          ?.map((e) => CustomStatusMapping.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  customStatusEnabled: json['customStatusEnabled'] as bool? ?? false,
  confirmationQueue: json['confirmationQueue'] == null
      ? null
      : ConfirmationQueueConfig.fromJson(
          json['confirmationQueue'] as Map<String, dynamic>,
        ),
  inventory_integration: json['inventory_integration'] == null
      ? null
      : InventoryIntegration.fromJson(
          json['inventory_integration'] as Map<String, dynamic>,
        ),
  finance_integration: json['finance_integration'] == null
      ? null
      : FinanceIntegration.fromJson(
          json['finance_integration'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$StoreConfigsToJson(_StoreConfigs instance) =>
    <String, dynamic>{
      'currencies': instance.currencies,
      'selectedCurrency': instance.selectedCurrency,
      'languages': instance.languages,
      'defaultLanguage': instance.defaultLanguage,
      'countries': instance.countries,
      'selectedCountry': instance.selectedCountry,
      'customStatusMappings': instance.customStatusMappings,
      'customStatusEnabled': instance.customStatusEnabled,
      'confirmationQueue': instance.confirmationQueue,
      'inventory_integration': instance.inventory_integration,
      'finance_integration': instance.finance_integration,
    };

_InventoryLifecycleRule _$InventoryLifecycleRuleFromJson(
  Map<String, dynamic> json,
) => _InventoryLifecycleRule(
  id: json['id'] as String,
  dimension: $enumDecode(_$PixelStatusDimensionEnumMap, json['dimension']),
  equals: json['equals'] as String,
);

Map<String, dynamic> _$InventoryLifecycleRuleToJson(
  _InventoryLifecycleRule instance,
) => <String, dynamic>{
  'id': instance.id,
  'dimension': _$PixelStatusDimensionEnumMap[instance.dimension]!,
  'equals': instance.equals,
};

const _$PixelStatusDimensionEnumMap = {
  PixelStatusDimension.orderStatus: 'orderStatus',
  PixelStatusDimension.deliveryStatus: 'deliveryStatus',
  PixelStatusDimension.paymentStatus: 'paymentStatus',
  PixelStatusDimension.customStatus: 'customStatus',
};

_InventoryIntegration _$InventoryIntegrationFromJson(
  Map<String, dynamic> json,
) => _InventoryIntegration(
  reserve_on:
      (json['reserve_on'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$OrderStatusEnumMap, e))
          .toList() ??
      const [],
  unreserve_on:
      (json['unreserve_on'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$OrderStatusEnumMap, e))
          .toList() ??
      const [],
  consume_on:
      (json['consume_on'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$OrderStatusEnumMap, e))
          .toList() ??
      const [],
  reserve_rules:
      (json['reserve_rules'] as List<dynamic>?)
          ?.map(
            (e) => InventoryLifecycleRule.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  unreserve_rules:
      (json['unreserve_rules'] as List<dynamic>?)
          ?.map(
            (e) => InventoryLifecycleRule.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  consume_rules:
      (json['consume_rules'] as List<dynamic>?)
          ?.map(
            (e) => InventoryLifecycleRule.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  missing_bucket_policy:
      $enumDecodeNullable(
        _$MissingInventoryBucketPolicyEnumMap,
        json['missing_bucket_policy'],
      ) ??
      MissingInventoryBucketPolicy.ignore,
  allow_backorder: json['allow_backorder'] as bool? ?? true,
);

Map<String, dynamic> _$InventoryIntegrationToJson(
  _InventoryIntegration instance,
) => <String, dynamic>{
  'reserve_on': instance.reserve_on
      .map((e) => _$OrderStatusEnumMap[e]!)
      .toList(),
  'unreserve_on': instance.unreserve_on
      .map((e) => _$OrderStatusEnumMap[e]!)
      .toList(),
  'consume_on': instance.consume_on
      .map((e) => _$OrderStatusEnumMap[e]!)
      .toList(),
  'reserve_rules': instance.reserve_rules,
  'unreserve_rules': instance.unreserve_rules,
  'consume_rules': instance.consume_rules,
  'missing_bucket_policy':
      _$MissingInventoryBucketPolicyEnumMap[instance.missing_bucket_policy]!,
  'allow_backorder': instance.allow_backorder,
};

const _$OrderStatusEnumMap = {
  OrderStatus.draft: 'draft',
  OrderStatus.pending: 'pending',
  OrderStatus.review: 'review',
  OrderStatus.accepted: 'accepted',
  OrderStatus.processing: 'processing',
  OrderStatus.completed: 'completed',
  OrderStatus.cancelled: 'cancelled',
};

const _$MissingInventoryBucketPolicyEnumMap = {
  MissingInventoryBucketPolicy.ignore: 'ignore',
  MissingInventoryBucketPolicy.reject: 'reject',
};

_FinancePdfSettings _$FinancePdfSettingsFromJson(Map<String, dynamic> json) =>
    _FinancePdfSettings(
      paperSize:
          $enumDecodeNullable(
            _$FinancePdfPaperSizeEnumMap,
            json['paperSize'],
          ) ??
          FinancePdfPaperSize.a4,
      showQrCode: json['showQrCode'] as bool? ?? true,
      showLogo: json['showLogo'] as bool? ?? true,
      showStoreContact: json['showStoreContact'] as bool? ?? true,
      showSupplierDetails: json['showSupplierDetails'] as bool? ?? true,
      showDocumentId: json['showDocumentId'] as bool? ?? true,
      showFooter: json['showFooter'] as bool? ?? true,
      showStatusBadge: json['showStatusBadge'] as bool? ?? true,
      showSignatureLines: json['showSignatureLines'] as bool? ?? false,
      showPaymentHistory: json['showPaymentHistory'] as bool? ?? true,
      footerNote: json['footerNote'] as String? ?? '',
    );

Map<String, dynamic> _$FinancePdfSettingsToJson(_FinancePdfSettings instance) =>
    <String, dynamic>{
      'paperSize': _$FinancePdfPaperSizeEnumMap[instance.paperSize]!,
      'showQrCode': instance.showQrCode,
      'showLogo': instance.showLogo,
      'showStoreContact': instance.showStoreContact,
      'showSupplierDetails': instance.showSupplierDetails,
      'showDocumentId': instance.showDocumentId,
      'showFooter': instance.showFooter,
      'showStatusBadge': instance.showStatusBadge,
      'showSignatureLines': instance.showSignatureLines,
      'showPaymentHistory': instance.showPaymentHistory,
      'footerNote': instance.footerNote,
    };

const _$FinancePdfPaperSizeEnumMap = {
  FinancePdfPaperSize.a4: 'a4',
  FinancePdfPaperSize.letter: 'letter',
  FinancePdfPaperSize.a5: 'a5',
  FinancePdfPaperSize.legal: 'legal',
  FinancePdfPaperSize.a6: 'a6',
  FinancePdfPaperSize.thermal80: 'thermal80',
  FinancePdfPaperSize.label100x150: 'label100x150',
};

_FinanceIntegration _$FinanceIntegrationFromJson(Map<String, dynamic> json) =>
    _FinanceIntegration(
      recognize_on:
          (json['recognize_on'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$OrderStatusEnumMap, e))
              .toList() ??
          const [],
      pdf: json['pdf'] == null
          ? const FinancePdfSettings()
          : FinancePdfSettings.fromJson(json['pdf'] as Map<String, dynamic>),
      activated_at: json['activated_at'] as String?,
    );

Map<String, dynamic> _$FinanceIntegrationToJson(_FinanceIntegration instance) =>
    <String, dynamic>{
      'recognize_on': instance.recognize_on
          .map((e) => _$OrderStatusEnumMap[e]!)
          .toList(),
      'pdf': instance.pdf,
      'activated_at': instance.activated_at,
    };

_ConfirmationQueueConfig _$ConfirmationQueueConfigFromJson(
  Map<String, dynamic> json,
) => _ConfirmationQueueConfig(
  enabled: json['enabled'] as bool? ?? true,
  draftDelayMinutes: (json['draftDelayMinutes'] as num?)?.toInt() ?? 15,
  skipDeferMinutes: (json['skipDeferMinutes'] as num?)?.toInt() ?? 15,
  historyActionMinutes: (json['historyActionMinutes'] as num?)?.toInt() ?? 5,
);

Map<String, dynamic> _$ConfirmationQueueConfigToJson(
  _ConfirmationQueueConfig instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'draftDelayMinutes': instance.draftDelayMinutes,
  'skipDeferMinutes': instance.skipDeferMinutes,
  'historyActionMinutes': instance.historyActionMinutes,
};

_CustomStatusMapping _$CustomStatusMappingFromJson(Map<String, dynamic> json) =>
    _CustomStatusMapping(
      name: json['name'] as String,
      code: json['code'] as String?,
      color: (json['color'] as num?)?.toInt(),
      enabled: json['enabled'] as bool? ?? true,
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']),
      deliveryStatus: $enumDecodeNullable(
        _$DeliveryStatusEnumMap,
        json['deliveryStatus'],
      ),
      paymentStatus: $enumDecodeNullable(
        _$PaymentStatusEnumMap,
        json['paymentStatus'],
      ),
      next:
          (json['next'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      snoozeMinutes: (json['snoozeMinutes'] as num?)?.toInt(),
      reasons:
          (json['reasons'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      allowOtherReason: json['allowOtherReason'] as bool? ?? true,
      requiresReason: json['requiresReason'] as bool? ?? false,
      queueEligible: json['queueEligible'] as bool? ?? true,
    );

Map<String, dynamic> _$CustomStatusMappingToJson(
  _CustomStatusMapping instance,
) => <String, dynamic>{
  'name': instance.name,
  'code': instance.code,
  'color': instance.color,
  'enabled': instance.enabled,
  'status': _$OrderStatusEnumMap[instance.status],
  'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus],
  'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus],
  'next': instance.next,
  'snoozeMinutes': instance.snoozeMinutes,
  'reasons': instance.reasons,
  'allowOtherReason': instance.allowOtherReason,
  'requiresReason': instance.requiresReason,
  'queueEligible': instance.queueEligible,
};

const _$DeliveryStatusEnumMap = {
  DeliveryStatus.pending: 'pending',
  DeliveryStatus.delivering: 'delivering',
  DeliveryStatus.delivered: 'delivered',
  DeliveryStatus.returned: 'returned',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.unpaid: 'unpaid',
  PaymentStatus.paid: 'paid',
  PaymentStatus.received: 'received',
};

_StoreCurrencyConfig _$StoreCurrencyConfigFromJson(Map<String, dynamic> json) =>
    _StoreCurrencyConfig(
      code: json['code'] as String,
      symbol: json['symbol'] as String,
      precision: (json['precision'] as num).toInt(),
      rate: json['rate'] as num,
    );

Map<String, dynamic> _$StoreCurrencyConfigToJson(
  _StoreCurrencyConfig instance,
) => <String, dynamic>{
  'code': instance.code,
  'symbol': instance.symbol,
  'precision': instance.precision,
  'rate': instance.rate,
};

_StoreLanguageConfig _$StoreLanguageConfigFromJson(Map<String, dynamic> json) =>
    _StoreLanguageConfig(
      code: json['code'] as String,
      name: json['name'] as String,
      nativeName: json['nativeName'] as String,
      rtl: json['rtl'] as bool? ?? false,
    );

Map<String, dynamic> _$StoreLanguageConfigToJson(
  _StoreLanguageConfig instance,
) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'nativeName': instance.nativeName,
  'rtl': instance.rtl,
};

_StoreCountryConfig _$StoreCountryConfigFromJson(Map<String, dynamic> json) =>
    _StoreCountryConfig(
      code: json['code'] as String,
      name: json['name'] as String,
      nativeName: json['nativeName'] as String,
    );

Map<String, dynamic> _$StoreCountryConfigToJson(_StoreCountryConfig instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'nativeName': instance.nativeName,
    };
