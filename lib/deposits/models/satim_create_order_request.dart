import 'package:freezed_annotation/freezed_annotation.dart';

part 'satim_create_order_request.freezed.dart';
part 'satim_create_order_request.g.dart';

@freezed
abstract class SatimCreateOrderRequest with _$SatimCreateOrderRequest {
  const factory SatimCreateOrderRequest({
    required num amount,
    @Default('DZD') String currency,
    String? depositId,
    @Default('AR') String language,
    String? description,
  }) = _SatimCreateOrderRequest;

  factory SatimCreateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$SatimCreateOrderRequestFromJson(json);
}
