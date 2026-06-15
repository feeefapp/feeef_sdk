import 'package:feeef/stores/models/store.dart';
import 'package:test/test.dart';

void main() {
  group('StoreSubscription JSON', () {
    test('round-trips integration billing entries', () {
      final startedAt = DateTime.utc(2024, 6, 1);
      final integrationStart = DateTime.utc(2024, 6, 15);
      final integrationExpires = DateTime.utc(2024, 7, 15);

      final subscription = StoreSubscription(
        type: StoreSubscriptionType.premium,
        status: StoreSubscriptionStatus.active,
        quota: 100,
        consumed: 12,
        startedAt: startedAt,
        integrations: {
          'googleSheet': StoreIntegrationSubscription(
            startAt: integrationStart,
            expiresAt: integrationExpires,
            status: IntegrationBillingStatus.active,
            price: 500,
          ),
        },
      );

      final restored = StoreSubscription.fromJson(subscription.toJson());

      expect(restored.type, StoreSubscriptionType.premium);
      expect(restored.integrations.length, 1);
      expect(restored.integrations['googleSheet']?.price, 500);
      expect(restored.integrations['googleSheet']?.startAt, integrationStart);
      expect(restored.integrations['googleSheet']?.expiresAt, integrationExpires);
    });

    test('Store.fromJson accepts subscription from toJson round-trip', () {
      final now = DateTime.utc(2024, 1, 1);
      final store = Store(
        id: 'store1',
        createdAt: now,
        updatedAt: now,
        slug: 'my-store',
        name: 'My Store',
        userId: 'user1',
        subscription: StoreSubscription(
          type: StoreSubscriptionType.vip,
          status: StoreSubscriptionStatus.active,
          quota: 200,
          consumed: 0,
          startedAt: now,
          integrations: {
            'ai': StoreIntegrationSubscription(
              startAt: now,
              price: 1000,
            ),
          },
        ),
      );

      final restored = Store.fromJson(store.toJson());

      expect(restored.subscription?.type, StoreSubscriptionType.vip);
      expect(restored.subscription?.integrations['ai']?.price, 1000);
    });
  });
}
