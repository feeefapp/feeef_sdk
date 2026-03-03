// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_YalidineOrderCreateRequest _$YalidineOrderCreateRequestFromJson(
  Map<String, dynamic> json,
) => _YalidineOrderCreateRequest(
  orderId: json['order_id'] as String,
  fromWilayaName: json['from_wilaya_name'] as String,
  firstName: json['firstname'] as String,
  familyName: json['familyname'] as String,
  contactPhone: json['contact_phone'] as String,
  address: json['address'] as String,
  toCommuneName: json['to_commune_name'] as String,
  toWilayaName: json['to_wilaya_name'] as String,
  productList: json['product_list'] as String,
  price: (json['price'] as num).toInt(),
  doInsurance: json['do_insurance'] as bool,
  declaredValue: (json['declared_value'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  width: (json['width'] as num).toInt(),
  length: (json['length'] as num).toInt(),
  weight: (json['weight'] as num).toInt(),
  freeShipping: json['freeshipping'] as bool,
  isStopDesk: json['is_stopdesk'] as bool,
  stopDeskId: json['stopdesk_id'] as String?,
  hasExchange: json['has_exchange'] as bool,
  productToCollect: json['product_to_collect'] as String?,
  stateCode: json['state_code'] as String?,
  cityCode: json['city_code'] as String?,
);

Map<String, dynamic> _$YalidineOrderCreateRequestToJson(
  _YalidineOrderCreateRequest instance,
) => <String, dynamic>{
  'order_id': instance.orderId,
  'from_wilaya_name': instance.fromWilayaName,
  'firstname': instance.firstName,
  'familyname': instance.familyName,
  'contact_phone': instance.contactPhone,
  'address': instance.address,
  'to_commune_name': instance.toCommuneName,
  'to_wilaya_name': instance.toWilayaName,
  'product_list': instance.productList,
  'price': instance.price,
  'do_insurance': instance.doInsurance,
  'declared_value': instance.declaredValue,
  'height': instance.height,
  'width': instance.width,
  'length': instance.length,
  'weight': instance.weight,
  'freeshipping': instance.freeShipping,
  'is_stopdesk': instance.isStopDesk,
  'stopdesk_id': instance.stopDeskId,
  'has_exchange': instance.hasExchange,
  'product_to_collect': instance.productToCollect,
  'state_code': instance.stateCode,
  'city_code': instance.cityCode,
};
