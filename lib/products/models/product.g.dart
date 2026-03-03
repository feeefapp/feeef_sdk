// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  slug: json['slug'] as String,
  decoration: json['decoration'],
  name: json['name'] as String,
  photoUrl: json['photoUrl'] as String?,
  media: (json['media'] as List<dynamic>).map((e) => e as String).toList(),
  storeId: json['storeId'] as String,
  shippingMethodId: json['shippingMethodId'] as String?,
  shippingPriceId: json['shippingPriceId'] as String?,
  categoryId: json['categoryId'] as String?,
  category: json['category'] == null
      ? null
      : EmbaddedCategory.fromJson(json['category'] as Map<String, dynamic>),
  categoryRelation: json['categoryRelation'] == null
      ? null
      : Category.fromJson(json['categoryRelation'] as Map<String, dynamic>),
  title: json['title'] as String?,
  description: json['description'] as String?,
  body: json['body'] as String?,
  sku: json['sku'] as String?,
  barcode: json['barcode'] as String?,
  price: json['price'] as num,
  cost: json['cost'] as num?,
  discount: json['discount'] as num?,
  stock: json['stock'] as num?,
  sold: json['sold'] as num? ?? 0,
  views: json['views'] as num? ?? 0,
  likes: json['likes'] as num? ?? 0,
  variant: json['variant'] == null
      ? null
      : ProductVariant.fromJson(json['variant'] as Map<String, dynamic>),
  offers: (json['offers'] as List<dynamic>?)
      ?.map((e) => ProductOffer.fromJson(e as Map<String, dynamic>))
      .toList(),
  addons: (json['addons'] as List<dynamic>?)
      ?.map((e) => ProductAddon.fromJson(e as Map<String, dynamic>))
      .toList(),
  dislikes: json['dislikes'] as num? ?? 0,
  status:
      $enumDecodeNullable(_$ProductStatusEnumMap, json['status']) ??
      ProductStatus.draft,
  type:
      $enumDecodeNullable(_$ProductTypeEnumMap, json['type']) ??
      ProductType.physical,
  integrationsData: json['integrationsData'] == null
      ? null
      : IntegrationsData.fromJson(
          json['integrationsData'] as Map<String, dynamic>,
        ),
  verifiedAt: json['verifiedAt'] == null
      ? null
      : DateTime.parse(json['verifiedAt'] as String),
  blockedAt: json['blockedAt'] == null
      ? null
      : DateTime.parse(json['blockedAt'] as String),
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'slug': instance.slug,
  'decoration': instance.decoration,
  'name': instance.name,
  'photoUrl': instance.photoUrl,
  'media': instance.media,
  'storeId': instance.storeId,
  'shippingMethodId': instance.shippingMethodId,
  'shippingPriceId': instance.shippingPriceId,
  'categoryId': instance.categoryId,
  'category': instance.category?.toJson(),
  'categoryRelation': instance.categoryRelation?.toJson(),
  'title': instance.title,
  'description': instance.description,
  'body': instance.body,
  'sku': instance.sku,
  'barcode': instance.barcode,
  'price': instance.price,
  'cost': instance.cost,
  'discount': instance.discount,
  'stock': instance.stock,
  'sold': instance.sold,
  'views': instance.views,
  'likes': instance.likes,
  'variant': instance.variant?.toJson(),
  'offers': instance.offers?.map((e) => e.toJson()).toList(),
  'addons': instance.addons?.map((e) => e.toJson()).toList(),
  'dislikes': instance.dislikes,
  'status': _$ProductStatusEnumMap[instance.status]!,
  'type': _$ProductTypeEnumMap[instance.type]!,
  'integrationsData': instance.integrationsData?.toJson(),
  'verifiedAt': instance.verifiedAt?.toIso8601String(),
  'blockedAt': instance.blockedAt?.toIso8601String(),
  'metadata': instance.metadata,
};

const _$ProductStatusEnumMap = {
  ProductStatus.draft: 'draft',
  ProductStatus.published: 'published',
  ProductStatus.archived: 'archived',
  ProductStatus.unlisted: 'unlisted',
};

const _$ProductTypeEnumMap = {
  ProductType.physical: 'physical',
  ProductType.digital: 'digital',
  ProductType.service: 'service',
};

_IntegrationsData _$IntegrationsDataFromJson(Map<String, dynamic> json) =>
    _IntegrationsData(
      metaPixelData: json['metaPixelData'] == null
          ? null
          : MetaPixelData.fromJson(
              json['metaPixelData'] as Map<String, dynamic>,
            ),
      tiktokPixelData: json['tiktokPixelData'] == null
          ? null
          : TiktokPixelData.fromJson(
              json['tiktokPixelData'] as Map<String, dynamic>,
            ),
      googleSheetsData: json['googleSheetsData'] == null
          ? null
          : GoogleSheetsData.fromJson(
              json['googleSheetsData'] as Map<String, dynamic>,
            ),
      paymentMethodData: json['paymentMethodData'] == null
          ? null
          : PaymentMethodData.fromJson(
              json['paymentMethodData'] as Map<String, dynamic>,
            ),
      customFieldsData: json['customFieldsData'] == null
          ? null
          : CustomFieldsIntegrationData.fromJson(
              json['customFieldsData'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$IntegrationsDataToJson(_IntegrationsData instance) =>
    <String, dynamic>{
      'metaPixelData': instance.metaPixelData?.toJson(),
      'tiktokPixelData': instance.tiktokPixelData?.toJson(),
      'googleSheetsData': instance.googleSheetsData?.toJson(),
      'paymentMethodData': instance.paymentMethodData?.toJson(),
      'customFieldsData': instance.customFieldsData?.toJson(),
    };

_CustomFieldsIntegrationData _$CustomFieldsIntegrationDataFromJson(
  Map<String, dynamic> json,
) => _CustomFieldsIntegrationData(
  fields:
      (json['fields'] as List<dynamic>?)
          ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  useProductFields: json['useProductFields'] as bool? ?? false,
);

Map<String, dynamic> _$CustomFieldsIntegrationDataToJson(
  _CustomFieldsIntegrationData instance,
) => <String, dynamic>{
  'fields': instance.fields.map((e) => e.toJson()).toList(),
  'useProductFields': instance.useProductFields,
};

_MetaPixelData _$MetaPixelDataFromJson(Map<String, dynamic> json) =>
    _MetaPixelData(
      enabled: json['enabled'] as bool? ?? true,
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      objective: $enumDecodeNullable(
        _$MetaPixelEventEnumMap,
        json['objective'],
      ),
      draftObjective: $enumDecodeNullable(
        _$MetaPixelEventEnumMap,
        json['draftObjective'],
      ),
    );

Map<String, dynamic> _$MetaPixelDataToJson(_MetaPixelData instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'ids': instance.ids,
      'objective': _$MetaPixelEventEnumMap[instance.objective],
      'draftObjective': _$MetaPixelEventEnumMap[instance.draftObjective],
    };

const _$MetaPixelEventEnumMap = {
  MetaPixelEvent.none: 'none',
  MetaPixelEvent.lead: 'lead',
  MetaPixelEvent.purchase: 'purchase',
  MetaPixelEvent.viewContent: 'viewContent',
  MetaPixelEvent.addToCart: 'addToCart',
  MetaPixelEvent.initiateCheckout: 'initiateCheckout',
};

_TiktokPixelData _$TiktokPixelDataFromJson(Map<String, dynamic> json) =>
    _TiktokPixelData(
      enabled: json['enabled'] as bool? ?? true,
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      objective: $enumDecodeNullable(
        _$TiktokPixelEventEnumMap,
        json['objective'],
      ),
      draftObjective: $enumDecodeNullable(
        _$TiktokPixelEventEnumMap,
        json['draftObjective'],
      ),
    );

Map<String, dynamic> _$TiktokPixelDataToJson(_TiktokPixelData instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'ids': instance.ids,
      'objective': _$TiktokPixelEventEnumMap[instance.objective],
      'draftObjective': _$TiktokPixelEventEnumMap[instance.draftObjective],
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

_GoogleSheetsData _$GoogleSheetsDataFromJson(Map<String, dynamic> json) =>
    _GoogleSheetsData(
      enabled: json['enabled'] as bool? ?? true,
      sheetId: json['sheetId'] as String?,
      sheetName: json['sheetName'] as String?,
      spreadsheetId: json['spreadsheetId'] as String?,
      nextRow: (json['nextRow'] as num?)?.toInt(),
      columns: (json['columns'] as List<dynamic>?)
          ?.map((e) => GoogleSheetsColumn.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GoogleSheetsDataToJson(_GoogleSheetsData instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'sheetId': instance.sheetId,
      'sheetName': instance.sheetName,
      'spreadsheetId': instance.spreadsheetId,
      'nextRow': instance.nextRow,
      'columns': instance.columns?.map((e) => e.toJson()).toList(),
    };

_PaymentMethodData _$PaymentMethodDataFromJson(Map<String, dynamic> json) =>
    _PaymentMethodData(
      enabled: json['enabled'] as bool? ?? false,
      methodIds:
          (json['methodIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PaymentMethodDataToJson(_PaymentMethodData instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'methodIds': instance.methodIds,
    };

_ProductCreate _$ProductCreateFromJson(Map<String, dynamic> json) =>
    _ProductCreate(
      id: json['id'] as String?,
      name: json['name'] as String,
      slug: json['slug'] as String,
      decoration: json['decoration'],
      photoUrl: json['photoUrl'] as String?,
      media: (json['media'] as List<dynamic>).map((e) => e as String).toList(),
      storeId: json['storeId'] as String,
      shippingMethodId: json['shippingMethodId'] as String?,
      shippingPriceId: json['shippingPriceId'] as String?,
      categoryId: json['categoryId'] as String?,
      category: json['category'] == null
          ? null
          : EmbaddedCategory.fromJson(json['category'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
      body: json['body'] as String?,
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      price: json['price'] as num,
      cost: json['cost'] as num?,
      discount: json['discount'] as num?,
      stock: json['stock'] as num?,
      variant: json['variant'] == null
          ? null
          : ProductVariant.fromJson(json['variant'] as Map<String, dynamic>),
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => ProductOffer.fromJson(e as Map<String, dynamic>))
          .toList(),
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => ProductAddon.fromJson(e as Map<String, dynamic>))
          .toList(),
      integrationsData: json['integrationsData'] == null
          ? null
          : IntegrationsData.fromJson(
              json['integrationsData'] as Map<String, dynamic>,
            ),
      status:
          $enumDecodeNullable(_$ProductStatusEnumMap, json['status']) ??
          ProductStatus.draft,
      type:
          $enumDecodeNullable(_$ProductTypeEnumMap, json['type']) ??
          ProductType.physical,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$ProductCreateToJson(_ProductCreate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'decoration': instance.decoration,
      'photoUrl': instance.photoUrl,
      'media': instance.media,
      'storeId': instance.storeId,
      'shippingMethodId': instance.shippingMethodId,
      'shippingPriceId': instance.shippingPriceId,
      'categoryId': instance.categoryId,
      'category': instance.category?.toJson(),
      'title': instance.title,
      'description': instance.description,
      'body': instance.body,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'price': instance.price,
      'cost': instance.cost,
      'discount': instance.discount,
      'stock': instance.stock,
      'variant': instance.variant?.toJson(),
      'offers': instance.offers?.map((e) => e.toJson()).toList(),
      'addons': instance.addons?.map((e) => e.toJson()).toList(),
      'integrationsData': instance.integrationsData?.toJson(),
      'status': _$ProductStatusEnumMap[instance.status]!,
      'type': _$ProductTypeEnumMap[instance.type]!,
      'metadata': instance.metadata,
    };

_ProductUpdate _$ProductUpdateFromJson(Map<String, dynamic> json) =>
    _ProductUpdate(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      decoration: json['decoration'],
      photoUrl: json['photoUrl'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      storeId: json['storeId'] as String?,
      shippingMethodId: json['shippingMethodId'] as String?,
      shippingPriceId: json['shippingPriceId'] as String?,
      categoryId: json['categoryId'] as String?,
      category: json['category'] == null
          ? null
          : EmbaddedCategory.fromJson(json['category'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
      body: json['body'] as String?,
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      price: json['price'] as num?,
      cost: json['cost'] as num?,
      discount: json['discount'] as num?,
      stock: json['stock'] as num?,
      variant: json['variant'] == null
          ? null
          : ProductVariant.fromJson(json['variant'] as Map<String, dynamic>),
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => ProductOffer.fromJson(e as Map<String, dynamic>))
          .toList(),
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => ProductAddon.fromJson(e as Map<String, dynamic>))
          .toList(),
      integrationsData: json['integrationsData'] == null
          ? null
          : IntegrationsData.fromJson(
              json['integrationsData'] as Map<String, dynamic>,
            ),
      status: $enumDecodeNullable(_$ProductStatusEnumMap, json['status']),
      type: $enumDecodeNullable(_$ProductTypeEnumMap, json['type']),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ProductUpdateToJson(_ProductUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'decoration': instance.decoration,
      'photoUrl': instance.photoUrl,
      'media': instance.media,
      'storeId': instance.storeId,
      'shippingMethodId': instance.shippingMethodId,
      'shippingPriceId': instance.shippingPriceId,
      'categoryId': instance.categoryId,
      'category': instance.category?.toJson(),
      'title': instance.title,
      'description': instance.description,
      'body': instance.body,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'price': instance.price,
      'cost': instance.cost,
      'discount': instance.discount,
      'stock': instance.stock,
      'variant': instance.variant?.toJson(),
      'offers': instance.offers?.map((e) => e.toJson()).toList(),
      'addons': instance.addons?.map((e) => e.toJson()).toList(),
      'integrationsData': instance.integrationsData?.toJson(),
      'status': _$ProductStatusEnumMap[instance.status],
      'type': _$ProductTypeEnumMap[instance.type],
      'metadata': instance.metadata,
    };

_ProductOffer _$ProductOfferFromJson(Map<String, dynamic> json) =>
    _ProductOffer(
      code: json['code'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      price: json['price'] as num?,
      minQuantity: json['minQuantity'] as num?,
      maxQuantity: json['maxQuantity'] as num?,
      freeShipping: json['freeShipping'] as bool? ?? false,
    );

Map<String, dynamic> _$ProductOfferToJson(_ProductOffer instance) =>
    <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'price': instance.price,
      'minQuantity': instance.minQuantity,
      'maxQuantity': instance.maxQuantity,
      'freeShipping': instance.freeShipping,
    };
