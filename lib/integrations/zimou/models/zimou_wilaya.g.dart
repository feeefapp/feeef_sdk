// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zimou_wilaya.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ZimouWilaya _$ZimouWilayaFromJson(Map<String, dynamic> json) => _ZimouWilaya(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ZimouWilayaToJson(_ZimouWilaya instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'metadata': instance.metadata,
    };
