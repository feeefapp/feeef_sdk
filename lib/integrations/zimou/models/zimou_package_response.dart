import 'package:freezed_annotation/freezed_annotation.dart';

part 'zimou_package_response.freezed.dart';
part 'zimou_package_response.g.dart';

/// Zimou Package Response Model
@freezed
abstract class ZimouPackageResponse with _$ZimouPackageResponse {
  const factory ZimouPackageResponse({
    required int id,
    required String trackingCode,
    required String? orderId,
    String? printUrl,
    String? statusName,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ZimouPackageResponse;

  factory ZimouPackageResponse.fromJson(Map<String, dynamic> json) =>
      _$ZimouPackageResponseFromJson(json);
}

/// Zimou Statistics Response Model
@freezed
abstract class ZimouStatisticsResponse with _$ZimouStatisticsResponse {
  const factory ZimouStatisticsResponse({
    required int packagesAdded,
    required int packagesDispatched,
    required double netPaid,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ZimouStatisticsResponse;

  factory ZimouStatisticsResponse.fromJson(Map<String, dynamic> json) =>
      _$ZimouStatisticsResponseFromJson(json);
}
