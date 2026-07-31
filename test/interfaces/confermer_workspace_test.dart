import 'package:feeef/interfaces/embadded/confermer_workspace.dart';
import 'package:test/test.dart';

void main() {
  group('ConfermerWorkspace', () {
    test('allows products, orders, confirmation under store', () {
      expect(
        ConfermerWorkspace.isAllowedStorePath(
          '/stores/store1/products',
          'store1',
        ),
        isTrue,
      );
      expect(
        ConfermerWorkspace.isAllowedStorePath(
          '/stores/store1/products/p1/edit',
          'store1',
        ),
        isTrue,
      );
      expect(
        ConfermerWorkspace.isAllowedStorePath('/stores/store1/orders', 'store1'),
        isTrue,
      );
      expect(
        ConfermerWorkspace.isAllowedStorePath(
          '/stores/store1/confirmation',
          'store1',
        ),
        isTrue,
      );
      expect(
        ConfermerWorkspace.isAllowedStorePath('/confirmation', 'store1'),
        isTrue,
      );
    });

    test('denies overview, settings, integrations', () {
      expect(
        ConfermerWorkspace.isAllowedStorePath('/stores/store1', 'store1'),
        isFalse,
      );
      expect(
        ConfermerWorkspace.isAllowedStorePath(
          '/stores/store1/settings',
          'store1',
        ),
        isFalse,
      );
      expect(
        ConfermerWorkspace.isAllowedStorePath(
          '/stores/store1/integrations',
          'store1',
        ),
        isFalse,
      );
    });
  });
}
