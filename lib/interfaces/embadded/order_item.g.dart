// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => _OrderItem(
  productId: json['productId'] as String,
  productName: json['productName'] as String,
  productPhotoUrl: json['productPhotoUrl'] as String?,
  variantPath: json['variantPath'] as String?,
  offerCode: json['offerCode'] as String?,
  offerName: json['offerName'] as String?,
  sku: json['sku'] as String?,
  quantity: json['quantity'] as num? ?? 0,
  price: json['price'] as num? ?? 0,
  discount: json['discount'] as num? ?? 0,
  addons: (json['addons'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as num),
  ),
);

Map<String, dynamic> _$OrderItemToJson(_OrderItem instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'productPhotoUrl': instance.productPhotoUrl,
      'variantPath': instance.variantPath,
      'offerCode': instance.offerCode,
      'offerName': instance.offerName,
      'sku': instance.sku,
      'quantity': instance.quantity,
      'price': instance.price,
      'discount': instance.discount,
      'addons': instance.addons,
    };
