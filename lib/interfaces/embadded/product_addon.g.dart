// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_addon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductAddon _$ProductAddonFromJson(Map<String, dynamic> json) =>
    _ProductAddon(
      photoUrl: json['photoUrl'] as String?,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      stock: json['stock'] as num?,
      price: json['price'] as num?,
      min: json['min'] as num?,
      max: json['max'] as num?,
    );

Map<String, dynamic> _$ProductAddonToJson(_ProductAddon instance) =>
    <String, dynamic>{
      'photoUrl': instance.photoUrl,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'stock': instance.stock,
      'price': instance.price,
      'min': instance.min,
      'max': instance.max,
    };
