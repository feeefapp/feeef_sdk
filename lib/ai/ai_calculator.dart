/// Client-side AI cost estimator — deterministic mirror of the backend engine
/// in `backend/app/services/ai_calculator.ts`.
///
/// The backend quote is always authoritative (it performs the wallet debit);
/// this class exists so the merchant UI can show "you will pay X DZD" before
/// generating, with the SAME formulas and the SAME config inputs. All methods
/// are pure: no network calls, no side effects.
///
/// ## Money model (identical to backend)
///
/// ```
/// provider cost (USD)                 what the AI provider charges
///   × exchangeRate                    → provider cost (DZD)
///   × retailMarkup.multiplier         → retail user cost (DZD)
///   + flat retail add-ons (DZD)       reference images, resolution tiers,
///                                     feature add-ons, attachment surcharge…
///   = userCostDzd
/// ```
///
/// Invariants:
///  1. [AiCostEstimate.providerCostUsd] / `providerCostDzd` are ALWAYS the
///     pre-markup provider cost; `0` when unknown (retail floors) — never
///     back-computed from the retail price.
///  2. [AiCostEstimate.userCostDzd] is the final retail amount (3 decimals).
///
/// ## Pricing precedence (identical to backend)
///
///  - **Text**  : exact-id row token pricing (context tiers; catalog rows are
///    merged into `models` by the app with per-1M pricing) → named default row
///    (`gemini-flash-lite-latest`) → free. Never `models[0]`.
///  - **Image** : catalog per-image USD on the row ([AiModelConfig.imageOutputPerSizeUsd]
///    → [AiModelConfig.imageOutputUsd]) → legacy `unit:'image'` row →
///    `defaultImageCost` floor. Legacy `localCost` (DZD) stays an explicit
///    retail override.
///  - **Voice** : exact row → named TTS default → any voice-capable row;
///    `localCost` → flat `audio`/`voice` USD (also `image` unit for
///    voice-capable rows) → `tokens` per-1M; non-localCost paths floored by
///    `voiceGeneration.minimumChargeUsd`.
///
/// `aiModels.billing` shape: [AIModelsBilling] in `app_config.dart` — keep in
/// sync with backend `ai_models_billing.ts`, feeef.js `ai_calculator.ts`,
/// admins `useOptions.ts`.
library;

import 'dart:math' as math;

import 'package:feeef/core/app_config.dart' show AIModelsBilling;

/// Fallback DZD per USD when `aiModels.exchangeRate` is absent (mirror backend).
const double fallbackAiExchangeRate = 260;

/// Named platform default for unknown text models — never `models[0]`.
const String _defaultTextPricingModelId = 'gemini-flash-lite-latest';
const String _defaultImageModelId = 'gemini-3.1-flash-image-preview';
const String _defaultTtsModelId = 'gemini-2.5-pro-preview-tts';

/// Resolved TTS token heuristics after merge.
class ResolvedTtsTokenEstimate {
  final int whenScriptEmptyTokens;
  final int whenAttachmentsOnlyTokens;
  final int promptBaseTokens;
  final int promptPerAttachmentTokens;
  final int outputMinimumTokens;
  final double outputToTextTokenRatio;
  final int maxTotalTokens;

  const ResolvedTtsTokenEstimate({
    required this.whenScriptEmptyTokens,
    required this.whenAttachmentsOnlyTokens,
    required this.promptBaseTokens,
    required this.promptPerAttachmentTokens,
    required this.outputMinimumTokens,
    required this.outputToTextTokenRatio,
    required this.maxTotalTokens,
  });
}

/// Fully merged `aiModels.billing` (mirror backend `ResolvedAiModelsBilling`).
class ResolvedAiModelsBilling {
  final double retailMultiplier;
  final double referenceAttachmentPerFileUsd;
  final double referenceAttachmentHighExtraPerFileUsd;
  final double referenceAttachmentLowDiscountPerFileUsd;
  final double imageFallbackProviderCostPerImageUsd;
  final int textFreeTierMaxTokens;
  final int textDefaultPromptTokens;
  final int textDefaultOutputTokens;
  final double voiceMinimumChargeUsd;
  final double voiceScriptEnhancementAddonUsd;
  final ResolvedTtsTokenEstimate tts;
  final double landingPageFixedChargeUsd;

  const ResolvedAiModelsBilling({
    required this.retailMultiplier,
    required this.referenceAttachmentPerFileUsd,
    required this.referenceAttachmentHighExtraPerFileUsd,
    required this.referenceAttachmentLowDiscountPerFileUsd,
    required this.imageFallbackProviderCostPerImageUsd,
    required this.textFreeTierMaxTokens,
    required this.textDefaultPromptTokens,
    required this.textDefaultOutputTokens,
    required this.voiceMinimumChargeUsd,
    required this.voiceScriptEnhancementAddonUsd,
    required this.tts,
    required this.landingPageFixedChargeUsd,
  });
}

const _defaultTts = ResolvedTtsTokenEstimate(
  whenScriptEmptyTokens: 200,
  whenAttachmentsOnlyTokens: 400,
  promptBaseTokens: 400,
  promptPerAttachmentTokens: 300,
  outputMinimumTokens: 300,
  outputToTextTokenRatio: 2.5,
  maxTotalTokens: 32000,
);

/// Deep-merge optional server `billing` over platform defaults.
ResolvedAiModelsBilling mergeAiModelsBilling(AIModelsBilling? partial) {
  const defaults = ResolvedAiModelsBilling(
    retailMultiplier: 2.5,
    referenceAttachmentPerFileUsd: 0.1,
    referenceAttachmentHighExtraPerFileUsd: 0.05,
    referenceAttachmentLowDiscountPerFileUsd: 0.05,
    imageFallbackProviderCostPerImageUsd: 0.131,
    textFreeTierMaxTokens: 1000,
    textDefaultPromptTokens: 2000,
    textDefaultOutputTokens: 1000,
    voiceMinimumChargeUsd: 50 / fallbackAiExchangeRate,
    voiceScriptEnhancementAddonUsd: 25 / fallbackAiExchangeRate,
    tts: _defaultTts,
    landingPageFixedChargeUsd: 100 / fallbackAiExchangeRate,
  );
  if (partial == null) return defaults;

  final ttsIn = partial.voiceGeneration?.ttsTokenEstimate;
  final tts = ResolvedTtsTokenEstimate(
    whenScriptEmptyTokens:
        ttsIn?.whenScriptEmptyTokens ?? defaults.tts.whenScriptEmptyTokens,
    whenAttachmentsOnlyTokens:
        ttsIn?.whenAttachmentsOnlyTokens ??
        defaults.tts.whenAttachmentsOnlyTokens,
    promptBaseTokens: ttsIn?.promptBaseTokens ?? defaults.tts.promptBaseTokens,
    promptPerAttachmentTokens:
        ttsIn?.promptPerAttachmentTokens ??
        defaults.tts.promptPerAttachmentTokens,
    outputMinimumTokens:
        ttsIn?.outputMinimumTokens ?? defaults.tts.outputMinimumTokens,
    outputToTextTokenRatio:
        ttsIn?.outputToTextTokenRatio ?? defaults.tts.outputToTextTokenRatio,
    maxTotalTokens: ttsIn?.maxTotalTokens ?? defaults.tts.maxTotalTokens,
  );

  return ResolvedAiModelsBilling(
    retailMultiplier:
        partial.retailMarkup?.multiplier ?? defaults.retailMultiplier,
    referenceAttachmentPerFileUsd:
        partial.referenceAttachmentSurcharge?.perFileUsd ??
        defaults.referenceAttachmentPerFileUsd,
    referenceAttachmentHighExtraPerFileUsd:
        partial.referenceAttachmentSurcharge?.highResolutionExtraPerFileUsd ??
        defaults.referenceAttachmentHighExtraPerFileUsd,
    referenceAttachmentLowDiscountPerFileUsd:
        partial.referenceAttachmentSurcharge?.lowResolutionDiscountPerFileUsd ??
        defaults.referenceAttachmentLowDiscountPerFileUsd,
    imageFallbackProviderCostPerImageUsd:
        partial.imageGeneration?.fallbackProviderCostPerImageUsd ??
        defaults.imageFallbackProviderCostPerImageUsd,
    textFreeTierMaxTokens:
        partial.textGeneration?.freeTierMaxPromptTokens ??
        defaults.textFreeTierMaxTokens,
    textDefaultPromptTokens:
        partial.textGeneration?.estimatedPromptTokensDefault ??
        defaults.textDefaultPromptTokens,
    textDefaultOutputTokens:
        partial.textGeneration?.estimatedOutputTokensDefault ??
        defaults.textDefaultOutputTokens,
    voiceMinimumChargeUsd:
        partial.voiceGeneration?.minimumChargeUsd ??
        defaults.voiceMinimumChargeUsd,
    voiceScriptEnhancementAddonUsd:
        partial.voiceGeneration?.scriptEnhancementAddonUsd ??
        defaults.voiceScriptEnhancementAddonUsd,
    tts: tts,
    landingPageFixedChargeUsd:
        partial.landingPageImage?.fixedChargeUsd ??
        defaults.landingPageFixedChargeUsd,
  );
}

/// Result of a cost estimation.
class AiCostEstimate {
  /// Pre-markup provider cost in USD (`0` when unknown, e.g. retail floors).
  final double providerCostUsd;

  /// Pre-markup provider cost in DZD.
  final double providerCostDzd;

  /// What the user pays (DZD) — includes profit margin and flat add-ons.
  final double userCostDzd;

  /// Exchange rate used (DZD per USD).
  final double exchangeRate;

  /// Retail markup multiplier in effect (e.g. 2.5 = 150% margin).
  final double multiplier;

  /// Whether a model-specific `localCost` retail override was used.
  final bool usedLocalCost;

  /// Itemised breakdown for transparency (keys mirror the backend engine).
  final Map<String, double> breakdown;

  const AiCostEstimate({
    required this.providerCostUsd,
    required this.providerCostDzd,
    required this.userCostDzd,
    required this.exchangeRate,
    required this.multiplier,
    required this.usedLocalCost,
    required this.breakdown,
  });

  @override
  String toString() =>
      'AiCostEstimate(userCostDzd: $userCostDzd, '
      'providerCostUsd: $providerCostUsd, '
      'breakdown: $breakdown)';
}

/// Simplified model pricing info passed from the app config.
class AiModelPricing {
  /// USD per 1M tokens (`unit: 'tokens'`).
  final double? inputPerMToken;

  /// For `unit: 'tokens'`: USD per 1M completion tokens.
  /// For `unit: 'image' | 'audio' | 'voice'`: USD per single generation.
  final double? outputPerMToken;

  final String unit;

  /// Optional context tier, e.g. `<=200K` / `>200K` (tokens unit only).
  final String? contextThreshold;

  const AiModelPricing({
    this.inputPerMToken,
    this.outputPerMToken,
    this.unit = 'tokens',
    this.contextThreshold,
  });
}

/// Simplified model config passed from the app config.
class AiModelConfig {
  final String id;
  final List<AiModelPricing> pricing;

  /// Explicit admin retail price (DZD) for one generation — overrides the
  /// computed retail output (provider cost stays truthful).
  final double? localCost;

  /// Flat provider USD per generated image from the multi-provider model
  /// catalog (`pricing.image_output`). Preferred over legacy `unit:'image'`
  /// rows, matching the backend catalog-first precedence.
  final double? imageOutputUsd;

  /// Provider USD per generated image by output tier from the model catalog
  /// (`pricing.image_output_per_size_usd`). Lets the client-side estimate
  /// mirror backend billing for 1K/2K/4K image choices.
  final Map<String, double> imageOutputPerSizeUsd;

  /// From `aiModels.models[].capabilities` (e.g. `voice`, `audio`) — used for
  /// TTS pricing fallbacks.
  final List<String> capabilities;

  const AiModelConfig({
    required this.id,
    this.pricing = const [],
    this.localCost,
    this.imageOutputUsd,
    this.imageOutputPerSizeUsd = const {},
    this.capabilities = const [],
  });
}

/// Configuration for the calculator, typically sourced from the
/// backend's `aiModels` config (available via the app config endpoint).
class AiCalculatorConfig {
  final double exchangeRate;

  /// Floor retail-provider DZD for one image when no source prices the model.
  final double defaultImageCostDzd;

  /// Flat retail DZD per reference image.
  final double referenceImageCostDzd;

  /// Flat retail DZD per resolution tier (`MEDIA_RESOLUTION_LOW|MEDIUM|HIGH`).
  final Map<String, double> resolutionCosts;

  final List<AiModelConfig> models;
  final ResolvedAiModelsBilling billing;

  AiCalculatorConfig({
    double? exchangeRate,
    this.defaultImageCostDzd = 34.06,
    this.referenceImageCostDzd = 5,
    Map<String, double>? resolutionCosts,
    this.models = const [],
    ResolvedAiModelsBilling? billingResolved,
  }) : exchangeRate = exchangeRate ?? fallbackAiExchangeRate,
       resolutionCosts =
           resolutionCosts ??
           const {
             'MEDIA_RESOLUTION_LOW': 0,
             'MEDIA_RESOLUTION_MEDIUM': 5,
             'MEDIA_RESOLUTION_HIGH': 10,
           },
       billing = billingResolved ?? mergeAiModelsBilling(null);

  /// Build from raw JSON (e.g. from `appConfig.aiModels`).
  factory AiCalculatorConfig.fromJson(Map<String, dynamic> json) {
    final billingRaw = json['billing'];
    final billingPartial = billingRaw is Map<String, dynamic>
        ? AIModelsBilling.fromJson(billingRaw)
        : null;

    final models =
        (json['models'] as List<dynamic>?)
            ?.map(
              (m) => AiModelConfig(
                id: m['id'] as String? ?? '',
                localCost: (m['localCost'] as num?)?.toDouble(),
                capabilities:
                    (m['capabilities'] as List<dynamic>?)
                        ?.map((e) => e.toString())
                        .toList() ??
                    const [],
                pricing:
                    (m['pricing'] as List<dynamic>?)
                        ?.map(
                          (p) => AiModelPricing(
                            inputPerMToken: (p['input'] as num?)?.toDouble(),
                            outputPerMToken: (p['output'] as num?)?.toDouble(),
                            unit: p['unit'] as String? ?? 'tokens',
                            contextThreshold: p['contextThreshold'] as String?,
                          ),
                        )
                        .toList() ??
                    [],
                imageOutputUsd: (m['imageOutputUsd'] as num?)?.toDouble(),
                imageOutputPerSizeUsd: _doubleMapFromJson(
                  m['imageOutputPerSizeUsd'],
                ),
              ),
            )
            .toList() ??
        [];

    final resCosts = <String, double>{};
    final rawRes = json['resolutionCosts'] as Map<String, dynamic>?;
    if (rawRes != null) {
      for (final entry in rawRes.entries) {
        resCosts[entry.key] = (entry.value as num?)?.toDouble() ?? 0;
      }
    }

    return AiCalculatorConfig(
      exchangeRate: (json['exchangeRate'] as num?)?.toDouble(),
      defaultImageCostDzd:
          (json['defaultImageCost'] as num?)?.toDouble() ?? 34.06,
      referenceImageCostDzd:
          (json['referenceImageCost'] as num?)?.toDouble() ?? 5,
      resolutionCosts: resCosts.isEmpty ? null : resCosts,
      models: models,
      billingResolved: mergeAiModelsBilling(billingPartial),
    );
  }
}

Map<String, double> _doubleMapFromJson(dynamic raw) {
  if (raw is! Map) return const {};
  final out = <String, double>{};
  for (final entry in raw.entries) {
    final key = entry.key?.toString();
    final value = entry.value;
    final n = value is num ? value.toDouble() : double.tryParse('$value');
    if (key != null && key.isNotEmpty && n != null && n > 0) {
      out[key] = n;
    }
  }
  return out;
}

/// Round money to [precision] decimals (mirror backend `roundMoney`,
/// including the epsilon nudge so both sides round float dust identically).
double _roundMoney(double amount, [int precision = 3]) {
  const epsilon = 2.220446049250313e-16;
  final factor = math.pow(10, precision);
  return ((amount + epsilon) * factor).roundToDouble() / factor;
}

/// Pure utility class for estimating AI generation costs.
///
/// Usage:
/// ```dart
/// final calc = AiCalculator(config: AiCalculatorConfig.fromJson(appConfig.aiModels));
/// final estimate = calc.estimateImageGeneration(referenceImageCount: 2);
/// print('Estimated cost: ${estimate.userCostDzd} DZD');
/// ```
class AiCalculator {
  final AiCalculatorConfig config;

  AiCalculator({required this.config});

  /// Create with sensible defaults (no remote config needed).
  AiCalculator.defaults() : config = AiCalculatorConfig();

  /// Heuristic TTS token counts using **default** billing only (no `aiModels` JSON).
  /// Prefer using [estimateVoiceover] with a config from the server for parity.
  static ({int promptTokens, int outputTokens}) defaultVoiceTtsTokenEstimates(
    int scriptCharLength,
    int attachmentCount,
  ) {
    return _ttsTokenEstimatesFromBilling(
      mergeAiModelsBilling(null),
      scriptCharLength,
      attachmentCount,
    );
  }

  static ({int promptTokens, int outputTokens}) _ttsTokenEstimatesFromBilling(
    ResolvedAiModelsBilling b,
    int scriptCharLength,
    int attachmentCount,
  ) {
    final t = b.tts;
    var textTok = (scriptCharLength / 4).round();
    if (textTok <= 0) {
      textTok = attachmentCount > 0
          ? t.whenAttachmentsOnlyTokens
          : t.whenScriptEmptyTokens;
    }
    final rawPrompt =
        t.promptBaseTokens +
        textTok +
        attachmentCount * t.promptPerAttachmentTokens;
    final promptTokens = rawPrompt.clamp(0, t.maxTotalTokens);
    final rawOutput = math.max(
      t.outputMinimumTokens,
      (textTok * t.outputToTextTokenRatio).round(),
    );
    final outputTokens = rawOutput.clamp(0, t.maxTotalTokens);
    return (promptTokens: promptTokens, outputTokens: outputTokens);
  }

  // -- lookup ---------------------------------------------------------------

  /// Strip the optional Gemini catalog namespace (`models/foo`) so legacy
  /// `aiModels.models` rows and catalog ids resolve consistently.
  static String _stripCatalogNamespace(String id) {
    final trimmed = id.trim();
    final slash = trimmed.indexOf('/');
    return slash >= 0 ? trimmed.substring(slash + 1) : trimmed;
  }

  /// Exact-id row (namespace tolerant). Deliberately NO `models.first`
  /// fallback: that leaked the first (often image) row's pricing into every
  /// unknown model. Generic fallbacks are per-capability decisions below.
  AiModelConfig? _findModel(String modelId) {
    final id = modelId.trim();
    final bare = _stripCatalogNamespace(id);
    for (final m in config.models) {
      if (m.id == id || m.id == bare) return m;
    }
    return null;
  }

  bool _modelHasVoiceCapability(AiModelConfig? m) {
    if (m == null) return false;
    return m.capabilities.any((c) => c == 'voice' || c == 'audio');
  }

  // -- text pricing -----------------------------------------------------------

  /// Context-tier row from a `tokens` pricing list (mirror backend
  /// `pickLegacyTokenRow`). Rows may declare `contextThreshold` like
  /// `<=200K` / `>200K`.
  ({double input, double output})? _pickTokenRow(
    AiModelConfig model,
    int totalTokens,
  ) {
    final rows = model.pricing.where((p) => p.unit == 'tokens').toList();
    if (rows.isEmpty) return null;
    final isLargeContext = totalTokens > 200000;
    final preferred = rows.firstWhere((p) {
      final th = p.contextThreshold ?? '';
      return isLargeContext ? th.contains('>') : th.contains('<=');
    }, orElse: () => rows.first);
    final input = preferred.inputPerMToken ?? 0.0;
    final output = preferred.outputPerMToken ?? 0.0;
    if (input <= 0 && output <= 0) return null;
    return (input: input, output: output);
  }

  /// USD-per-1M pricing: exact-id row (catalog rows are merged into `models`
  /// with per-1M pricing by the app) → named default row → `null` (free).
  /// Mirrors backend `resolveTextTokenPricing`.
  ({double input, double output})? _resolveTextTokenPricing(
    String modelId,
    int totalTokens,
  ) {
    final exact = _findModel(modelId);
    if (exact != null) {
      final row = _pickTokenRow(exact, totalTokens);
      if (row != null) return row;
    }
    final fallback = _findModel(_defaultTextPricingModelId);
    if (fallback != null) {
      final row = _pickTokenRow(fallback, totalTokens);
      if (row != null) return row;
    }
    return null;
  }

  // -- image pricing ------------------------------------------------------------

  /// Catalog per-image USD carried on the row, preferring the per-tier map
  /// (requested tier → 1K → 2K → 4K → first positive), then the flat value.
  double? _pickCatalogImageUsd(AiModelConfig? model, String? imageSize) {
    if (model == null) return null;
    final perTier = model.imageOutputPerSizeUsd;
    if (perTier.isNotEmpty) {
      final ordered = <String>[
        if (imageSize != null && imageSize.isNotEmpty) imageSize,
        '1K',
        '2K',
        '4K',
      ];
      for (final key in ordered) {
        final value = perTier[key];
        if (value != null && value > 0) return value;
      }
      for (final value in perTier.values) {
        if (value > 0) return value;
      }
    }
    final flat = model.imageOutputUsd;
    return flat != null && flat > 0 ? flat : null;
  }

  /// Legacy `unit:'image'` row output (USD per image).
  double? _pickLegacyImageUsd(AiModelConfig? model) {
    final row = model?.pricing.where((p) => p.unit == 'image').firstOrNull;
    final usd = row?.outputPerMToken;
    return usd != null && usd > 0 ? usd : null;
  }

  // -- shared retail add-ons ------------------------------------------------------

  /// Attachment surcharge in DZD (same USD→DZD×multiplier rule as backend).
  double _attachmentExtraUserDzd({
    required int attachmentCount,
    required String attachmentResolution,
  }) {
    if (attachmentCount <= 0) return 0.0;
    final b = config.billing;
    var attachCostUsd = attachmentCount * b.referenceAttachmentPerFileUsd;
    if (attachmentResolution == 'high') {
      attachCostUsd +=
          attachmentCount * b.referenceAttachmentHighExtraPerFileUsd;
    } else if (attachmentResolution == 'low') {
      attachCostUsd -=
          attachmentCount * b.referenceAttachmentLowDiscountPerFileUsd;
    }
    return _roundMoney(
      attachCostUsd * config.exchangeRate * b.retailMultiplier,
    );
  }

  /// Flat DZD resolution extras — ONE rule, mirror of backend
  /// `computeResolutionExtrasDzd`:
  ///  - output extra only when an output size tier is requested
  ///    (1K→LOW, 2K→MEDIUM, 4K→HIGH); callers pass [imageSize] only for
  ///    models that support output tiers,
  ///  - input extra only when an explicit input resolution is requested
  ///    (`max(0, cost[resolution] − cost[LOW])`).
  ({double outputExtraDzd, double inputExtraDzd, double totalDzd})
  _resolutionExtrasDzd({String? imageSize, String? resolution}) {
    var outputExtraDzd = 0.0;
    if (imageSize != null && imageSize.isNotEmpty) {
      final key = switch (imageSize) {
        '4K' => 'MEDIA_RESOLUTION_HIGH',
        '2K' => 'MEDIA_RESOLUTION_MEDIUM',
        _ => 'MEDIA_RESOLUTION_LOW',
      };
      outputExtraDzd = _roundMoney(config.resolutionCosts[key] ?? 0.0);
    }

    var inputExtraDzd = 0.0;
    if (resolution != null && resolution.isNotEmpty) {
      final low = config.resolutionCosts['MEDIA_RESOLUTION_LOW'] ?? 0.0;
      final tier = config.resolutionCosts[resolution] ?? 0.0;
      inputExtraDzd = _roundMoney(math.max(0.0, tier - low));
    }

    return (
      outputExtraDzd: outputExtraDzd,
      inputExtraDzd: inputExtraDzd,
      totalDzd: _roundMoney(outputExtraDzd + inputExtraDzd),
    );
  }

  // -- voice pricing --------------------------------------------------------------

  /// Voice row: exact id → named TTS default → any voice-capable row.
  /// Never an arbitrary `models.first` (an image model in the default seed).
  AiModelConfig? _findVoiceModel(String modelId) {
    final exact = _findModel(modelId);
    if (exact != null) return exact;
    final namedDefault = _findModel(_defaultTtsModelId);
    if (namedDefault != null) return namedDefault;
    for (final m in config.models) {
      if (_modelHasVoiceCapability(m)) return m;
    }
    return null;
  }

  /// Flat provider USD per TTS generation; skips zero values. Units
  /// `audio`/`voice`; for voice-capable rows also `image` (the legacy admin
  /// editor only exposed the image unit, so voice rows were priced through it).
  double? _pickTtsFlatUsd(AiModelConfig model) {
    for (final unit in ['audio', 'voice']) {
      final p = model.pricing.where((x) => x.unit == unit).firstOrNull;
      final o = p?.outputPerMToken;
      if (o != null && o > 0) return o;
    }
    if (_modelHasVoiceCapability(model)) {
      final img = model.pricing.where((x) => x.unit == 'image').firstOrNull;
      final o = img?.outputPerMToken;
      if (o != null && o > 0) return o;
    }
    return null;
  }

  /// Base TTS pricing (mirror backend `computeBaseVoiceoverBilling`):
  /// `localCost` → flat USD → tokens per-1M → floor. Non-localCost paths are
  /// floored by `voiceGeneration.minimumChargeUsd` × rate. Provider cost is
  /// honest (0 when only a retail figure is known).
  ({double baseDzd, double providerCostUsd, bool usedLocalCost})
  _voiceoverBase({
    required String modelId,
    required int promptTokens,
    required int outputTokens,
  }) {
    final b = config.billing;
    final floorDzd = _roundMoney(b.voiceMinimumChargeUsd * config.exchangeRate);
    final model = _findVoiceModel(modelId);
    if (model == null) {
      return (baseDzd: floorDzd, providerCostUsd: 0.0, usedLocalCost: false);
    }

    final local = model.localCost;
    if (local != null) {
      // Retail override: the true provider cost is not derivable from it.
      return (
        baseDzd: _roundMoney(local),
        providerCostUsd: 0.0,
        usedLocalCost: true,
      );
    }

    final flatUsd = _pickTtsFlatUsd(model);
    if (flatUsd != null) {
      return (
        baseDzd: math.max(
          floorDzd,
          _roundMoney(flatUsd * config.exchangeRate * b.retailMultiplier),
        ),
        providerCostUsd: flatUsd,
        usedLocalCost: false,
      );
    }

    final rates = _pickTokenRow(model, promptTokens + outputTokens);
    if (rates != null) {
      final providerUsd =
          (promptTokens / 1e6) * rates.input +
          (outputTokens / 1e6) * rates.output;
      return (
        baseDzd: math.max(
          floorDzd,
          _roundMoney(providerUsd * config.exchangeRate * b.retailMultiplier),
        ),
        providerCostUsd: providerUsd,
        usedLocalCost: false,
      );
    }

    return (baseDzd: floorDzd, providerCostUsd: 0.0, usedLocalCost: false);
  }

  // -- estimators -------------------------------------------------------------

  /// Estimate the cost of an image generation action.
  ///
  /// Covers: image gen, logo gen, editOrGenerateSimpleImage, landing-page
  /// image step. Base precedence: catalog per-image USD on the row →
  /// legacy `unit:'image'` row → `defaultImageCost` floor; legacy `localCost`
  /// overrides the retail output (provider cost stays truthful).
  ///
  /// Pass [imageSize] only for models that support output tiers (the merchant
  /// helper gates it) so the output-size extra matches the backend, which
  /// resolves the effective tier via `pickImageSize`.
  AiCostEstimate estimateImageGeneration({
    String modelId = _defaultImageModelId,
    int attachmentCount = 0,
    String attachmentResolution = 'medium',
    String? resolution,
    String? imageSize,
    int iterations = 1,
    int referenceImageCount = 0,
    double featureAddonsDzd = 0,
  }) {
    final exchangeRate = config.exchangeRate;
    final mult = config.billing.retailMultiplier;
    final model = _findModel(modelId);

    // Provider USD per image: catalog → legacy row → defaultImageCost floor.
    final catalogUsd = _pickCatalogImageUsd(model, imageSize);
    final legacyUsd = catalogUsd == null ? _pickLegacyImageUsd(model) : null;
    final providerCostUsdPerImage =
        catalogUsd ?? legacyUsd ?? config.defaultImageCostDzd / exchangeRate;
    final providerCostDzdPerImage = providerCostUsdPerImage * exchangeRate;

    final localCost = model?.localCost;
    final usedLocalCost = localCost != null;
    final basePerIteration = localCost != null
        ? _roundMoney(localCost)
        : _roundMoney(providerCostDzdPerImage * mult);

    final iter = math.max(1, iterations);
    final baseCostDzd = _roundMoney(basePerIteration * iter);

    final refExtraDzd = _roundMoney(
      math.max(0, referenceImageCount) * config.referenceImageCostDzd,
    );

    final attachExtraDzd = _attachmentExtraUserDzd(
      attachmentCount: math.max(0, attachmentCount),
      attachmentResolution: attachmentResolution,
    );

    final resExtras = _resolutionExtrasDzd(
      imageSize: imageSize,
      resolution: resolution,
    );

    final addonsDzd = _roundMoney(math.max(0.0, featureAddonsDzd));

    final userCostDzd = _roundMoney(
      baseCostDzd +
          refExtraDzd +
          attachExtraDzd +
          resExtras.totalDzd +
          addonsDzd,
    );

    return AiCostEstimate(
      providerCostUsd: providerCostUsdPerImage * iter,
      providerCostDzd: providerCostDzdPerImage * iter,
      userCostDzd: userCostDzd,
      exchangeRate: exchangeRate,
      multiplier: mult,
      usedLocalCost: usedLocalCost,
      breakdown: {
        'baseCostDzd': baseCostDzd,
        'referenceImageExtraDzd': refExtraDzd,
        'attachmentExtraDzd': attachExtraDzd,
        'outputResolutionExtraDzd': resExtras.outputExtraDzd,
        'inputResolutionExtraDzd': resExtras.inputExtraDzd,
        'resolutionExtraDzd': resExtras.totalDzd,
        'featureAddonsDzd': addonsDzd,
        'iterations': iter.toDouble(),
        'referenceImageCount': referenceImageCount.toDouble(),
        'attachmentCount': attachmentCount.toDouble(),
      },
    );
  }

  /// Estimate the cost of a text generation action.
  ///
  /// Covers: updateProductUsingAi, generateSimpleCode,
  /// generateCustomComponentCode. Uses estimated tokens (the backend bills
  /// exact usage post-generation). Free when the model is unpriced everywhere
  /// or `promptTokens < freeTierMaxPromptTokens` (prompt tokens — not total,
  /// mirroring the backend's documented free-tier semantics).
  AiCostEstimate estimateTextGeneration({
    String modelId = _defaultTextPricingModelId,
    int? estimatedPromptTokens,
    int? estimatedOutputTokens,
  }) {
    final bg = config.billing;
    final promptTokens = math.max(
      0,
      estimatedPromptTokens ?? bg.textDefaultPromptTokens,
    );
    final outputTokens = math.max(
      0,
      estimatedOutputTokens ?? bg.textDefaultOutputTokens,
    );
    final exchangeRate = config.exchangeRate;

    final pricing = _resolveTextTokenPricing(
      modelId,
      promptTokens + outputTokens,
    );
    if (pricing == null || promptTokens < bg.textFreeTierMaxTokens) {
      return AiCostEstimate(
        providerCostUsd: 0,
        providerCostDzd: 0,
        userCostDzd: 0,
        exchangeRate: exchangeRate,
        multiplier: bg.retailMultiplier,
        usedLocalCost: false,
        breakdown: {
          'estimatedPromptTokens': promptTokens.toDouble(),
          'estimatedOutputTokens': outputTokens.toDouble(),
          'isFree': 1,
        },
      );
    }

    final providerCostUsd =
        (promptTokens / 1000000) * pricing.input +
        (outputTokens / 1000000) * pricing.output;
    final providerCostDzd = providerCostUsd * exchangeRate;
    final userCostDzd = _roundMoney(providerCostDzd * bg.retailMultiplier);

    return AiCostEstimate(
      providerCostUsd: providerCostUsd,
      providerCostDzd: providerCostDzd,
      userCostDzd: userCostDzd,
      exchangeRate: exchangeRate,
      multiplier: bg.retailMultiplier,
      usedLocalCost: false,
      breakdown: {
        'estimatedPromptTokens': promptTokens.toDouble(),
        'estimatedOutputTokens': outputTokens.toDouble(),
        'isFree': 0,
      },
    );
  }

  /// Voiceover: model-based TTS base + attachment surcharge + optional
  /// script-enhancement add-on. The backend settles from ACTUAL usage
  /// (`computeVoiceoverSettlement`); this preview uses the same retail policy
  /// with heuristic tokens from [scriptCharLength] / [attachmentCount] (or
  /// explicit [estimatedPromptTokens] / [estimatedOutputTokens]).
  AiCostEstimate estimateVoiceover({
    String modelId = _defaultTtsModelId,
    int attachmentCount = 0,
    String attachmentResolution = 'medium',
    bool enhanceScript = true,
    int scriptCharLength = 0,
    int? estimatedPromptTokens,
    int? estimatedOutputTokens,
  }) {
    final exchangeRate = config.exchangeRate;
    final b = config.billing;
    final count = math.max(0, attachmentCount);
    final tokenEst =
        estimatedPromptTokens != null && estimatedOutputTokens != null
        ? (
            promptTokens: math.max(0, estimatedPromptTokens),
            outputTokens: math.max(0, estimatedOutputTokens),
          )
        : _ttsTokenEstimatesFromBilling(
            b,
            math.max(0, scriptCharLength),
            count,
          );

    final base = _voiceoverBase(
      modelId: modelId,
      promptTokens: tokenEst.promptTokens,
      outputTokens: tokenEst.outputTokens,
    );
    final attachExtra = _attachmentExtraUserDzd(
      attachmentCount: count,
      attachmentResolution: attachmentResolution,
    );
    final enhanceExtra = enhanceScript
        ? _roundMoney(b.voiceScriptEnhancementAddonUsd * exchangeRate)
        : 0.0;
    final userCostDzd = _roundMoney(base.baseDzd + attachExtra + enhanceExtra);

    return AiCostEstimate(
      providerCostUsd: base.providerCostUsd,
      providerCostDzd: base.providerCostUsd * exchangeRate,
      userCostDzd: userCostDzd,
      exchangeRate: exchangeRate,
      multiplier: b.retailMultiplier,
      usedLocalCost: base.usedLocalCost,
      breakdown: {
        'ttsBaseDzd': base.baseDzd,
        'attachmentExtraDzd': attachExtra,
        'enhanceAddonDzd': enhanceExtra,
        'attachmentCount': count.toDouble(),
        'estimatedPromptTokens': tokenEst.promptTokens.toDouble(),
        'estimatedOutputTokens': tokenEst.outputTokens.toDouble(),
      },
    );
  }

  /// Estimates landing-page **image** cost — same formula as
  /// [estimateImageGeneration] (image-studio parity).
  ///
  /// When [imageModelId] is empty, returns the platform fixed
  /// `landingPageFixedChargeUsd` (placeholder until an image model is chosen
  /// in the UI; provider cost unknown → 0). A ≤ 0 image quote also falls back
  /// to the fixed charge (zero-guard), keeping the truthful provider cost.
  ///
  /// [textModelId] is ignored for pricing; landing-page billing matches image
  /// studio (offline and server `quoteImageLandingPage`).
  AiCostEstimate estimateImageLandingPage({
    String? imageModelId,
    String? textModelId,
    int attachmentCount = 0,
    String attachmentResolution = 'medium',
    String? resolution,
    String? imageSize,
    int referenceImageCount = 0,
    double featureAddonsDzd = 0,
  }) {
    final exchangeRate = config.exchangeRate;
    final b = config.billing;
    final mid = imageModelId?.trim();

    if (mid == null || mid.isEmpty) {
      final fixedDzd = _roundMoney(
        b.landingPageFixedChargeUsd * exchangeRate,
      );
      return AiCostEstimate(
        providerCostUsd: 0,
        providerCostDzd: 0,
        userCostDzd: fixedDzd,
        exchangeRate: exchangeRate,
        multiplier: b.retailMultiplier,
        usedLocalCost: false,
        breakdown: {'fixedCostDzd': fixedDzd},
      );
    }

    final img = estimateImageGeneration(
      modelId: mid,
      attachmentCount: attachmentCount,
      attachmentResolution: attachmentResolution,
      resolution: resolution,
      imageSize: imageSize,
      referenceImageCount: referenceImageCount,
      featureAddonsDzd: featureAddonsDzd,
    );
    if (img.userCostDzd > 0) return img;

    // Zero-guard: misconfigured pricing must never show a free landing page.
    final fixedDzd = _roundMoney(b.landingPageFixedChargeUsd * exchangeRate);
    return AiCostEstimate(
      providerCostUsd: img.providerCostUsd,
      providerCostDzd: img.providerCostDzd,
      userCostDzd: fixedDzd,
      exchangeRate: exchangeRate,
      multiplier: img.multiplier,
      usedLocalCost: img.usedLocalCost,
      breakdown: {...img.breakdown, 'fixedCostDzd': fixedDzd},
    );
  }
}
