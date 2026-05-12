// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel_send_api_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParcelSendCustomer _$ParcelSendCustomerFromJson(Map<String, dynamic> json) =>
    _ParcelSendCustomer(
      customerId: json['customerId'] as String?,
      name: json['name'] as String,
      phone: ParcelSendPhone.fromJson(json['phone'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParcelSendCustomerToJson(_ParcelSendCustomer instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'name': instance.name,
      'phone': instance.phone,
    };

_ParcelSendPhone _$ParcelSendPhoneFromJson(Map<String, dynamic> json) =>
    _ParcelSendPhone(
      number1: json['number1'] as String,
      number2: json['number2'] as String?,
    );

Map<String, dynamic> _$ParcelSendPhoneToJson(_ParcelSendPhone instance) =>
    <String, dynamic>{'number1': instance.number1, 'number2': instance.number2};

_ParcelSendDeliveryAddress _$ParcelSendDeliveryAddressFromJson(
  Map<String, dynamic> json,
) => _ParcelSendDeliveryAddress(
  street: json['street'] as String,
  city: json['city'] as String,
  district: json['district'] as String,
  postalCode: json['postalCode'] as String,
  country: json['country'] as String? ?? 'algeria',
  cityTerritoryId: json['cityTerritoryId'] as String?,
  districtTerritoryId: json['districtTerritoryId'] as String?,
);

Map<String, dynamic> _$ParcelSendDeliveryAddressToJson(
  _ParcelSendDeliveryAddress instance,
) => <String, dynamic>{
  'street': instance.street,
  'city': instance.city,
  'district': instance.district,
  'postalCode': instance.postalCode,
  'country': instance.country,
  'cityTerritoryId': instance.cityTerritoryId,
  'districtTerritoryId': instance.districtTerritoryId,
};

_ParcelSendOrderedProduct _$ParcelSendOrderedProductFromJson(
  Map<String, dynamic> json,
) => _ParcelSendOrderedProduct(
  productName: json['productName'] as String,
  quantity: (json['quantity'] as num).toInt(),
  unitPrice: (json['unitPrice'] as num).toDouble(),
  stockType: json['stockType'] as String? ?? 'none',
  productSku: json['productSku'] as String?,
);

Map<String, dynamic> _$ParcelSendOrderedProductToJson(
  _ParcelSendOrderedProduct instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'quantity': instance.quantity,
  'unitPrice': instance.unitPrice,
  'stockType': instance.stockType,
  'productSku': instance.productSku,
};

_ParcelSendRequest _$ParcelSendRequestFromJson(Map<String, dynamic> json) =>
    _ParcelSendRequest(
      externalId: json['externalId'] as String?,
      customer: ParcelSendCustomer.fromJson(
        json['customer'] as Map<String, dynamic>,
      ),
      deliveryAddress: ParcelSendDeliveryAddress.fromJson(
        json['deliveryAddress'] as Map<String, dynamic>,
      ),
      orderedProducts: (json['orderedProducts'] as List<dynamic>)
          .map(
            (e) => ParcelSendOrderedProduct.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      amount: (json['amount'] as num).toDouble(),
      deliveryType: $enumDecode(
        _$ParcelSendDeliveryTypeEnumMap,
        json['deliveryType'],
      ),
      hubId: json['hubId'] as String?,
      description: json['description'] as String?,
      stateCode: json['stateCode'] as String?,
      cityCode: json['cityCode'] as String?,
    );

Map<String, dynamic> _$ParcelSendRequestToJson(_ParcelSendRequest instance) =>
    <String, dynamic>{
      'externalId': instance.externalId,
      'customer': instance.customer,
      'deliveryAddress': instance.deliveryAddress,
      'orderedProducts': instance.orderedProducts,
      'amount': instance.amount,
      'deliveryType': _$ParcelSendDeliveryTypeEnumMap[instance.deliveryType]!,
      'hubId': instance.hubId,
      'description': instance.description,
      'stateCode': instance.stateCode,
      'cityCode': instance.cityCode,
    };

const _$ParcelSendDeliveryTypeEnumMap = {
  ParcelSendDeliveryType.home: 'home',
  ParcelSendDeliveryType.pickupPoint: 'pickup-point',
};
