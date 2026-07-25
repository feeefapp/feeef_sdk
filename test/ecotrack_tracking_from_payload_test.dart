import 'package:feeef/integrations/ecotrack/service.dart';
import 'package:test/test.dart';

void main() {
  group('EcotrackDeliveryService.trackingFromPayload', () {
    test('reads tracking string', () {
      expect(
        EcotrackDeliveryService.trackingFromPayload({
          'success': true,
          'tracking': ' EC123 ',
        }),
        'EC123',
      );
    });

    test('reads code_suivi when tracking missing', () {
      expect(
        EcotrackDeliveryService.trackingFromPayload({
          'success': true,
          'code_suivi': 'MOB456',
        }),
        'MOB456',
      );
    });

    test('reads numeric code_suivi', () {
      expect(
        EcotrackDeliveryService.trackingFromPayload({'code_suivi': 789}),
        '789',
      );
    });

    test('prefers tracking over code_suivi', () {
      expect(
        EcotrackDeliveryService.trackingFromPayload({
          'tracking': 'A',
          'code_suivi': 'B',
        }),
        'A',
      );
    });

    test('returns null on explicit success false even with tracking', () {
      expect(
        EcotrackDeliveryService.trackingFromPayload({
          'success': false,
          'tracking': 'EC1',
          'message': 'fail',
        }),
        isNull,
      );
    });

    test('returns null when empty / missing', () {
      expect(EcotrackDeliveryService.trackingFromPayload({'success': true}), isNull);
      expect(EcotrackDeliveryService.trackingFromPayload({'tracking': '  '}), isNull);
      expect(EcotrackDeliveryService.trackingFromPayload(null), isNull);
      expect(EcotrackDeliveryService.trackingFromPayload('x'), isNull);
    });

    test('normalizeTrackingPayload copies code_suivi into tracking', () {
      final normalized = EcotrackDeliveryService.normalizeTrackingPayload({
        'success': true,
        'code_suivi': 'MOB1',
        'message': 'ok',
      });
      expect(normalized['tracking'], 'MOB1');
      expect(normalized['code_suivi'], 'MOB1');
      expect(normalized['success'], isTrue);
    });
  });
}

