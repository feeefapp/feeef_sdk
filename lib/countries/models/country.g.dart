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
  locales: (json['locales'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$CountryToJson(_Country instance) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'phone': instance.phone,
  'metadata': instance.metadata,
  'locales': instance.locales,
  'createdAt': instance.createdAt.toIso8601String(),
};
