import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/interfaces/embadded/store.dart';
import 'package:feeef/stores/models/store.dart';
import 'package:test/test.dart';

Store _minimalStore({StoreBanner? banner}) {
  final now = DateTime.utc(2024, 1, 1);
  return Store(
    id: 'store1',
    createdAt: now,
    updatedAt: now,
    slug: 'my-store',
    name: 'My Store',
    userId: 'user1',
    banner: banner,
  );
}

void main() {
  group('Store.applyUpdate', () {
    test('updates banner without JSON round-trip', () {
      final store = _minimalStore(
        banner: StoreBanner(title: 'Old', enabled: true),
      );
      final updated = store.applyUpdate(
        StoreUpdate(
          banner: StoreBanner(title: 'New', enabled: false),
        ),
      );

      expect(updated.banner?.title, 'New');
      expect(updated.banner?.enabled, isFalse);
      expect(updated.name, 'My Store');
    });

    test('clears domain via setToNull', () {
      final store = _minimalStore().copyWith(
        domain: StoreDomain(name: 'shop.example.com'),
      );
      final updated = store.applyUpdate(
        const StoreUpdate(setToNull: ['domain']),
      );

      expect(updated.domain, isNull);
    });

    test('fromJson merge with toJson still fails for nested banner (regression guard)', () {
      final store = _minimalStore(
        banner: StoreBanner(title: 'Banner', enabled: true),
      );

      expect(
        () => Store.fromJson({
          ...store.toJson(),
          ...StoreUpdate(
            banner: StoreBanner(title: 'Patched', enabled: false),
          ).toUpdateJson(),
        }),
        throwsA(isA<TypeError>()),
      );
    });
  });
}
