import 'dart:convert';

import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/orders/models/order.dart';
import 'package:test/test.dart';

Map<String, dynamic> _orderJson({Object? claims}) => {
      'id': 'ord_1',
      'createdAt': '2026-10-09T10:00:00.000Z',
      'updatedAt': '2026-10-09T10:00:00.000Z',
      'items': <Object>[],
      'subtotal': 1000,
      'total': 1000,
      'calculatedTotal': 1000,
      'storeId': 'st_1',
      'status': 'pending',
      'shippingCountry': 'DZ',
      'claims': ?claims,
    };

void main() {
  group('OrderSecurityGeo (claims.security.geo)', () {
    test('new shape', () {
      final g = OrderSecurityGeo.fromJson({
        'country': 'dz',
        'region': 'Algiers',
        'city': 'Bab Ezzouar',
        'ip': '203.0.113.7',
        'source': 'edge',
      });
      expect(g.country, 'dz');
      expect(g.countryCode, 'DZ');
      expect(g.region, 'Algiers');
      expect(g.city, 'Bab Ezzouar');
      expect(g.ip, '203.0.113.7');
      expect(g.source, VisitorGeoSource.edge);
      expect(g.isTrusted, isTrue);
      expect(g.displayLabel, 'Bab Ezzouar, Algiers, DZ');
      expect(g.countryDiffersFrom('DZ'), isFalse);
      expect(g.countryDiffersFrom('tn'), isTrue);
      expect(g.countryDiffersFrom(null), isNull);
      expect(g.regionDiffersFrom('algiers'), isFalse);
      expect(g.regionDiffersFrom('Oran'), isTrue);
    });

    test('round trip', () {
      const g = OrderSecurityGeo(
        country: 'DZ',
        region: 'Oran',
        city: 'Oran',
        ip: '198.51.100.1',
        source: VisitorGeoSource.storefront,
      );
      final out = jsonDecode(jsonEncode(g.toJson())) as Map<String, dynamic>;
      expect(out, {
        'country': 'DZ',
        'region': 'Oran',
        'city': 'Oran',
        'ip': '198.51.100.1',
        'source': 'storefront',
      });
      expect(OrderSecurityGeo.fromJson(out), g);
    });

    test('XX, empty and wrong types become null; unknown source', () {
      final g = OrderSecurityGeo.fromJson({
        'country': 'XX',
        'region': '',
        'city': ['x'],
        'ip': 'xx',
        'source': 'cloudflare',
        'hint': {'country': 'FR'}, // unknown extra key
      });
      expect(g.hasLocation, isFalse);
      expect(g.isEmpty, isTrue);
      expect(g.source, VisitorGeoSource.unknown);
      expect(g.isTrusted, isFalse);
      expect(g.displayLabel, '');
    });

    test('tryParse', () {
      expect(OrderSecurityGeo.tryParse(null), isNull);
      expect(OrderSecurityGeo.tryParse('DZ'), isNull);
      expect(OrderSecurityGeo.tryParse(const <String, dynamic>{}), isNull);
      expect(OrderSecurityGeo.tryParse({'source': 'unknown'})!.source,
          VisitorGeoSource.unknown);
      expect(OrderSecurityGeo.tryParse({'country': 'DZ'})!.source, isNull);
    });
  });

  group('OrderSecurityClaims', () {
    final claims = <String, dynamic>{
      'security': {
        'treatment': 'warning',
        'violations': [
          {'option': 'regions', 'reason': 'Region not allowed'},
          'garbage',
          {'other': 1},
        ],
        'checkedAt': '2026-10-09T10:00:00.000Z',
        'userAgent': 'Mozilla/5.0',
        'country': 'DZ',
        'deviceFingerprint': 'fp_123',
        'formLoadTime': 1760000000000,
        'platform': 'web',
        'capturedAt': '2026-10-09T10:00:01.000Z',
        'geo': {
          'country': 'DZ',
          'region': 'Algiers',
          'city': 'Algiers',
          'ip': '203.0.113.7',
          'source': 'storefront',
        },
      },
      'metaPixel': {'fbp': 'x'},
    };

    test('parses existing keys plus geo', () {
      final s = OrderSecurityClaims.fromOrderClaims(claims)!;
      expect(s.treatment, SecurityTreatment.warning);
      expect(s.violations, [
        const OrderSecurityViolation(
          option: 'regions',
          reason: 'Region not allowed',
        ),
      ]);
      expect(s.checkedAt, DateTime.utc(2026, 10, 9, 10));
      expect(s.userAgent, 'Mozilla/5.0');
      expect(s.legacyCountry, 'DZ');
      expect(s.deviceFingerprint, 'fp_123');
      expect(s.formLoadTime, 1760000000000);
      expect(s.platform, 'web');
      expect(s.geo!.source, VisitorGeoSource.storefront);
      expect(s.geoOrLegacy, s.geo);
      expect(s.isFlagged, isTrue);
    });

    test('round trip', () {
      final s = OrderSecurityClaims.fromOrderClaims(claims)!;
      final again = OrderSecurityClaims.fromJson(
        jsonDecode(jsonEncode(s.toJson())) as Map<String, dynamic>,
      );
      expect(again, s);
    });

    test('legacy order: only flat country, no geo', () {
      final s = OrderSecurityClaims.fromOrderClaims({
        'security': {'country': 'DZ', 'userAgent': 'ua'},
      })!;
      expect(s.geo, isNull);
      expect(s.geoOrLegacy, const OrderSecurityGeo(country: 'DZ'));
      expect(s.geoOrLegacy!.isTrusted, isFalse);
      expect(s.isFlagged, isFalse);
      expect(s.violations, isEmpty);
    });

    test('missing, null and wrong-typed security claims', () {
      expect(OrderSecurityClaims.fromOrderClaims(null), isNull);
      expect(OrderSecurityClaims.fromOrderClaims(const {}), isNull);
      expect(OrderSecurityClaims.fromOrderClaims({'security': null}), isNull);
      expect(OrderSecurityClaims.fromOrderClaims({'security': 'x'}), isNull);
      final s = OrderSecurityClaims.fromOrderClaims({
        'security': {
          'treatment': 'allow',
          'violations': 'nope',
          'checkedAt': 'not a date',
          'geo': 'DZ',
          'userAgent': 42,
        },
      })!;
      expect(s.treatment, isNull);
      expect(s.violations, isEmpty);
      expect(s.checkedAt, isNull);
      expect(s.geo, isNull);
      expect(s.userAgent, '42');
    });
  });

  group('Order extension', () {
    test('order with geo claims', () {
      final order = Order.fromJson(_orderJson(claims: {
        'security': {
          'geo': {'country': 'TN', 'region': 'Tunis', 'source': 'edge'},
        },
      }));
      expect(order.securityGeo!.countryCode, 'TN');
      expect(order.securityGeo!.countryDiffersFrom(order.shippingCountry),
          isTrue);
      expect(order.securityClaims!.isFlagged, isFalse);
    });

    test('order without claims', () {
      final order = Order.fromJson(_orderJson());
      expect(order.securityClaims, isNull);
      expect(order.securityGeo, isNull);
    });
  });
}
