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

Object? _storeLorToJson(LiteOrdersReport? v) => v?.toJson();


/// Shared deep equality for small nested collections (categories, contacts, …).
const _storeDeepEq = DeepCollectionEquality();

/// Normalizes API aliases before passing to generated `_$StoreFromJson`.
Map<String, dynamic> _normalizedStoreJson(Map<String, dynamic> json) {
  final m = Map<String, dynamic>.from(json);
  if (m['projectId'] == null && m['project_id'] != null) {
    m['projectId'] = m['project_id'];
  }
  return m;
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
  'codpilot',
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
/// [equal]/false] / [toStringOverride]:false — cheap equality and `toString`
/// that never dump [metadata].
@Freezed(equal: false, toStringOverride: false)
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
    @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson)
    StoreSubscription? subscription,
    num? due,
    // StoreConfigs
    StoreConfigs? configs,
    /// Cloud shipping fee: `ca_…` (account) or `unassigned` (project fees).
    String? shippingFeeId,
    String? projectId,
    // metaPixelIds
    List<String>? metaPixelIds,
    @Default({}) Map<String, StoreMember> members,
    /// Present when list/show is called with `with[]=lor` and the user may view analytics.
    @JsonKey(fromJson: _storeLorFromJson, toJson: _storeLorToJson)
    LiteOrdersReport? lor,
    /// Live template version (packages system).
    String? templateVersionId,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) =>
      _$StoreFromJson(_normalizedStoreJson(json));

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Store &&
            other.runtimeType == runtimeType &&
            other.id == id &&
            other.createdAt == createdAt &&
            other.updatedAt == updatedAt &&
            other.slug == slug &&
            other.banner == banner &&
            other.action == action &&
            other.domain == domain &&
            other.decoration == decoration &&
            other.name == name &&
            other.iconUrl == iconUrl &&
            other.logoUrl == logoUrl &&
            other.ondarkLogoUrl == ondarkLogoUrl &&
            other.userId == userId &&
            _storeDeepEq.equals(other.categories, categories) &&
            _storeDeepEq.equals(other.categoriesRelation, categoriesRelation) &&
            other.title == title &&
            other.description == description &&
            _storeDeepEq.equals(other.addresses, addresses) &&
            other.address == address &&
            _storeDeepEq.equals(other.metadata, metadata) &&
            _storeDeepEq.equals(other.contacts, contacts) &&
            other.integrations == integrations &&
            _storeDeepEq.equals(
                other.defaultShippingRates, defaultShippingRates) &&
            other.verifiedAt == verifiedAt &&
            other.blockedAt == blockedAt &&
            other.subscription == subscription &&
            other.due == due &&
            other.configs == configs &&
            other.shippingFeeId == shippingFeeId &&
            other.projectId == projectId &&
            _storeDeepEq.equals(other.metaPixelIds, metaPixelIds) &&
            _storeDeepEq.equals(other.members, members) &&
            other.lor == lor &&
            other.templateVersionId == templateVersionId);
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        slug,
        banner,
        action,
        domain,
        decoration,
        name,
        iconUrl,
        logoUrl,
        ondarkLogoUrl,
        userId,
        _storeDeepEq.hash(categories),
        _storeDeepEq.hash(categoriesRelation),
        title,
        description,
        _storeDeepEq.hash(addresses),
        address,
        _storeDeepEq.hash(metadata),
        _storeDeepEq.hash(contacts),
        integrations,
        _storeDeepEq.hash(defaultShippingRates),
        verifiedAt,
        blockedAt,
        subscription,
        due,
        configs,
        shippingFeeId,
        projectId,
        _storeDeepEq.hash(metaPixelIds),
        _storeDeepEq.hash(members),
        lor,
        templateVersionId,
      ]);

  /// Omits [metadata] values — dumping them freezes the UI.
  @override
  String toString() =>
      'Store(id: $id, slug: $slug, name: $name, updatedAt: $updatedAt, '
      'templateVersionId: $templateVersionId, metadataKeys: ${metadata.keys.toList()})';
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
    String? shippingFeeId,
    String? projectId,
    // subscription
    @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson)
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
    @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson)
    StoreSubscription? subscription,
    num? due,
    // StoreConfigs
    StoreConfigs? configs,
    String? shippingFeeId,
    String? projectId,
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
      url = "$url$slug.h.feeef.store";
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
    var rawKey = "$id;${domain?.name ?? "$slug.alpha.feeef.store"}".toUpperCase();
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

  /// Merges [update] onto this store without a JSON round-trip.
  ///
  /// [Store.toJson] leaves nested freezed values as typed objects; merging via
  /// `fromJson({...toJson(), ...toUpdateJson()})` fails for fields like [banner].
  Store applyUpdate(StoreUpdate update) {
    final patch = update.toUpdateJson();
    if (patch.isEmpty) return this;

    return copyWith(
      name: patch.containsKey('name') ? update.name! : name,
      slug: patch.containsKey('slug') ? update.slug! : slug,
      banner: patch.containsKey('banner') ? update.banner : banner,
      action: patch.containsKey('action') ? update.action : action,
      domain: patch.containsKey('domain') ? update.domain : domain,
      decoration: patch.containsKey('decoration') ? update.decoration : decoration,
      logoUrl: patch.containsKey('logoUrl') ? update.logoUrl : logoUrl,
      iconUrl: patch.containsKey('iconUrl') ? update.iconUrl : iconUrl,
      ondarkLogoUrl:
          patch.containsKey('ondarkLogoUrl') ? update.ondarkLogoUrl : ondarkLogoUrl,
      categories:
          patch.containsKey('categories') ? update.categories! : categories,
      title: patch.containsKey('title') ? update.title : title,
      description:
          patch.containsKey('description') ? update.description : description,
      addresses: patch.containsKey('addresses') ? update.addresses! : addresses,
      address: patch.containsKey('address') ? update.address : address,
      metadata: patch.containsKey('metadata') ? update.metadata! : metadata,
      contacts: patch.containsKey('contacts') ? update.contacts! : contacts,
      integrations:
          patch.containsKey('integrations') ? update.integrations! : integrations,
      defaultShippingRates: patch.containsKey('defaultShippingRates')
          ? update.defaultShippingRates!
          : defaultShippingRates,
      subscription:
          patch.containsKey('subscription') ? update.subscription : subscription,
      due: patch.containsKey('due') ? update.due : due,
      configs: patch.containsKey('configs') ? update.configs : configs,
      shippingFeeId:
          patch.containsKey('shippingFeeId') ? update.shippingFeeId : shippingFeeId,
      projectId: patch.containsKey('projectId') ? update.projectId : projectId,
    );
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
Map<String, StoreIntegrationSubscription>
    _storeSubscriptionIntegrationsFromJson(Object? json) {
  if (json == null) return const {};
  if (json is! Map) return const {};
  return json.map(
    (key, value) {
      if (value is StoreIntegrationSubscription) {
        return MapEntry(key as String, value);
      }
      final map = value is Map<String, dynamic>
          ? value
          : Map<String, dynamic>.from(value as Map);
      return MapEntry(
        key as String,
        StoreIntegrationSubscription.fromJson(map),
      );
    },
  );
}

Map<String, dynamic> _storeSubscriptionIntegrationsToJson(
  Map<String, StoreIntegrationSubscription> integrations,
) {
  return integrations.map((key, value) => MapEntry(key, value.toJson()));
}

StoreSubscription? _storeSubscriptionFromJson(Object? json) {
  if (json == null) return null;
  if (json is StoreSubscription) return json;
  if (json is Map<String, dynamic>) return StoreSubscription.fromJson(json);
  if (json is Map) {
    return StoreSubscription.fromJson(Map<String, dynamic>.from(json));
  }
  return null;
}

Map<String, dynamic> _normalizeSubscriptionJson(Map<String, dynamic> json) {
  final normalized = Map<String, dynamic>.from(json);
  if (normalized['type'] == 'pro') {
    normalized['type'] = 'premium';
  }
  return normalized;
}

Object? _storeSubscriptionToJson(StoreSubscription? subscription) =>
    subscription?.toJson();

/// Per-integration billing lifecycle (on store.subscription.integrations).
enum IntegrationBillingStatus {
  active,
  grace,
  past_due,
  canceled,
}

@freezed
abstract class StoreIntegrationSubscription with _$StoreIntegrationSubscription {
  const factory StoreIntegrationSubscription({
    required DateTime startAt,
    DateTime? expiresAt,
    @Default(IntegrationBillingStatus.active) IntegrationBillingStatus status,
    @Default(0) num price,
    @Default(true) bool autoRenew,
    @Default(0) int failedAttempts,
    DateTime? nextRetryAt,
  }) = _StoreIntegrationSubscription;

  factory StoreIntegrationSubscription.fromJson(Map<String, dynamic> json) =>
      _$StoreIntegrationSubscriptionFromJson(json);
}

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
    @Default({})
    @JsonKey(
      fromJson: _storeSubscriptionIntegrationsFromJson,
      toJson: _storeSubscriptionIntegrationsToJson,
    )
    Map<String, StoreIntegrationSubscription> integrations,
  }) = _StoreSubscription;

  factory StoreSubscription.fromJson(Map<String, dynamic> json) =>
      _$StoreSubscriptionFromJson(_normalizeSubscriptionJson(json));
}

enum StoreSubscriptionType { free, premium, vip, ultra, custom }

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
    ConfirmationQueueConfig? confirmationQueue,
    InventoryIntegration? inventory_integration,
    FinanceIntegration? finance_integration,
  }) = _StoreConfigs;

  factory StoreConfigs.fromJson(Map<String, dynamic> json) =>
      _$StoreConfigsFromJson(json);
}

/// How order sync handles line items with no inventory bucket for their SKU.
enum MissingInventoryBucketPolicy {
  @JsonValue('ignore')
  ignore,
  @JsonValue('reject')
  reject,
}

/// First rooms phase that holds stock for an order.
enum InventoryReservePhase {
  /// As soon as the order is placed (open desk). Default.
  @JsonValue('open')
  open,

  /// When the order is confirmed (pack desk).
  @JsonValue('pack')
  pack,

  /// When the order is handed to the courier (ship desk).
  @JsonValue('ship')
  ship,
}

/// Rooms phase that turns the hold into a sale (stock leaves).
enum InventoryConsumePhase {
  /// When handed to the courier.
  @JsonValue('ship')
  ship,

  /// When closed as done (delivered). Default.
  @JsonValue('done')
  done,
}

@freezed
abstract class InventoryIntegration with _$InventoryIntegration {
  const factory InventoryIntegration({
    /// Rooms lifecycle. Draft and failed orders (cancelled, returned, …)
    /// never hold stock; a failed order after consumption is restocked.
    @Default(InventoryReservePhase.open) InventoryReservePhase reserve_from,
    @Default(InventoryConsumePhase.done) InventoryConsumePhase consume_at,
    @Default(MissingInventoryBucketPolicy.ignore)
    MissingInventoryBucketPolicy missing_bucket_policy,
    @Default(true) bool allow_backorder,
    /// When true (and inventory module is active), storefront marks OOS variants.
    @Default(false) bool show_unavailable_on_frontend,
  }) = _InventoryIntegration;

  factory InventoryIntegration.fromJson(Map<String, dynamic> json) =>
      _$InventoryIntegrationFromJson(json);
}

/// Paper size for finance PDF documents (purchase orders, receipts, bills).
enum FinancePdfPaperSize {
  @JsonValue('a4')
  a4,
  @JsonValue('letter')
  letter,
  @JsonValue('a5')
  a5,
  @JsonValue('legal')
  legal,
  @JsonValue('a6')
  a6,
  /// 80 mm thermal roll (receipt / compact document printers).
  @JsonValue('thermal80')
  thermal80,
  /// 100 × 150 mm shipping-style label stock.
  @JsonValue('label100x150')
  label100x150,
}

/// Layout and content options for finance PDF documents.
@freezed
abstract class FinancePdfSettings with _$FinancePdfSettings {
  const factory FinancePdfSettings({
    @Default(FinancePdfPaperSize.a4) FinancePdfPaperSize paperSize,
    @Default(true) bool showQrCode,
    @Default(true) bool showLogo,
    @Default(true) bool showStoreContact,
    @Default(true) bool showSupplierDetails,
    @Default(true) bool showDocumentId,
    @Default(true) bool showFooter,
    @Default(true) bool showStatusBadge,
    @Default(false) bool showSignatureLines,
    @Default(true) bool showPaymentHistory,
    @Default('') String footerNote,
  }) = _FinancePdfSettings;

  factory FinancePdfSettings.fromJson(Map<String, dynamic> json) =>
      _$FinancePdfSettingsFromJson(json);
}

/// Order → finance settings. Revenue is recognized when an order is closed
/// as done in the rooms model (not configurable).
@freezed
abstract class FinanceIntegration with _$FinanceIntegration {
  const factory FinanceIntegration({
    @Default(FinancePdfSettings()) FinancePdfSettings pdf,
    /// Cash-basis metrics ignore payments/expenses before this UTC timestamp.
    String? activated_at,
  }) = _FinanceIntegration;

  factory FinanceIntegration.fromJson(Map<String, dynamic> json) =>
      _$FinanceIntegrationFromJson(json);
}

///
/// ConfirmationQueueConfig
///
/// Store-level settings for the confirmation queue, which serves confirmers one
/// eligible order at a time.
@freezed
abstract class ConfirmationQueueConfig with _$ConfirmationQueueConfig {
  const factory ConfirmationQueueConfig({
    /// Whether this store participates in the confirmation queue.
    @Default(true) bool enabled,

    /// How long a draft order must age before it becomes eligible for
    /// confirmation, giving the customer time to finish submitting.
    @Default(15) int draftDelayMinutes,

    /// After a confirmer skips, how long before the order is due again
    /// (`scheduled_at` soft-snooze).
    @Default(15) int skipDeferMinutes,

    /// How long after [Order.updatedAt] a recent history order stays
    /// correctable in the confirmation feed.
    @Default(5) int historyActionMinutes,
  }) = _ConfirmationQueueConfig;

  factory ConfirmationQueueConfig.fromJson(Map<String, dynamic> json) =>
      _$ConfirmationQueueConfigFromJson(json);
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
  bool get isUltra {
    return type == StoreSubscriptionType.ultra;
  }
  bool get isSoonExpired {
    return expiresAt != null && expiresAt!.isBefore(DateTime.now().add(Duration(days: 7)));
  }
  bool get canUpgrade {
    return !isPaid && !isExpired && !isSoonExpired;
  }

  /// Billing entry for a paid integration subscription.
  StoreIntegrationSubscription? integrationBilling(String integrationId) {
    return integrations[integrationId];
  }

  /// True when per-integration billing allows usage (active/grace and not expired).
  bool isIntegrationBillingEntitled(String integrationId) {
    final entry = integrations[integrationId];
    if (entry == null) return false;
    if (entry.status == IntegrationBillingStatus.canceled) return false;
    if (entry.status != IntegrationBillingStatus.active &&
        entry.status != IntegrationBillingStatus.grace) {
      return false;
    }
    final exp = entry.expiresAt;
    if (exp != null && exp.isBefore(DateTime.now())) return false;
    return true;
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

