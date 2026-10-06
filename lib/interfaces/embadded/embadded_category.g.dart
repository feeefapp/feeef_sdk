// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embadded_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmbaddedCategory _$EmbaddedCategoryFromJson(Map<String, dynamic> json) =>
    _EmbaddedCategory(
      name: json['name'] as String,
      description: json['description'] as String?,
      photoUrl: json['photoUrl'] as String?,
      ondarkPhotoUrl: json['ondarkPhotoUrl'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$EmbaddedCategoryToJson(_EmbaddedCategory instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'photoUrl': instance.photoUrl,
      'ondarkPhotoUrl': instance.ondarkPhotoUrl,
      'metadata': instance.metadata,
    };
