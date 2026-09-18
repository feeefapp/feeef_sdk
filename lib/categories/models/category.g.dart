// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  storeId: json['storeId'] as String,
  parentId: json['parentId'] as String?,
  name: json['name'] as String,
  description: json['description'] as String?,
  photoUrl: json['photoUrl'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  parent: json['parent'] == null
      ? null
      : Category.fromJson(json['parent'] as Map<String, dynamic>),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'storeId': instance.storeId,
  'parentId': instance.parentId,
  'name': instance.name,
  'description': instance.description,
  'photoUrl': instance.photoUrl,
  'metadata': instance.metadata,
  'parent': instance.parent?.toJson(),
  'children': instance.children?.map((e) => e.toJson()).toList(),
};

_CategoryCreate _$CategoryCreateFromJson(Map<String, dynamic> json) =>
    _CategoryCreate(
      storeId: json['storeId'] as String,
      parentId: json['parentId'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      photoUrl: json['photoUrl'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$CategoryCreateToJson(_CategoryCreate instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
      'parentId': instance.parentId,
      'name': instance.name,
      'description': instance.description,
      'photoUrl': instance.photoUrl,
      'metadata': instance.metadata,
    };

_CategoryUpdate _$CategoryUpdateFromJson(Map<String, dynamic> json) =>
    _CategoryUpdate(
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      photoUrl: json['photoUrl'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CategoryUpdateToJson(_CategoryUpdate instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'name': instance.name,
      'description': instance.description,
      'photoUrl': instance.photoUrl,
      'metadata': instance.metadata,
    };
