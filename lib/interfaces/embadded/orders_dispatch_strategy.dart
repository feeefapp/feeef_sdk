/// Orders dispatch strategy for assigning orders to confirmers.
///
/// Each variant carries its own configuration. Used by the OrdersDispatcher
/// integration to determine how new orders are assigned when they arrive.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_dispatch_strategy.freezed.dart';
part 'orders_dispatch_strategy.g.dart';

/// Dispatch strategy for assigning orders to confirmers.
/// Each variant has its own parameters.
/// Uses unionKey: 'type' (freezed default convention) for JSON discrimination.
@Freezed(unionKey: 'type')
sealed class OrdersDispatchStrategy with _$OrdersDispatchStrategy {
  /// First confirmer to update the order claims it (current default behavior).
  const factory OrdersDispatchStrategy.firstUpdate() =
      OrdersDispatchStrategyFirstUpdate;

  /// Randomly assign to one of the confirmers.
  const factory OrdersDispatchStrategy.random() = OrdersDispatchStrategyRandom;

  /// Weighted random: each confirmer has a weight (0-100).
  /// Uses [weights] map or falls back to member metadata.dispatchWeight.
  const factory OrdersDispatchStrategy.weightedRandom({
    @Default({}) Map<String, int> weights,
  }) = OrdersDispatchStrategyWeightedRandom;

  /// Round-robin: assign to next confirmer in order.
  /// [sortBy]: 'name' or 'userId' for ordering.
  const factory OrdersDispatchStrategy.roundRobin({
    String? lastAssignedConfirmerId,
    @Default('name') String sortBy,
  }) = OrdersDispatchStrategyRoundRobin;

  /// Only manual assignment (owner/editor assigns explicitly).
  const factory OrdersDispatchStrategy.manualOnly() =
      OrdersDispatchStrategyManualOnly;

  /// Priority order: first available confirmer in list gets the order.
  const factory OrdersDispatchStrategy.priority({
    required List<String> confirmerIds,
  }) = OrdersDispatchStrategyPriority;

  factory OrdersDispatchStrategy.fromJson(Map<String, dynamic> json) =>
      _$OrdersDispatchStrategyFromJson(json);
}
