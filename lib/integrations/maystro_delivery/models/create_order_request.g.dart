// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MaystroCustomer _$MaystroCustomerFromJson(Map<String, dynamic> json) =>
    _MaystroCustomer(
      name: json['name'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$MaystroCustomerToJson(_MaystroCustomer instance) =>
    <String, dynamic>{'name': instance.name, 'phone': instance.phone};

_MaystroDeliveryAddress _$MaystroDeliveryAddressFromJson(
  Map<String, dynamic> json,
) => _MaystroDeliveryAddress(
  street: json['street'] as String,
  city: json['city'] as String? ?? '',
  district: json['district'] as String? ?? '',
  postalCode: json['postalCode'] as String? ?? '',
  country: json['country'] as String? ?? 'algeria',
  communeId: json['communeId'] as String?,
  wilayaId: json['wilayaId'] as String?,
);

Map<String, dynamic> _$MaystroDeliveryAddressToJson(
  _MaystroDeliveryAddress instance,
) => <String, dynamic>{
  'street': instance.street,
  'city': instance.city,
  'district': instance.district,
  'postalCode': instance.postalCode,
  'country': instance.country,
  'communeId': instance.communeId,
  'wilayaId': instance.wilayaId,
};

_MaystroOrderedProduct _$MaystroOrderedProductFromJson(
  Map<String, dynamic> json,
) => _MaystroOrderedProduct(
  productName: json['productName'] as String,
  quantity: (json['quantity'] as num).toInt(),
  unitPrice: (json['unitPrice'] as num).toDouble(),
  productSku: json['productSku'] as String?,
);

Map<String, dynamic> _$MaystroOrderedProductToJson(
  _MaystroOrderedProduct instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'quantity': instance.quantity,
  'unitPrice': instance.unitPrice,
  'productSku': instance.productSku,
};

_MaystroCreateOrderRequest _$MaystroCreateOrderRequestFromJson(
  Map<String, dynamic> json,
) => _MaystroCreateOrderRequest(
  externalId: json['externalId'] as String?,
  customer: MaystroCustomer.fromJson(json['customer'] as Map<String, dynamic>),
  deliveryAddress: MaystroDeliveryAddress.fromJson(
    json['deliveryAddress'] as Map<String, dynamic>,
  ),
  orderedProducts: (json['orderedProducts'] as List<dynamic>)
      .map((e) => MaystroOrderedProduct.fromJson(e as Map<String, dynamic>))
      .toList(),
  amount: (json['amount'] as num).toDouble(),
  description: json['description'] as String?,
  stateCode: json['stateCode'] as String?,
  cityCode: json['cityCode'] as String?,
);

Map<String, dynamic> _$MaystroCreateOrderRequestToJson(
  _MaystroCreateOrderRequest instance,
) => <String, dynamic>{
  'externalId': instance.externalId,
  'customer': instance.customer.toJson(),
  'deliveryAddress': instance.deliveryAddress.toJson(),
  'orderedProducts': instance.orderedProducts.map((e) => e.toJson()).toList(),
  'amount': instance.amount,
  'description': instance.description,
  'stateCode': instance.stateCode,
  'cityCode': instance.cityCode,
};

_MaystroCreateOrderResponse _$MaystroCreateOrderResponseFromJson(
  Map<String, dynamic> json,
) => _MaystroCreateOrderResponse(
  orderId: json['orderId'] as String,
  trackingNumber: json['trackingNumber'] as String?,
  externalId: json['externalId'] as String?,
  success: json['success'] as bool? ?? true,
);

Map<String, dynamic> _$MaystroCreateOrderResponseToJson(
  _MaystroCreateOrderResponse instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'trackingNumber': instance.trackingNumber,
  'externalId': instance.externalId,
  'success': instance.success,
};

_MaystroIndividualLabel _$MaystroIndividualLabelFromJson(
  Map<String, dynamic> json,
) => _MaystroIndividualLabel(
  trackingNumber: json['trackingNumber'] as String?,
  fileUrl: json['fileUrl'] as String,
);

Map<String, dynamic> _$MaystroIndividualLabelToJson(
  _MaystroIndividualLabel instance,
) => <String, dynamic>{
  'trackingNumber': instance.trackingNumber,
  'fileUrl': instance.fileUrl,
};

_MaystroIndividualLabelsResponse _$MaystroIndividualLabelsResponseFromJson(
  Map<String, dynamic> json,
) => _MaystroIndividualLabelsResponse(
  parcelLabelFiles:
      (json['parcelLabelFiles'] as List<dynamic>?)
          ?.map(
            (e) => MaystroIndividualLabel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  failedTrackingNumbers:
      (json['failedTrackingNumbers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$MaystroIndividualLabelsResponseToJson(
  _MaystroIndividualLabelsResponse instance,
) => <String, dynamic>{
  'parcelLabelFiles': instance.parcelLabelFiles.map((e) => e.toJson()).toList(),
  'failedTrackingNumbers': instance.failedTrackingNumbers,
};
