import 'package:feeef/metrics/metrics_repository.dart';
import 'package:test/test.dart';

void main() {
  test('StoreOverview parses the backend shape, absent sections stay absent', () {
    final o = StoreOverview.fromJson({
      'access': {'userId': 'u1', 'orders': 'self', 'money': false, 'team': false},
      'range': {
        'from': '2026-10-26',
        'to': '2026-11-01',
        'compare': 'previous',
        'previous': {'from': '2026-10-19', 'to': '2026-10-25'},
      },
      'now': {
        'byStatus': [
          {'phase': 'open', 'statusId': 's1', 'count': 3},
          {'phase': 'open', 'statusId': null, 'count': 2},
          {'phase': 'ship', 'statusId': 's9', 'count': 4},
        ],
        'waitingCall': {'count': 5, 'oldestAt': '2026-11-01T08:00:00.000Z'},
        'stuck': 1,
      },
      'kpis': {'confirmed': 4, 'confirmation_rate': null},
      'kpisPrevious': null,
      'series': [
        {'key': '2026-10-26', 'values': {'cohort_placed': 2}},
      ],
      'seriesPrevious': null,
      'lists': {},
      'team': null,
    });
    expect(o.access.self, isTrue);
    expect(o.range.previousFrom, '2026-10-19');
    expect(o.now.phaseCount('open'), 5);
    expect(o.now.waitingCall, 5);
    expect(o.kpis['confirmed'], 4);
    expect(o.kpis.containsKey('delivered_sales'), isFalse);
    expect(o.kpis['confirmation_rate'], isNull);
    expect(o.kpisPrevious, isNull);
    expect(o.series.single['cohort_placed'], 2);
    expect(o.team, isNull);
  });
}
