import 'package:dio/dio.dart';
import 'package:feeef/integrations/ecotrack/service.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:feeef/orders/models/order.dart';
import 'package:test/test.dart';

Order _order({required String phone}) {
  final now = DateTime.utc(2026, 1, 1);
  return Order(
    id: 'ord_$phone',
    createdAt: now,
    updatedAt: now,
    items: const [],
    subtotal: 0,
    total: 0,
    calculatedTotal: 0,
    storeId: 'store_1',
    status: OrderStatus.pending,
    customerPhone: phone,
    metadata: const {},
  );
}

void main() {
  late EcotrackDeliveryService service;

  setUp(() {
    service = EcotrackDeliveryService(
      client: Dio(),
      integration: const EcotrackDeliveryIntegration(
        token: 'test',
        baseUrl: 'https://example.com',
      ),
      storeId: 'store_1',
    );
  });

  group('scoreForOrder / withScoringMetadata', () {
    test('matches exact phone and writes banner metadata', () {
      final order = _order(phone: '0555123456');
      final scoring = {
        '0555123456': const EcotrackPhoneScore(level: 'high'),
      };

      final scored = service.withScoringMetadata(order, scoring);
      expect(scored.metadata['ecotrackScoringLevel'], 'high');
      expect(scored.metadata['riskOfReturnScoreInEcotrack'], 0.85);
      expect(scored.metadata['totalPreviousOrdersInEcotrack'], 1);
    });

    test('matches Algeria local vs international last-9 digits', () {
      final order = _order(phone: '0555123456');
      final scoring = {
        '213555123456': const EcotrackPhoneScore(level: 'low'),
      };

      expect(service.scoreForOrder(order, scoring)?.level, 'low');
    });

    test('does not reuse unrelated score in multi-entry maps', () {
      final order = _order(phone: '0555000000');
      final scoring = {
        '0555111111': const EcotrackPhoneScore(level: 'high'),
        '0555222222': const EcotrackPhoneScore(level: 'low'),
      };

      expect(service.scoreForOrder(order, scoring), isNull);
      expect(
        service.withScoringMetadata(order, scoring).metadata['ecotrackScoringLevel'],
        isNull,
      );
    });
  });
}
