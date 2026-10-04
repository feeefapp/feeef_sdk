// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zimou_commune.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ZimouCommune _$ZimouCommuneFromJson(Map<String, dynamic> json) =>
    _ZimouCommune(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      wilayaId: (json['wilayaId'] as num).toInt(),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$ZimouCommuneToJson(_ZimouCommune instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'wilayaId': instance.wilayaId,
      'metadata': instance.metadata,
    };
