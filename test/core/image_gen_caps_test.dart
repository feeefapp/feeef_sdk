import 'package:feeef/core/image_gen_caps.dart';
import 'package:feeef/core/models_catalog.dart';
import 'package:test/test.dart';

void main() {
  group('resolveImageGenCaps', () {
    test(
      'explicit empty capabilities disable controls and auto is preserved',
      () {
        const row = ModelCatalogRow(
          id: 'coconutstudio/gpt-image-2',
          name: 'Cloud',
          providerSlug: 'coconutstudio',
          capabilities: {
            'image_generation': {
              'allowed_aspect_ratios': ['auto'],
              'output_size_tiers': [],
              'input_resolution_tiers': [],
              'params': {'background': []},
            },
          },
        );
        final caps = resolveImageGenCaps(row, row.id);
        expect(caps.allowedAspectRatios, ['auto']);
        expect(caps.outputSizeTiers, isEmpty);
        expect(caps.inputResolutionTiers, isEmpty);
        expect(caps.backgroundOptions, isEmpty);
      },
    );
    test('parses output_size_tiers without colons from catalog JSON', () {
      const row = ModelCatalogRow(
        id: 'openai/gpt-5.4-image-2',
        name: 'T',
        providerSlug: 'openrouter',
        capabilities: {
          'image_generation': {
            'output_size_tiers': ['1K', '2K', '4K'],
            'allowed_aspect_ratios': ['1:1', '16:9'],
          },
        },
      );
      const catalog = ModelsCatalogConfig(providers: [], data: [row]);
      final caps = resolveImageGenCaps(
        catalog.data.first,
        'openai/gpt-5.4-image-2',
      );
      expect(caps.outputSizeTiers, containsAll(['1K', '2K', '4K']));
      expect(caps.allowedAspectRatios, contains('1:1'));
    });
  });

  group('featureAddonsDzd', () {
    test('adds transparent background price when catalog sets it', () {
      const caps = ImageGenCaps(
        allowedAspectRatios: ['1:1'],
        outputSizeTiers: ['2K'],
        inputResolutionTiers: ['MEDIA_RESOLUTION_HIGH'],
        googleSearch: false,
        imageSearch: false,
        backgroundOptions: ['transparent'],
        transparentBackgroundAddonDzd: 12.5,
      );
      expect(featureAddonsDzd(caps, background: 'transparent'), 12.5);
      expect(featureAddonsDzd(caps, background: 'auto'), 0);
    });
  });
}
