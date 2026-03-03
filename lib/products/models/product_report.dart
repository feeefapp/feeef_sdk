import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_report.freezed.dart';
part 'product_report.g.dart';

/// Represents the overall product report.
@freezed
abstract class ProductReport with _$ProductReport {
  const factory ProductReport({
    /// Hourly data for today with metrics for each hour.
    required DayMetrics today,

    /// Hourly data for yesterday with metrics for each hour.
    required DayMetrics yesterday,

    /// Weekly data with metrics for each day of the current week.
    required WeekMetrics week,

    /// Monthly data with metrics for each day of the current month.
    required MonthMetrics month,

    /// Aggregated totals for views, sales, revenue, and profit.
    required Totals totals,
  }) = _ProductReport;

  /// Creates a [ProductReport] instance from a JSON object.
  factory ProductReport.fromJson(Map<String, dynamic> json) =>
      _$ProductReportFromJson(json);
}

/// Represents metrics for a single day, broken down by hour.
@freezed
abstract class DayMetrics with _$DayMetrics {
  const factory DayMetrics({
    /// Sales data for each hour (00:00 to 23:00).
    required Map<String, int> sales,

    /// Revenue data for each hour (00:00 to 23:00).
    required Map<String, int> revenue,

    /// Profit data for each hour (00:00 to 23:00).
    required Map<String, int> profit,

    /// Views data for each hour (00:00 to 23:00).
    required Map<String, int> views,

    /// State distribution data for each hour (00:00 to 23:00).
    required Map<String, Map<String, int>> states,
  }) = _DayMetrics;

  /// Creates a [DayMetrics] instance from a JSON object.
  factory DayMetrics.fromJson(Map<String, dynamic> json) =>
      _$DayMetricsFromJson(json);
}

/// Represents metrics for a week, broken down by day.
@freezed
abstract class WeekMetrics with _$WeekMetrics {
  const factory WeekMetrics({
    /// Sales data for each day of the week (YYYY-MM-DD format).
    required Map<String, int> sales,

    /// Revenue data for each day of the week (YYYY-MM-DD format).
    required Map<String, int> revenue,

    /// Profit data for each day of the week (YYYY-MM-DD format).
    required Map<String, int> profit,

    /// Views data for each day of the week (YYYY-MM-DD format).
    required Map<String, int> views,

    /// State distribution data for each day of the week (YYYY-MM-DD format).
    required Map<String, Map<String, int>> states,
  }) = _WeekMetrics;

  /// Creates a [WeekMetrics] instance from a JSON object.
  factory WeekMetrics.fromJson(Map<String, dynamic> json) =>
      _$WeekMetricsFromJson(json);
}

/// Represents metrics for a month, broken down by day.
@freezed
abstract class MonthMetrics with _$MonthMetrics {
  const factory MonthMetrics({
    /// Sales data for each day of the month (YYYY-MM-DD format).
    required Map<String, int> sales,

    /// Revenue data for each day of the month (YYYY-MM-DD format).
    required Map<String, int> revenue,

    /// Profit data for each day of the month (YYYY-MM-DD format).
    required Map<String, int> profit,

    /// Views data for each day of the month (YYYY-MM-DD format).
    required Map<String, int> views,

    /// State distribution data for each day of the month (YYYY-MM-DD format).
    required Map<String, Map<String, int>> states,
  }) = _MonthMetrics;

  /// Creates a [MonthMetrics] instance from a JSON object.
  factory MonthMetrics.fromJson(Map<String, dynamic> json) =>
      _$MonthMetricsFromJson(json);
}

/// Represents the aggregated totals for different metrics and time frames.
@freezed
abstract class Totals with _$Totals {
  const factory Totals({
    /// Total views for different time frames.
    required TimeFrameTotals views,

    /// Total sales for different time frames.
    required TimeFrameTotals sales,

    /// Total revenue for different time frames.
    required TimeFrameTotals revenue,

    /// Total profit for different time frames.
    required TimeFrameTotals profit,

    /// State distribution totals for different time frames.
    required StateFrameTotals states,
  }) = _Totals;

  /// Creates a [Totals] instance from a JSON object.
  factory Totals.fromJson(Map<String, dynamic> json) => _$TotalsFromJson(json);
}

/// Represents total counts for a specific metric across different time frames.
@freezed
abstract class TimeFrameTotals with _$TimeFrameTotals {
  const factory TimeFrameTotals({
    /// Total count for today.
    required int today,

    /// Total count for yesterday.
    required int yesterday,

    /// Total count for the week.
    required int week,

    /// Total count for the month.
    required int month,
  }) = _TimeFrameTotals;

  /// Creates a [TimeFrameTotals] instance from a JSON object.
  factory TimeFrameTotals.fromJson(Map<String, dynamic> json) =>
      _$TimeFrameTotalsFromJson(json);
}

/// Represents state distribution totals across different time frames.
@freezed
abstract class StateFrameTotals with _$StateFrameTotals {
  const factory StateFrameTotals({
    /// State distribution for today.
    required Map<String, int> today,

    /// State distribution for yesterday.
    required Map<String, int> yesterday,

    /// State distribution for the week.
    required Map<String, int> week,

    /// State distribution for the month.
    required Map<String, int> month,
  }) = _StateFrameTotals;

  /// Creates a [StateFrameTotals] instance from a JSON object.
  factory StateFrameTotals.fromJson(Map<String, dynamic> json) =>
      _$StateFrameTotalsFromJson(json);
}
