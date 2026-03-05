// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_State _$StateFromJson(Map<String, dynamic> json) => _State(
  countryCode: json['countryCode'] as String,
  code: json['code'] as String,
  name: json['name'] as String,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  locales: _localesFromJson(json['locales']),
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$StateToJson(_State instance) => <String, dynamic>{
  'countryCode': instance.countryCode,
  'code': instance.code,
  'name': instance.name,
  'metadata': instance.metadata,
  'locales': instance.locales,
  'createdAt': instance.createdAt.toIso8601String(),
};

_StateCreate _$StateCreateFromJson(Map<String, dynamic> json) => _StateCreate(
  countryCode: json['countryCode'] as String,
  code: json['code'] as String,
  name: json['name'] as String,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$StateCreateToJson(_StateCreate instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'code': instance.code,
      'name': instance.name,
      'metadata': instance.metadata,
    };

_StateUpdate _$StateUpdateFromJson(Map<String, dynamic> json) => _StateUpdate(
  name: json['name'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  setToNull:
      (json['setToNull'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$StateUpdateToJson(_StateUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'metadata': instance.metadata,
      'setToNull': instance.setToNull,
    };
