// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'satim_create_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SatimCreateOrderRequest _$SatimCreateOrderRequestFromJson(
  Map<String, dynamic> json,
) => _SatimCreateOrderRequest(
  amount: json['amount'] as num,
  currency: json['currency'] as String? ?? 'DZD',
  depositId: json['depositId'] as String?,
  language: json['language'] as String? ?? 'AR',
  description: json['description'] as String?,
);

Map<String, dynamic> _$SatimCreateOrderRequestToJson(
  _SatimCreateOrderRequest instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'currency': instance.currency,
  'depositId': instance.depositId,
  'language': instance.language,
  'description': instance.description,
};
