// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confermer_permissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConfermerPermissions _$ConfermerPermissionsFromJson(
  Map<String, dynamic> json,
) => _ConfermerPermissions(
  canSeeAllOrders: json['canSeeAllOrders'] as bool? ?? false,
  canAssignOrder: json['canAssignOrder'] as bool? ?? false,
  canReAssignOrder: json['canReAssignOrder'] as bool? ?? false,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ConfermerPermissionsToJson(
  _ConfermerPermissions instance,
) => <String, dynamic>{
  'canSeeAllOrders': instance.canSeeAllOrders,
  'canAssignOrder': instance.canAssignOrder,
  'canReAssignOrder': instance.canReAssignOrder,
  'metadata': instance.metadata,
};
