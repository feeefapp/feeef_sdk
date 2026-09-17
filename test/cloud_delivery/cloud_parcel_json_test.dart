import 'package:feeef/cloud_delivery/cloud_delivery_api.dart';
import 'package:test/test.dart';

void main() {
  group('CloudParcel.fromJson', () {
    test('prefers Cloud trackingId over tracking/reference', () {
      final parcel = CloudParcel.fromJson({
        'id': 'pcl_1',
        'trackingId': 'TID',
        'tracking': 'legacy',
        'trackingCode': 'CODE',
        'reference': 'ord_1',
        'status': 'submitted',
        'carrierAccountId': 'ca_1',
      });
      expect(parcel.id, 'pcl_1');
      expect(parcel.tracking, 'TID');
      expect(parcel.status, 'submitted');
    });

    test('falls back to tracking then reference', () {
      expect(
        CloudParcel.fromJson({'id': 'pcl_2', 'tracking': 'TRK'}).tracking,
        'TRK',
      );
      expect(
        CloudParcel.fromJson({'id': 'pcl_3', 'reference': 'ord_9'}).tracking,
        'ord_9',
      );
    });

    test('reads nested destination `to`', () {
      final parcel = CloudParcel.fromJson({
        'id': 'pcl_4',
        'to': {'name': 'Ali', 'state': '16', 'city': 'Kouba'},
      });
      expect(parcel.customerName, 'Ali');
      expect(parcel.toState, '16');
      expect(parcel.toCity, 'Kouba');
    });
  });

  group('CloudLabelSettings.fromJson', () {
    test('defaults to carrier stickers', () {
      final settings = CloudLabelSettings.fromJson({});
      expect(settings.defaultMode, 'carrier');
      expect(settings.preferCarrier, isTrue);
      expect(settings.defaultTemplateId, isNull);
    });

    test('platform mode is not carrier', () {
      final settings = CloudLabelSettings.fromJson({
        'defaultMode': 'platform',
        'defaultTemplateId': 'lt_1',
      });
      expect(settings.preferCarrier, isFalse);
      expect(settings.defaultTemplateId, 'lt_1');
    });
  });

  group('CloudQuote suggestedDestinations', () {
    test('parses nearest covered suggestions on no_coverage', () {
      final quote = CloudQuote.fromJson({
        'accountId': 'ca_1',
        'name': 'Yalidine',
        'available': false,
        'reason': 'no_coverage',
        'suggestedDestinations': [
          {'stateCode': '16', 'cityName': 'kouba', 'distanceKm': 2.5},
          {'stateCode': '16', 'cityName': 'hydra', 'distanceKm': 4},
        ],
      });
      expect(quote.available, isFalse);
      expect(quote.suggestedDestinations, hasLength(2));
      expect(quote.suggestedDestinations.first.label, contains('kouba'));
      expect(quote.suggestedDestinations.first.distanceKm, 2.5);
    });

    test('defaults to empty suggestions', () {
      final quote = CloudQuote.fromJson({'accountId': 'ca_1', 'available': true});
      expect(quote.suggestedDestinations, isEmpty);
    });
  });

  group('CloudSuggestedDestination', () {
    test('label includes rounded km', () {
      expect(
        const CloudSuggestedDestination(
          stateCode: '16',
          cityName: 'kouba',
          distanceKm: 3.6,
        ).label,
        'kouba (4 km)',
      );
      expect(
        const CloudSuggestedDestination(
          stateCode: '16',
          cityName: 'hydra',
          distanceKm: 0.4,
        ).label,
        'hydra (<1 km)',
      );
    });
  });
}
