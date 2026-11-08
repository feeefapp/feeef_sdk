// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreSummary _$StoreSummaryFromJson(Map<String, dynamic> json) =>
    _StoreSummary(
      orders: StoreOrdersSummary.fromJson(
        json['orders'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$StoreSummaryToJson(_StoreSummary instance) =>
    <String, dynamic>{'orders': instance.orders.toJson()};

_StoreOrdersSummary _$StoreOrdersSummaryFromJson(Map<String, dynamic> json) =>
    _StoreOrdersSummary(
      total: (json['total'] as num?)?.toInt() ?? 0,
      draft: (json['draft'] as num?)?.toInt() ?? 0,
      open: (json['open'] as num?)?.toInt() ?? 0,
      pack: (json['pack'] as num?)?.toInt() ?? 0,
      ship: (json['ship'] as num?)?.toInt() ?? 0,
      done: (json['done'] as num?)?.toInt() ?? 0,
      fail: (json['fail'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$StoreOrdersSummaryToJson(_StoreOrdersSummary instance) =>
    <String, dynamic>{
      'total': instance.total,
      'draft': instance.draft,
      'open': instance.open,
      'pack': instance.pack,
      'ship': instance.ship,
      'done': instance.done,
      'fail': instance.fail,
    };
