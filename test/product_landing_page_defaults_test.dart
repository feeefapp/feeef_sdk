import 'package:feeef/product_landing_pages/product_landing_page_defaults.dart';
import 'package:test/test.dart';

void main() {
  group('buildAiPlusLandingPageDefaults', () {
    test('inserts feeef_ai_placeholder after navbar with seed prompt', () {
      const seed = 'hello modular';
      final m = buildAiPlusLandingPageDefaults(seedPrompt: seed);

      final components = (((m['pages'] as Map)['landing_page'] as Map)['sections']
          as Map)['main'] as Map;
      final list = components['components'] as List<dynamic>;

      expect(list.length, greaterThan(2));
      expect((list[0] as Map)['type'], 'navbar');

      final ph = list[1] as Map<String, dynamic>;
      expect(ph['type'], 'feeef_ai_placeholder');
      expect(ph['instanceId'], startsWith('feeef_ai_placeholder_'));

      final props = ph['props'] as Map<String, dynamic>;
      expect(props['_feeefAiPrompt'], seed);
      expect(props['_feeefAiStatus'], 'draft');
      expect(props['_feeefAiSource'], 'create');
    });
  });
}
