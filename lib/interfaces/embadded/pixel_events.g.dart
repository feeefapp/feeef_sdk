// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixel_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PixelEvents _$PixelEventsFromJson(Map<String, dynamic> json) => _PixelEvents(
  rules:
      (json['rules'] as List<dynamic>?)
          ?.map((e) => PixelEventRule.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$PixelEventsToJson(_PixelEvents instance) =>
    <String, dynamic>{'rules': instance.rules.map((e) => e.toJson()).toList()};

_PixelEventRule _$PixelEventRuleFromJson(Map<String, dynamic> json) =>
    _PixelEventRule(
      id: json['id'] as String,
      on: json['on'] as String,
      meta: json['meta'] as String?,
      tiktok: json['tiktok'] as String?,
      snapchat: json['snapchat'] as String?,
    );

Map<String, dynamic> _$PixelEventRuleToJson(_PixelEventRule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'on': instance.on,
      'meta': ?instance.meta,
      'tiktok': ?instance.tiktok,
      'snapchat': ?instance.snapchat,
    };
