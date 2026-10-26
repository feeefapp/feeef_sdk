import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/products/models/product.dart';
import 'package:test/test.dart';

void main() {
  test('pixel event rules round-trip the backend JSON', () {
    final json = {
      'pixelEvents': {
        'rules': [
          {'id': 'conf', 'on': 'status:st_conf', 'meta': 'Purchase', 'snapchat': 'PURCHASE'},
          {'id': 'paid', 'on': 'paid', 'tiktok': 'Purchase'},
        ],
      },
    };
    final integrations = StoreIntegrations.fromJson(json);
    final rules = integrations.pixelEvents!.rules;
    expect(rules.first.tiktok, isNull);
    expect(rules.first.trigger, isA<PixelStatusTrigger>());
    expect((rules.first.trigger as PixelStatusTrigger).statusId, 'st_conf');
    expect(rules.last.trigger, isA<PixelPaidTrigger>());
    // Missing platforms stay out of the JSON (the backend reads absent = not sent).
    expect(rules.first.toJson(), {'id': 'conf', 'on': 'status:st_conf', 'meta': 'Purchase', 'snapchat': 'PURCHASE'});

    final product = IntegrationsData.fromJson({'pixelEvents': json['pixelEvents']});
    expect(product.pixelEvents!.rules, hasLength(2));
  });

  test('triggers parse and print the stored form', () {
    for (final on in ['phase:draft', 'phase:done', 'status:abc_1', 'paid']) {
      expect(PixelTrigger.parse(on)!.value, on);
    }
    for (final bad in ['phase:shipped', 'status:', 'kind:returned', 'PAID']) {
      expect(PixelTrigger.parse(bad), isNull);
    }
    expect(kDefaultPixelEventRules.map((r) => r.on), ['phase:draft', 'phase:open']);
  });
}
