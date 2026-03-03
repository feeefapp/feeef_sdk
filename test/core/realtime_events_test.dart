import 'package:feeef/core/realtime_events.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RealtimeCrudEvents', () {
    test('has expected values', () {
      expect(RealtimeCrudEvents.values, contains(RealtimeCrudEvents.created));
      expect(RealtimeCrudEvents.values, contains(RealtimeCrudEvents.updated));
      expect(RealtimeCrudEvents.values, contains(RealtimeCrudEvents.deleted));
    });
  });

  group('RealtimeCrudEvent', () {
    test('fromJson parses event and data', () {
      final e = RealtimeCrudEvent.fromJson({
        'event': 'created',
        'data': {'id': 'x'},
      });
      expect(e.event, RealtimeCrudEvents.created);
      expect(e.data, {'id': 'x'});
    });

    test('toJson returns event name and data', () {
      final e = RealtimeCrudEvent(event: RealtimeCrudEvents.updated, data: 42);
      final j = e.toJson();
      expect(j['event'], 'updated');
      expect(j['data'], 42);
    });
  });
}
