import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_summary.freezed.dart';
part 'store_summary.g.dart';

@freezed
abstract class StoreSummary with _$StoreSummary {
  factory StoreSummary({required StoreOrdersSummary orders}) = _StoreSummary;

  factory StoreSummary.fromJson(Map<String, dynamic> json) =>
      _$StoreSummaryFromJson(json);
}

@freezed
abstract class StoreOrdersSummary with _$StoreOrdersSummary {
  factory StoreOrdersSummary({
    required int total,
    required int draft,
    required int pending,
    required int review,
    required int processing,
    required int accepted,
    required int completed,
    required int cancelled,
  }) = _StoreOrdersSummary;

  factory StoreOrdersSummary.fromJson(Map<String, dynamic> json) =>
      _$StoreOrdersSummaryFromJson(json);
}
