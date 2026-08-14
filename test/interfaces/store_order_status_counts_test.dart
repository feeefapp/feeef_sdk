import 'package:feeef/interfaces/embadded/store_order_status_counts.dart';
import 'package:feeef/interfaces/embadded/store_summary.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:test/test.dart';

void main() {
  group('StoreOrderStatusCounts', () {
    test('fromJson defaults followup to 0 when the API omits it', () {
      final counts = StoreOrderStatusCounts.fromJson({
        'counts': {
          'draft': 1,
          'pending': 2,
          'review': 3,
          'accepted': 4,
          'processing': 5,
          'completed': 6,
          'cancelled': 7,
        },
        'total': 28,
        'computedAt': '2026-08-14T00:00:00.000Z',
      });

      expect(counts.counts.followup, 0);
      expect(counts.countFor(OrderStatus.followup), 0);
      expect(counts.countFor(OrderStatus.accepted), 4);
    });

    test('fromJson reads followup and applyDelta moves counts onto it', () {
      final counts = StoreOrderStatusCounts.fromJson({
        'counts': {
          'draft': 0,
          'pending': 0,
          'review': 0,
          'accepted': 2,
          'followup': 1,
          'processing': 0,
          'completed': 0,
          'cancelled': 0,
        },
        'total': 3,
        'computedAt': '2026-08-14T00:00:00.000Z',
      });

      expect(counts.countFor(OrderStatus.followup), 1);

      final next = counts.applyDelta(
        fromStatus: OrderStatus.accepted,
        toStatus: OrderStatus.followup,
      );
      expect(next.counts.accepted, 1);
      expect(next.counts.followup, 2);
      expect(next.total, 3);
    });

    test('StoreOrdersSummary.followup defaults to 0', () {
      final summary = StoreOrdersSummary(
        total: 1,
        draft: 0,
        pending: 0,
        review: 0,
        processing: 0,
        accepted: 1,
        completed: 0,
        cancelled: 0,
      );
      expect(summary.followup, 0);
    });
  });
}
