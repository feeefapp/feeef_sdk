/// Store Integrations Data Models
///
/// This file defines data models for various store integrations, such as analytics, delivery, security, and communication services.
/// All models use the `freezed` package for immutability and serialization.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

import '../product.dart';
import 'orders_dispatch_strategy.dart';

part 'store_integrations.freezed.dart';
part 'store_integrations.g.dart';

/// Main container for all store integrations.
@freezed
abstract class StoreIntegrations with _$StoreIntegrations {
  const StoreIntegrations._();
  const factory StoreIntegrations({
    @Default({}) Map<String, dynamic>? metadata,
    // Analytics Integrations
    MetaPixelIntegration? metaPixel,
    TiktokPixelIntegration? tiktokPixel,
    GoogleAnalyticsIntegration? googleAnalytics,
    GoogleTagsIntegration? googleTags,
    /// Microsoft Clarity (trackingCode public in storefront; apiKey never in public JSON).
    ClarityIntegration? clarity,
    AiIntegration? ai,
    // Delivery Integrations
    YalidineDeliveryIntegration? yalidine,
    EcotrackDeliveryIntegration? ecotrack,
    EcomanagerDeliveryIntegration? ecomanager,
    ProcolisDeliveryIntegration? procolis,
    NoestDeliveryIntegration? noest,
    OrderdzDeliveryIntegration? orderdz,
    ZimouExpressDeliveryIntegration? zimou,
    ZrexpressDeliveryIntegration? zrexpress,
    MdmExpressDeliveryIntegration? mdmExpress,
    MaystroDeliveryIntegration? maystroDelivery,
    // Google Sheets Integration
    GoogleSheetsIntegration? googleSheet,
    // Webhooks Integration
    WebhooksIntegration? webhooks,
    // Security Integration
    SecurityIntegration? security,
    // Custom Fields Integration
    CustomFieldsIntegration? customFields,
    // Payment Integration
    PaymentIntegration? payment,
    // Dispatcher Integration (order assignment to confirmers)
    DispatcherIntegration? dispatcher,
    /// Inventory module (warehouses, stock, order reserve/consume).
    StoreInventoryIntegration? inventory,
    /// Finance module (procurement, accounting).
    StoreFinanceIntegration? finance,
    /// Inbound platform connectors (Shopify, YouCan, Google Sheets, …).
    ConnectorsIntegration? connectors,
    // Communication Integrations
    @Default({}) Map<String, dynamic>? sms,
    @Default({}) Map<String, dynamic>? telegram,
    // customJavascript, CustomHtmlI (future)
  }) = _StoreIntegrations;

  factory StoreIntegrations.fromJson(Map<String, dynamic> json) =>
      _$StoreIntegrationsFromJson(json);
}

// ===================== ANALYTICS INTEGRATIONS =====================

/// Controls where pixel conversion events are sent: server-only (CAPI), client-only (store frontend), or both.
/// When null (auto), server is used if an API key is configured; otherwise client-only.
enum PixelReportMode {
  server,
  client,
  both,
}

/// Which order field to watch for [PixelStatusRule] (server-side CAPI on status transition).
@JsonEnum(alwaysCreate: true)
enum PixelStatusDimension {
  @JsonValue('orderStatus')
  orderStatus,
  @JsonValue('deliveryStatus')
  deliveryStatus,
  @JsonValue('paymentStatus')
  paymentStatus,
  @JsonValue('customStatus')
  customStatus,
}

/// When the order transitions so [dimension] becomes [equals], send the configured pixel events (server).
@freezed
abstract class PixelStatusRule with _$PixelStatusRule {
  const factory PixelStatusRule({
    required String id,
    required PixelStatusDimension dimension,
    required String equals,
    MetaPixelEvent? metaEvent,
    TiktokPixelEvent? tiktokEvent,
    /// When set, takes precedence over [metaEvent] (Meta CAPI custom name).
    String? metaCustomEvent,
    String? tiktokCustomEvent,
  }) = _PixelStatusRule;

  factory PixelStatusRule.fromJson(Map<String, dynamic> json) =>
      _$PixelStatusRuleFromJson(json);
}

/// Facebook Marketing OAuth data for accessing Facebook Marketing API
@freezed
abstract class FacebookMarketingOAuth with _$FacebookMarketingOAuth {
  const FacebookMarketingOAuth._();
  const factory FacebookMarketingOAuth({
    required String accessToken,
    @Default('bearer') String tokenType,
    int? expiresIn,
    String? expiresAt,
    @Default([]) List<String> scopes,
  }) = _FacebookMarketingOAuth;

  factory FacebookMarketingOAuth.fromJson(Map<String, dynamic> json) =>
      _$FacebookMarketingOAuthFromJson(json);
}

/// Facebook Meta Pixel integration configuration.
@freezed
abstract class MetaPixelIntegration with _$MetaPixelIntegration {
  const MetaPixelIntegration._();
  const factory MetaPixelIntegration({
    @Default('default') String id,
    @Default([]) List<MetaPixel> pixels,
    @Default(MetaPixelEvent.purchase) MetaPixelEvent objective,
    @Default(MetaPixelEvent.lead) MetaPixelEvent draftObjective,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,

    /// Facebook Marketing OAuth data - for accessing pixels via API
    FacebookMarketingOAuth? oauth2,

    /// Where to send events: server (CAPI), client (store frontend), or both. Null = auto.
    PixelReportMode? mode,

    /// Server-only: fire CAPI when order/delivery/payment/custom status transitions into [equals].
    @Default([]) List<PixelStatusRule> statusRules,
  }) = _MetaPixelIntegration;

  factory MetaPixelIntegration.fromJson(Map<String, dynamic> json) =>
      _$MetaPixelIntegrationFromJson(json);
}

/// Single Meta Pixel configuration.
@freezed
abstract class MetaPixel with _$MetaPixel {
  const MetaPixel._();
  const factory MetaPixel({
    @Default('إسم البكسل') String name,
    required String id,
    String? key,
  }) = _MetaPixel;

  factory MetaPixel.fromJson(Map<String, dynamic> json) =>
      _$MetaPixelFromJson(json);
}

/// TikTok Pixel integration configuration.
@freezed
abstract class TiktokPixelIntegration with _$TiktokPixelIntegration {
  const TiktokPixelIntegration._();
  const factory TiktokPixelIntegration({
    @Default('default') String id,
    @Default([]) List<TiktokPixel> pixels,
    @Default(TiktokPixelEvent.purchase) TiktokPixelEvent objective,
    @Default(TiktokPixelEvent.purchase) TiktokPixelEvent draftObjective,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,

    /// Where to send events: server, client, or both. Null = auto.
    PixelReportMode? mode,

    /// Server-only: fire Events API when order/delivery/payment/custom status transitions into [equals].
    @Default([]) List<PixelStatusRule> statusRules,
  }) = _TiktokPixelIntegration;

  factory TiktokPixelIntegration.fromJson(Map<String, dynamic> json) =>
      _$TiktokPixelIntegrationFromJson(json);
}

/// Single TikTok Pixel configuration.
@freezed
abstract class TiktokPixel with _$TiktokPixel {
  const TiktokPixel._();
  const factory TiktokPixel({
    @Default('TikTok Pixel') String name,
    required String id,
    String? accessToken,
  }) = _TiktokPixel;

  factory TiktokPixel.fromJson(Map<String, dynamic> json) =>
      _$TiktokPixelFromJson(json);
}

/// Google Analytics integration configuration.
@freezed
abstract class GoogleAnalyticsIntegration with _$GoogleAnalyticsIntegration {
  const GoogleAnalyticsIntegration._();
  const factory GoogleAnalyticsIntegration({
    @Default("EMPTY") String id,
    @Default(false) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _GoogleAnalyticsIntegration;

  factory GoogleAnalyticsIntegration.fromJson(Map<String, dynamic> json) =>
      _$GoogleAnalyticsIntegrationFromJson(json);
}

/// Google Tags integration configuration.
@freezed
abstract class GoogleTagsIntegration with _$GoogleTagsIntegration {
  const GoogleTagsIntegration._();
  const factory GoogleTagsIntegration({
    required String key,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _GoogleTagsIntegration;

  factory GoogleTagsIntegration.fromJson(Map<String, dynamic> json) =>
      _$GoogleTagsIntegrationFromJson(json);
}

/// Microsoft Clarity session recording / heatmaps.
@freezed
abstract class ClarityIntegration with _$ClarityIntegration {
  const ClarityIntegration._();
  const factory ClarityIntegration({
    @Default(true) bool active,
    required String trackingCode,
    String? apiKey,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ClarityIntegration;

  factory ClarityIntegration.fromJson(Map<String, dynamic> json) =>
      _$ClarityIntegrationFromJson(json);
}

/// AI integration configuration for Google AI Studio.
@freezed
abstract class AiIntegration with _$AiIntegration {
  const AiIntegration._();
  const factory AiIntegration({
    @Default(true) bool active,
    String? apiKey,
    @Default('gemini-3.1-pro-preview') String planningModel,
    @Default('gemini-flash-lite-latest') String textModel,
    @Default('gemini-3.1-flash-image-preview') String imageModel,
    @Default({}) Map<String, dynamic> metadata,
  }) = _AiIntegration;

  factory AiIntegration.fromJson(Map<String, dynamic> json) =>
      _$AiIntegrationFromJson(json);
}

// ===================== DELIVERY INTEGRATIONS =====================

enum YalidineAgent { yalidine, guepex }

/// Yalidine delivery service integration configuration.
@freezed
abstract class YalidineDeliveryIntegration with _$YalidineDeliveryIntegration {
  const YalidineDeliveryIntegration._();
  const factory YalidineDeliveryIntegration({
    required String id,
    required String token,
    @Default(YalidineAgent.yalidine) YalidineAgent agent,
    @Default(true) bool active,

    /// Whether to automatically send orders to Yalidine when order status becomes "sent"
    @Default(false) bool autoSend,
    @Default(false) bool forceFreeShipping,
    @Default({}) Map<String, dynamic> metadata,
  }) = _YalidineDeliveryIntegration;

  factory YalidineDeliveryIntegration.fromJson(Map<String, dynamic> json) =>
      _$YalidineDeliveryIntegrationFromJson(json);
}

/// Ecotrack delivery service integration configuration.
@freezed
abstract class EcotrackDeliveryIntegration with _$EcotrackDeliveryIntegration {
  const EcotrackDeliveryIntegration._();
  const factory EcotrackDeliveryIntegration({
    required String baseUrl,
    required String token,
    @Default(true) bool active,
    /// Carrier-specific options. Use `parcelStock: false` to hide the stock / from-stock UI
    /// when this Ecotrack profile does not use the `stock` field (see backend
    /// `DeliveryCapabilities.parcelStock`).
    @Default({}) Map<String, dynamic> metadata,
  }) = _EcotrackDeliveryIntegration;

  factory EcotrackDeliveryIntegration.fromJson(Map<String, dynamic> json) =>
      _$EcotrackDeliveryIntegrationFromJson(json);

  /// Whether merchant UI should expose Ecotrack `stock` / [ParcelCreate.fromStock].
  ///
  /// Defaults to `true`. Set [metadata]`['parcelStock']` to `false` for accounts that
  /// do not support the stock field.
  bool get parcelStockFieldEnabled {
    final v = metadata['parcelStock'];
    if (v == false) return false;
    return true;
  }

  /// Prefer Feeef-branded A6 labels over the official Ecotrack étiquette PDF.
  ///
  /// Defaults to `false` (carrier PDF). Set [metadata]`['useFeeefLabel']` to `true`
  /// to print Feeef labels from `GET/POST .../ecotrack/.../label(s)`.
  bool get useFeeefLabel {
    final v = metadata['useFeeefLabel'];
    return v == true;
  }

  /// Print the store logo next to the Feeef wordmark on Feeef labels.
  ///
  /// Defaults to `false`. Requires [Store.logoUrl] / [Store.iconUrl] to show anything.
  /// Set [metadata]`['useStoreLogoOnLabel']` to `true`.
  bool get useStoreLogoOnLabel {
    final v = metadata['useStoreLogoOnLabel'];
    return v == true;
  }

  /// Feeef label language override: `ar` | `en` | `fr`.
  ///
  /// `null` / missing means use the store [StoreConfigs.defaultLanguage]
  /// (falling back to `fr` on the backend when unsupported).
  String? get labelLocale {
    final v = metadata['labelLocale'];
    if (v is! String) return null;
    final code = v.trim().toLowerCase();
    if (code == 'ar' || code == 'en' || code == 'fr') return code;
    return null;
  }

  /// Latest Ecotrack COD payout (`transaction_archived_at`) processed by cash-in sync.
  String? get lastCashinSyncAt {
    final v = metadata['lastCashinSyncAt'];
    return v is String && v.isNotEmpty ? v : null;
  }

  /// Max COD payout batches per cash-in sync. `0` = unlimited. Default `4`.
  int get cashinMaxTransactionsPerSync {
    final v = metadata['cashinMaxTransactionsPerSync'];
    if (v == null) return 4;
    if (v is int) return v;
    if (v is num) return v.toInt();
    return 4;
  }

  /// Whether cash-in sync processes all pending payout batches (no per-run cap).
  bool get cashinMaxTransactionsUnlimited => cashinMaxTransactionsPerSync <= 0;

  /// Ecotrack cash-in `transaction_id` values already processed and skipped on later syncs.
  List<int> get processedCashinTransactionIds {
    final v = metadata['processedCashinTransactionIds'];
    if (v is! List) return const [];
    return v
        .whereType<num>()
        .map((id) => id.toInt())
        .where((id) => id > 0)
        .toList(growable: false);
  }
}

/// Ecomanager delivery service integration configuration.
@freezed
abstract class EcomanagerDeliveryIntegration
    with _$EcomanagerDeliveryIntegration {
  const EcomanagerDeliveryIntegration._();
  const factory EcomanagerDeliveryIntegration({
    required String baseUrl,
    required String token,
    @Default(true) bool active,
    @Default(true) bool autoSend,
    @Default({}) Map<String, dynamic> metadata,
  }) = _EcomanagerDeliveryIntegration;

  factory EcomanagerDeliveryIntegration.fromJson(Map<String, dynamic> json) =>
      _$EcomanagerDeliveryIntegrationFromJson(json);
}

/// Procolis delivery service integration configuration.
@freezed
abstract class ProcolisDeliveryIntegration with _$ProcolisDeliveryIntegration {
  const ProcolisDeliveryIntegration._();
  const factory ProcolisDeliveryIntegration({
    required String key,
    required String token,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ProcolisDeliveryIntegration;

  factory ProcolisDeliveryIntegration.fromJson(Map<String, dynamic> json) =>
      _$ProcolisDeliveryIntegrationFromJson(json);
}

/// Noest delivery service integration configuration.
@freezed
abstract class NoestDeliveryIntegration with _$NoestDeliveryIntegration {
  const NoestDeliveryIntegration._();
  const factory NoestDeliveryIntegration({
    required String guid,
    required String token,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _NoestDeliveryIntegration;

  factory NoestDeliveryIntegration.fromJson(Map<String, dynamic> json) =>
      _$NoestDeliveryIntegrationFromJson(json);
}

/// OrderDZ delivery service integration configuration.
@freezed
abstract class OrderdzDeliveryIntegration with _$OrderdzDeliveryIntegration {
  const OrderdzDeliveryIntegration._();
  const factory OrderdzDeliveryIntegration({
    String? url,
    required String token,
    @Default(true) bool active,
    @Default(false) bool autoSend,
    @Default({}) Map<String, dynamic> metadata,
  }) = _OrderdzDeliveryIntegration;

  factory OrderdzDeliveryIntegration.fromJson(Map<String, dynamic> json) =>
      _$OrderdzDeliveryIntegrationFromJson(json);
}

/// Zimou Express delivery service integration configuration.
@freezed
abstract class ZimouExpressDeliveryIntegration
    with _$ZimouExpressDeliveryIntegration {
  const ZimouExpressDeliveryIntegration._();
  const factory ZimouExpressDeliveryIntegration({
    required String id,
    required String apiKey,
    @Default(true) bool active,
    @Default(false) bool silentMode,
    @Default(false) bool autoSend,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ZimouExpressDeliveryIntegration;

  factory ZimouExpressDeliveryIntegration.fromJson(Map<String, dynamic> json) =>
      _$ZimouExpressDeliveryIntegrationFromJson(json);
}

/// ZR Express delivery service integration configuration.
/// Uses header-based authentication (x-api-key, x-tenant).
@freezed
abstract class ZrexpressDeliveryIntegration
    with _$ZrexpressDeliveryIntegration {
  const ZrexpressDeliveryIntegration._();
  const factory ZrexpressDeliveryIntegration({
    required String id,

    /// API key for ZR Express (x-api-key header)
    required String apiKey,

    /// Tenant UUID for ZR Express (x-tenant header)
    required String tenantId,

    /// Webhook signing secret for Svix webhook verification (optional)
    String? webhookSecret,
    @Default(true) bool active,
    @Default(false) bool silentMode,
    @Default(false) bool autoSend,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ZrexpressDeliveryIntegration;

  factory ZrexpressDeliveryIntegration.fromJson(Map<String, dynamic> json) =>
      _$ZrexpressDeliveryIntegrationFromJson(json);
}

/// MDM Express delivery integration (OpenAPI v2 at api.mdm.express).
@freezed
abstract class MdmExpressDeliveryIntegration with _$MdmExpressDeliveryIntegration {
  const MdmExpressDeliveryIntegration._();
  const factory MdmExpressDeliveryIntegration({
    required String id,
    /// MDM `x-api-key` when not using JWT.
    String? apiKey,
    /// Optional JWT (`Authorization: Bearer`); takes precedence over [apiKey].
    String? bearerToken,
    /// MDM store tracking id (e.g. `STR-…`) — `CreateOrderRequest.storeId`.
    required String mdmStoreId,
    /// MDM seller id (e.g. `SLR-…`) — service fees: `GET /api/sellers/{id}/service-fees`.
    String? mdmSellerId,
    String? webhookSecret,
    @Default(true) bool active,
    @Default(false) bool silentMode,
    @Default(false) bool autoSend,
    @Default({}) Map<String, dynamic> metadata,
  }) = _MdmExpressDeliveryIntegration;

  factory MdmExpressDeliveryIntegration.fromJson(Map<String, dynamic> json) =>
      _$MdmExpressDeliveryIntegrationFromJson(json);
}

/// Maystro Delivery integration configuration.
/// Uses Bearer token; optional baseUrl and webhookSecret.
@freezed
abstract class MaystroDeliveryIntegration with _$MaystroDeliveryIntegration {
  const MaystroDeliveryIntegration._();
  const factory MaystroDeliveryIntegration({
    required String token,
    String? baseUrl,
    String? webhookSecret,
    @Default(true) bool active,
    @Default(false) bool autoSend,
    @Default({}) Map<String, dynamic> metadata,
  }) = _MaystroDeliveryIntegration;

  factory MaystroDeliveryIntegration.fromJson(Map<String, dynamic> json) =>
      _$MaystroDeliveryIntegrationFromJson(json);
}

// ===================== SECURITY INTEGRATION =====================

/// Treatment applied when a security violation is detected.
enum SecurityTreatment {
  block, // Reject order immediately (HTTP error)
  warning, // Accept order but tag it; no pixel events sent
  fake, // Pretend success but don't persist order (honeypot)
}

/// Base security option with TTL and treatment.
///
/// [ttl] is optional in API payloads (seconds). When null, the backend applies its own default per check.
@freezed
abstract class SecurityOption with _$SecurityOption {
  const factory SecurityOption({
    @Default(false) bool active,
    int? ttl,
    @Default(SecurityTreatment.block) SecurityTreatment treatment,
  }) = _SecurityOption;

  factory SecurityOption.fromJson(Map<String, dynamic> json) =>
      _$SecurityOptionFromJson(json);
}

/// Min-time-on-page check option.
@freezed
abstract class SecurityMinTimeOption with _$SecurityMinTimeOption {
  const factory SecurityMinTimeOption({
    @Default(false) bool active,
    @Default(10) int duration, // seconds
    @Default(SecurityTreatment.block) SecurityTreatment treatment,
  }) = _SecurityMinTimeOption;

  factory SecurityMinTimeOption.fromJson(Map<String, dynamic> json) =>
      _$SecurityMinTimeOptionFromJson(json);
}

/// Country filtering option with allowed/blocked lists.
@freezed
abstract class SecurityCountriesOption with _$SecurityCountriesOption {
  const factory SecurityCountriesOption({
    @Default(false) bool active,
    @Default(SecurityTreatment.block) SecurityTreatment treatment,
    List<String>? allowed, // ISO codes; null/empty = allow all
    @Default([]) List<String> blocked, // Blocked wins over allowed
  }) = _SecurityCountriesOption;

  factory SecurityCountriesOption.fromJson(Map<String, dynamic> json) =>
      _$SecurityCountriesOptionFromJson(json);
}

/// Traffic source filtering option with allowed/blocked lists.
@freezed
abstract class SecuritySourcesOption with _$SecuritySourcesOption {
  const factory SecuritySourcesOption({
    @Default(false) bool active,
    @Default(SecurityTreatment.block) SecurityTreatment treatment,
    List<String>? allowed, // e.g., ["ads", "organic"]; null = all
    @Default([]) List<String> blocked, // e.g., ["direct"]
  }) = _SecuritySourcesOption;

  factory SecuritySourcesOption.fromJson(Map<String, dynamic> json) =>
      _$SecuritySourcesOptionFromJson(json);
}

/// All security options (private - merchant app). Keys are optional/nullable like the API.
@freezed
abstract class SecurityOptions with _$SecurityOptions {
  const factory SecurityOptions({
    SecurityOption? fingerprint,
    SecurityOption? ip,
    SecurityOption? phone,
    SecurityOption? ads,
    SecurityOption? frontend,
    SecurityOption? doubleSend,
    SecurityMinTimeOption? minTimeInPage,
    SecurityCountriesOption? countries,
    SecuritySourcesOption? sources,
  }) = _SecurityOptions;

  factory SecurityOptions.fromJson(Map<String, dynamic> json) =>
      _$SecurityOptionsFromJson(json);
}

/// Security integration configuration with options (private - merchant app).
@freezed
abstract class SecurityIntegration with _$SecurityIntegration {
  const SecurityIntegration._();
  const factory SecurityIntegration({
    @Default(false) bool active,
    SecurityOptions? options,
    @Default({}) Map<String, dynamic> metadata,
  }) = _SecurityIntegration;

  factory SecurityIntegration.fromJson(Map<String, dynamic> json) =>
      _$SecurityIntegrationFromJson(json);
}

// ===================== INVENTORY INTEGRATION =====================

/// Marketplace inventory module toggle (distinct from [InventoryIntegration] order hooks in [StoreConfigs]).
@freezed
abstract class StoreInventoryIntegration with _$StoreInventoryIntegration {
  const StoreInventoryIntegration._();
  const factory StoreInventoryIntegration({
    @Default(false) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _StoreInventoryIntegration;

  factory StoreInventoryIntegration.fromJson(Map<String, dynamic> json) =>
      _$StoreInventoryIntegrationFromJson(json);
}

// ===================== FINANCE INTEGRATION =====================

/// Finance module toggle (procurement + accounting). Billing + active flag.
@freezed
abstract class StoreFinanceIntegration with _$StoreFinanceIntegration {
  const StoreFinanceIntegration._();
  const factory StoreFinanceIntegration({
    @Default(false) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _StoreFinanceIntegration;

  factory StoreFinanceIntegration.fromJson(Map<String, dynamic> json) =>
      _$StoreFinanceIntegrationFromJson(json);
}

// ===================== PUBLIC SECURITY (Storefront) =====================

/// Public security option - only active, ttl, and treatment (storefront duplicate rule).
@freezed
abstract class PublicSecurityOption with _$PublicSecurityOption {
  const factory PublicSecurityOption({
    @Default(false) bool active,
    @Default(0) int ttl,
    @Default(SecurityTreatment.block) SecurityTreatment treatment,
  }) = _PublicSecurityOption;

  factory PublicSecurityOption.fromJson(Map<String, dynamic> json) =>
      _$PublicSecurityOptionFromJson(json);
}

/// Public security options for storefronts (rules the client may apply or display).
///
/// [fingerprint], [ip], [phone], and [ads] stay server-only.
@freezed
abstract class PublicSecurityOptions with _$PublicSecurityOptions {
  const factory PublicSecurityOptions({
    PublicSecurityOption? frontend,
    PublicSecurityOption? doubleSend,
    SecurityMinTimeOption? minTimeInPage,
    SecurityCountriesOption? countries,
    SecuritySourcesOption? sources,
  }) = _PublicSecurityOptions;

  factory PublicSecurityOptions.fromJson(Map<String, dynamic> json) =>
      _$PublicSecurityOptionsFromJson(json);
}

/// Public security integration - minimal data for storefronts.
@freezed
abstract class PublicSecurityIntegration with _$PublicSecurityIntegration {
  const factory PublicSecurityIntegration({
    @Default(false) bool active,
    @Default(PublicSecurityOptions()) PublicSecurityOptions options,
  }) = _PublicSecurityIntegration;

  factory PublicSecurityIntegration.fromJson(Map<String, dynamic> json) =>
      _$PublicSecurityIntegrationFromJson(json);
}

// ===================== GOOGLE SHEETS INTEGRATION =====================

/// Google Sheets column configuration for order export.
@freezed
abstract class GoogleSheetsColumn with _$GoogleSheetsColumn {
  const factory GoogleSheetsColumn({
    required String? field, // OrderEntity field name
    required String name,
    required bool enabled,
    dynamic defaultValue,
  }) = _GoogleSheetsColumn;

  factory GoogleSheetsColumn.fromJson(Map<String, dynamic> json) =>
      _$GoogleSheetsColumnFromJson(json);
}

const List<GoogleSheetsColumn> defaultOrderColumns = [
  GoogleSheetsColumn(field: 'id', name: 'معرف الطلب', enabled: true),
  GoogleSheetsColumn(field: 'storeId', name: 'معرف المتجر', enabled: true),
  GoogleSheetsColumn(field: 'customerName', name: 'اسم العميل', enabled: true),
  GoogleSheetsColumn(
    field: 'customerPhone',
    name: 'هاتف العميل',
    enabled: true,
  ),
  GoogleSheetsColumn(
    field: 'shippingAddress',
    name: 'عنوان الشحن',
    enabled: true,
  ),
  GoogleSheetsColumn(field: 'shippingCity', name: 'مدينة الشحن', enabled: true),
  GoogleSheetsColumn(
    field: 'shippingState',
    name: 'ولاية الشحن',
    enabled: true,
  ),
  GoogleSheetsColumn(
    field: 'shippingCountry',
    name: 'دولة الشحن',
    enabled: true,
  ),

  GoogleSheetsColumn(field: 'shippingType', name: 'نوع التوصيل', enabled: true),
  GoogleSheetsColumn(field: 'items', name: 'العناصر', enabled: true),
  GoogleSheetsColumn(field: 'skus', name: 'معرفات المنتجات', enabled: true),
  GoogleSheetsColumn(field: 'quantities', name: 'الكميات', enabled: true),
  GoogleSheetsColumn(field: 'total', name: 'الإجمالي', enabled: true),
  GoogleSheetsColumn(field: 'subtotal', name: 'المجموع الفرعي', enabled: true),
  GoogleSheetsColumn(field: 'shippingPrice', name: 'سعر الشحن', enabled: true),
  GoogleSheetsColumn(field: 'status', name: 'الحالة', enabled: true),
  GoogleSheetsColumn(field: 'createdAt', name: 'تاريخ الإنشاء', enabled: true),
  GoogleSheetsColumn(
    field: 'updatedAt',
    name: 'تاريخ آخر تحديث',
    enabled: true,
  ),
  GoogleSheetsColumn(
    field: 'customerNote',
    name: 'ملاحظة العميل',
    enabled: true,
  ),
  GoogleSheetsColumn(field: 'privateNote', name: 'ملاحظة خاصة', enabled: true),
  GoogleSheetsColumn(field: 'preview', name: 'معاينة', enabled: true),
  GoogleSheetsColumn(field: 'link', name: 'رابط', enabled: true),
];

/// Google Sheets integration configuration for order export.
@freezed
abstract class GoogleSheetsIntegration with _$GoogleSheetsIntegration {
  const factory GoogleSheetsIntegration({
    String? id,
    String? name,
    @Default(true) bool active,
    Map<String, dynamic>? oauth2,
    @Default(defaultOrderColumns) List<GoogleSheetsColumn>? columns,
    @Default({}) Map<String, dynamic> metadata,
  }) = _GoogleSheetsIntegration;

  factory GoogleSheetsIntegration.fromJson(Map<String, dynamic> json) =>
      _$GoogleSheetsIntegrationFromJson(json);
}

// ===================== WEBHOOKS INTEGRATION =====================

/// Webhook event types for order lifecycle
enum WebhookEvent { orderCreated, orderUpdated, orderDeleted }

/// Individual webhook configuration
@freezed
abstract class WebhookConfig with _$WebhookConfig {
  const factory WebhookConfig({
    required String id,
    required String name,
    required String url,
    @Default([]) List<WebhookEvent> events,
    String? secret,
    @Default(true) bool active,
    @Default({}) Map<String, String> headers,
    @Default({}) Map<String, dynamic> metadata,
  }) = _WebhookConfig;

  factory WebhookConfig.fromJson(Map<String, dynamic> json) =>
      _$WebhookConfigFromJson(json);
}

/// Webhooks integration configuration for real-time order notifications
@freezed
abstract class WebhooksIntegration with _$WebhooksIntegration {
  const factory WebhooksIntegration({
    @Default([]) List<WebhookConfig> webhooks,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _WebhooksIntegration;

  factory WebhooksIntegration.fromJson(Map<String, dynamic> json) =>
      _$WebhooksIntegrationFromJson(json);
}

// ===================== CUSTOM FIELDS INTEGRATION =====================

/// Supported custom field types for order forms
enum CustomFieldType {
  text,
  phone,
  email,
  image,
  file,
  date,
  time,
  datetime,
  timerange,
  daterange,
  datetimerange,
}

/// Custom field configuration for order forms
@freezed
abstract class CustomField with _$CustomField {
  const CustomField._();
  const factory CustomField({
    /// Unique identifier for the field
    required String id,

    /// Display label for the field
    required String label,

    /// Field type (text, phone, email, etc.)
    required CustomFieldType type,

    /// Whether the field is required
    @Default(false) bool required,

    /// Whether the field supports multiple values (array)
    @Default(false) bool multiple,

    /// Minimum number of values (for array fields)
    int? minCount,

    /// Maximum number of values (for array fields)
    int? maxCount,

    /// Placeholder text
    String? placeholder,

    /// Help text/description
    String? helpText,

    /// Regex pattern for validation (text fields only)
    String? regexPattern,

    /// Default value
    dynamic defaultValue,

    /// Field order/position
    @Default(0) int order,

    /// Whether the field is active/enabled
    @Default(true) bool active,

    /// Additional metadata
    @Default({}) Map<String, dynamic> metadata,
  }) = _CustomField;

  factory CustomField.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldFromJson(json);
}

/// Custom Fields integration configuration for order forms
@freezed
abstract class CustomFieldsIntegration with _$CustomFieldsIntegration {
  const CustomFieldsIntegration._();
  const factory CustomFieldsIntegration({
    /// List of custom field definitions
    @Default([]) List<CustomField> fields,

    /// Whether the integration is active
    @Default(true) bool active,

    /// Additional metadata
    @Default({}) Map<String, dynamic> metadata,
  }) = _CustomFieldsIntegration;

  factory CustomFieldsIntegration.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldsIntegrationFromJson(json);
}

// ===================== PAYMENT INTEGRATION =====================

/// Payment method configuration (includes sensitive data like API keys)
@freezed
abstract class PaymentMethodConfig with _$PaymentMethodConfig {
  const PaymentMethodConfig._();
  const factory PaymentMethodConfig({
    required String id, // Slug identifier (e.g., 'chargily', 'paypal')
    required String name, // Display name (e.g., 'Chargily Pay', 'PayPal')
    @Default(true) bool active,
    // Method-specific configuration
    String? apiKey, // For Chargily
    String? clientId, // For PayPal, Stripe, etc.
    String? clientSecret, // For PayPal, Stripe, etc.
    @Default({})
    Map<String, dynamic> metadata, // Allow other method-specific fields
  }) = _PaymentMethodConfig;

  factory PaymentMethodConfig.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodConfigFromJson(json);
}

/// Payment integration configuration
@freezed
abstract class PaymentIntegration with _$PaymentIntegration {
  const PaymentIntegration._();
  const factory PaymentIntegration({
    @Default(true) bool active,
    @Default([]) List<PaymentMethodConfig> methods,
    String? defaultMethod, // Method ID to use by default
    @Default({}) Map<String, dynamic> metadata,
  }) = _PaymentIntegration;

  factory PaymentIntegration.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntegrationFromJson(json);
}

// ===================== ORDERS DISPATCHER INTEGRATION =====================

/// Orders Dispatcher integration configuration.
/// Controls how new orders are assigned to confirmers (random, round-robin, etc.).
@freezed
abstract class DispatcherIntegration with _$DispatcherIntegration {
  const DispatcherIntegration._();
  const factory DispatcherIntegration({
    @Default(true) bool active,
    OrdersDispatchStrategy? strategy,
    @Default({}) Map<String, dynamic> metadata,
  }) = _DispatcherIntegration;

  factory DispatcherIntegration.fromJson(Map<String, dynamic> json) =>
      _$DispatcherIntegrationFromJson(json);
}

// ===================== INBOUND CONNECTORS INTEGRATION =====================

/// Polymorphic connector auth (`oauth2` | `apiKey` | `public`). Flat shape for JSON round-trip.
@freezed
abstract class ConnectorAuth with _$ConnectorAuth {
  const factory ConnectorAuth({
    @Default('public') String authType,
    String? accessToken,
    String? refreshToken,
    @Default([]) List<String> scopes,
    String? expiresAt,
    String? apiKey,
    String? baseUrl,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ConnectorAuth;

  factory ConnectorAuth.fromJson(Map<String, dynamic> json) =>
      _$ConnectorAuthFromJson(json);
}

/// Single linked external platform (Shopify shop, YouCan store, …).
@freezed
abstract class ConnectorConfig with _$ConnectorConfig {
  const factory ConnectorConfig({
    required String id,
    required String type,
    @Default(true) bool active,
    String? name,
    @Default('connected') String status,
    String? externalId,
    @Default({}) Map<String, dynamic> fieldMapping,
    @Default({}) Map<String, dynamic> syncState,
    ConnectorAuth? auth,
    String? createdAt,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ConnectorConfig;

  factory ConnectorConfig.fromJson(Map<String, dynamic> json) =>
      _$ConnectorConfigFromJson(json);
}

/// Inbound connectors integration (`store.integrations.connectors`).
@freezed
abstract class ConnectorsIntegration with _$ConnectorsIntegration {
  const factory ConnectorsIntegration({
    @Default(true) bool active,
    @Default([]) List<ConnectorConfig> connectors,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ConnectorsIntegration;

  factory ConnectorsIntegration.fromJson(Map<String, dynamic> json) =>
      _$ConnectorsIntegrationFromJson(json);
}
