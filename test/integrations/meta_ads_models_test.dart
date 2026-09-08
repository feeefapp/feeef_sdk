import 'package:feeef/integrations/models/meta_ads_models.dart';
import 'package:test/test.dart';

void main() {
  group('MetaIntegrationStatus.fromJson', () {
    test('reads nested ads + account without throwing on Map<dynamic>', () {
      final status = MetaIntegrationStatus.fromJson(<dynamic, dynamic>{
        'active': true,
        'capabilities': <dynamic, dynamic>{
          'connected': true,
          'canRead': true,
          'canManage': false,
          'grantedScopes': <dynamic>['ads_read'],
          'needsReconnect': false,
        },
        'account': <dynamic, dynamic>{'id': '123', 'name': 'Ada'},
        'ads': <dynamic, dynamic>{
          'adAccounts': <dynamic>[
            <dynamic, dynamic>{
              'id': 'act_1',
              'accountId': '1',
              'name': 'Main',
              'currency': 'USD',
            },
          ],
          'defaultAdAccountId': 'act_1',
          'defaultDatePreset': 'last_30d',
        },
        'connectedAt': '2026-01-02T00:00:00.000Z',
      });

      expect(status.active, isTrue);
      expect(status.capabilities.connected, isTrue);
      expect(status.capabilities.canRead, isTrue);
      expect(status.account?.displayName, 'Ada');
      expect(status.adAccounts, hasLength(1));
      expect(status.adAccounts.first.id, 'act_1');
      expect(status.defaultAdAccountId, 'act_1');
      expect(status.defaultDatePreset, 'last_30d');
    });

    test('defaults when ads/capabilities are missing', () {
      final status = MetaIntegrationStatus.fromJson(const {});
      expect(status.active, isFalse);
      expect(status.capabilities.connected, isFalse);
      expect(status.adAccounts, isEmpty);
      expect(status.defaultDatePreset, 'last_7d');
      expect(status.account, isNull);
    });
  });

  group('MetaAdsPage.fromJson', () {
    test('omitted capabilities stay null (must not look disconnected)', () {
      final page = MetaAdsPage.fromJson(const {
        'data': [
          {'id': '1', 'name': 'C', 'status': 'ACTIVE', 'effectiveStatus': 'ACTIVE'},
        ],
        'paging': {'after': 'cursor', 'hasMore': true},
      }, MetaCampaign.fromJson);

      expect(page.capabilities, isNull);
      expect(page.data, hasLength(1));
      expect(page.hasMore, isTrue);
      expect(page.after, 'cursor');
    });

    test('parses capabilities when present', () {
      final page = MetaAdsPage.fromJson(const {
        'data': <Map<String, dynamic>>[],
        'meta': {
          'capabilities': {
            'connected': true,
            'canRead': true,
            'canManage': false,
          },
        },
      }, MetaCampaign.fromJson);

      expect(page.capabilities?.connected, isTrue);
      expect(page.capabilities?.canRead, isTrue);
    });
  });

  group('MetaAdsException.fromResponse', () {
    test('reads nested Adonis-style error', () {
      final e = MetaAdsException.fromResponse({
        'error': {
          'code': 'META_TOKEN_EXPIRED',
          'message': 'reconnect',
          'retryAfterSeconds': 12,
        },
      });
      expect(e.code, MetaAdsErrorCode.tokenExpired);
      expect(e.message, 'reconnect');
      expect(e.retryAfterSeconds, 12);
      expect(e.code.requiresReconnect, isTrue);
    });
  });
}
