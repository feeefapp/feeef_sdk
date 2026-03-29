import 'dart:convert';

import 'package:feeef/core/string_extensions.dart';
import 'package:feeef/interfaces/embadded/embadded_category.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:feeef/categories/models/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../interfaces/embadded/store.dart';
import '../../interfaces/embadded/store_integrations.dart';
import '../../interfaces/helpers.dart';
import '../../interfaces/store.dart';
import 'package:feeef/orders/models/lite_orders_report.dart';

part 'store.freezed.dart';
part 'store.g.dart';

LiteOrdersReport? _storeLorFromJson(Object? o) {
  if (o == null) return null;
  if (o is Map<String, dynamic>) return LiteOrdersReport.fromJson(o);
  if (o is Map) return LiteOrdersReport.fromJson(Map<String, dynamic>.from(o));
  return null;
}

/// Keys for integration fields; empty map `{}` is normalized to null when parsing.
const _storeIntegrationKeys = [
  'metadata',
  'metaPixel',
  'tiktokPixel',
  'googleAnalytics',
  'googleTags',
  'ai',
  'yalidine',
  'ecotrack',
  'ecomanager',
  'procolis',
  'noest',
  'orderdz',
  'zimou',
  'zrexpress',
  'maystroDelivery',
  'googleSheet',
  'webhooks',
  'security',
  'customFields',
  'payment',
  'dispatcher',
  'sms',
  'telegram',
];

/// Parses [StoreIntegrations] from JSON with legacy compatibility: any key
/// whose value is an empty map `{}` is treated as null (avoids errors for
/// e.g. [MaystroDeliveryIntegration]). Returns default when json is null.
StoreIntegrations _storeIntegrationsFromJson(Map<String, dynamic>? json) {
  if (json == null) return const StoreIntegrations();
  final sanitized = Map<String, dynamic>.from(json);
  for (final key in _storeIntegrationKeys) {
    if (sanitized.containsKey(key)) {
      final v = sanitized[key];
      if (v is Map && v.isEmpty) sanitized[key] = null;
    }
  }
  return StoreIntegrations.fromJson(sanitized);
}

/// Nullable variant for [StoreUpdate]; returns null when json is null.
StoreIntegrations? _storeIntegrationsFromJsonNullable(Map<String, dynamic>? json) {
  if (json == null) return null;
  final sanitized = Map<String, dynamic>.from(json);
  for (final key in _storeIntegrationKeys) {
    if (sanitized.containsKey(key)) {
      final v = sanitized[key];
      if (v is Map && v.isEmpty) sanitized[key] = null;
    }
  }
  return StoreIntegrations.fromJson(sanitized);
}

/// Serializes [StoreIntegrations] to JSON and removes null keys to save space.
Map<String, dynamic>? _storeIntegrationsToJson(StoreIntegrations? object) {
  if (object == null) return null;
  final map = Map<String, dynamic>.from(object.toJson());
  map.removeWhere((_, v) => v == null);
  return map;
}

// // subscription
// subscriptio?: any
// due?: number

// // StoreConfigs
// configs?: StoreConfigs
@freezed
abstract class Store extends StoreEntity
    with _$Store
    implements Model, ModelMetadata {
  Store._();
  factory Store({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String slug,
    StoreBanner? banner,
    StoreAction? action,
    StoreDomain? domain,
    StoreDecoration? decoration,
    required String name,
    String? iconUrl,
    String? logoUrl,
    @Deprecated("use logoUrl") String? ondarkLogoUrl,
    required String userId,
    @Default([]) List<EmbaddedCategory> categories,
    List<Category>? categoriesRelation,
    String? title,
    String? description,
    @Default([]) List<EmbaddedAddress> addresses,
    EmbaddedAddress? address,
    @Default({}) Map<String, dynamic> metadata,
    @Default([]) List<EmbaddedContact> contacts,
    @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)
    @Default(StoreIntegrations())
    StoreIntegrations integrations,
    @Default([]) List<List<num?>?> defaultShippingRates,
    DateTime? verifiedAt,
    DateTime? blockedAt,
    // subscription
    StoreSubscription? subscription,
    num? due,
    // StoreConfigs
    StoreConfigs? configs,
    String? shippingPriceId,
    // metaPixelIds
    List<String>? metaPixelIds,
    @Default({}) Map<String, StoreMember> members,
    /// Present when list/show is called with `with[]=lor` and the user may view analytics.
    @JsonKey(fromJson: _storeLorFromJson) LiteOrdersReport? lor,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

// StoreCreate
@freezed
abstract class StoreCreate with _$StoreCreate implements ModelCreate {
  const factory StoreCreate({
    String? id,
    required String name,
    required String slug,
    StoreBanner? banner,
    StoreAction? action,
    StoreDomain? domain,
    StoreDecoration? decoration,
    String? logoUrl,
    String? ondarkLogoUrl,
    @Default([]) List<EmbaddedCategory> categories,
    String? title,
    String? description,
    @Default([]) List<EmbaddedAddress> addresses,
    EmbaddedAddress? address,
    @Default({}) Map<String, dynamic> metadata,
    @Default([]) List<EmbaddedContact> contacts,
    @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)
    @Default(StoreIntegrations())
    StoreIntegrations integrations,
    @Default([]) List<List<num?>?> defaultShippingRates,
    String? shippingPriceId,
    // subscription
    StoreSubscription? subscription,
    num? due,
  }) = _StoreCreate;

  factory StoreCreate.fromJson(Map<String, dynamic> json) =>
      _$StoreCreateFromJson(json);
}

// StoreUpdate
@freezed
abstract class StoreUpdate with _$StoreUpdate implements ModelUpdate {
  const factory StoreUpdate({
    String? name,
    String? slug,
    StoreBanner? banner,
    StoreAction? action,
    StoreDomain? domain,
    StoreDecoration? decoration,
    String? logoUrl,
    String? iconUrl,
    String? ondarkLogoUrl,
    List<EmbaddedCategory>? categories,
    String? title,
    String? description,
    List<EmbaddedAddress>? addresses,
    EmbaddedAddress? address,
    Map<String, dynamic>? metadata,
    List<EmbaddedContact>? contacts,
    @JsonKey(
        fromJson: _storeIntegrationsFromJsonNullable,
        toJson: _storeIntegrationsToJson,
      )
    StoreIntegrations? integrations,
    List<List<num?>?>? defaultShippingRates,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
    // subscription
    StoreSubscription? subscription,
    num? due,
    // StoreConfigs
    StoreConfigs? configs,
    String? shippingPriceId,
  }) = _StoreUpdate;

  factory StoreUpdate.fromJson(Map<String, dynamic> json) =>
      _$StoreUpdateFromJson(json);
}

extension StoreExtensions on Store {
  String getPublicUrl({bool ignoreDomain = false, String path = ""}) {
    var url = "https://";
    if (!ignoreDomain && domain?.name.nullIfEmpty != null
    // && domain!.verifiedAt != null
    ) {
      url = "$url${domain!.name}";
    } else {
      // Assuming the Store class has a property `id` or `slug` to generate the public URL
      // Replace `id` with the appropriate property if necessary
      url = "$url$slug.feeef.store";
    }
    return url + path;
  }

  // get Icon or logo
  String? get iconOrLogoONull {
    return iconUrl?.nullIfEmpty ?? logoUrl?.nullIfEmpty;
  }

  String? get logoOrIconONull {
    return iconUrl?.nullIfEmpty ?? logoUrl?.nullIfEmpty;
  }

  // apikey is just the store id shifted the domain name
  String getApiKey() {
    var rawKey = "$id;${domain?.name ?? "$slug.feeef.store"}".toUpperCase();
    // manipulate the rawKey to get the api key (looks random)
    var encodedKey = base64Url.encode(utf8.encode(rawKey));
    // reverse the encodedKey
    var reversedKey = encodedKey.split('').reversed.join();
    // REvirce upercase to lower case
    var transformedKey = reversedKey.split('').map((char) {
      if (char == char.toUpperCase()) {
        return char.toLowerCase();
      } else {
        return char.toUpperCase();
      }
    }).join();
    return transformedKey;
  }

  String decryptApiKey(String apiKey) {
    // Reverse the transformation process
    var reversedKey = apiKey.split('').map((char) {
      if (char == char.toUpperCase()) {
        return char.toLowerCase();
      } else {
        return char.toUpperCase();
      }
    }).join();

    var encodedKey = reversedKey.split('').reversed.join();
    var rawKey = utf8.decode(base64Url.decode(encodedKey));
    return rawKey.split('.').first; // Assuming the store id is the first part
  }
}

// export enum StoreSubscriptionType {
//   free = 'free',
//   quota = 'quota',
//   percentage = 'percentage',
// }

// export interface StoreSubscription {
//   type: StoreSubscriptionType
//   status: StoreSubscriptionStatus
//   startedAt: DateTime
//   expiresAt: DateTime | null
//   metadata: Record<string, any>
// }

///
/// StoreSubscription
///
@freezed
abstract class StoreSubscription with _$StoreSubscription {
  const factory StoreSubscription({
    required StoreSubscriptionType type,
    required StoreSubscriptionStatus status,
    @Default(0) num quota,
    @Default(0) num consumed,
    required DateTime startedAt,
    DateTime? expiresAt,
    @Default({}) Map<String, dynamic> metadata,
  }) = _StoreSubscription;

  factory StoreSubscription.fromJson(Map<String, dynamic> json) =>
      _$StoreSubscriptionFromJson(json);
}

enum StoreSubscriptionType { free, premium, vip, custom }

enum StoreSubscriptionStatus { active, inactive, expired, canceled }

// export interface StoreConfigs {
//   currencies: StoreCurrencyConfig[]
//   selectedCurrency: number
// }

// export interface StoreCurrencyConfig {
//   code: string
//   symbol: string
//   precision: number
//   rate: number
// }

///
/// StoreConfigs
///
@freezed
abstract class StoreConfigs with _$StoreConfigs {
  const factory StoreConfigs({
    required List<StoreCurrencyConfig> currencies,
    String? selectedCurrency,
    @Default([]) List<StoreLanguageConfig> languages,
    String? defaultLanguage,
    @Default([]) List<StoreCountryConfig> countries,
    String? selectedCountry,
    @Default([]) List<CustomStatusMapping> customStatusMappings,
    @Default(false) bool customStatusEnabled,
  }) = _StoreConfigs;

  factory StoreConfigs.fromJson(Map<String, dynamic> json) =>
      _$StoreConfigsFromJson(json);
}

///
/// CustomStatusMapping
///
@freezed
abstract class CustomStatusMapping with _$CustomStatusMapping {
  const factory CustomStatusMapping({
    /// The custom status name (e.g., "not_respond", "phone_closed_1")
    required String name,

    /// Auto-generated code based on name if not provided (e.g., "not_respond" -> "not_respond")
    String? code,

    /// Optional color for UI display (hex color as number)
    int? color,

    /// Whether this custom status is enabled and should be shown in UI
    @Default(true) bool enabled,

    /// Status to map to (null means no change)
    OrderStatus? status,

    /// Delivery status to map to (null means no change)
    DeliveryStatus? deliveryStatus,

    /// Payment status to map to (null means no change)
    PaymentStatus? paymentStatus,

    /// Other mappings to suggest as the next step (`code` when set, otherwise `name`).
    @Default([]) List<String> next,
  }) = _CustomStatusMapping;

  factory CustomStatusMapping.fromJson(Map<String, dynamic> json) =>
      _$CustomStatusMappingFromJson(json);
}

///
/// StoreCurrencyConfig
///
@freezed
abstract class StoreCurrencyConfig with _$StoreCurrencyConfig {
  const factory StoreCurrencyConfig({
    required String code,
    required String symbol,
    required int precision,
    required num rate,
  }) = _StoreCurrencyConfig;

  factory StoreCurrencyConfig.fromJson(Map<String, dynamic> json) =>
      _$StoreCurrencyConfigFromJson(json);
}

///
/// StoreLanguageConfig
///
@freezed
abstract class StoreLanguageConfig with _$StoreLanguageConfig {
  const factory StoreLanguageConfig({
    required String code,
    required String name,
    required String nativeName,
    @Default(false) bool rtl,
  }) = _StoreLanguageConfig;

  factory StoreLanguageConfig.fromJson(Map<String, dynamic> json) =>
      _$StoreLanguageConfigFromJson(json);
}

///
/// StoreCountryConfig
///
@freezed
abstract class StoreCountryConfig with _$StoreCountryConfig {
  const factory StoreCountryConfig({
    required String code,
    required String name,
    required String nativeName,
  }) = _StoreCountryConfig;

  factory StoreCountryConfig.fromJson(Map<String, dynamic> json) =>
      _$StoreCountryConfigFromJson(json);
}

// extensio to store subscription
extension StoreSubscriptionExtensions on StoreSubscription {
  bool get isExpired {
    return expiresAt != null && expiresAt!.isBefore(DateTime.now());
  }
  bool get isPaid {
    return type != StoreSubscriptionType.free;
  }
  bool get isSoonExpired {
    return expiresAt != null && expiresAt!.isBefore(DateTime.now().add(Duration(days: 7)));
  }
  bool get canUpgrade {
    return !isPaid && !isExpired && !isSoonExpired;
  }
}

extension StoreConfigsExtensions on Store {
  StoreCurrencyConfig? getCurrency() {
    if (configs == null) return null;
    try {
      return configs!.currencies.firstWhere(
        (c) => c.code == configs!.selectedCurrency,
      );
    } catch (e) {
      return null;
    }
  }

  String getCurrencySymbol() {
    return getCurrency()?.symbol ?? '';
  }
}

