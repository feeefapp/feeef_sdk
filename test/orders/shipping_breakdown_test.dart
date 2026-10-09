import 'package:feeef/orders/models/order.dart';
import 'package:feeef/orders/order_repository.dart';
import 'package:test/test.dart';

Map<String, dynamic> _order([Map<String, dynamic> extra = const {}]) => {
  'id': 'o1',
  'createdAt': '2026-10-09T00:00:00.000Z',
  'updatedAt': '2026-10-09T00:00:00.000Z',
  'storeId': 's1',
  'items': <Object>[],
  'subtotal': 1000,
  'total': 1600,
  'calculatedTotal': 1600,
  'status': 'pending',
  ...extra,
};

void main() {
  group('shippingBreakdownFromJson', () {
    test('parses the backend shape', () {
      expect(
        shippingBreakdownFromJson([
          {
            'carrierAccountId': 'ca_a',
            'items': ['p1', 'p3'],
            'fee': 600,
          },
          {
            'carrierAccountId': null,
            'items': ['p2'],
            'fee': null,
          },
        ]),
        const [
          ShippingBreakdownEntry(
            carrierAccountId: 'ca_a',
            items: ['p1', 'p3'],
            fee: 600,
          ),
          ShippingBreakdownEntry(items: ['p2']),
        ],
      );
    });

    test('is lenient: JSON string, numeric strings, junk entries', () {
      final parsed = shippingBreakdownFromJson(
        '[{"carrierAccountId":" ca_a ","items":["p1",3],"fee":"450"},7]',
      )!;
      expect(parsed, hasLength(1));
      expect(parsed.single.carrierAccountId, 'ca_a');
      expect(parsed.single.items, ['p1']);
      expect(parsed.single.fee, 450);
    });

    test('absent or invalid is null', () {
      expect(shippingBreakdownFromJson(null), isNull);
      expect(shippingBreakdownFromJson({'a': 1}), isNull);
      expect(shippingBreakdownFromJson('not json'), isNull);
    });
  });

  group('OrderPricing.fromCalculateResponse', () {
    test('reads shipping.breakdown', () {
      final pricing = OrderPricing.fromCalculateResponse({
        'pricing': {
          'subtotal': 1000,
          'shippingPrice': 1050,
          'calculatedTotal': 2050,
        },
        'shipping': {
          'price': 1050,
          'breakdown': [
            {
              'carrierAccountId': 'ca_a',
              'items': ['p1'],
              'fee': 600,
            },
            {
              'carrierAccountId': 'ca_b',
              'items': ['p2'],
              'fee': 450,
            },
          ],
        },
      });
      expect(pricing.shippingPrice, 1050);
      expect(pricing.shippingBreakdown!.map((e) => e.fee), [600, 450]);
    });

    test('older API without shipping/breakdown', () {
      final pricing = OrderPricing.fromCalculateResponse({
        'pricing': {'subtotal': 1, 'shippingPrice': null, 'calculatedTotal': 1},
      });
      expect(pricing.shippingBreakdown, isNull);
      expect(
        OrderPricing.fromCalculateResponse({
          'pricing': {'subtotal': 1, 'calculatedTotal': 1},
          'shipping': {'breakdown': null},
        }).shippingBreakdown,
        isNull,
      );
    });
  });

  group('Order.shippingBreakdown', () {
    test('parses, round-trips, and is null on older orders', () {
      expect(Order.fromJson(_order()).shippingBreakdown, isNull);
      final order = Order.fromJson(
        _order({
          'shippingBreakdown': [
            {
              'carrierAccountId': 'ca_a',
              'items': ['p1'],
              'fee': 600,
            },
          ],
        }),
      );
      expect(order.shippingBreakdown!.single.carrierAccountId, 'ca_a');
      expect(
        Order.fromJson(order.toJson()).shippingBreakdown,
        order.shippingBreakdown,
      );
    });
  });
}
