import 'package:feeef/integrations/ecotrack/ecotrack_delivery_integration_api.dart';
import 'package:feeef/products/models/product.dart';
import 'package:test/test.dart';

void main() {
  group('EcotrackData', () {
    test('resolves sku map before default produit', () {
      final data = EcotrackData(
        enabled: true,
        produit: 'DEFAULT-REF',
        skuProduitMap: const {
          'SKU-RED': 'REF-RED',
          'SKU-BLUE': 'REF-BLUE',
        },
      );

      expect(data.resolveProduitForSku('SKU-RED'), 'REF-RED');
      expect(data.resolveProduitForSku(' SKU-BLUE '), 'REF-BLUE');
      expect(data.resolveProduitForSku('UNKNOWN'), 'DEFAULT-REF');
      expect(data.resolveProduitForSku(null), 'DEFAULT-REF');
      expect(data.resolveProduitForSku(''), 'DEFAULT-REF');
    });

    test('returns null when nothing mapped', () {
      final data = EcotrackData(enabled: true);
      expect(data.resolveProduitForSku('SKU-1'), isNull);
    });

    test('json round-trip preserves sku map', () {
      final original = EcotrackData(
        enabled: true,
        produit: 'ROOT',
        skuProduitMap: const {'a': 'A', 'b': 'B'},
      );
      final restored = EcotrackData.fromJson(original.toJson());
      expect(restored.enabled, isTrue);
      expect(restored.produit, 'ROOT');
      expect(restored.skuProduitMap, {'a': 'A', 'b': 'B'});
      expect(restored.resolveProduitForSku('b'), 'B');
    });

    test('IntegrationsData serializes ecotrackData', () {
      final integrations = IntegrationsData(
        ecotrackData: EcotrackData(
          enabled: true,
          produit: 'P1',
          skuProduitMap: const {'sku': 'ref'},
        ),
      );
      final json = integrations.toJson();
      expect(json.containsKey('ecotrackData'), isTrue);
      final roundTrip = IntegrationsData.fromJson({
        'ecotrackData': integrations.ecotrackData!.toJson(),
      });
      expect(roundTrip.ecotrackData?.produit, 'P1');
      expect(roundTrip.ecotrackData?.resolveProduitForSku('sku'), 'ref');
    });
  });

  group('EcotrackStockProductSummary', () {
    test('parses camelCase and snake_case fields', () {
      final fromSnake = EcotrackStockProductSummary.fromJson({
        'id': 7,
        'reference': 'REF-7',
        'title': 'Title',
        'is_active': 1,
        'stock_disponible': '3',
        'cover_image': 'https://cdn/x.png',
      });
      expect(fromSnake.id, 7);
      expect(fromSnake.reference, 'REF-7');
      expect(fromSnake.active, isTrue);
      expect(fromSnake.stockDisponible, 3);
      expect(fromSnake.coverImage, 'https://cdn/x.png');

      final fromCamel = EcotrackStockProductSummary.fromJson({
        'id': 8,
        'reference': 'REF-8',
        'title': 'T8',
        'isActive': 0,
        'stockDisponible': 1,
        'coverImage': 'https://cdn/y.png',
      });
      expect(fromCamel.active, isFalse);
      expect(fromCamel.stockDisponible, 1);
    });
  });
}
