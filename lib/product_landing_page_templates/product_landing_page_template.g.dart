// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_landing_page_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductLandingPageTemplate _$ProductLandingPageTemplateFromJson(
  Map<String, dynamic> json,
) => _ProductLandingPageTemplate(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  name: json['name'] as String,
  description: json['description'] as String,
  imageUrl: json['imageUrl'] as String,
  schema: json['schema'] as Map<String, dynamic>?,
  defaults: json['defaults'] as Map<String, dynamic>,
);

Map<String, dynamic> _$ProductLandingPageTemplateToJson(
  _ProductLandingPageTemplate instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'name': instance.name,
  'description': instance.description,
  'imageUrl': instance.imageUrl,
  'schema': instance.schema,
  'defaults': instance.defaults,
};

_ProductLandingPageTemplateCreate _$ProductLandingPageTemplateCreateFromJson(
  Map<String, dynamic> json,
) => _ProductLandingPageTemplateCreate(
  name: json['name'] as String,
  description: json['description'] as String,
  imageUrl: json['imageUrl'] as String,
  schema: json['schema'] as Map<String, dynamic>,
  defaults: json['defaults'] as Map<String, dynamic>,
);

Map<String, dynamic> _$ProductLandingPageTemplateCreateToJson(
  _ProductLandingPageTemplateCreate instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'imageUrl': instance.imageUrl,
  'schema': instance.schema,
  'defaults': instance.defaults,
};

_ProductLandingPageTemplateUpdate _$ProductLandingPageTemplateUpdateFromJson(
  Map<String, dynamic> json,
) => _ProductLandingPageTemplateUpdate(
  name: json['name'] as String?,
  description: json['description'] as String?,
  imageUrl: json['imageUrl'] as String?,
  schema: json['schema'] as Map<String, dynamic>?,
  defaults: json['defaults'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ProductLandingPageTemplateUpdateToJson(
  _ProductLandingPageTemplateUpdate instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'imageUrl': instance.imageUrl,
  'schema': instance.schema,
  'defaults': instance.defaults,
};
