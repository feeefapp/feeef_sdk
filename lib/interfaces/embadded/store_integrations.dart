/// Store Integrations Data Models
///
/// This file defines data models for various store integrations, such as analytics, delivery, security, and communication services.
/// All models use the `freezed` package for immutability and serialization.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

import '../product.dart';
import '../../reviews/models/review.dart';
import 'orders_dispatch_strategy.dart';
import 'pixel_events.dart';
import 'security_geo_json.dart';

export 'pixel_events.dart';
export 'security_geo_json.dart';

part 'store_integrations.freezed.dart';
part 'store_integrations.g.dart';

/// Main container for all store integrations.
@freezed
abstract class StoreIntegrations with _$StoreIntegrations {
  const StoreIntegrations._();
  const factory StoreIntegrations({
    @Default({}) Map<String, dynamic>? metadata,

    /// Global Meta integration — credentials shared by every Meta feature.
    /// Ads live here today; pixels may move over from [metaPixel] later.
    MetaIntegration? meta,
    // Analytics Integrations
    MetaPixelIntegration? metaPixel,
    TiktokPixelIntegration? tiktokPixel,
    SnapchatPixelIntegration? snapchatPixel,

    /// Ad pixel event rules for Meta, TikTok and Snapchat (null = the defaults).
    PixelEvents? pixelEvents,
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

    /// Feeef Delivery (Near Delivery white-label) — merchants never hold Near API keys.
    FeeefDeliveryIntegration? feeefDelivery,
    MaystroDeliveryIntegration? maystroDelivery,

    /// Codpilot mini-ERP (order confirmation / COD ops) — not a carrier.
    CodpilotIntegration? codpilot,
    // Google Sheets Integration
    GoogleSheetsIntegration? googleSheet,
    // Webhooks Integration
    WebhooksIntegration? webhooks,
    // Security Integration
    SecurityIntegration? security,
    // Custom Fields Integration
    CustomFieldsIntegration? customFields,
    // Product reviews: free, on by default (docs/product-reviews.md §5)
    ReviewsIntegration? reviews,
    // Payment Integration
    PaymentIntegration? payment,
    // Dispatcher Integration (order assignment to confirmers)
    DispatcherIntegration? dispatcher,

    /// Inventory module (warehouses, stock, order reserve/consume).
    StoreInventoryIntegration? inventory,

    /// Finance module (procurement, accounting).
    StoreFinanceIntegration? finance,

    /// Store-owned website pages (monthly integration).
    StorePagesIntegration? pages,

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
enum PixelReportMode { server, client, both }

/// Which order field to watch for [PixelStatusRule] (server-side CAPI on status transition).
@JsonEnum(alwaysCreate: true)
enum PixelStatusDimension {
  /// Rooms-model phase: draft | open | pack | ship | done | fail.
  @JsonValue('phase')
  phase,

  /// Status catalog kind (or custom status slug).
  @JsonValue('kind')
  kind,
  @JsonValue('paymentStatus')
  paymentStatus,

  /// Legacy — parsed from old saved rules only. The API rejects it on save;
  /// convert with [migratePixelStatusRule].
  @Deprecated('Use phase')
  @JsonValue('orderStatus')
  orderStatus,
  @Deprecated('Use phase / kind')
  @JsonValue('deliveryStatus')
  deliveryStatus,
  @Deprecated('Use kind')
  @JsonValue('customStatus')
  customStatus,
}

/// Rooms equivalent of a legacy `orderStatus` / `deliveryStatus` value
/// (mirrors the backend `resolveStatusRule`). Null when there is none.
({PixelStatusDimension dimension, String equals})? roomsStatusTarget(
  PixelStatusDimension dimension,
  String equals,
) {
  const order = {
    'draft': 'draft',
    'pending': 'open',
    'review': 'open',
    'followup': 'open',
    'accepted': 'pack',
    'processing': 'pack',
    'completed': 'done',
    'cancelled': 'fail',
  };
  const delivery = {'delivering': 'ship', 'delivered': 'done'};
  final value = equals.trim();
  // ignore: deprecated_member_use_from_same_package
  switch (dimension) {
    case PixelStatusDimension.phase:
    case PixelStatusDimension.kind:
    case PixelStatusDimension.paymentStatus:
      return (dimension: dimension, equals: value);
    // ignore: deprecated_member_use_from_same_package
    case PixelStatusDimension.customStatus:
      return (dimension: PixelStatusDimension.kind, equals: value);
    // ignore: deprecated_member_use_from_same_package
    case PixelStatusDimension.orderStatus:
      final phase = order[value];
      return phase == null
          ? null
          : (dimension: PixelStatusDimension.phase, equals: phase);
    // ignore: deprecated_member_use_from_same_package
    case PixelStatusDimension.deliveryStatus:
      if (value == 'returned')
        return (dimension: PixelStatusDimension.kind, equals: 'returned');
      final phase = delivery[value];
      return phase == null
          ? null
          : (dimension: PixelStatusDimension.phase, equals: phase);
  }
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
    SnapchatPixelEvent? snapchatEvent,

    /// When set, takes precedence over [metaEvent] (Meta CAPI custom name).
    String? metaCustomEvent,
    String? tiktokCustomEvent,

    /// Overrides [snapchatEvent]. Snap name such as `CUSTOM_EVENT_1`.
    String? snapchatCustomEvent,
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

/// An ad account the merchant chose to manage from Feeef.
@freezed
abstract class MetaAdAccountRef with _$MetaAdAccountRef {
  const MetaAdAccountRef._();
  const factory MetaAdAccountRef({
    /// Graph node id, `act_123`.
    required String id,

    /// Bare numeric id, `123`.
    @Default('') String accountId,
    String? name,
    String? currency,
    String? timezoneName,
    int? accountStatus,
  }) = _MetaAdAccountRef;

  factory MetaAdAccountRef.fromJson(Map<String, dynamic> json) =>
      _$MetaAdAccountRefFromJson(json);
}

/// Everything ads-related on the Meta integration.
@freezed
abstract class MetaAdsConfig with _$MetaAdsConfig {
  const MetaAdsConfig._();
  const factory MetaAdsConfig({
    @Default(true) bool active,
    @Default([]) List<MetaAdAccountRef> adAccounts,
    String? defaultAdAccountId,

    /// Default insights window for the dashboard, e.g. `last_7d`.
    @Default('last_7d') String defaultDatePreset,

    /// Extra hosts that count as this store's storefront when matching ad links.
    @Default([]) List<String> extraStoreHosts,
    @Default({}) Map<String, dynamic> metadata,
  }) = _MetaAdsConfig;

  factory MetaAdsConfig.fromJson(Map<String, dynamic> json) =>
      _$MetaAdsConfigFromJson(json);
}

/// Meta account the stored credentials belong to.
@freezed
abstract class MetaAccountRef with _$MetaAccountRef {
  const MetaAccountRef._();
  const factory MetaAccountRef({required String id, String? name}) =
      _MetaAccountRef;

  factory MetaAccountRef.fromJson(Map<String, dynamic> json) =>
      _$MetaAccountRefFromJson(json);
}

/// Global Meta integration (`store.integrations.meta`).
///
/// Credentials live at the top level and are shared by every Meta feature.
/// The access token itself is **never** exposed to clients — it is encrypted
/// server-side and written only by the OAuth callback, so there is no `oauth2`
/// field here. Read connection state from
/// `ff.metaAds.status(storeId)` instead.
@freezed
abstract class MetaIntegration with _$MetaIntegration {
  const MetaIntegration._();
  const factory MetaIntegration({
    @Default(false) bool active,

    /// Present once connected; name may be absent.
    MetaAccountRef? account,
    MetaAdsConfig? ads,
    @Default({}) Map<String, dynamic> metadata,
  }) = _MetaIntegration;

  factory MetaIntegration.fromJson(Map<String, dynamic> json) =>
      _$MetaIntegrationFromJson(json);
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

/// Snap Pixel + Conversions API (`store.integrations.snapchatPixel`).
///
/// [SnapchatPixel.accessToken] is the CAPI token. Public store JSON must
/// expose pixel ids only.
@freezed
abstract class SnapchatPixelIntegration with _$SnapchatPixelIntegration {
  const SnapchatPixelIntegration._();
  const factory SnapchatPixelIntegration({
    @Default('default') String id,
    @Default([]) List<SnapchatPixel> pixels,
    @Default(SnapchatPixelEvent.purchase) SnapchatPixelEvent objective,
    @Default(SnapchatPixelEvent.startCheckout)
    SnapchatPixelEvent draftObjective,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,

    /// Where to send events: server (CAPI), client (`snaptr`), or both. Null = auto.
    PixelReportMode? mode,

    /// Server-only: fire CAPI when a status transitions into [PixelStatusRule.equals].
    @Default([]) List<PixelStatusRule> statusRules,
  }) = _SnapchatPixelIntegration;

  factory SnapchatPixelIntegration.fromJson(Map<String, dynamic> json) =>
      _$SnapchatPixelIntegrationFromJson(json);
}

/// One Snap Pixel. [id] is the UUID from Events Manager.
@freezed
abstract class SnapchatPixel with _$SnapchatPixel {
  const SnapchatPixel._();
  const factory SnapchatPixel({
    @Default('Snapchat Pixel') String name,
    required String id,
    String? accessToken,
  }) = _SnapchatPixel;

  factory SnapchatPixel.fromJson(Map<String, dynamic> json) =>
      _$SnapchatPixelFromJson(json);
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
///
/// [trackingCode] defaults to `''` so legacy/partial JSON (`trackingCode: null`
/// or omitted) never crashes Flutter `fromJson`. Empty codes are treated as
/// not configured (storefront skips inject; server may strip the key).
@freezed
abstract class ClarityIntegration with _$ClarityIntegration {
  const ClarityIntegration._();
  const factory ClarityIntegration({
    @Default(true) bool active,

    /// Clarity project id. Never null after parse — use empty when unset.
    @Default('') String trackingCode,
    String? apiKey,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ClarityIntegration;

  factory ClarityIntegration.fromJson(Map<String, dynamic> json) =>
      _$ClarityIntegrationFromJson(json);

  /// True when a non-empty project id is present (ready to inject / activate).
  bool get hasTrackingCode => trackingCode.trim().isNotEmpty;
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

  /// Prefer Feeef-branded labels over the official Ecotrack étiquette PDF.
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

  /// Feeef label page size: `a6` (default) or `100x100` (square thermal).
  ///
  /// Set [metadata]`['labelSize']` to `100x100` for 100×100 mm stickers.
  /// Unknown / missing values fall back to `a6`.
  String get labelSize {
    final v = metadata['labelSize'];
    if (v is! String) return 'a6';
    final code = v.trim().toLowerCase();
    if (code == '100x100' ||
        code == 'mm100x100' ||
        code == 'square100' ||
        code == 'square') {
      return '100x100';
    }
    return 'a6';
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

  /// Prefer Feeef-branded labels over the official ZR Express bordereau PDF.
  ///
  /// Defaults to `false` (carrier PDF). Set [metadata]`['useFeeefLabel']` to `true`
  /// to print Feeef labels from `GET/POST .../zrexpress/.../label(s)`.
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

  /// Feeef label page size: `a6` (default, matches ZR bordereau) or `100x100`.
  ///
  /// Set [metadata]`['labelSize']` to `100x100` for 100×100 mm stickers.
  /// Unknown / missing values fall back to `a6`.
  String get labelSize {
    final v = metadata['labelSize'];
    if (v is! String) return 'a6';
    final code = v.trim().toLowerCase();
    if (code == '100x100' ||
        code == 'mm100x100' ||
        code == 'square100' ||
        code == 'square') {
      return '100x100';
    }
    return 'a6';
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
}

/// MDM Express delivery integration (OpenAPI v2 at api.mdm.express).
@freezed
abstract class MdmExpressDeliveryIntegration
    with _$MdmExpressDeliveryIntegration {
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

/// Near account type used when provisioning Feeef Delivery (`/senders/signup`).
@JsonEnum(alwaysCreate: true)
enum FeeefDeliveryNearAccountType {
  @JsonValue('platform')
  platform,
  @JsonValue('api')
  api,
  @JsonValue('both')
  both,
}

/// Feeef Delivery store integration (Near Delivery under the hood, Feeef-branded).
///
/// Merchants enable via `POST .../integrations/feeefDelivery/enable` — they never
/// enter Near API keys. [nearSenderUserId] is required when [active].
@freezed
abstract class FeeefDeliveryIntegration with _$FeeefDeliveryIntegration {
  const FeeefDeliveryIntegration._();
  const factory FeeefDeliveryIntegration({
    required String id,
    @Default(true) bool active,
    @Default(false) bool autoSend,

    /// Near sender user id returned by provision — required for parcel ops.
    required int nearSenderUserId,
    String? nearSenderUsername,
    String? nearSenderEmail,
    FeeefDeliveryNearAccountType? nearAccountType,

    /// `0` = address pickup, `1` = center pickup (Near `pickup_location_type`).
    int? pickupLocationType,
    String? pickupAddress,
    int? senderCenterId,

    /// Optional default buralist when auto-resolve fails.
    int? defaultBuralistId,

    /// Prefer Feeef-branded PDF labels (default true).
    @Default(true) bool useFeeefLabel,
    String? webhookSecret,
    @Default({}) Map<String, dynamic> metadata,
  }) = _FeeefDeliveryIntegration;

  factory FeeefDeliveryIntegration.fromJson(Map<String, dynamic> json) =>
      _$FeeefDeliveryIntegrationFromJson(json);

  /// True when the integration is active and has a valid Near sender id.
  bool get isReady => active && nearSenderUserId > 0;
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

/// Codpilot mini-ERP integration (order confirmation / COD ops).
///
/// Not a delivery carrier. Auth: business [subdomain] + [apiId] + Bearer [apiToken].
/// Auto-sync uses [statusRules] (same dimensions as Meta Pixel). Default rule is
/// `orderStatus` → `pending` (seeded on connect). Sync state lives on
/// `order.metadata.codpilot`, never under `metadata.delivery`.
@freezed
abstract class CodpilotIntegration with _$CodpilotIntegration {
  const CodpilotIntegration._();
  const factory CodpilotIntegration({
    /// Business subdomain (`mystore` → mystore.codpilot.net).
    required String subdomain,
    required String apiId,
    required String apiToken,
    @Default(true) bool active,

    /// When a status dimension transitions into [PixelStatusRule.equals], auto-sync.
    /// Empty list disables auto-sync. Default on connect: pending order status.
    @Default([]) List<PixelStatusRule> statusRules,
    @Default({}) Map<String, dynamic> metadata,
  }) = _CodpilotIntegration;

  factory CodpilotIntegration.fromJson(Map<String, dynamic> json) =>
      _$CodpilotIntegrationFromJson(json);

  /// Default auto-sync rule: any order that becomes (or is created as) pending.
  static List<PixelStatusRule> get defaultStatusRules => const [
    PixelStatusRule(
      id: 'default-pending',
      dimension: PixelStatusDimension.orderStatus,
      equals: 'pending',
    ),
  ];
}

// ===================== SECURITY INTEGRATION =====================

/// What happens to an order a checkout protection rule catches
/// (contract: feeef.all `docs/checkout-protection.md`).
enum SecurityTreatment {
  /// Refused; the shopper is told to contact the store.
  block,

  /// Flag: accepted with a tag so the merchant calls first; not sent to ad
  /// pixels.
  warning,

  /// Fake success: the visitor sees "order received", nothing is saved. Only
  /// the bot rules ([SecurityOptions.minTimeInPage], [SecurityOptions.unverified])
  /// accept it; elsewhere the backend applies it as [block].
  fake,
}

/// Which earlier orders a duplicate rule compares with.
enum SecurityMatch {
  /// Only orders with the same products.
  sameProducts,

  /// Any order.
  anyProduct,
}

/// One checkout protection rule: switch, treatment and, depending on the
/// rule, a window ([ttl], seconds; null = backend default) and what to
/// compare ([match]).
///
/// - `phone` ("Same phone number"): [match]; no window (an order still in
///   progress is the test).
/// - `fingerprint` ("Same browser"): [ttl] + [match].
/// - `ip` ("Same connection"): [ttl].
/// - `unverified`, `history`: switch and treatment only.
@freezed
abstract class SecurityOption with _$SecurityOption {
  const SecurityOption._();
  const factory SecurityOption({
    @Default(false) bool active,
    @JsonKey(includeIfNull: false) int? ttl,
    @Default(SecurityTreatment.block) SecurityTreatment treatment,
    @JsonKey(includeIfNull: false, unknownEnumValue: SecurityMatch.anyProduct)
    SecurityMatch? match,
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

/// Outcome of checking one visitor value against a [SecurityGeoListOption].
///
/// Client-side preview only; the backend engine makes the real decision.
enum SecurityGeoRuleDecision {
  /// Rule is off.
  inactive,

  /// Value passes: not blocked, and the allowlist is empty or contains it.
  pass,

  /// Value is in `blocked` (blocked wins over allowed).
  blocked,

  /// `allowed` is non-empty and does not contain the value.
  notAllowed,

  /// Visitor value is unknown (null / empty / `XX`) and [allowed] is
  /// non-empty: an unknown location never passes an allow list, so the rule's
  /// treatment applies (spec §4). Block lists ignore unknown values ([pass]).
  unknown;

  /// Whether the rule's treatment applies.
  bool get triggers =>
      this == SecurityGeoRuleDecision.blocked ||
      this == SecurityGeoRuleDecision.notAllowed ||
      this == SecurityGeoRuleDecision.unknown;
}

/// Visitor region (wilaya) allow/block rule (`options.regions`).
///
/// Wire shape (keys in [SecurityGeoJsonKeys], spec §7):
/// `{ "active": bool, "treatment": "block"|"warning"|"fake", "allowed": ["DZ-16"] | null, "blocked": ["DZ-11"] }`.
///
/// Values are ISO 3166-2 codes (`DZ-16`), what the edge geo plugin sends as
/// the region. Code-like input (`16`, `dz16`, `DZ-1`) is canonicalised on
/// parse; other strings are kept and matched by normalized name.
///
/// Semantics (spec §4): blocked wins over allowed, empty [allowed] means
/// allow all, an unknown visitor region never passes a non-empty allow list
/// and is ignored by block lists. An empty [allowed] is written as null.
///
/// Parsing is lenient: missing/null/wrong-typed fields fall back to defaults,
/// unknown treatments fall back to [SecurityTreatment.block], a comma separated
/// string is accepted for the lists, and unknown keys are ignored.
@freezed
abstract class SecurityGeoListOption with _$SecurityGeoListOption {
  const SecurityGeoListOption._();
  const factory SecurityGeoListOption({
    @JsonKey(name: SecurityGeoJsonKeys.active, fromJson: securityLenientBool)
    @Default(false)
    bool active,
    @JsonKey(
      name: SecurityGeoJsonKeys.treatment,
      fromJson: securityTreatmentFromJson,
    )
    @Default(SecurityTreatment.block)
    SecurityTreatment treatment,

    /// Region codes allowed; empty = allow all (written as null).
    @JsonKey(
      name: SecurityGeoJsonKeys.allowed,
      fromJson: securityRegionListFromJson,
      toJson: securityAllowedListToJson,
    )
    @Default(<String>[])
    List<String> allowed,

    /// Region codes blocked; wins over [allowed].
    @JsonKey(
      name: SecurityGeoJsonKeys.blocked,
      fromJson: securityRegionListFromJson,
    )
    @Default(<String>[])
    List<String> blocked,
  }) = _SecurityGeoListOption;

  factory SecurityGeoListOption.fromJson(Map<String, dynamic> json) =>
      _$SecurityGeoListOptionFromJson(json);

  /// Lenient parse: returns null when [value] is not a JSON object.
  static SecurityGeoListOption? tryParse(Object? value) =>
      securityGeoListOptionFromJson(value);

  /// True when [allowed] restricts traffic to a list.
  bool get hasAllowlist => allowed.isNotEmpty;

  /// True when at least one name is listed.
  bool get hasEntries => allowed.isNotEmpty || blocked.isNotEmpty;

  /// Whether [value] is in [allowed] (code / normalized-name compare).
  bool isAllowed(String value) => _contains(allowed, value);

  /// Whether [value] is in [blocked] (code / normalized-name compare).
  bool isBlocked(String value) => _contains(blocked, value);

  /// Client-side preview of the rule for one visitor region (see
  /// [SecurityGeoRuleDecision]).
  SecurityGeoRuleDecision evaluate(String? value) => _evaluateGeoList(
    active: active,
    hasAllowlist: hasAllowlist,
    hasEntries: hasEntries,
    value: securityGeoValueFromJson(value),
    isBlocked: isBlocked,
    isAllowed: isAllowed,
  );

  static bool _contains(List<String> list, String value) {
    final key = securityRegionMatchKey(value);
    if (key.isEmpty) return false;
    return list.any((e) => securityRegionMatchKey(e) == key);
  }
}

SecurityGeoRuleDecision _evaluateGeoList({
  required bool active,
  required bool hasAllowlist,
  required bool hasEntries,
  required String? value,
  required bool Function(String) isBlocked,
  required bool Function(String) isAllowed,
}) {
  if (!active) return SecurityGeoRuleDecision.inactive;
  if (!hasEntries) return SecurityGeoRuleDecision.pass;
  if (value == null) {
    return hasAllowlist
        ? SecurityGeoRuleDecision.unknown
        : SecurityGeoRuleDecision.pass;
  }
  if (isBlocked(value)) return SecurityGeoRuleDecision.blocked;
  if (hasAllowlist && !isAllowed(value)) {
    return SecurityGeoRuleDecision.notAllowed;
  }
  return SecurityGeoRuleDecision.pass;
}

/// Lenient JSON -> [SecurityGeoListOption]; null for null / non-object values.
SecurityGeoListOption? securityGeoListOptionFromJson(Object? value) {
  final map = securityJsonObjectOrNull(value);
  if (map == null) return null;
  return SecurityGeoListOption.fromJson(map);
}

/// One city in `options.cities.allowed` / `blocked`: `{ "name", "id"? }`.
///
/// [name] is the English city name (what the edge geo plugin sends, e.g.
/// `"Algiers"`); [id] is the states-catalog city id when the city was picked
/// from the catalog. A bare string entry parses as `{name: <string>}`.
@freezed
abstract class SecurityCityRef with _$SecurityCityRef {
  const SecurityCityRef._();
  const factory SecurityCityRef({
    @JsonKey(name: SecurityGeoJsonKeys.cityName, fromJson: _cityNameFromJson)
    @Default('')
    String name,
    @JsonKey(
      name: SecurityGeoJsonKeys.cityId,
      fromJson: securityStringOrNull,
      includeIfNull: false,
    )
    String? id,
  }) = _SecurityCityRef;

  factory SecurityCityRef.fromJson(Map<String, dynamic> json) =>
      _$SecurityCityRefFromJson(json);

  /// Lenient: a JSON object, or a plain string / number used as the name.
  /// Null when there is no usable name.
  static SecurityCityRef? tryParse(Object? value) {
    final map = securityJsonObjectOrNull(value);
    final ref = map != null
        ? SecurityCityRef.fromJson(map)
        : SecurityCityRef(name: securityStringOrNull(value) ?? '');
    return ref.name.isEmpty ? null : ref;
  }

  /// Match key (case- and accent-insensitive name).
  String get matchKey => normalizeSecurityGeoName(name);
}

String _cityNameFromJson(Object? value) => securityStringOrNull(value) ?? '';

/// Lenient city list: objects or strings; entries without a name are dropped;
/// duplicates (same normalized name) keep the first.
List<SecurityCityRef> securityCityListFromJson(Object? value) {
  Iterable<Object?> raw;
  if (value is List) {
    raw = value;
  } else if (value is String) {
    raw = value.split(',');
  } else {
    return const <SecurityCityRef>[];
  }
  final seen = <String>{};
  final out = <SecurityCityRef>[];
  for (final e in raw) {
    final ref = SecurityCityRef.tryParse(e);
    if (ref != null && seen.add(ref.matchKey)) out.add(ref);
  }
  return out;
}

List<Map<String, dynamic>> _cityListToJson(List<SecurityCityRef> value) => [
  for (final c in value) c.toJson(),
];

List<Map<String, dynamic>>? _cityAllowedToJson(List<SecurityCityRef> value) =>
    value.isEmpty ? null : _cityListToJson(value);

/// Visitor city allow/block rule (`options.cities`, spec §4 / §7).
///
/// `{ "active", "treatment", "allowed": [CityRef] | null, "blocked": [CityRef] }`
/// with `CityRef = {name, id?}`. Matching is on [SecurityCityRef.name],
/// case- and accent-insensitive. Same unknown-location rule as regions.
@freezed
abstract class SecurityCityListOption with _$SecurityCityListOption {
  const SecurityCityListOption._();
  const factory SecurityCityListOption({
    @JsonKey(name: SecurityGeoJsonKeys.active, fromJson: securityLenientBool)
    @Default(false)
    bool active,
    @JsonKey(
      name: SecurityGeoJsonKeys.treatment,
      fromJson: securityTreatmentFromJson,
    )
    @Default(SecurityTreatment.block)
    SecurityTreatment treatment,
    @JsonKey(
      name: SecurityGeoJsonKeys.allowed,
      fromJson: securityCityListFromJson,
      toJson: _cityAllowedToJson,
    )
    @Default(<SecurityCityRef>[])
    List<SecurityCityRef> allowed,
    @JsonKey(
      name: SecurityGeoJsonKeys.blocked,
      fromJson: securityCityListFromJson,
      toJson: _cityListToJson,
    )
    @Default(<SecurityCityRef>[])
    List<SecurityCityRef> blocked,
  }) = _SecurityCityListOption;

  factory SecurityCityListOption.fromJson(Map<String, dynamic> json) =>
      _$SecurityCityListOptionFromJson(json);

  static SecurityCityListOption? tryParse(Object? value) =>
      securityCityListOptionFromJson(value);

  bool get hasAllowlist => allowed.isNotEmpty;
  bool get hasEntries => allowed.isNotEmpty || blocked.isNotEmpty;

  bool isAllowed(String name) => _contains(allowed, name);
  bool isBlocked(String name) => _contains(blocked, name);

  /// Client-side preview for one visitor city name.
  SecurityGeoRuleDecision evaluate(String? cityName) => _evaluateGeoList(
    active: active,
    hasAllowlist: hasAllowlist,
    hasEntries: hasEntries,
    value: securityGeoValueFromJson(cityName),
    isBlocked: isBlocked,
    isAllowed: isAllowed,
  );

  static bool _contains(List<SecurityCityRef> list, String name) {
    final key = normalizeSecurityGeoName(name);
    if (key.isEmpty) return false;
    return list.any((c) => c.matchKey == key);
  }
}

/// Lenient JSON -> [SecurityCityListOption]; null for non-object values.
SecurityCityListOption? securityCityListOptionFromJson(Object? value) {
  final map = securityJsonObjectOrNull(value);
  if (map == null) return null;
  return SecurityCityListOption.fromJson(map);
}

/// Checkout protection rules (merchant app). Keys are optional like the API.
@freezed
abstract class SecurityOptions with _$SecurityOptions {
  const SecurityOptions._();
  const factory SecurityOptions({
    // Duplicates
    SecurityOption? phone,
    SecurityOption? fingerprint,
    SecurityOption? ip,
    // Bots
    SecurityMinTimeOption? minTimeInPage,
    SecurityOption? unverified,
    // Customer history
    SecurityOption? history,
    // Location and traffic
    SecurityCountriesOption? countries,
    SecuritySourcesOption? sources,

    /// Visitor wilaya rule (ISO 3166-2 codes). Omitted from JSON when null;
    /// a non-object value parses as null.
    @JsonKey(
      name: SecurityGeoJsonKeys.regions,
      fromJson: securityGeoListOptionFromJson,
      includeIfNull: false,
    )
    SecurityGeoListOption? regions,

    /// Visitor city rule (`{name, id?}` entries). Omitted from JSON when null.
    @JsonKey(
      name: SecurityGeoJsonKeys.cities,
      fromJson: securityCityListOptionFromJson,
      includeIfNull: false,
    )
    SecurityCityListOption? cities,
  }) = _SecurityOptions;

  factory SecurityOptions.fromJson(Map<String, dynamic> json) =>
      _$SecurityOptionsFromJson(json);
}

/// Checkout protection for public orders (not account 2FA).
///
/// Merchants pick a treatment per rule. Enforcement lives only in the backend
/// (`evaluateCheckoutSecurity` on `POST .../orders/send`); storefronts never
/// see these settings.
@freezed
abstract class SecurityIntegration with _$SecurityIntegration {
  const SecurityIntegration._();
  const factory SecurityIntegration({
    @Default(false) bool active,
    SecurityOptions? options,
    @Default({}) Map<String, dynamic> metadata,

    /// Read-only visitor-location status from the backend (`'live' | 'off'`;
    /// missing / unknown = [SecurityGeoStatus.off]). Never written back:
    /// excluded from [toJson] so store updates cannot send it. PROVISIONAL
    /// until the backend sends the final shape.
    @JsonKey(
      name: SecurityGeoJsonKeys.geoStatus,
      fromJson: securityGeoStatusFromJson,
      includeToJson: false,
    )
    @Default(SecurityGeoStatus.off)
    SecurityGeoStatus geoStatus,
  }) = _SecurityIntegration;

  factory SecurityIntegration.fromJson(Map<String, dynamic> json) =>
      _$SecurityIntegrationFromJson(json);

  /// Wilaya / city rules can be switched on and are evaluated only while this
  /// is true. The country rule stays active either way (it falls back to a
  /// less reliable source while location is off).
  bool get isGeoLive => geoStatus == SecurityGeoStatus.live;
}

/// `security.geoStatus` (read-only, spec §2.4 / §9 decision 3).
enum SecurityGeoStatus {
  /// Trusted visitor location is enforced; geo rules apply.
  live,

  /// Not live yet (default): wilaya / city rules are paused and cannot be
  /// turned on; the country rule stays active on a less reliable source.
  off,
}

/// Lenient `geoStatus`: case-insensitive `live`, anything else -> off.
SecurityGeoStatus securityGeoStatusFromJson(Object? value) =>
    value is String && value.trim().toLowerCase() == SecurityGeoStatus.live.name
    ? SecurityGeoStatus.live
    : SecurityGeoStatus.off;

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

/// Default tab title for draft (abandoned-cart) orders.
/// Must match the backend fallback (`DEFAULT_DRAFT_SHEET_NAME`).
const String defaultDraftSheetName = 'الطلبات المتروكة';

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

    /// When true, draft (abandoned-cart) orders are written to a dedicated
    /// tab ([draftSheetName]) instead of the main tab ([name]). Once the
    /// order leaves the draft status (e.g. becomes pending), its row is
    /// removed from the draft tab and inserted into the main tab.
    /// Disabled by default.
    @Default(false) bool draftSheetEnabled,

    /// Tab title used for draft orders when [draftSheetEnabled] is true.
    /// Falls back to [defaultDraftSheetName] when null/empty.
    String? draftSheetName,
  }) = _GoogleSheetsIntegration;

  factory GoogleSheetsIntegration.fromJson(Map<String, dynamic> json) =>
      _$GoogleSheetsIntegrationFromJson(json);
}

// ===================== WEBHOOKS INTEGRATION =====================

/// Webhook event types for order and product lifecycle
enum WebhookEvent {
  orderCreated,
  orderUpdated,
  orderDeleted,
  productCreated,
  productUpdated,
  productDeleted,
}

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

/// Webhooks integration configuration for real-time order and product notifications
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

/// Supported custom field types for order forms (contract v2:
/// feeef.all `docs/custom-fields.md`). Unknown values decode as [text].
enum CustomFieldType {
  text,
  textarea,
  number,
  phone,
  email,
  select,
  checkbox,
  image,
  file,
  date,
  time,
  datetime,
  timerange,
  daterange,
  datetimerange,
}

/// One choice of a `select` field.
@freezed
abstract class CustomFieldOption with _$CustomFieldOption {
  const factory CustomFieldOption({
    required String value,
    required String label,
  }) = _CustomFieldOption;

  factory CustomFieldOption.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldOptionFromJson(json);
}

/// A display rule condition.
///
/// [source] `field` → compares the value of [fieldId] (an earlier field) with
/// [operator]: equals, notEquals, in, notIn, filled, empty, gt, lt, checked,
/// unchecked. [source] `product` → [operator] in / notIn over cart product
/// ids in [values]. Strings (not enums) so newer operators never break parsing.
@freezed
abstract class CustomFieldCondition with _$CustomFieldCondition {
  const factory CustomFieldCondition({
    @Default('field') String source,
    String? fieldId,
    @Default('filled') String operator,
    dynamic value,
    List<String>? values,
  }) = _CustomFieldCondition;

  factory CustomFieldCondition.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldConditionFromJson(json);
}

/// Show a field only when its conditions match (`all` = AND, `any` = OR).
@freezed
abstract class CustomFieldVisibility with _$CustomFieldVisibility {
  const factory CustomFieldVisibility({
    @Default('all') String match,
    @Default([]) List<CustomFieldCondition> conditions,
  }) = _CustomFieldVisibility;

  factory CustomFieldVisibility.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldVisibilityFromJson(json);
}

/// Custom field configuration for order forms
@freezed
abstract class CustomField with _$CustomField {
  const CustomField._();
  const factory CustomField({
    /// Unique identifier for the field (`[A-Za-z0-9_-]{1,64}`)
    required String id,

    /// Display label for the field
    required String label,

    /// Field type (text, phone, email, etc.)
    @JsonKey(unknownEnumValue: CustomFieldType.text)
    required CustomFieldType type,

    /// Whether the field is required (only while visible)
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

    /// Text length bounds (text, textarea, phone, email)
    int? minLength,
    int? maxLength,

    /// Regex pattern for validation (text / phone only, safe patterns only)
    String? regexPattern,

    /// Number bounds (number)
    double? min,
    double? max,

    /// Only whole numbers (number)
    @Default(false) bool integer,

    /// Choices (select)
    List<CustomFieldOption>? options,

    /// Allowed upload kinds (file): image, pdf, document, spreadsheet, archive, text
    List<String>? accept,

    /// Conditional display rule
    CustomFieldVisibility? visibility,

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

/// Store-owned website pages: installed separately from the theme editor.
@freezed
abstract class StorePagesIntegration with _$StorePagesIntegration {
  const StorePagesIntegration._();
  const factory StorePagesIntegration({
    @Default(false) bool active,
    Map<String, dynamic>? metadata,
  }) = _StorePagesIntegration;
  factory StorePagesIntegration.fromJson(Map<String, dynamic> json) =>
      _$StorePagesIntegrationFromJson(json);
}
