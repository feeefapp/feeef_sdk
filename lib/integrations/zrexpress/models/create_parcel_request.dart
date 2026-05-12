import 'package:feeef/integrations/delivery/parcel_send_api_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:feeef/integrations/delivery/parcel_send_api_models.dart'
    show
      ParcelSendCustomer,
      ParcelSendDeliveryAddress,
      ParcelSendDeliveryType,
      ParcelSendOrderedProduct,
      ParcelSendPhone,
      ParcelSendRequest;

part 'create_parcel_request.freezed.dart';
part 'create_parcel_request.g.dart';

/// Legacy type aliases for ZR Express callers; identical JSON to [ParcelSendRequest].
typedef ZrexpressCustomer = ParcelSendCustomer;
typedef ZrexpressPhone = ParcelSendPhone;
typedef ZrexpressDeliveryAddress = ParcelSendDeliveryAddress;
typedef ZrexpressOrderedProduct = ParcelSendOrderedProduct;
typedef ZrexpressDeliveryType = ParcelSendDeliveryType;
typedef ZrexpressParcelCreateRequest = ParcelSendRequest;

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
