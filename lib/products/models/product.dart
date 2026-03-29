import 'package:feeef/interfaces/embadded/embadded_category.dart';
import 'package:feeef/interfaces/embadded/product_addon.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/interfaces/product.dart';
import 'package:feeef/interfaces/category.dart';
import 'package:feeef/categories/models/category.dart';
import 'package:feeef/orders/models/lite_orders_report.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../interfaces/helpers.dart';

part 'product.freezed.dart';
part 'product.g.dart';

LiteOrdersReport? _productLorFromJson(Object? o) {
  if (o == null) return null;
  if (o is Map<String, dynamic>) return LiteOrdersReport.fromJson(o);
  if (o is Map) return LiteOrdersReport.fromJson(Map<String, dynamic>.from(o));
  return null;
}

@freezed
abstract class Product extends ProductEntity
    with _$Product
    implements Model, ModelMetadata {
  Product._();
  factory Product({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String slug,
    ProductDecoration? decoration,
    required String name,
    String? photoUrl,
    required List<String> media,
    required String storeId,
    String? shippingMethodId,
    String? shippingPriceId,
    String? categoryId,
    EmbaddedCategory? category,
    Category? categoryRelation,
    String? title,
    String? description,
    String? body,
    String? sku,
    String? barcode,
    required num price,
    num? cost,
    num? discount,
    num? stock,
    @Default(0) num sold,
    @Default(0) num views,
    @Default(0) num likes,
    ProductVariant? variant,
    List<ProductOffer>? offers,
    List<ProductAddon>? addons,
    @Default(0) num dislikes,
    @Default(ProductStatus.draft) ProductStatus status,
    @Default(ProductType.physical) ProductType type,
    IntegrationsData? integrationsData,
    DateTime? verifiedAt,
    DateTime? blockedAt,
    @Default({}) Map<String, dynamic> metadata,
    /// Present when list/show is called with `with[]=lor` and the user may view analytics.
    @JsonKey(fromJson: _productLorFromJson) LiteOrdersReport? lor,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

// IntegrationsData
@freezed
abstract class IntegrationsData extends IntegrationsDataEntity
    with _$IntegrationsData {
  IntegrationsData._();
  factory IntegrationsData({
    MetaPixelData? metaPixelData,
    TiktokPixelData? tiktokPixelData,
    // GoogleAnalyticsData? googleAnalyticsData;
    // GoogleTagData? googleTagsData;
    GoogleSheetsData? googleSheetsData,
    PaymentMethodData? paymentMethodData,
    CustomFieldsIntegrationData? customFieldsData,
  }) = _IntegrationsData;

  factory IntegrationsData.fromJson(Map<String, dynamic> json) =>
      _$IntegrationsDataFromJson(json);
}

// CustomFieldsIntegrationData
@freezed
abstract class CustomFieldsIntegrationData with _$CustomFieldsIntegrationData {
  /// Custom fields integration data for a product.
  /// When set, this product will use these specific custom fields instead of inheriting from the store's global custom fields.
  /// If null, the product will inherit custom fields from the store's CustomFieldsIntegration.
  const factory CustomFieldsIntegrationData({
    /// List of custom field definitions specific to this product.
    /// If empty or null, product inherits from store's global custom fields.
    @Default([]) List<CustomField> fields,

    /// Whether to use product-specific fields (true) or inherit from store (false).
    @Default(false) bool useProductFields,
  }) = _CustomFieldsIntegrationData;

  factory CustomFieldsIntegrationData.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldsIntegrationDataFromJson(json);
}

// MetaPixelData
@freezed
abstract class MetaPixelData extends MetaPixelDataEntity with _$MetaPixelData {
  MetaPixelData._();
  factory MetaPixelData({
    @Default(true) bool enabled,
    List<String>? ids,
    MetaPixelEvent? objective,
    MetaPixelEvent? draftObjective,
  }) = _MetaPixelData;

  factory MetaPixelData.fromJson(Map<String, dynamic> json) =>
      _$MetaPixelDataFromJson(json);
}

// TiktokPixelData
@freezed
abstract class TiktokPixelData extends TiktokPixelDataEntity
    with _$TiktokPixelData {
  TiktokPixelData._();
  factory TiktokPixelData({
    @Default(true) bool enabled,
    List<String>? ids,
    TiktokPixelEvent? objective,
    TiktokPixelEvent? draftObjective,
  }) = _TiktokPixelData;

  factory TiktokPixelData.fromJson(Map<String, dynamic> json) =>
      _$TiktokPixelDataFromJson(json);
}

// GoogleSheetsData
@freezed
abstract class GoogleSheetsData extends GoogleSheetsDataEntity
    with _$GoogleSheetsData {
  GoogleSheetsData._();

  /// Google Sheets integration data for a product, including optional columns for export customization.
  factory GoogleSheetsData({
    @Default(true) bool enabled,
    String? sheetId,
    String? sheetName,
    String? spreadsheetId,
    int? nextRow,

    /// Optional columns configuration for this product's export to Google Sheets.
    List<GoogleSheetsColumn>? columns,
  }) = _GoogleSheetsData;

  factory GoogleSheetsData.fromJson(Map<String, dynamic> json) =>
      _$GoogleSheetsDataFromJson(json);
}

// PaymentMethodData
@freezed
abstract class PaymentMethodData extends PaymentMethodDataEntity
    with _$PaymentMethodData {
  PaymentMethodData._();

  /// Payment method integration data for a product.
  /// When set, this product will use these specific payment methods instead of the store's defaults.
  /// If methodIds is empty or null, falls back to store's active payment methods.
  factory PaymentMethodData({
    @Default(false) bool enabled,
    @Default([])
    List<String>
    methodIds, // Which payment method IDs to use (optional, falls back to store defaults)
  }) = _PaymentMethodData;

  factory PaymentMethodData.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDataFromJson(json);
}

// ProductCreate
@freezed
abstract class ProductCreate with _$ProductCreate implements ModelCreate {
  const factory ProductCreate({
    String? id,
    required String name,
    required String slug,
    ProductDecoration? decoration,
    String? photoUrl,
    required List<String> media,
    required String storeId,
    String? shippingMethodId,
    String? shippingPriceId,
    String? categoryId,
    EmbaddedCategory? category,
    String? title,
    String? description,
    String? body,
    String? sku,
    String? barcode,
    required num price,
    num? cost,
    num? discount,
    num? stock,
    ProductVariant? variant,
    List<ProductOffer>? offers,
    List<ProductAddon>? addons,
    IntegrationsData? integrationsData,
    @Default(ProductStatus.draft) ProductStatus status,
    @Default(ProductType.physical) ProductType type,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ProductCreate;

  factory ProductCreate.fromJson(Map<String, dynamic> json) =>
      _$ProductCreateFromJson(json);
}

// ProductUpdate
@freezed
abstract class ProductUpdate with _$ProductUpdate implements ModelUpdate {
  const factory ProductUpdate({
    String? name,
    String? slug,
    ProductDecoration? decoration,
    String? photoUrl,
    List<String>? media,
    String? storeId,
    String? shippingMethodId,
    String? shippingPriceId,
    String? categoryId,
    EmbaddedCategory? category,
    String? title,
    String? description,
    String? body,
    String? sku,
    String? barcode,
    num? price,
    num? cost,
    num? discount,
    num? stock,
    ProductVariant? variant,
    List<ProductOffer>? offers,
    List<ProductAddon>? addons,
    IntegrationsData? integrationsData,
    ProductStatus? status,
    ProductType? type,
    Map<String, dynamic>? metadata,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _ProductUpdate;

  factory ProductUpdate.fromJson(Map<String, dynamic> json) =>
      _$ProductUpdateFromJson(json);
}

// ProductOffer
@freezed
abstract class ProductOffer with _$ProductOffer {
  const factory ProductOffer({
    required String code,
    required String title,
    String? subtitle,
    num? price,
    num? minQuantity,
    num? maxQuantity,
    @Default(false) bool freeShipping,
  }) = _ProductOffer;

  factory ProductOffer.fromJson(Map<String, dynamic> json) =>
      _$ProductOfferFromJson(json);
}
