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
      total: (json['total'] as num).toInt(),
      draft: (json['draft'] as num).toInt(),
      pending: (json['pending'] as num).toInt(),
      review: (json['review'] as num).toInt(),
      processing: (json['processing'] as num).toInt(),
      accepted: (json['accepted'] as num).toInt(),
      completed: (json['completed'] as num).toInt(),
      cancelled: (json['cancelled'] as num).toInt(),
    );

Map<String, dynamic> _$StoreOrdersSummaryToJson(_StoreOrdersSummary instance) =>
    <String, dynamic>{
      'total': instance.total,
      'draft': instance.draft,
      'pending': instance.pending,
      'review': instance.review,
      'processing': instance.processing,
      'accepted': instance.accepted,
      'completed': instance.completed,
      'cancelled': instance.cancelled,
    };
