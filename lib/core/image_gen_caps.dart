import 'package:feeef/core/models_catalog.dart';

/// Mirrors backend `STANDARD_IMAGE_ASPECT_RATIOS` / OpenRouter defaults.
const List<String> kStandardImageAspectRatios = [
  '1:1',
  '16:9',
  '9:16',
  '4:3',
  '3:4',
  '4:5',
  '9:32',
  '1:8',
  '8:1',
  '1:4',
  '4:1',
];

const List<String> kOpenRouterImageDefaultAspectRatios = [
  '1:1',
  '16:9',
  '9:16',
  '4:3',
  '3:4',
  '4:5',
];

/// Normalized image-generation caps (matches backend `ImageGenCaps`).
class ImageGenCaps {
  const ImageGenCaps({
    required this.allowedAspectRatios,
    required this.outputSizeTiers,
    required this.inputResolutionTiers,
    required this.googleSearch,
    required this.imageSearch,
    required this.backgroundOptions,
    required this.transparentBackgroundAddonDzd,
  });

  final List<String> allowedAspectRatios;
  final List<String> outputSizeTiers;
  final List<String> inputResolutionTiers;
  final bool googleSearch;
  final bool imageSearch;
  final List<String>? backgroundOptions;
  final double transparentBackgroundAddonDzd;
}

bool modelIdSupportsImageOutputTiers(String modelId) {
  final id = modelId.toLowerCase().trim();
  if (id == 'gemini-3.1-flash-image-preview' ||
      id == 'gemini-3-pro-image-preview') {
    return true;
  }
  if (id.contains('gemini-3.1-flash-image') || id.contains('gemini-3-pro-image')) {
    return true;
  }
  if (id.contains('gpt-5.4-image') || id.endsWith('gpt-5.4-image-2')) {
    return true;
  }
  if (id.contains('openai/gpt-5.4-image')) {
    return true;
  }
  return false;
}

ImageGenCaps _defaultsForModel(ModelCatalogRow? row, String modelId) {
  final id = modelId.toLowerCase().trim();
  final slug = row?.providerSlug.toLowerCase() ?? '';
  final isGoogle = slug == 'google' && id.contains('gemini');

  if (isGoogle && (id.contains('flash-image') || id.contains('pro-image'))) {
    final flashImage =
        id.contains('gemini-3.1-flash-image') || id.contains('flash-image-preview');
    return ImageGenCaps(
      allowedAspectRatios: List<String>.from(kStandardImageAspectRatios),
      outputSizeTiers: const ['1K', '2K', '4K'],
      inputResolutionTiers: const [
        'MEDIA_RESOLUTION_LOW',
        'MEDIA_RESOLUTION_MEDIUM',
        'MEDIA_RESOLUTION_HIGH',
      ],
      googleSearch: true,
      imageSearch: flashImage,
      backgroundOptions: const ['auto', 'opaque'],
      transparentBackgroundAddonDzd: 0,
    );
  }

  return ImageGenCaps(
    allowedAspectRatios: List<String>.from(kOpenRouterImageDefaultAspectRatios),
    outputSizeTiers: const ['1K', '2K', '4K'],
    inputResolutionTiers: const [
      'MEDIA_RESOLUTION_LOW',
      'MEDIA_RESOLUTION_MEDIUM',
      'MEDIA_RESOLUTION_HIGH',
    ],
    googleSearch: false,
    imageSearch: false,
    backgroundOptions: const ['auto', 'opaque', 'transparent'],
    transparentBackgroundAddonDzd: 0,
  );
}

List<String>? _aspectRatioList(dynamic v) {
  if (v is! List) return null;
  return v.map((e) => e.toString()).where((s) => s.contains(':')).toList();
}

List<String>? _stringList(dynamic v) {
  if (v is! List) return null;
  return v.map((e) => e.toString()).where((s) => s.isNotEmpty).toList();
}

/// Resolve caps for [modelId] using optional catalog [row] (`capabilities.image_generation`).
ImageGenCaps resolveImageGenCaps(ModelCatalogRow? row, String modelId) {
  final base = _defaultsForModel(row, modelId);
  final raw = row?.capabilities?['image_generation'];
  if (raw is! Map) return base;

  final aspects = _aspectRatioList(raw['allowed_aspect_ratios']);
  final outTiers = _stringList(raw['output_size_tiers']);
  final inTiers = _stringList(raw['input_resolution_tiers']);
  final toggles = raw['toggles'];
  final params = raw['params'];
  final pricing = raw['pricing_addons_dzd'];

  bool? gSearch;
  bool? iSearch;
  if (toggles is Map) {
    gSearch = toggles['google_search'] == true;
    iSearch = toggles['image_search'] == true;
  }

  List<String>? bgOpts;
  if (params is Map && params['background'] is List) {
    bgOpts = (params['background'] as List).map((e) => e.toString()).toList();
  }

  double addon = base.transparentBackgroundAddonDzd;
  if (pricing is Map && pricing['transparent_background'] != null) {
    addon = (pricing['transparent_background'] as num).toDouble();
  }

  return ImageGenCaps(
    allowedAspectRatios:
        aspects != null && aspects.isNotEmpty ? aspects : base.allowedAspectRatios,
    outputSizeTiers: outTiers != null && outTiers.isNotEmpty
        ? outTiers
        : base.outputSizeTiers,
    inputResolutionTiers: inTiers != null && inTiers.isNotEmpty
        ? inTiers
        : base.inputResolutionTiers,
    googleSearch: gSearch ?? base.googleSearch,
    imageSearch: iSearch ?? base.imageSearch,
    backgroundOptions: bgOpts ?? base.backgroundOptions,
    transparentBackgroundAddonDzd: addon,
  );
}

/// Find catalog row by model id (matches backend `getCatalogModelId`).
ModelCatalogRow? catalogRowForModelId(ModelsCatalogConfig? catalog, String modelId) {
  final id = modelId.trim();
  if (id.isEmpty || catalog == null) return null;
  for (final r in catalog.data) {
    if (r.id == id) return r;
  }
  return null;
}

double featureAddonsDzd(ImageGenCaps caps, {String? background}) {
  if ((background ?? '').toLowerCase() == 'transparent' &&
      caps.transparentBackgroundAddonDzd > 0) {
    return caps.transparentBackgroundAddonDzd;
  }
  return 0;
}
