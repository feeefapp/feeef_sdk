import 'package:feeef/orders/models/order.dart';
import 'package:test/test.dart';

void main() {
  group('OrderSecurityGeo wilaya (DZ-xx) and unknown region', () {
    test('regionCode from ISO code, bare number or name', () {
      expect(const OrderSecurityGeo(country: 'DZ', region: 'DZ-16').regionCode,
          'DZ-16');
      expect(const OrderSecurityGeo(country: 'DZ', region: '9').regionCode,
          'DZ-09');
      expect(const OrderSecurityGeo(country: 'DZ', region: 'Algiers').regionCode,
          isNull);
      expect(const OrderSecurityGeo(country: 'DZ').regionCode, isNull);
    });

    test('wilaya unknown is a normal state', () {
      final g = OrderSecurityGeo.tryParse({
        'country': 'DZ',
        'region': '',
        'city': 'Bab Ezzouar',
        'ip': '203.0.113.7',
        'source': 'edge',
      })!;
      expect(g.isRegionUnknown, isTrue);
      expect(g.hasLocation, isTrue);
      expect(g.regionDiffersFrom('16'), isNull); // never a mismatch
      expect(g.countryDiffersFrom('DZ'), isFalse);
    });

    test('regionDiffersFrom compares codes with the shipping state', () {
      const g = OrderSecurityGeo(country: 'DZ', region: 'DZ-16');
      expect(g.regionDiffersFrom('16'), isFalse);
      expect(g.regionDiffersFrom('DZ-16'), isFalse);
      expect(g.regionDiffersFrom('31'), isTrue);
      // Fallback on names when one side is not a code.
      const n = OrderSecurityGeo(country: 'DZ', region: 'Oran');
      expect(n.regionDiffersFrom('oran'), isFalse);
    });
  });

  test('isDeviceFingerprintMissing', () {
    expect(
      OrderSecurityClaims.tryParse({'treatment': 'warning'})!
          .isDeviceFingerprintMissing,
      isTrue,
    );
    expect(
      OrderSecurityClaims.tryParse({'deviceFingerprint': 'abc'})!
          .isDeviceFingerprintMissing,
      isFalse,
    );
  });
}
