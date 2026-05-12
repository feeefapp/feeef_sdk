import 'package:freezed_annotation/freezed_annotation.dart';

part 'parcel_send_api_models.freezed.dart';
part 'parcel_send_api_models.g.dart';

/// Customer block for Feeef store parcel send API bodies (`POST .../integrations/.../send`).
@freezed
abstract class ParcelSendCustomer with _$ParcelSendCustomer {
  const ParcelSendCustomer._();
  const factory ParcelSendCustomer({
    String? customerId,
    required String name,
    required ParcelSendPhone phone,
  }) = _ParcelSendCustomer;

  factory ParcelSendCustomer.fromJson(Map<String, dynamic> json) =>
      _$ParcelSendCustomerFromJson(json);
}

/// Phone block for parcel send API bodies.
@freezed
abstract class ParcelSendPhone with _$ParcelSendPhone {
  const ParcelSendPhone._();
  const factory ParcelSendPhone({
    required String number1,
    String? number2,
  }) = _ParcelSendPhone;

  factory ParcelSendPhone.fromJson(Map<String, dynamic> json) =>
      _$ParcelSendPhoneFromJson(json);
}

/// Delivery address for parcel send API bodies.
@freezed
abstract class ParcelSendDeliveryAddress with _$ParcelSendDeliveryAddress {
  const ParcelSendDeliveryAddress._();
  const factory ParcelSendDeliveryAddress({
    required String street,
    required String city,
    required String district,
    required String postalCode,
    @Default('algeria') String country,
    /// Territory id for the city (from Feeef geo metadata; meaning depends on carrier).
    String? cityTerritoryId,
    /// Optional territory id for the district.
    String? districtTerritoryId,
  }) = _ParcelSendDeliveryAddress;

  factory ParcelSendDeliveryAddress.fromJson(Map<String, dynamic> json) =>
      _$ParcelSendDeliveryAddressFromJson(json);
}

/// Line item in parcel send API bodies.
@freezed
abstract class ParcelSendOrderedProduct with _$ParcelSendOrderedProduct {
  const ParcelSendOrderedProduct._();
  const factory ParcelSendOrderedProduct({
    required String productName,
    required int quantity,
    required double unitPrice,
    @Default('none') String stockType,
    String? productSku,
  }) = _ParcelSendOrderedProduct;

  factory ParcelSendOrderedProduct.fromJson(Map<String, dynamic> json) =>
      _$ParcelSendOrderedProductFromJson(json);
}

/// Home vs pickup desk for parcel send API bodies.
enum ParcelSendDeliveryType {
  @JsonValue('home')
  home,
  @JsonValue('pickup-point')
  pickupPoint,
}

/// Parcel send body validated by Feeef for store carrier send routes.
@freezed
abstract class ParcelSendRequest with _$ParcelSendRequest {
  const ParcelSendRequest._();
  const factory ParcelSendRequest({
    String? externalId,
    required ParcelSendCustomer customer,
    required ParcelSendDeliveryAddress deliveryAddress,
    required List<ParcelSendOrderedProduct> orderedProducts,
    required double amount,
    required ParcelSendDeliveryType deliveryType,
    String? hubId,
    String? description,
    String? stateCode,
    String? cityCode,
  }) = _ParcelSendRequest;

  factory ParcelSendRequest.fromJson(Map<String, dynamic> json) =>
      _$ParcelSendRequestFromJson(json);
}
