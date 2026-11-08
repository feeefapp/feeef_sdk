// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'satim_create_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SatimCreateOrderResponse _$SatimCreateOrderResponseFromJson(
  Map<String, dynamic> json,
) => _SatimCreateOrderResponse(
  success: json['success'] as bool,
  deposit: json['deposit'] as Map<String, dynamic>,
  satim: SatimOrderData.fromJson(json['satim'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SatimCreateOrderResponseToJson(
  _SatimCreateOrderResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'deposit': instance.deposit,
  'satim': instance.satim.toJson(),
};

_SatimOrderData _$SatimOrderDataFromJson(Map<String, dynamic> json) =>
    _SatimOrderData(
      orderId: json['orderId'] as String,
      formUrl: json['formUrl'] as String,
      errorCode: json['errorCode'] as String,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$SatimOrderDataToJson(_SatimOrderData instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'formUrl': instance.formUrl,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
