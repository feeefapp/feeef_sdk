import 'package:feeef/stores/models/store.dart';
import 'package:test/test.dart';

void main() {
  test('public URL is the Helium host unless the store has a domain', () {
    Store shop([Map<String, dynamic>? domain]) => Store.fromJson({
      'id': 'shop',
      'userId': 'owner',
      'name': 'Shop',
      'slug': 'shop',
      'domain': domain,
      'createdAt': '2026-10-18T00:00:00Z',
      'updatedAt': '2026-10-18T00:00:00Z',
    });
    expect(shop().getPublicUrl(), 'https://shop.h.feeef.store');
    expect(shop({'name': 'shop.example.test'}).getPublicUrl(), 'https://shop.example.test');
  });
}
