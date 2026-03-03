// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_parcel_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ZrexpressCustomer _$ZrexpressCustomerFromJson(Map<String, dynamic> json) =>
    _ZrexpressCustomer(
      customerId: json['customerId'] as String?,
      name: json['name'] as String,
      phone: ZrexpressPhone.fromJson(json['phone'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ZrexpressCustomerToJson(_ZrexpressCustomer instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'name': instance.name,
      'phone': instance.phone.toJson(),
    };

_ZrexpressPhone _$ZrexpressPhoneFromJson(Map<String, dynamic> json) =>
    _ZrexpressPhone(
      number1: json['number1'] as String,
      number2: json['number2'] as String?,
    );

Map<String, dynamic> _$ZrexpressPhoneToJson(_ZrexpressPhone instance) =>
    <String, dynamic>{'number1': instance.number1, 'number2': instance.number2};

_ZrexpressDeliveryAddress _$ZrexpressDeliveryAddressFromJson(
  Map<String, dynamic> json,
) => _ZrexpressDeliveryAddress(
  street: json['street'] as String,
  city: json['city'] as String,
  district: json['district'] as String,
  postalCode: json['postalCode'] as String,
  country: json['country'] as String? ?? 'algeria',
  cityTerritoryId: json['cityTerritoryId'] as String?,
  districtTerritoryId: json['districtTerritoryId'] as String?,
);

Map<String, dynamic> _$ZrexpressDeliveryAddressToJson(
  _ZrexpressDeliveryAddress instance,
) => <String, dynamic>{
  'street': instance.street,
  'city': instance.city,
  'district': instance.district,
  'postalCode': instance.postalCode,
  'country': instance.country,
  'cityTerritoryId': instance.cityTerritoryId,
  'districtTerritoryId': instance.districtTerritoryId,
};

_ZrexpressOrderedProduct _$ZrexpressOrderedProductFromJson(
  Map<String, dynamic> json,
) => _ZrexpressOrderedProduct(
  productName: json['productName'] as String,
  quantity: (json['quantity'] as num).toInt(),
  unitPrice: (json['unitPrice'] as num).toDouble(),
  stockType: json['stockType'] as String? ?? 'none',
  productSku: json['productSku'] as String?,
);

Map<String, dynamic> _$ZrexpressOrderedProductToJson(
  _ZrexpressOrderedProduct instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'quantity': instance.quantity,
  'unitPrice': instance.unitPrice,
  'stockType': instance.stockType,
  'productSku': instance.productSku,
};

_ZrexpressParcelCreateRequest _$ZrexpressParcelCreateRequestFromJson(
  Map<String, dynamic> json,
) => _ZrexpressParcelCreateRequest(
  externalId: json['externalId'] as String?,
  customer: ZrexpressCustomer.fromJson(
    json['customer'] as Map<String, dynamic>,
  ),
  deliveryAddress: ZrexpressDeliveryAddress.fromJson(
    json['deliveryAddress'] as Map<String, dynamic>,
  ),
  orderedProducts: (json['orderedProducts'] as List<dynamic>)
      .map((e) => ZrexpressOrderedProduct.fromJson(e as Map<String, dynamic>))
      .toList(),
  amount: (json['amount'] as num).toDouble(),
  deliveryType: $enumDecode(
    _$ZrexpressDeliveryTypeEnumMap,
    json['deliveryType'],
  ),
  hubId: json['hubId'] as String?,
  description: json['description'] as String?,
  stateCode: json['stateCode'] as String?,
  cityCode: json['cityCode'] as String?,
);

Map<String, dynamic> _$ZrexpressParcelCreateRequestToJson(
  _ZrexpressParcelCreateRequest instance,
) => <String, dynamic>{
  'externalId': instance.externalId,
  'customer': instance.customer.toJson(),
  'deliveryAddress': instance.deliveryAddress.toJson(),
  'orderedProducts': instance.orderedProducts.map((e) => e.toJson()).toList(),
  'amount': instance.amount,
  'deliveryType': _$ZrexpressDeliveryTypeEnumMap[instance.deliveryType]!,
  'hubId': instance.hubId,
  'description': instance.description,
  'stateCode': instance.stateCode,
  'cityCode': instance.cityCode,
};

const _$ZrexpressDeliveryTypeEnumMap = {
  ZrexpressDeliveryType.home: 'home',
  ZrexpressDeliveryType.pickupPoint: 'pickup-point',
};

_ZrexpressParcelCreateResponse _$ZrexpressParcelCreateResponseFromJson(
  Map<String, dynamic> json,
) => _ZrexpressParcelCreateResponse(
  parcelId: json['parcelId'] as String,
  trackingNumber: json['trackingNumber'] as String?,
  externalId: json['externalId'] as String?,
  success: json['success'] as bool? ?? true,
);

Map<String, dynamic> _$ZrexpressParcelCreateResponseToJson(
  _ZrexpressParcelCreateResponse instance,
) => <String, dynamic>{
  'parcelId': instance.parcelId,
  'trackingNumber': instance.trackingNumber,
  'externalId': instance.externalId,
  'success': instance.success,
};

_ZrexpressBulkResponse _$ZrexpressBulkResponseFromJson(
  Map<String, dynamic> json,
) => _ZrexpressBulkResponse(
  totalRequested: (json['totalRequested'] as num).toInt(),
  successCount: (json['successCount'] as num).toInt(),
  failureCount: (json['failureCount'] as num).toInt(),
  successes:
      (json['successes'] as List<dynamic>?)
          ?.map((e) => ZrexpressBulkSuccess.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  failures:
      (json['failures'] as List<dynamic>?)
          ?.map((e) => ZrexpressBulkFailure.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ZrexpressBulkResponseToJson(
  _ZrexpressBulkResponse instance,
) => <String, dynamic>{
  'totalRequested': instance.totalRequested,
  'successCount': instance.successCount,
  'failureCount': instance.failureCount,
  'successes': instance.successes.map((e) => e.toJson()).toList(),
  'failures': instance.failures.map((e) => e.toJson()).toList(),
};

_ZrexpressBulkSuccess _$ZrexpressBulkSuccessFromJson(
  Map<String, dynamic> json,
) => _ZrexpressBulkSuccess(
  index: (json['index'] as num?)?.toInt(),
  parcelId: json['parcelId'] as String,
  trackingNumber: json['trackingNumber'] as String,
  externalId: json['externalId'] as String?,
);

Map<String, dynamic> _$ZrexpressBulkSuccessToJson(
  _ZrexpressBulkSuccess instance,
) => <String, dynamic>{
  'index': instance.index,
  'parcelId': instance.parcelId,
  'trackingNumber': instance.trackingNumber,
  'externalId': instance.externalId,
};

_ZrexpressBulkFailure _$ZrexpressBulkFailureFromJson(
  Map<String, dynamic> json,
) => _ZrexpressBulkFailure(
  index: (json['index'] as num?)?.toInt(),
  externalId: json['externalId'] as String?,
  error: json['error'] as String?,
  details: json['details'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ZrexpressBulkFailureToJson(
  _ZrexpressBulkFailure instance,
) => <String, dynamic>{
  'index': instance.index,
  'externalId': instance.externalId,
  'error': instance.error,
  'details': instance.details,
};

_ZrexpressLabelsResponse _$ZrexpressLabelsResponseFromJson(
  Map<String, dynamic> json,
) => _ZrexpressLabelsResponse(
  fileUrl: json['fileUrl'] as String,
  failedTrackingNumbers:
      (json['failedTrackingNumbers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$ZrexpressLabelsResponseToJson(
  _ZrexpressLabelsResponse instance,
) => <String, dynamic>{
  'fileUrl': instance.fileUrl,
  'failedTrackingNumbers': instance.failedTrackingNumbers,
};

_ZrexpressIndividualLabel _$ZrexpressIndividualLabelFromJson(
  Map<String, dynamic> json,
) => _ZrexpressIndividualLabel(
  trackingNumber: json['trackingNumber'] as String,
  fileUrl: json['fileUrl'] as String,
);

Map<String, dynamic> _$ZrexpressIndividualLabelToJson(
  _ZrexpressIndividualLabel instance,
) => <String, dynamic>{
  'trackingNumber': instance.trackingNumber,
  'fileUrl': instance.fileUrl,
};

_ZrexpressIndividualLabelsResponse _$ZrexpressIndividualLabelsResponseFromJson(
  Map<String, dynamic> json,
) => _ZrexpressIndividualLabelsResponse(
  parcelLabelFiles:
      (json['parcelLabelFiles'] as List<dynamic>?)
          ?.map(
            (e) => ZrexpressIndividualLabel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  failedTrackingNumbers:
      (json['failedTrackingNumbers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$ZrexpressIndividualLabelsResponseToJson(
  _ZrexpressIndividualLabelsResponse instance,
) => <String, dynamic>{
  'parcelLabelFiles': instance.parcelLabelFiles.map((e) => e.toJson()).toList(),
  'failedTrackingNumbers': instance.failedTrackingNumbers,
};
