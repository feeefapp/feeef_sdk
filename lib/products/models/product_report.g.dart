// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductReport _$ProductReportFromJson(Map<String, dynamic> json) =>
    _ProductReport(
      today: DayMetrics.fromJson(json['today'] as Map<String, dynamic>),
      yesterday: DayMetrics.fromJson(json['yesterday'] as Map<String, dynamic>),
      week: WeekMetrics.fromJson(json['week'] as Map<String, dynamic>),
      month: MonthMetrics.fromJson(json['month'] as Map<String, dynamic>),
      totals: Totals.fromJson(json['totals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductReportToJson(_ProductReport instance) =>
    <String, dynamic>{
      'today': instance.today.toJson(),
      'yesterday': instance.yesterday.toJson(),
      'week': instance.week.toJson(),
      'month': instance.month.toJson(),
      'totals': instance.totals.toJson(),
    };

_DayMetrics _$DayMetricsFromJson(Map<String, dynamic> json) => _DayMetrics(
  sales: Map<String, int>.from(json['sales'] as Map),
  revenue: Map<String, int>.from(json['revenue'] as Map),
  profit: Map<String, int>.from(json['profit'] as Map),
  views: Map<String, int>.from(json['views'] as Map),
  states: (json['states'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, Map<String, int>.from(e as Map)),
  ),
);

Map<String, dynamic> _$DayMetricsToJson(_DayMetrics instance) =>
    <String, dynamic>{
      'sales': instance.sales,
      'revenue': instance.revenue,
      'profit': instance.profit,
      'views': instance.views,
      'states': instance.states,
    };

_WeekMetrics _$WeekMetricsFromJson(Map<String, dynamic> json) => _WeekMetrics(
  sales: Map<String, int>.from(json['sales'] as Map),
  revenue: Map<String, int>.from(json['revenue'] as Map),
  profit: Map<String, int>.from(json['profit'] as Map),
  views: Map<String, int>.from(json['views'] as Map),
  states: (json['states'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, Map<String, int>.from(e as Map)),
  ),
);

Map<String, dynamic> _$WeekMetricsToJson(_WeekMetrics instance) =>
    <String, dynamic>{
      'sales': instance.sales,
      'revenue': instance.revenue,
      'profit': instance.profit,
      'views': instance.views,
      'states': instance.states,
    };

_MonthMetrics _$MonthMetricsFromJson(Map<String, dynamic> json) =>
    _MonthMetrics(
      sales: Map<String, int>.from(json['sales'] as Map),
      revenue: Map<String, int>.from(json['revenue'] as Map),
      profit: Map<String, int>.from(json['profit'] as Map),
      views: Map<String, int>.from(json['views'] as Map),
      states: (json['states'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Map<String, int>.from(e as Map)),
      ),
    );

Map<String, dynamic> _$MonthMetricsToJson(_MonthMetrics instance) =>
    <String, dynamic>{
      'sales': instance.sales,
      'revenue': instance.revenue,
      'profit': instance.profit,
      'views': instance.views,
      'states': instance.states,
    };

_Totals _$TotalsFromJson(Map<String, dynamic> json) => _Totals(
  views: TimeFrameTotals.fromJson(json['views'] as Map<String, dynamic>),
  sales: TimeFrameTotals.fromJson(json['sales'] as Map<String, dynamic>),
  revenue: TimeFrameTotals.fromJson(json['revenue'] as Map<String, dynamic>),
  profit: TimeFrameTotals.fromJson(json['profit'] as Map<String, dynamic>),
  states: StateFrameTotals.fromJson(json['states'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TotalsToJson(_Totals instance) => <String, dynamic>{
  'views': instance.views.toJson(),
  'sales': instance.sales.toJson(),
  'revenue': instance.revenue.toJson(),
  'profit': instance.profit.toJson(),
  'states': instance.states.toJson(),
};

_TimeFrameTotals _$TimeFrameTotalsFromJson(Map<String, dynamic> json) =>
    _TimeFrameTotals(
      today: (json['today'] as num).toInt(),
      yesterday: (json['yesterday'] as num).toInt(),
      week: (json['week'] as num).toInt(),
      month: (json['month'] as num).toInt(),
    );

Map<String, dynamic> _$TimeFrameTotalsToJson(_TimeFrameTotals instance) =>
    <String, dynamic>{
      'today': instance.today,
      'yesterday': instance.yesterday,
      'week': instance.week,
      'month': instance.month,
    };

_StateFrameTotals _$StateFrameTotalsFromJson(Map<String, dynamic> json) =>
    _StateFrameTotals(
      today: Map<String, int>.from(json['today'] as Map),
      yesterday: Map<String, int>.from(json['yesterday'] as Map),
      week: Map<String, int>.from(json['week'] as Map),
      month: Map<String, int>.from(json['month'] as Map),
    );

Map<String, dynamic> _$StateFrameTotalsToJson(_StateFrameTotals instance) =>
    <String, dynamic>{
      'today': instance.today,
      'yesterday': instance.yesterday,
      'week': instance.week,
      'month': instance.month,
    };
