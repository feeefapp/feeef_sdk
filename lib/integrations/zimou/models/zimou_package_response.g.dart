// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zimou_package_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ZimouPackageResponse _$ZimouPackageResponseFromJson(
  Map<String, dynamic> json,
) => _ZimouPackageResponse(
  id: (json['id'] as num).toInt(),
  trackingCode: json['trackingCode'] as String,
  orderId: json['orderId'] as String?,
  printUrl: json['printUrl'] as String?,
  statusName: json['statusName'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ZimouPackageResponseToJson(
  _ZimouPackageResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'trackingCode': instance.trackingCode,
  'orderId': instance.orderId,
  'printUrl': instance.printUrl,
  'statusName': instance.statusName,
  'metadata': instance.metadata,
};

_ZimouStatisticsResponse _$ZimouStatisticsResponseFromJson(
  Map<String, dynamic> json,
) => _ZimouStatisticsResponse(
  packagesAdded: (json['packagesAdded'] as num).toInt(),
  packagesDispatched: (json['packagesDispatched'] as num).toInt(),
  netPaid: (json['netPaid'] as num).toDouble(),
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ZimouStatisticsResponseToJson(
  _ZimouStatisticsResponse instance,
) => <String, dynamic>{
  'packagesAdded': instance.packagesAdded,
  'packagesDispatched': instance.packagesDispatched,
  'netPaid': instance.netPaid,
  'metadata': instance.metadata,
};
