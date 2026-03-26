import 'package:feeef/integrations/zrexpress/bulk_created_attach_payload.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:feeef/orders/models/order.dart';
import 'package:test/test.dart';

void main() {
  group('zrexpressBulkCreatedRowToAttachPayload', () {
    late DateTime now;
    late Order order;

    setUp(() {
      now = DateTime.utc(2025, 1, 1);
      order = Order(
        id: 'order-abc',
        createdAt: now,
        updatedAt: now,
        items: const [],
        subtotal: 0,
        total: 0,
        calculatedTotal: 0,
        storeId: 'store-1',
        status: OrderStatus.pending,
      );
    });

    test('maps canonical Feeef bulk created row (tracking + provider.parcelId)',
        () {
      final row = <String, dynamic>{
        'reference': 'order-abc',
        'success': true,
        'tracking': 'TRK-9',
        'provider': <String, dynamic>{
          'parcelId': 'parcel-1',
          'raw': 'x',
        },
      };

      final payload = zrexpressBulkCreatedRowToAttachPayload(row, order);

      expect(payload, isNotNull);
      expect(payload!['parcelId'], 'parcel-1');
      expect(payload['trackingNumber'], 'TRK-9');
      expect(payload['externalId'], 'order-abc');
    });

    test('falls back to provider.id when parcelId missing', () {
      final row = <String, dynamic>{
        'reference': 'order-abc',
        'provider': <String, dynamic>{'id': 'id-as-parcel'},
      };

      final payload = zrexpressBulkCreatedRowToAttachPayload(row, order);

      expect(payload, isNotNull);
      expect(payload!['parcelId'], 'id-as-parcel');
    });

    test('accepts legacy flat parcelId and trackingNumber', () {
      final row = <String, dynamic>{
        'externalId': 'order-abc',
        'parcelId': 'p-flat',
        'trackingNumber': 'T-flat',
      };

      final payload = zrexpressBulkCreatedRowToAttachPayload(row, order);

      expect(payload, isNotNull);
      expect(payload!['parcelId'], 'p-flat');
      expect(payload['trackingNumber'], 'T-flat');
      expect(payload['externalId'], 'order-abc');
    });

    test('returns null when parcel id cannot be resolved', () {
      final row = <String, dynamic>{
        'reference': 'order-abc',
        'tracking': 'only-tracking',
      };

      expect(zrexpressBulkCreatedRowToAttachPayload(row, order), isNull);
    });
  });
}
