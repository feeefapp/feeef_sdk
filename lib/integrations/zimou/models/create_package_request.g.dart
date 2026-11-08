// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_package_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ZimouPackageCreateRequest _$ZimouPackageCreateRequestFromJson(
  Map<String, dynamic> json,
) => _ZimouPackageCreateRequest(
  type: json['type'] as String,
  warehouseId: (json['warehouseId'] as num?)?.toInt(),
  name: json['name'] as String,
  clientLastName: json['clientLastName'] as String,
  clientFirstName: json['clientFirstName'] as String,
  clientPhone: json['clientPhone'] as String,
  clientPhone2: json['clientPhone2'] as String?,
  address: json['address'] as String,
  orderId: json['orderId'] as String,
  price: json['price'] as String,
  freeDelivery: json['freeDelivery'] as bool,
  quantityItems: (json['quantityItems'] as num?)?.toInt(),
  deliveryType: json['deliveryType'] as String,
  wilaya: json['wilaya'] as String,
  commune: json['commune'] as String,
  officeId: (json['officeId'] as num?)?.toInt(),
  canBeOpened: json['canBeOpened'] as bool,
  observation: json['observation'] as String?,
  returnedProduct: json['returnedProduct'] as String?,
  weight: (json['weight'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ZimouPackageCreateRequestToJson(
  _ZimouPackageCreateRequest instance,
) => <String, dynamic>{
  'type': instance.type,
  'warehouseId': instance.warehouseId,
  'name': instance.name,
  'clientLastName': instance.clientLastName,
  'clientFirstName': instance.clientFirstName,
  'clientPhone': instance.clientPhone,
  'clientPhone2': instance.clientPhone2,
  'address': instance.address,
  'orderId': instance.orderId,
  'price': instance.price,
  'freeDelivery': instance.freeDelivery,
  'quantityItems': instance.quantityItems,
  'deliveryType': instance.deliveryType,
  'wilaya': instance.wilaya,
  'commune': instance.commune,
  'officeId': instance.officeId,
  'canBeOpened': instance.canBeOpened,
  'observation': instance.observation,
  'returnedProduct': instance.returnedProduct,
  'weight': instance.weight,
};
