import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_summary.freezed.dart';
part 'store_summary.g.dart';

@freezed
abstract class StoreSummary with _$StoreSummary {
  factory StoreSummary({required StoreOrdersSummary orders}) = _StoreSummary;

  factory StoreSummary.fromJson(Map<String, dynamic> json) =>
      _$StoreSummaryFromJson(json);
}

/// Order counts by rooms phase (see backend `orders_v1/order_phase.ts`).
@freezed
abstract class StoreOrdersSummary with _$StoreOrdersSummary {
  factory StoreOrdersSummary({
    @Default(0) int total,
    @Default(0) int draft,
    @Default(0) int open,
    @Default(0) int pack,
    @Default(0) int ship,
    @Default(0) int done,
    @Default(0) int fail,
  }) = _StoreOrdersSummary;

  factory StoreOrdersSummary.fromJson(Map<String, dynamic> json) =>
      _$StoreOrdersSummaryFromJson(json);
}
