import 'package:feeef/interfaces/embadded/store_summary.dart';
import 'package:feeef/interfaces/order.dart';

/// Operational all-time order status counts for the orders tab.
class StoreOrderStatusCounts {
  const StoreOrderStatusCounts({
    required this.counts,
    this.customCounts = const {},
    required this.total,
    required this.computedAt,
  });

  final StoreOrdersSummary counts;
  final Map<String, int> customCounts;
  final int total;
  final DateTime computedAt;

  factory StoreOrderStatusCounts.fromJson(Map<String, dynamic> json) {
    final countsJson = Map<String, dynamic>.from(json['counts'] as Map);
    final total = json['total'] as int? ?? 0;
    return StoreOrderStatusCounts(
      counts: StoreOrdersSummary(
        draft: countsJson['draft'] as int? ?? 0,
        pending: countsJson['pending'] as int? ?? 0,
        review: countsJson['review'] as int? ?? 0,
        processing: countsJson['processing'] as int? ?? 0,
        accepted: countsJson['accepted'] as int? ?? 0,
        completed: countsJson['completed'] as int? ?? 0,
        cancelled: countsJson['cancelled'] as int? ?? 0,
        total: total,
      ),
      customCounts: Map<String, int>.from(
        (json['customCounts'] as Map?)?.map(
              (key, value) => MapEntry(key.toString(), (value as num).toInt()),
            ) ??
            {},
      ),
      total: total,
      computedAt: DateTime.parse(json['computedAt'] as String),
    );
  }

  /// Count for a standard [OrderStatus] tab badge.
  int countFor(OrderStatus status) {
    return switch (status) {
      OrderStatus.draft => counts.draft,
      OrderStatus.pending => counts.pending,
      OrderStatus.review => counts.review,
      OrderStatus.accepted => counts.accepted,
      OrderStatus.processing => counts.processing,
      OrderStatus.completed => counts.completed,
      OrderStatus.cancelled => counts.cancelled,
    };
  }

  /// Returns a copy with adjusted status/custom counts (optimistic UI).
  StoreOrderStatusCounts applyDelta({
    OrderStatus? fromStatus,
    OrderStatus? toStatus,
    String? fromCustomStatus,
    String? toCustomStatus,
    int delta = 1,
  }) {
    var next = Map<String, int>.from(customCounts);
    var summary = counts;

    int adjust(OrderStatus status, int by) {
      return switch (status) {
        OrderStatus.draft => summary.draft + by,
        OrderStatus.pending => summary.pending + by,
        OrderStatus.review => summary.review + by,
        OrderStatus.accepted => summary.accepted + by,
        OrderStatus.processing => summary.processing + by,
        OrderStatus.completed => summary.completed + by,
        OrderStatus.cancelled => summary.cancelled + by,
      };
    }

    StoreOrdersSummary patch(OrderStatus status, int value) {
      return switch (status) {
        OrderStatus.draft => summary.copyWith(draft: value),
        OrderStatus.pending => summary.copyWith(pending: value),
        OrderStatus.review => summary.copyWith(review: value),
        OrderStatus.accepted => summary.copyWith(accepted: value),
        OrderStatus.processing => summary.copyWith(processing: value),
        OrderStatus.completed => summary.copyWith(completed: value),
        OrderStatus.cancelled => summary.copyWith(cancelled: value),
      };
    }

    var totalDelta = 0;

    if (fromStatus != null) {
      summary = patch(fromStatus, adjust(fromStatus, -delta));
      totalDelta -= delta;
    }
    if (toStatus != null) {
      summary = patch(toStatus, adjust(toStatus, delta));
      totalDelta += delta;
    }

    if (fromCustomStatus != null && fromCustomStatus.isNotEmpty) {
      final current = next[fromCustomStatus] ?? 0;
      final updated = current - delta;
      if (updated <= 0) {
        next.remove(fromCustomStatus);
      } else {
        next[fromCustomStatus] = updated;
      }
    }
    if (toCustomStatus != null && toCustomStatus.isNotEmpty) {
      next[toCustomStatus] = (next[toCustomStatus] ?? 0) + delta;
    }

    return StoreOrderStatusCounts(
      counts: summary.copyWith(total: summary.total + totalDelta),
      customCounts: next,
      total: total + totalDelta,
      computedAt: computedAt,
    );
  }
}
