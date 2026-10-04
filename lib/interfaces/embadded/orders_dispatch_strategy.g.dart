// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_dispatch_strategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersDispatchStrategyFirstUpdate _$OrdersDispatchStrategyFirstUpdateFromJson(
  Map<String, dynamic> json,
) => OrdersDispatchStrategyFirstUpdate($type: json['type'] as String?);

Map<String, dynamic> _$OrdersDispatchStrategyFirstUpdateToJson(
  OrdersDispatchStrategyFirstUpdate instance,
) => <String, dynamic>{'type': instance.$type};

OrdersDispatchStrategyRandom _$OrdersDispatchStrategyRandomFromJson(
  Map<String, dynamic> json,
) => OrdersDispatchStrategyRandom($type: json['type'] as String?);

Map<String, dynamic> _$OrdersDispatchStrategyRandomToJson(
  OrdersDispatchStrategyRandom instance,
) => <String, dynamic>{'type': instance.$type};

OrdersDispatchStrategyWeightedRandom
_$OrdersDispatchStrategyWeightedRandomFromJson(Map<String, dynamic> json) =>
    OrdersDispatchStrategyWeightedRandom(
      weights:
          (json['weights'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$OrdersDispatchStrategyWeightedRandomToJson(
  OrdersDispatchStrategyWeightedRandom instance,
) => <String, dynamic>{'weights': instance.weights, 'type': instance.$type};

OrdersDispatchStrategyRoundRobin _$OrdersDispatchStrategyRoundRobinFromJson(
  Map<String, dynamic> json,
) => OrdersDispatchStrategyRoundRobin(
  lastAssignedConfirmerId: json['lastAssignedConfirmerId'] as String?,
  sortBy: json['sortBy'] as String? ?? 'name',
  $type: json['type'] as String?,
);

Map<String, dynamic> _$OrdersDispatchStrategyRoundRobinToJson(
  OrdersDispatchStrategyRoundRobin instance,
) => <String, dynamic>{
  'lastAssignedConfirmerId': instance.lastAssignedConfirmerId,
  'sortBy': instance.sortBy,
  'type': instance.$type,
};

OrdersDispatchStrategyManualOnly _$OrdersDispatchStrategyManualOnlyFromJson(
  Map<String, dynamic> json,
) => OrdersDispatchStrategyManualOnly($type: json['type'] as String?);

Map<String, dynamic> _$OrdersDispatchStrategyManualOnlyToJson(
  OrdersDispatchStrategyManualOnly instance,
) => <String, dynamic>{'type': instance.$type};

OrdersDispatchStrategyPriority _$OrdersDispatchStrategyPriorityFromJson(
  Map<String, dynamic> json,
) => OrdersDispatchStrategyPriority(
  confirmerIds: (json['confirmerIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$OrdersDispatchStrategyPriorityToJson(
  OrdersDispatchStrategyPriority instance,
) => <String, dynamic>{
  'confirmerIds': instance.confirmerIds,
  'type': instance.$type,
};
