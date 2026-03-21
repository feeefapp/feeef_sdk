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
  subscription: json['subscription'] == null
      ? null
      : StoreSubscription.fromJson(
          json['subscription'] as Map<String, dynamic>,
        ),
  due: json['due'] as num?,
  configs: json['configs'] == null
      ? null
      : StoreConfigs.fromJson(json['configs'] as Map<String, dynamic>),
  shippingPriceId: json['shippingPriceId'] as String?,
  metaPixelIds: (json['metaPixelIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  members:
      (json['members'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, StoreMember.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
);

Map<String, dynamic> _$StoreToJson(_Store instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'slug': instance.slug,
  'banner': instance.banner?.toJson(),
  'action': instance.action?.toJson(),
  'domain': instance.domain?.toJson(),
  'decoration': instance.decoration?.toJson(),
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'logoUrl': instance.logoUrl,
  'ondarkLogoUrl': instance.ondarkLogoUrl,
  'userId': instance.userId,
  'categories': instance.categories.map((e) => e.toJson()).toList(),
  'categoriesRelation': instance.categoriesRelation
      ?.map((e) => e.toJson())
      .toList(),
  'title': instance.title,
  'description': instance.description,
  'addresses': instance.addresses.map((e) => e.toJson()).toList(),
  'address': instance.address?.toJson(),
  'metadata': instance.metadata,
  'contacts': instance.contacts.map((e) => e.toJson()).toList(),
  'integrations': _storeIntegrationsToJson(instance.integrations),
  'defaultShippingRates': instance.defaultShippingRates,
  'verifiedAt': instance.verifiedAt?.toIso8601String(),
  'blockedAt': instance.blockedAt?.toIso8601String(),
  'subscription': instance.subscription?.toJson(),
  'due': instance.due,
  'configs': instance.configs?.toJson(),
  'shippingPriceId': instance.shippingPriceId,
  'metaPixelIds': instance.metaPixelIds,
  'members': instance.members.map((k, e) => MapEntry(k, e.toJson())),
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
  subscription: json['subscription'] == null
      ? null
      : StoreSubscription.fromJson(
          json['subscription'] as Map<String, dynamic>,
        ),
  due: json['due'] as num?,
);

Map<String, dynamic> _$StoreCreateToJson(_StoreCreate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'banner': instance.banner?.toJson(),
      'action': instance.action?.toJson(),
      'domain': instance.domain?.toJson(),
      'decoration': instance.decoration?.toJson(),
      'logoUrl': instance.logoUrl,
      'ondarkLogoUrl': instance.ondarkLogoUrl,
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'title': instance.title,
      'description': instance.description,
      'addresses': instance.addresses.map((e) => e.toJson()).toList(),
      'address': instance.address?.toJson(),
      'metadata': instance.metadata,
      'contacts': instance.contacts.map((e) => e.toJson()).toList(),
      'integrations': _storeIntegrationsToJson(instance.integrations),
      'defaultShippingRates': instance.defaultShippingRates,
      'shippingPriceId': instance.shippingPriceId,
      'subscription': instance.subscription?.toJson(),
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
  subscription: json['subscription'] == null
      ? null
      : StoreSubscription.fromJson(
          json['subscription'] as Map<String, dynamic>,
        ),
  due: json['due'] as num?,
  configs: json['configs'] == null
      ? null
      : StoreConfigs.fromJson(json['configs'] as Map<String, dynamic>),
  shippingPriceId: json['shippingPriceId'] as String?,
);

Map<String, dynamic> _$StoreUpdateToJson(_StoreUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'banner': instance.banner?.toJson(),
      'action': instance.action?.toJson(),
      'domain': instance.domain?.toJson(),
      'decoration': instance.decoration?.toJson(),
      'logoUrl': instance.logoUrl,
      'iconUrl': instance.iconUrl,
      'ondarkLogoUrl': instance.ondarkLogoUrl,
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'title': instance.title,
      'description': instance.description,
      'addresses': instance.addresses?.map((e) => e.toJson()).toList(),
      'address': instance.address?.toJson(),
      'metadata': instance.metadata,
      'contacts': instance.contacts?.map((e) => e.toJson()).toList(),
      'integrations': _storeIntegrationsToJson(instance.integrations),
      'defaultShippingRates': instance.defaultShippingRates,
      'subscription': instance.subscription?.toJson(),
      'due': instance.due,
      'configs': instance.configs?.toJson(),
      'shippingPriceId': instance.shippingPriceId,
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
    );

Map<String, dynamic> _$StoreSubscriptionToJson(_StoreSubscription instance) =>
    <String, dynamic>{
      'type': _$StoreSubscriptionTypeEnumMap[instance.type]!,
      'status': _$StoreSubscriptionStatusEnumMap[instance.status]!,
      'quota': instance.quota,
      'consumed': instance.consumed,
      'startedAt': instance.startedAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

const _$StoreSubscriptionTypeEnumMap = {
  StoreSubscriptionType.free: 'free',
  StoreSubscriptionType.premium: 'premium',
  StoreSubscriptionType.vip: 'vip',
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
);

Map<String, dynamic> _$StoreConfigsToJson(_StoreConfigs instance) =>
    <String, dynamic>{
      'currencies': instance.currencies.map((e) => e.toJson()).toList(),
      'selectedCurrency': instance.selectedCurrency,
      'languages': instance.languages.map((e) => e.toJson()).toList(),
      'defaultLanguage': instance.defaultLanguage,
      'countries': instance.countries.map((e) => e.toJson()).toList(),
      'selectedCountry': instance.selectedCountry,
      'customStatusMappings': instance.customStatusMappings
          .map((e) => e.toJson())
          .toList(),
      'customStatusEnabled': instance.customStatusEnabled,
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
      next: (json['next'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
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
