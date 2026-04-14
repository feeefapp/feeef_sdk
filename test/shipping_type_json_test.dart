import 'package:feeef/interfaces/order.dart';
import 'package:feeef/orders/models/order.dart';
import 'package:test/test.dart';

void main() {
  group('shippingTypeFromJson', () {
    test('canonical API strings', () {
      expect(shippingTypeFromJson('home'), ShippingType.home);
      expect(shippingTypeFromJson('pickup'), ShippingType.pickup);
      expect(shippingTypeFromJson('store'), ShippingType.store);
    });

    test('legacy aliases for stopdesk / relay', () {
      expect(shippingTypeFromJson('desk'), ShippingType.pickup);
      expect(shippingTypeFromJson('DESK'), ShippingType.pickup);
      expect(shippingTypeFromJson('stopdesk'), ShippingType.pickup);
      expect(shippingTypeFromJson('stop_desk'), ShippingType.pickup);
      expect(shippingTypeFromJson('pickup-point'), ShippingType.pickup);
    });

    test('legacy aliases for merchant branch', () {
      expect(shippingTypeFromJson('in_store'), ShippingType.store);
      expect(shippingTypeFromJson('instore'), ShippingType.store);
      expect(shippingTypeFromJson('branch'), ShippingType.store);
    });

    test('null and unknown default to home', () {
      expect(shippingTypeFromJson(null), ShippingType.home);
      expect(shippingTypeFromJson(''), ShippingType.home);
      expect(shippingTypeFromJson('nope'), ShippingType.home);
    });
  });

  group('Order.fromJson shippingType', () {
    test('accepts desk as legacy stopdesk', () {
      final o = Order.fromJson({
        'id': 'x',
        'createdAt': '2020-01-01T00:00:00.000Z',
        'updatedAt': '2020-01-01T00:00:00.000Z',
        'customerPhone': '1',
        'shippingType': 'desk',
        'items': <Map<String, dynamic>>[],
        'subtotal': 0,
        'total': 0,
        'calculatedTotal': 0,
        'storeId': 's',
        'status': 'pending',
      });
      expect(o.shippingType, ShippingType.pickup);
    });
  });
}
