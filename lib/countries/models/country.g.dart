// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Country _$CountryFromJson(Map<String, dynamic> json) => _Country(
  code: json['code'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$CountryToJson(_Country instance) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'phone': instance.phone,
  'metadata': instance.metadata,
  'createdAt': instance.createdAt.toIso8601String(),
};

_CountryCreate _$CountryCreateFromJson(Map<String, dynamic> json) =>
    _CountryCreate(
      code: json['code'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$CountryCreateToJson(_CountryCreate instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'phone': instance.phone,
      'metadata': instance.metadata,
    };

_CountryUpdate _$CountryUpdateFromJson(Map<String, dynamic> json) =>
    _CountryUpdate(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      setToNull:
          (json['setToNull'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CountryUpdateToJson(_CountryUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'metadata': instance.metadata,
      'setToNull': instance.setToNull,
    };
