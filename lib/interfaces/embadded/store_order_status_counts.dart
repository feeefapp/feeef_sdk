import 'package:feeef/interfaces/embadded/store_summary.dart';

/// All-time order counts for a store: by rooms phase and by catalog status.
class StoreOrderStatusCounts {
  const StoreOrderStatusCounts({
    required this.counts,
    this.byStatus = const {},
    required this.total,
    required this.computedAt,
  });

  /// Counts by phase (draft / open / pack / ship / done / fail).
  final StoreOrdersSummary counts;

  /// Counts keyed by status catalog row id.
  final Map<String, int> byStatus;
  final int total;
  final DateTime computedAt;

  factory StoreOrderStatusCounts.fromJson(Map<String, dynamic> json) {
    final countsJson = Map<String, dynamic>.from((json['counts'] as Map?) ?? const {});
    final total = (json['total'] as num?)?.toInt() ?? 0;
    int n(String key) => (countsJson[key] as num?)?.toInt() ?? 0;
    return StoreOrderStatusCounts(
      counts: StoreOrdersSummary(
        total: total,
        draft: n('draft'),
        open: n('open'),
        pack: n('pack'),
        ship: n('ship'),
        done: n('done'),
        fail: n('fail'),
      ),
      byStatus: Map<String, int>.from(
        (json['byStatus'] as Map?)?.map(
              (key, value) => MapEntry(key.toString(), (value as num).toInt()),
            ) ??
            const {},
      ),
      total: total,
      computedAt: DateTime.tryParse(json['computedAt'] as String? ?? '') ?? DateTime.now(),
    );
  }

  /// Count for a phase name (`open`, `done`, …).
  int countForPhase(String phase) => switch (phase) {
        'draft' => counts.draft,
        'open' => counts.open,
        'pack' => counts.pack,
        'ship' => counts.ship,
        'done' => counts.done,
        'fail' => counts.fail,
        _ => 0,
      };
}
