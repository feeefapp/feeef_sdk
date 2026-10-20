import 'package:feeef/interfaces/embadded/store_order_status_counts.dart';
import 'package:feeef/interfaces/embadded/store_summary.dart';
import 'package:test/test.dart';

void main() {
  group('StoreOrderStatusCounts', () {
    test('fromJson reads phase counts and per-status counts', () {
      final counts = StoreOrderStatusCounts.fromJson({
        'counts': {
          'draft': 1,
          'open': 2,
          'pack': 3,
          'ship': 4,
          'done': 5,
          'fail': 6,
        },
        'byStatus': {'sts_a': 2, 'sts_b': 3},
        'total': 21,
        'computedAt': '2026-08-14T00:00:00.000Z',
      });

      expect(counts.total, 21);
      expect(counts.counts.total, 21);
      expect(counts.counts.open, 2);
      expect(counts.byStatus, {'sts_a': 2, 'sts_b': 3});
      expect(counts.computedAt, DateTime.utc(2026, 8, 14));
      expect(counts.countForPhase('draft'), 1);
      expect(counts.countForPhase('pack'), 3);
      expect(counts.countForPhase('fail'), 6);
      expect(counts.countForPhase('unknown'), 0);
    });

    test('fromJson defaults missing phases and byStatus to 0 / empty', () {
      final counts = StoreOrderStatusCounts.fromJson({
        'counts': {'open': 2},
        'total': 2,
      });

      expect(counts.counts.done, 0);
      expect(counts.countForPhase('ship'), 0);
      expect(counts.byStatus, isEmpty);
    });

    test('StoreOrdersSummary phases default to 0', () {
      final summary = StoreOrdersSummary(total: 1, open: 1);
      expect(summary.draft, 0);
      expect(summary.pack, 0);
      expect(summary.ship, 0);
      expect(summary.done, 0);
      expect(summary.fail, 0);
    });
  });
}
