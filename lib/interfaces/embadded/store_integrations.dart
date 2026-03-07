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
    // Communication Integrations
    @Default({}) Map<String, dynamic>? sms,
    @Default({}) Map<String, dynamic>? telegram,
    // customJavascript, CustomHtmlI (future)
  }) = _StoreIntegrations;

  factory StoreIntegrations.fromJson(Map<String, dynamic> json) =>
      _$StoreIntegrationsFromJson(json);
}

// ===================== ANALYTICS INTEGRATIONS =====================

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
    @Default({}) Map<String, dynamic> metadata,
  }) = _EcotrackDeliveryIntegration;

  factory EcotrackDeliveryIntegration.fromJson(Map<String, dynamic> json) =>
      _$EcotrackDeliveryIntegrationFromJson(json);
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

/// Security integration configuration for order protection layers.
@freezed
abstract class SecurityIntegration with _$SecurityIntegration {
  const SecurityIntegration._();
  const factory SecurityIntegration({
    String? key,
    @Default(true) bool active,
    int? ordersRateLimit,
    int? ordersRateLimitDuration,
    bool? hideProducts,
    SecurityIntegrationOrdersProtection? orders,
    @Default({}) Map<String, dynamic> metadata,
  }) = _SecurityIntegration;

  factory SecurityIntegration.fromJson(Map<String, dynamic> json) =>
      _$SecurityIntegrationFromJson(json);
}

/// Frontend/backend protection configuration.
@freezed
abstract class SecurityIntegrationOrdersProtection
    with _$SecurityIntegrationOrdersProtection {
  const factory SecurityIntegrationOrdersProtection({
    SecurityIntegrationFrontendProtection? frontend,
    SecurityIntegrationBackendProtection? backend,
  }) = _SecurityIntegrationOrdersProtection;

  factory SecurityIntegrationOrdersProtection.fromJson(
    Map<String, dynamic> json,
  ) => _$SecurityIntegrationOrdersProtectionFromJson(json);
}

/// Frontend protection configuration (form blockers, etc.).
@freezed
abstract class SecurityIntegrationFrontendProtection
    with _$SecurityIntegrationFrontendProtection {
  const factory SecurityIntegrationFrontendProtection({
    @Default(false) bool active,
  }) = _SecurityIntegrationFrontendProtection;

  factory SecurityIntegrationFrontendProtection.fromJson(
    Map<String, dynamic> json,
  ) => _$SecurityIntegrationFrontendProtectionFromJson(json);
}

/// Backend protection configuration (rate limit, blocking direct orders, etc.).
@freezed
abstract class SecurityIntegrationBackendProtection
    with _$SecurityIntegrationBackendProtection {
  const factory SecurityIntegrationBackendProtection({
    @Default(false) bool active,
    int? phoneTtl,
    int? ipTtl,
    @Default(false) bool blockDirectOrders,
    @Default(false) bool adsOnlyMode,
  }) = _SecurityIntegrationBackendProtection;

  factory SecurityIntegrationBackendProtection.fromJson(
    Map<String, dynamic> json,
  ) => _$SecurityIntegrationBackendProtectionFromJson(json);
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
