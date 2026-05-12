// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_parcel_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
  'successes': instance.successes,
  'failures': instance.failures,
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
  'parcelLabelFiles': instance.parcelLabelFiles,
  'failedTrackingNumbers': instance.failedTrackingNumbers,
};
