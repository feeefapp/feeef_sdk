import 'package:feeef/interfaces/embadded/member_scope.dart';
import 'package:feeef/interfaces/embadded/store.dart';
import 'package:test/test.dart';

void main() {
  group('memberHasScope', () {
    test('null member denies', () {
      expect(memberHasScope(null, MemberScope.ordersRead), isFalse);
    });

    test('legacy empty scopes allow any', () {
      final m = StoreMember(
        userId: 'u1',
        name: 'A',
        role: StoreMemberRole.editor,
        createdAt: DateTime.now(),
        scopes: [],
      );
      expect(memberHasScope(m, MemberScope.productsRead), isTrue);
    });

    test('wildcard allows', () {
      final m = StoreMember(
        userId: 'u1',
        name: 'A',
        role: StoreMemberRole.editor,
        createdAt: DateTime.now(),
        scopes: [MemberScope.wildcard],
      );
      expect(memberHasScope(m, MemberScope.storeIntegrations), isTrue);
    });

    test('store implies all', () {
      final m = StoreMember(
        userId: 'u1',
        name: 'A',
        role: StoreMemberRole.editor,
        createdAt: DateTime.now(),
        scopes: [MemberScope.store],
      );
      expect(memberHasScope(m, MemberScope.ordersRead), isTrue);
    });

    test('orders implies orders.read', () {
      final m = StoreMember(
        userId: 'u1',
        name: 'A',
        role: StoreMemberRole.editor,
        createdAt: DateTime.now(),
        scopes: [MemberScope.orders],
      );
      expect(memberHasScope(m, MemberScope.ordersRead), isTrue);
      expect(memberHasScope(m, MemberScope.productsRead), isFalse);
    });

    test('legacy shipping alias implies shipping_prices', () {
      final m = StoreMember(
        userId: 'u1',
        name: 'A',
        role: StoreMemberRole.editor,
        createdAt: DateTime.now(),
        scopes: ['shipping'],
      );
      expect(memberHasScope(m, MemberScope.shippingPrices), isTrue);
      expect(memberHasScope(m, MemberScope.shippingPricesRead), isTrue);
    });

    test('legacy shipping.read alias implies shipping_prices.read', () {
      final m = StoreMember(
        userId: 'u1',
        name: 'A',
        role: StoreMemberRole.editor,
        createdAt: DateTime.now(),
        scopes: ['shipping.read'],
      );
      expect(memberHasScope(m, MemberScope.shippingPricesRead), isTrue);
      expect(memberHasScope(m, MemberScope.shippingPrices), isFalse);
    });

    test('legacy shipping_methods alias implies shipping_prices', () {
      final m = StoreMember(
        userId: 'u1',
        name: 'A',
        role: StoreMemberRole.editor,
        createdAt: DateTime.now(),
        scopes: ['shipping_methods'],
      );
      expect(memberHasScope(m, MemberScope.shippingPrices), isTrue);
      expect(memberHasScope(m, MemberScope.shippingPricesRead), isTrue);
    });
  });
}
