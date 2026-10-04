// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShippingPrice _$ShippingPriceFromJson(Map<String, dynamic> json) =>
    _ShippingPrice(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      name: json['name'] as String,
      logoUrl: json['logoUrl'] as String?,
      storeId: json['storeId'] as String,
      prices: _pricesFromJson(json['prices']),
      status:
          $enumDecodeNullable(_$ShippingPriceStatusEnumMap, json['status']) ??
          ShippingPriceStatus.draft,
    );

Map<String, dynamic> _$ShippingPriceToJson(_ShippingPrice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'metadata': instance.metadata,
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'storeId': instance.storeId,
      'prices': _pricesToJson(instance.prices),
      'status': _$ShippingPriceStatusEnumMap[instance.status]!,
    };

const _$ShippingPriceStatusEnumMap = {
  ShippingPriceStatus.draft: 'draft',
  ShippingPriceStatus.published: 'published',
};

_ShippingPriceCreate _$ShippingPriceCreateFromJson(Map<String, dynamic> json) =>
    _ShippingPriceCreate(
      id: json['id'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      name: json['name'] as String,
      logoUrl: json['logoUrl'] as String?,
      storeId: json['storeId'] as String,
      prices: json['prices'] == null
          ? const {}
          : _pricesFromJson(json['prices']),
      status:
          $enumDecodeNullable(_$ShippingPriceStatusEnumMap, json['status']) ??
          ShippingPriceStatus.draft,
    );

Map<String, dynamic> _$ShippingPriceCreateToJson(
  _ShippingPriceCreate instance,
) => <String, dynamic>{
  'id': instance.id,
  'metadata': instance.metadata,
  'name': instance.name,
  'logoUrl': instance.logoUrl,
  'storeId': instance.storeId,
  'prices': _pricesToJson(instance.prices),
  'status': _$ShippingPriceStatusEnumMap[instance.status]!,
};

_ShippingPriceUpdate _$ShippingPriceUpdateFromJson(Map<String, dynamic> json) =>
    _ShippingPriceUpdate(
      metadata: json['metadata'] as Map<String, dynamic>?,
      name: json['name'] as String?,
      logoUrl: json['logoUrl'] as String?,
      storeId: json['storeId'] as String?,
      prices: _pricesFromJson(json['prices']),
      status: $enumDecodeNullable(_$ShippingPriceStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$ShippingPriceUpdateToJson(
  _ShippingPriceUpdate instance,
) => <String, dynamic>{
  'metadata': instance.metadata,
  'name': instance.name,
  'logoUrl': instance.logoUrl,
  'storeId': instance.storeId,
  'prices': _pricesToJson(instance.prices),
  'status': _$ShippingPriceStatusEnumMap[instance.status],
};
