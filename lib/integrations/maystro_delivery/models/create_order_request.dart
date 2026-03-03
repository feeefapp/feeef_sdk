import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request.freezed.dart';
part 'create_order_request.g.dart';

/// Maystro Delivery customer information.
@freezed
abstract class MaystroCustomer with _$MaystroCustomer {
  const MaystroCustomer._();
  const factory MaystroCustomer({
    required String name,
    required String phone,
  }) = _MaystroCustomer;

  factory MaystroCustomer.fromJson(Map<String, dynamic> json) =>
      _$MaystroCustomerFromJson(json);
}

/// Maystro Delivery address (wilaya = district/state, commune = city; uses communeId/wilayaId).
@freezed
abstract class MaystroDeliveryAddress with _$MaystroDeliveryAddress {
  const MaystroDeliveryAddress._();
  const factory MaystroDeliveryAddress({
    required String street,
    @Default('') String city,
    @Default('') String district,
    @Default('') String postalCode,
    @Default('algeria') String country,
    String? communeId,
    String? wilayaId,
  }) = _MaystroDeliveryAddress;

  factory MaystroDeliveryAddress.fromJson(Map<String, dynamic> json) =>
      _$MaystroDeliveryAddressFromJson(json);
}

/// Maystro ordered product.
@freezed
abstract class MaystroOrderedProduct with _$MaystroOrderedProduct {
  const MaystroOrderedProduct._();
  const factory MaystroOrderedProduct({
    required String productName,
    required int quantity,
    required double unitPrice,
    String? productSku,
  }) = _MaystroOrderedProduct;

  factory MaystroOrderedProduct.fromJson(Map<String, dynamic> json) =>
      _$MaystroOrderedProductFromJson(json);
}

/// Maystro create order request (mirrors backend/ZR shape).
@freezed
abstract class MaystroCreateOrderRequest with _$MaystroCreateOrderRequest {
  const MaystroCreateOrderRequest._();
  const factory MaystroCreateOrderRequest({
    String? externalId,
    required MaystroCustomer customer,
    required MaystroDeliveryAddress deliveryAddress,
    required List<MaystroOrderedProduct> orderedProducts,
    required double amount,
    String? description,
    String? stateCode,
    String? cityCode,
  }) = _MaystroCreateOrderRequest;

  factory MaystroCreateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$MaystroCreateOrderRequestFromJson(json);
}

/// Maystro create order response.
@freezed
abstract class MaystroCreateOrderResponse with _$MaystroCreateOrderResponse {
  const MaystroCreateOrderResponse._();
  const factory MaystroCreateOrderResponse({
    required String orderId,
    String? trackingNumber,
    String? externalId,
    @Default(true) bool success,
  }) = _MaystroCreateOrderResponse;

  factory MaystroCreateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$MaystroCreateOrderResponseFromJson(json);
}

/// Maystro individual label file (for labels/individual).
@freezed
abstract class MaystroIndividualLabel with _$MaystroIndividualLabel {
  const MaystroIndividualLabel._();
  const factory MaystroIndividualLabel({
    String? trackingNumber,
    required String fileUrl,
  }) = _MaystroIndividualLabel;

  factory MaystroIndividualLabel.fromJson(Map<String, dynamic> json) =>
      _$MaystroIndividualLabelFromJson(json);
}

/// Maystro individual labels response.
@freezed
abstract class MaystroIndividualLabelsResponse
    with _$MaystroIndividualLabelsResponse {
  const MaystroIndividualLabelsResponse._();
  const factory MaystroIndividualLabelsResponse({
    @Default([]) List<MaystroIndividualLabel> parcelLabelFiles,
    @Default([]) List<String> failedTrackingNumbers,
  }) = _MaystroIndividualLabelsResponse;

  factory MaystroIndividualLabelsResponse.fromJson(Map<String, dynamic> json) =>
      _$MaystroIndividualLabelsResponseFromJson(json);
}
