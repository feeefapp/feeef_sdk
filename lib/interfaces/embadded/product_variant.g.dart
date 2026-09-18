// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductVariant _$ProductVariantFromJson(Map<String, dynamic> json) =>
    _ProductVariant(
      name: json['name'] as String? ?? "option",
      view:
          $enumDecodeNullable(_$ProductVariantViewEnumMap, json['view']) ??
          ProductVariantView.chips,
      required: json['required'] as bool? ?? false,
      options:
          (json['options'] as List<dynamic>?)
              ?.map(
                (e) => ProductVariantOption.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ProductVariantToJson(_ProductVariant instance) =>
    <String, dynamic>{
      'name': instance.name,
      'view': _$ProductVariantViewEnumMap[instance.view]!,
      'required': instance.required,
      'options': instance.options.map((e) => e.toJson()).toList(),
    };

const _$ProductVariantViewEnumMap = {
  ProductVariantView.list: 'list',
  ProductVariantView.chips: 'chips',
  ProductVariantView.dropdown: 'dropdown',
};

_ProductVariantOption _$ProductVariantOptionFromJson(
  Map<String, dynamic> json,
) => _ProductVariantOption(
  name: json['name'] as String? ?? "option",
  hidden: json['hidden'] as bool? ?? false,
  type:
      $enumDecodeNullable(_$VariantOptionTypeEnumMap, json['type']) ??
      VariantOptionType.text,
  value: json['value'],
  child: json['child'] == null
      ? null
      : ProductVariant.fromJson(json['child'] as Map<String, dynamic>),
  sku: json['sku'] as String?,
  price: json['price'] as num?,
  discount: json['discount'] as num?,
  stock: json['stock'] as num?,
  sold: json['sold'] as num?,
  mustSelectChild: json['mustSelectChild'] as bool? ?? false,
);

Map<String, dynamic> _$ProductVariantOptionToJson(
  _ProductVariantOption instance,
) => <String, dynamic>{
  'name': instance.name,
  'hidden': instance.hidden,
  'type': _$VariantOptionTypeEnumMap[instance.type]!,
  'value': instance.value,
  'child': instance.child?.toJson(),
  'sku': instance.sku,
  'price': instance.price,
  'discount': instance.discount,
  'stock': instance.stock,
  'sold': instance.sold,
  'mustSelectChild': instance.mustSelectChild,
};

const _$VariantOptionTypeEnumMap = {
  VariantOptionType.color: 'color',
  VariantOptionType.image: 'image',
  VariantOptionType.text: 'text',
};
