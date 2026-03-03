import 'package:freezed_annotation/freezed_annotation.dart';

part 'satim_create_order_response.freezed.dart';
part 'satim_create_order_response.g.dart';

@freezed
abstract class SatimCreateOrderResponse with _$SatimCreateOrderResponse {
  const factory SatimCreateOrderResponse({
    required bool success,
    required Map<String, dynamic> deposit,
    required SatimOrderData satim,
  }) = _SatimCreateOrderResponse;

  factory SatimCreateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$SatimCreateOrderResponseFromJson(json);
}

@freezed
abstract class SatimOrderData with _$SatimOrderData {
  const factory SatimOrderData({
    required String orderId,
    required String formUrl,
    required String errorCode,
    String? errorMessage,
  }) = _SatimOrderData;

  factory SatimOrderData.fromJson(Map<String, dynamic> json) =>
      _$SatimOrderDataFromJson(json);
}
