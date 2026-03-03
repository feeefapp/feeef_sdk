// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_landing_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductLandingPage _$ProductLandingPageFromJson(Map<String, dynamic> json) =>
    _ProductLandingPage(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      name: json['name'] as String,
      description: json['description'] as String?,
      templateId: json['templateId'] as String?,
      schema: json['schema'] as Map<String, dynamic>?,
      defaults: json['defaults'] as Map<String, dynamic>,
      productId: json['productId'] as String,
      storeId: json['storeId'] as String,
      template: json['template'] == null
          ? null
          : ProductLandingPageTemplate.fromJson(
              json['template'] as Map<String, dynamic>,
            ),
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      store: json['store'] == null
          ? null
          : Store.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductLandingPageToJson(_ProductLandingPage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'name': instance.name,
      'description': instance.description,
      'templateId': instance.templateId,
      'schema': instance.schema,
      'defaults': instance.defaults,
      'productId': instance.productId,
      'storeId': instance.storeId,
      'template': instance.template?.toJson(),
      'product': instance.product?.toJson(),
      'store': instance.store?.toJson(),
    };

_ProductLandingPageCreate _$ProductLandingPageCreateFromJson(
  Map<String, dynamic> json,
) => _ProductLandingPageCreate(
  name: json['name'] as String,
  description: json['description'] as String?,
  templateId: json['templateId'] as String?,
  schema: json['schema'] as Map<String, dynamic>?,
  defaults: json['defaults'] as Map<String, dynamic>,
  productId: json['productId'] as String?,
  storeId: json['storeId'] as String,
);

Map<String, dynamic> _$ProductLandingPageCreateToJson(
  _ProductLandingPageCreate instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'templateId': instance.templateId,
  'schema': instance.schema,
  'defaults': instance.defaults,
  'productId': instance.productId,
  'storeId': instance.storeId,
};

_ProductLandingPageUpdate _$ProductLandingPageUpdateFromJson(
  Map<String, dynamic> json,
) => _ProductLandingPageUpdate(
  name: json['name'] as String?,
  description: json['description'] as String?,
  templateId: json['templateId'] as String?,
  schema: json['schema'] as Map<String, dynamic>?,
  defaults: json['defaults'] as Map<String, dynamic>?,
  productId: json['productId'] as String?,
  storeId: json['storeId'] as String?,
);

Map<String, dynamic> _$ProductLandingPageUpdateToJson(
  _ProductLandingPageUpdate instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'templateId': instance.templateId,
  'schema': instance.schema,
  'defaults': instance.defaults,
  'productId': instance.productId,
  'storeId': instance.storeId,
};
