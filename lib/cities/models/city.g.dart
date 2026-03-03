// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_City _$CityFromJson(Map<String, dynamic> json) => _City(
  countryCode: json['countryCode'] as String,
  stateCode: json['stateCode'] as String,
  name: json['name'] as String,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$CityToJson(_City instance) => <String, dynamic>{
  'countryCode': instance.countryCode,
  'stateCode': instance.stateCode,
  'name': instance.name,
  'metadata': instance.metadata,
  'createdAt': instance.createdAt.toIso8601String(),
};

_CityCreate _$CityCreateFromJson(Map<String, dynamic> json) => _CityCreate(
  countryCode: json['countryCode'] as String,
  stateCode: json['stateCode'] as String,
  name: json['name'] as String,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$CityCreateToJson(_CityCreate instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'stateCode': instance.stateCode,
      'name': instance.name,
      'metadata': instance.metadata,
    };

_CityUpdate _$CityUpdateFromJson(Map<String, dynamic> json) => _CityUpdate(
  name: json['name'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  setToNull:
      (json['setToNull'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$CityUpdateToJson(_CityUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'metadata': instance.metadata,
      'setToNull': instance.setToNull,
    };
