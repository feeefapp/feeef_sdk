// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_order_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomOrderTag _$CustomOrderTagFromJson(Map<String, dynamic> json) =>
    _CustomOrderTag(
      userId: json['userId'] as String?,
      name: json['name'] as String,
      note: json['note'] as String?,
      color: const ColorSerializer().fromJson((json['color'] as num).toInt()),
    );

Map<String, dynamic> _$CustomOrderTagToJson(_CustomOrderTag instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'note': instance.note,
      'color': const ColorSerializer().toJson(instance.color),
    };

_CustomOrderTagHistory _$CustomOrderTagHistoryFromJson(
  Map<String, dynamic> json,
) => _CustomOrderTagHistory(
  userId: json['userId'] as String?,
  tag: CustomOrderTag.fromJson(json['tag'] as Map<String, dynamic>),
  note: json['note'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$CustomOrderTagHistoryToJson(
  _CustomOrderTagHistory instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'tag': instance.tag.toJson(),
  'note': instance.note,
  'createdAt': instance.createdAt.toIso8601String(),
};
