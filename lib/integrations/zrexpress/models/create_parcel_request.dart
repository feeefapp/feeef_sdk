import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_parcel_request.freezed.dart';
part 'create_parcel_request.g.dart';

/// ZR Express customer information
@freezed
abstract class ZrexpressCustomer with _$ZrexpressCustomer {
  const ZrexpressCustomer._();
  const factory ZrexpressCustomer({
    /// Optional unique identifier for the customer
    String? customerId,

    /// Customer's full name
    required String name,

    /// Customer phone numbers
    required ZrexpressPhone phone,
  }) = _ZrexpressCustomer;

  factory ZrexpressCustomer.fromJson(Map<String, dynamic> json) =>
      _$ZrexpressCustomerFromJson(json);
}

/// ZR Express phone numbers
@freezed
abstract class ZrexpressPhone with _$ZrexpressPhone {
  const ZrexpressPhone._();
  const factory ZrexpressPhone({
    /// Primary phone number (format: +213XXXXXXXXX)
    required String number1,

    /// Secondary phone number (optional)
    String? number2,
  }) = _ZrexpressPhone;

  factory ZrexpressPhone.fromJson(Map<String, dynamic> json) =>
      _$ZrexpressPhoneFromJson(json);
}

/// ZR Express delivery address
@freezed
abstract class ZrexpressDeliveryAddress with _$ZrexpressDeliveryAddress {
  const ZrexpressDeliveryAddress._();
  const factory ZrexpressDeliveryAddress({
    /// Street address
    required String street,

    /// City/Wilaya name
    required String city,

    /// District/Commune name
    required String district,

    /// Postal code (e.g., 05000)
    required String postalCode,

    /// Country code (default: algeria)
    @Default('algeria') String country,

    /// ZR Express territory ID for the city (fetched from city metadata)
    String? cityTerritoryId,

    /// ZR Express territory ID for the district (fetched from city metadata)
    String? districtTerritoryId,
  }) = _ZrexpressDeliveryAddress;

  factory ZrexpressDeliveryAddress.fromJson(Map<String, dynamic> json) =>
      _$ZrexpressDeliveryAddressFromJson(json);
}

/// ZR Express ordered product
@freezed
abstract class ZrexpressOrderedProduct with _$ZrexpressOrderedProduct {
  const ZrexpressOrderedProduct._();
  const factory ZrexpressOrderedProduct({
    /// Name of the product
    required String productName,

    /// Quantity ordered
    required int quantity,

    /// Price per unit in DZD
    required double unitPrice,

    /// Stock type (use 'none' for external stock)
    @Default('none') String stockType,

    /// Stock Keeping Unit - unique internal code for inventory tracking
    String? productSku,
  }) = _ZrexpressOrderedProduct;

  factory ZrexpressOrderedProduct.fromJson(Map<String, dynamic> json) =>
      _$ZrexpressOrderedProductFromJson(json);
}

/// ZR Express delivery type
enum ZrexpressDeliveryType {
  /// Home delivery - parcel delivered directly to customer's address
  @JsonValue('home')
  home,

  /// Pickup point - customer picks up from a designated hub
  @JsonValue('pickup-point')
  pickupPoint,
}

/// ZR Express parcel creation request
@freezed
abstract class ZrexpressParcelCreateRequest
    with _$ZrexpressParcelCreateRequest {
  const ZrexpressParcelCreateRequest._();
  const factory ZrexpressParcelCreateRequest({
    /// External reference ID (order ID)
    String? externalId,

    /// Customer information
    required ZrexpressCustomer customer,

    /// Delivery address
    required ZrexpressDeliveryAddress deliveryAddress,

    /// List of ordered products
    required List<ZrexpressOrderedProduct> orderedProducts,

    /// Total amount (COD) in DZD
    required double amount,

    /// Delivery type: home or pickup-point
    required ZrexpressDeliveryType deliveryType,

    /// Hub ID for pickup-point delivery (required for pickup-point)
    String? hubId,

    /// Description/notes (e.g., Fragile)
    String? description,

    /// State code for territory lookup (internal use)
    String? stateCode,

    /// City code for territory lookup (internal use)
    String? cityCode,
  }) = _ZrexpressParcelCreateRequest;

  factory ZrexpressParcelCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ZrexpressParcelCreateRequestFromJson(json);
}

/// ZR Express parcel creation response
@freezed
abstract class ZrexpressParcelCreateResponse
    with _$ZrexpressParcelCreateResponse {
  const ZrexpressParcelCreateResponse._();
  const factory ZrexpressParcelCreateResponse({
    /// UUID of the created parcel
    required String parcelId,

    /// Tracking number (e.g., 05-ATOV3BR-ZR) - only available in bulk response
    String? trackingNumber,

    /// External reference ID
    String? externalId,

    /// Whether creation was successful
    @Default(true) bool success,
  }) = _ZrexpressParcelCreateResponse;

  factory ZrexpressParcelCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$ZrexpressParcelCreateResponseFromJson(json);
}

/// ZR Express bulk creation response
@freezed
abstract class ZrexpressBulkResponse with _$ZrexpressBulkResponse {
  const ZrexpressBulkResponse._();
  const factory ZrexpressBulkResponse({
    /// Total number of parcels requested
    required int totalRequested,

    /// Number of successfully created parcels
    required int successCount,

    /// Number of failed parcel creations
    required int failureCount,

    /// List of successfully created parcels
    @Default([]) List<ZrexpressBulkSuccess> successes,

    /// List of failed parcel creations
    @Default([]) List<ZrexpressBulkFailure> failures,
  }) = _ZrexpressBulkResponse;

  factory ZrexpressBulkResponse.fromJson(Map<String, dynamic> json) =>
      _$ZrexpressBulkResponseFromJson(json);
}

/// ZR Express bulk success item
@freezed
abstract class ZrexpressBulkSuccess with _$ZrexpressBulkSuccess {
  const ZrexpressBulkSuccess._();
  const factory ZrexpressBulkSuccess({
    /// Index of the parcel in the request array
    int? index,

    /// UUID of the created parcel
    required String parcelId,

    /// Tracking number (e.g., 05-ATOV3BR-ZR)
    required String trackingNumber,

    /// External reference ID
    String? externalId,
  }) = _ZrexpressBulkSuccess;

  factory ZrexpressBulkSuccess.fromJson(Map<String, dynamic> json) =>
      _$ZrexpressBulkSuccessFromJson(json);
}

/// ZR Express bulk failure item
@freezed
abstract class ZrexpressBulkFailure with _$ZrexpressBulkFailure {
  const ZrexpressBulkFailure._();
  const factory ZrexpressBulkFailure({
    /// Index of the parcel in the request array
    int? index,

    /// External reference ID
    String? externalId,

    /// Error message
    String? error,

    /// Additional error details
    Map<String, dynamic>? details,
  }) = _ZrexpressBulkFailure;

  factory ZrexpressBulkFailure.fromJson(Map<String, dynamic> json) =>
      _$ZrexpressBulkFailureFromJson(json);
}

/// ZR Express label format
enum ZrexpressLabelFormat {
  @JsonValue('A6')
  a6,
  @JsonValue('A5')
  a5,
  @JsonValue('A4')
  a4,
}

/// ZR Express labels response (merged PDF)
@freezed
abstract class ZrexpressLabelsResponse with _$ZrexpressLabelsResponse {
  const ZrexpressLabelsResponse._();
  const factory ZrexpressLabelsResponse({
    /// URL to download the merged PDF
    required String fileUrl,

    /// Tracking numbers that failed to generate labels
    @Default([]) List<String> failedTrackingNumbers,
  }) = _ZrexpressLabelsResponse;

  factory ZrexpressLabelsResponse.fromJson(Map<String, dynamic> json) =>
      _$ZrexpressLabelsResponseFromJson(json);
}

/// ZR Express individual label file
@freezed
abstract class ZrexpressIndividualLabel with _$ZrexpressIndividualLabel {
  const ZrexpressIndividualLabel._();
  const factory ZrexpressIndividualLabel({
    /// Tracking number
    required String trackingNumber,

    /// URL to download the individual PDF
    required String fileUrl,
  }) = _ZrexpressIndividualLabel;

  factory ZrexpressIndividualLabel.fromJson(Map<String, dynamic> json) =>
      _$ZrexpressIndividualLabelFromJson(json);
}

/// ZR Express individual labels response
@freezed
abstract class ZrexpressIndividualLabelsResponse
    with _$ZrexpressIndividualLabelsResponse {
  const ZrexpressIndividualLabelsResponse._();
  const factory ZrexpressIndividualLabelsResponse({
    /// List of individual label files
    @Default([]) List<ZrexpressIndividualLabel> parcelLabelFiles,

    /// Tracking numbers that failed to generate labels
    @Default([]) List<String> failedTrackingNumbers,
  }) = _ZrexpressIndividualLabelsResponse;

  factory ZrexpressIndividualLabelsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ZrexpressIndividualLabelsResponseFromJson(json);
}
