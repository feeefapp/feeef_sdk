/// Pure utility class for estimating AI generation costs client-side.
///
/// Mirrors the backend `AiCalculator` in `backend/app/services/ai_calculator.ts`.
/// `aiModels.billing` shape: [AIModelsBilling] in `app_config.dart` — keep in sync with
/// backend `ai_models_billing.ts`, feeefjs `ai-calculator.ts`, admins `useOptions.ts`.
/// All methods are deterministic and require no network calls.
/// The backend quote is authoritative; this calculator is a deterministic
/// mirror for UX (showing estimated cost before the user clicks generate).
library;

import 'dart:math' as math;

import 'package:feeef/core/app_config.dart' show AIModelsBilling;

/// Fallback DZD per USD when `aiModels.exchangeRate` is absent (mirror backend).
const double fallbackAiExchangeRate = 260;

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
    whenAttachmentsOnlyTokens: ttsIn?.whenAttachmentsOnlyTokens ??
        defaults.tts.whenAttachmentsOnlyTokens,
    promptBaseTokens:
        ttsIn?.promptBaseTokens ?? defaults.tts.promptBaseTokens,
    promptPerAttachmentTokens: ttsIn?.promptPerAttachmentTokens ??
        defaults.tts.promptPerAttachmentTokens,
    outputMinimumTokens:
        ttsIn?.outputMinimumTokens ?? defaults.tts.outputMinimumTokens,
    outputToTextTokenRatio: ttsIn?.outputToTextTokenRatio ??
        defaults.tts.outputToTextTokenRatio,
    maxTotalTokens:
        ttsIn?.maxTotalTokens ?? defaults.tts.maxTotalTokens,
  );

  return ResolvedAiModelsBilling(
    retailMultiplier: partial.retailMarkup?.multiplier ??
        defaults.retailMultiplier,
    referenceAttachmentPerFileUsd: partial
            .referenceAttachmentSurcharge?.perFileUsd ??
        defaults.referenceAttachmentPerFileUsd,
    referenceAttachmentHighExtraPerFileUsd: partial
            .referenceAttachmentSurcharge?.highResolutionExtraPerFileUsd ??
        defaults.referenceAttachmentHighExtraPerFileUsd,
    referenceAttachmentLowDiscountPerFileUsd: partial
            .referenceAttachmentSurcharge?.lowResolutionDiscountPerFileUsd ??
        defaults.referenceAttachmentLowDiscountPerFileUsd,
    imageFallbackProviderCostPerImageUsd: partial
            .imageGeneration?.fallbackProviderCostPerImageUsd ??
        defaults.imageFallbackProviderCostPerImageUsd,
    textFreeTierMaxTokens: partial.textGeneration?.freeTierMaxPromptTokens ??
        defaults.textFreeTierMaxTokens,
    textDefaultPromptTokens: partial
            .textGeneration?.estimatedPromptTokensDefault ??
        defaults.textDefaultPromptTokens,
    textDefaultOutputTokens: partial
            .textGeneration?.estimatedOutputTokensDefault ??
        defaults.textDefaultOutputTokens,
    voiceMinimumChargeUsd: partial.voiceGeneration?.minimumChargeUsd ??
        defaults.voiceMinimumChargeUsd,
    voiceScriptEnhancementAddonUsd: partial
            .voiceGeneration?.scriptEnhancementAddonUsd ??
        defaults.voiceScriptEnhancementAddonUsd,
    tts: tts,
    landingPageFixedChargeUsd: partial.landingPageImage?.fixedChargeUsd ??
        defaults.landingPageFixedChargeUsd,
  );
}

/// Result of a cost estimation.
class AiCostEstimate {
  /// What the AI provider charges us (USD).
  final double providerCostUsd;

  /// What the AI provider charges us (DZD).
  final double providerCostDzd;

  /// What the user pays (DZD) — includes profit margin.
  final double userCostDzd;

  /// Exchange rate used (DZD per USD).
  final double exchangeRate;

  /// Multiplier applied (e.g. 2.5 = 150% profit).
  final double multiplier;

  /// Whether a model-specific `localCost` override was used.
  final bool usedLocalCost;

  /// Itemised breakdown for transparency.
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
  final double? inputPerMToken;
  final double? outputPerMToken;
  final String unit;
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
  final double? localCost;

  /// From `aiModels.models[].capabilities` (e.g. `voice`, `audio`) — used for TTS pricing fallbacks.
  final List<String> capabilities;

  const AiModelConfig({
    required this.id,
    this.pricing = const [],
    this.localCost,
    this.capabilities = const [],
  });
}

/// Configuration for the calculator, typically sourced from the
/// backend's `aiModels` config (available via the app config endpoint).
class AiCalculatorConfig {
  final double exchangeRate;
  final double defaultImageCostDzd;
  final double referenceImageCostDzd;
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
  })  : exchangeRate = exchangeRate ?? fallbackAiExchangeRate,
        resolutionCosts = resolutionCosts ??
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

    final models = (json['models'] as List<dynamic>?)
            ?.map((m) => AiModelConfig(
                  id: m['id'] as String? ?? '',
                  localCost: (m['localCost'] as num?)?.toDouble(),
                  capabilities: (m['capabilities'] as List<dynamic>?)
                          ?.map((e) => e.toString())
                          .toList() ??
                      const [],
                  pricing: (m['pricing'] as List<dynamic>?)
                          ?.map((p) => AiModelPricing(
                                inputPerMToken:
                                    (p['input'] as num?)?.toDouble(),
                                outputPerMToken:
                                    (p['output'] as num?)?.toDouble(),
                                unit: p['unit'] as String? ?? 'tokens',
                                contextThreshold:
                                    p['contextThreshold'] as String?,
                              ))
                          .toList() ??
                      [],
                ))
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
      resolutionCosts: resCosts.isEmpty
          ? null
          : resCosts,
      models: models,
      billingResolved: mergeAiModelsBilling(billingPartial),
    );
  }
}

double _roundMoney(double amount, [int precision = 3]) {
  final factor = math.pow(10, precision);
  return (amount * factor).roundToDouble() / factor;
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
    final rawPrompt = t.promptBaseTokens +
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

  AiModelConfig? _findModel(String modelId, String fallbackId) {
    final byId = config.models
        .where((m) => m.id == modelId)
        .firstOrNull;
    if (byId != null) return byId;
    final fallback = config.models
        .where((m) => m.id == fallbackId)
        .firstOrNull;
    if (fallback != null) return fallback;
    return config.models.isNotEmpty ? config.models.first : null;
  }

  bool _modelHasVoiceCapability(AiModelConfig? m) {
    if (m == null) return false;
    return m.capabilities.any((c) => c == 'voice' || c == 'audio');
  }

  /// TTS row resolution: never falls back to [config.models.first] (often an image model).
  AiModelConfig? _findVoiceModel(String modelId, String fallbackId) {
    final byId =
        config.models.where((m) => m.id == modelId).firstOrNull;
    if (byId != null) return byId;
    final fallback =
        config.models.where((m) => m.id == fallbackId).firstOrNull;
    if (fallback != null) return fallback;
    for (final m in config.models) {
      if (_modelHasVoiceCapability(m)) return m;
    }
    return null;
  }

  /// Provider USD per TTS output; skips zero. Units `audio`/`voice`; for voice models also `image`.
  double? _pickTtsProviderOutputUsd(AiModelConfig? model) {
    if (model == null || model.pricing.isEmpty) return null;
    final voiceLike = _modelHasVoiceCapability(model);
    for (final unit in ['audio', 'voice']) {
      final p =
          model.pricing.where((x) => x.unit == unit).firstOrNull;
      final o = p?.outputPerMToken;
      if (o != null && o > 0) return o;
    }
    if (voiceLike) {
      final img =
          model.pricing.where((x) => x.unit == 'image').firstOrNull;
      final o = img?.outputPerMToken;
      if (o != null && o > 0) return o;
    }
    return null;
  }

  ({double input, double output})? _pickVoiceTokenPricing(
    AiModelConfig model,
    int totalTokens,
  ) {
    final rows = model.pricing.where((p) => p.unit == 'tokens').toList();
    if (rows.isEmpty) return null;
    final isLargeContext = totalTokens > 200000;
    final preferred = rows
            .where((p) {
              final th = p.contextThreshold ?? '';
              if (th.isEmpty) return false;
              return isLargeContext ? th.contains('>') : th.contains('<=');
            })
            .firstOrNull ??
        rows.first;
    final inp = preferred.inputPerMToken ?? 0.0;
    final out = preferred.outputPerMToken ?? 0.0;
    if (inp <= 0 && out <= 0) return null;
    return (input: inp, output: out);
  }

  (double baseDzd, bool usedLocal) _voiceoverBaseUserCostDzd({
    required String modelId,
    required int promptTokens,
    required int outputTokens,
  }) {
    final b = config.billing;
    final floorDzd =
        _roundMoney(b.voiceMinimumChargeUsd * config.exchangeRate);
    final model = _findVoiceModel(modelId, 'gemini-2.5-pro-preview-tts');
    if (model == null) {
      return (floorDzd, false);
    }
    final local = model.localCost;
    if (local != null) {
      return (_roundMoney(local), true);
    }
    final flatUsd = _pickTtsProviderOutputUsd(model);
    if (flatUsd != null) {
      return (
        _roundMoney(
          flatUsd * config.exchangeRate * b.retailMultiplier,
        ),
        false
      );
    }
    final rates = _pickVoiceTokenPricing(model, promptTokens + outputTokens);
    if (rates != null) {
      final providerUsd = (promptTokens / 1e6) * rates.input +
          (outputTokens / 1e6) * rates.output;
      return (
        _roundMoney(
          providerUsd * config.exchangeRate * b.retailMultiplier,
        ),
        false
      );
    }
    return (floorDzd, false);
  }

  /// Attachment surcharge in DZD (same USD→DZD×multiplier rule as image generation).
  double _attachmentExtraUserDzd({
    required int attachmentCount,
    required String attachmentResolution,
  }) {
    if (attachmentCount <= 0) return 0.0;
    final b = config.billing;
    var attachCostUsd =
        attachmentCount * b.referenceAttachmentPerFileUsd;
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

  /// Estimate the cost of an image generation action.
  ///
  /// Covers: image gen, logo gen, editOrGenerateSimpleImage.
  AiCostEstimate estimateImageGeneration({
    String modelId = 'gemini-3.1-flash-image-preview',
    int attachmentCount = 0,
    String attachmentResolution = 'medium',
    String? resolution,
    String? imageSize,
    int iterations = 1,
    int referenceImageCount = 0,
  }) {
    final model = _findModel(modelId, 'gemini-3.1-flash-image-preview');
    final exchangeRate = config.exchangeRate;
    final defaultImageCostDzd = config.defaultImageCostDzd;

    final localCost = model?.localCost;
    final imagePricing = model?.pricing
        .where((p) => p.unit == 'image')
        .firstOrNull;

    final providerCostUsd = imagePricing?.outputPerMToken != null
        ? imagePricing!.outputPerMToken!
        : defaultImageCostDzd / exchangeRate;
    final providerCostDzd = imagePricing?.outputPerMToken != null
        ? providerCostUsd * exchangeRate
        : defaultImageCostDzd;

    final computedUserCostDzd =
        providerCostDzd * config.billing.retailMultiplier;
    final usedLocalCost = localCost != null;
    final basePerIteration = usedLocalCost
        ? localCost
        : _roundMoney(computedUserCostDzd);

    final baseCostDzd = _roundMoney(basePerIteration * iterations);

    // Reference image extra cost
    final refExtraDzd = _roundMoney(
      referenceImageCount * config.referenceImageCostDzd,
    );

    final attachExtraDzd = _attachmentExtraUserDzd(
      attachmentCount: attachmentCount,
      attachmentResolution: attachmentResolution,
    );

    // Resolution extra: (1) Flash/Pro — output size 1K/2K/4K → resolutionCosts (outputResKey).
    // (2) Any model — input [resolution] tier surcharge above MEDIA_RESOLUTION_LOW
    // (same keys as output; applies even with zero reference images so the control
    // matches wallet + UX). Stacks with (1) when both output size and input tier apply.
    // Match [AIService.generateOrEditImage]: Flash + Pro preview support output imageSize tiers.
    final supportsImageSize = modelId == 'gemini-3.1-flash-image-preview' ||
        modelId == 'gemini-3-pro-image-preview';
    String outputResKey = 'MEDIA_RESOLUTION_HIGH';
    if (supportsImageSize && imageSize != null) {
      outputResKey = switch (imageSize) {
        '4K' => 'MEDIA_RESOLUTION_HIGH',
        '2K' => 'MEDIA_RESOLUTION_MEDIUM',
        _ => 'MEDIA_RESOLUTION_LOW',
      };
    } else if (resolution != null) {
      outputResKey = resolution;
    }
    final outputResExtraDzd = supportsImageSize
        ? _roundMoney(config.resolutionCosts[outputResKey] ?? 0)
        : 0.0;

    double referenceResolutionExtraDzd = 0.0;
    if (resolution != null) {
      final lowCost = config.resolutionCosts['MEDIA_RESOLUTION_LOW'] ?? 0;
      final tierCost = config.resolutionCosts[resolution] ?? 0;
      final delta = tierCost - lowCost;
      referenceResolutionExtraDzd =
          delta > 0 ? _roundMoney(delta) : 0.0;
    }

    final resExtraDzd =
        _roundMoney(outputResExtraDzd + referenceResolutionExtraDzd);

    final userCostDzd = _roundMoney(
      baseCostDzd + refExtraDzd + attachExtraDzd + resExtraDzd,
    );

    return AiCostEstimate(
      providerCostUsd: providerCostUsd * iterations,
      providerCostDzd: providerCostDzd * iterations,
      userCostDzd: userCostDzd,
      exchangeRate: exchangeRate,
      multiplier: config.billing.retailMultiplier,
      usedLocalCost: usedLocalCost,
      breakdown: {
        'baseCostDzd': baseCostDzd,
        'referenceImageExtraDzd': refExtraDzd,
        'attachmentExtraDzd': attachExtraDzd,
        'outputResolutionExtraDzd': outputResExtraDzd,
        'referenceResolutionExtraDzd': referenceResolutionExtraDzd,
        'resolutionExtraDzd': resExtraDzd,
        'iterations': iterations.toDouble(),
        'referenceImageCount': referenceImageCount.toDouble(),
        'attachmentCount': attachmentCount.toDouble(),
      },
    );
  }

  /// Estimate the cost of a text generation action.
  ///
  /// Covers: updateProductUsingAi, generateSimpleCode,
  ///         generateCustomComponentCode.
  /// Uses estimated tokens (exact cost billed post-generation).
  AiCostEstimate estimateTextGeneration({
    String modelId = 'gemini-3-flash-preview',
    int? estimatedPromptTokens,
    int? estimatedOutputTokens,
  }) {
    final bg = config.billing;
    final promptTokens =
        estimatedPromptTokens ?? bg.textDefaultPromptTokens;
    final outputTokens =
        estimatedOutputTokens ?? bg.textDefaultOutputTokens;
    final totalTokens = promptTokens + outputTokens;

    final exchangeRate = config.exchangeRate;
    final model = _findModel(modelId, 'gemini-3-flash-preview');
    final tokenPricing = model?.pricing
        .where((p) => p.unit == 'tokens')
        .firstOrNull;

    if (tokenPricing == null ||
        totalTokens < bg.textFreeTierMaxTokens) {
      return AiCostEstimate(
        providerCostUsd: 0,
        providerCostDzd: 0,
        userCostDzd: 0,
        exchangeRate: exchangeRate,
        multiplier: config.billing.retailMultiplier,
        usedLocalCost: false,
        breakdown: {
          'estimatedPromptTokens': promptTokens.toDouble(),
          'estimatedOutputTokens': outputTokens.toDouble(),
          'isFree': 1,
        },
      );
    }

    final inputPrice = tokenPricing.inputPerMToken ?? 0;
    final outputPrice = tokenPricing.outputPerMToken ?? 0;
    final providerCostUsd =
        (promptTokens / 1000000) * inputPrice +
            (outputTokens / 1000000) * outputPrice;
    final providerCostDzd = providerCostUsd * exchangeRate;
    final userCostDzd =
        _roundMoney(providerCostDzd * bg.retailMultiplier);

    return AiCostEstimate(
      providerCostUsd: providerCostUsd,
      providerCostDzd: providerCostDzd,
      userCostDzd: userCostDzd,
      exchangeRate: exchangeRate,
      multiplier: config.billing.retailMultiplier,
      usedLocalCost: false,
      breakdown: {
        'estimatedPromptTokens': promptTokens.toDouble(),
        'estimatedOutputTokens': outputTokens.toDouble(),
        'isFree': 0,
      },
    );
  }

  /// Voiceover: model-based TTS base + optional script-enhancement add-on + attachment surcharge
  /// (same attachment USD rule as [estimateImageGeneration]).
  ///
  /// Token-based TTS (`unit: tokens` in aiModels) uses
  /// [defaultVoiceTtsTokenEstimates] from [scriptCharLength] / [attachmentCount],
  /// or explicit [estimatedPromptTokens] / [estimatedOutputTokens].
  AiCostEstimate estimateVoiceover({
    String modelId = 'gemini-2.5-pro-preview-tts',
    int attachmentCount = 0,
    String attachmentResolution = 'medium',
    bool enhanceScript = true,
    int scriptCharLength = 0,
    int? estimatedPromptTokens,
    int? estimatedOutputTokens,
  }) {
    final exchangeRate = config.exchangeRate;
    final b = config.billing;
    final ttsCap = b.tts.maxTotalTokens;
    final tokenEst = estimatedPromptTokens != null &&
            estimatedOutputTokens != null
        ? (
            promptTokens: estimatedPromptTokens.clamp(0, ttsCap),
            outputTokens: estimatedOutputTokens.clamp(0, ttsCap),
          )
        : _ttsTokenEstimatesFromBilling(
            b,
            scriptCharLength,
            attachmentCount,
          );
    final (baseDzd, usedLocal) = _voiceoverBaseUserCostDzd(
      modelId: modelId,
      promptTokens: tokenEst.promptTokens,
      outputTokens: tokenEst.outputTokens,
    );
    final attachExtra = _attachmentExtraUserDzd(
      attachmentCount: attachmentCount,
      attachmentResolution: attachmentResolution,
    );
    final enhanceExtra = enhanceScript
        ? _roundMoney(b.voiceScriptEnhancementAddonUsd * exchangeRate)
        : 0.0;
    final userCostDzd = _roundMoney(baseDzd + attachExtra + enhanceExtra);
    return AiCostEstimate(
      providerCostUsd: userCostDzd / exchangeRate,
      providerCostDzd: userCostDzd,
      userCostDzd: userCostDzd,
      exchangeRate: exchangeRate,
      multiplier: 1,
      usedLocalCost: usedLocal,
      breakdown: {
        'fixedCostDzd': baseDzd,
        'attachmentExtraDzd': attachExtra,
        'enhanceAddonDzd': enhanceExtra,
        'attachmentCount': attachmentCount.toDouble(),
        'estimatedPromptTokens': tokenEst.promptTokens.toDouble(),
        'estimatedOutputTokens': tokenEst.outputTokens.toDouble(),
      },
    );
  }

  /// Estimates landing-page **image** cost — same formula as [estimateImageGeneration].
  ///
  /// When [imageModelId] is empty, returns the platform fixed [landingPageFixedChargeUsd]
  /// (placeholder until an image model is chosen in the UI).
  ///
  /// [textModelId] is ignored for pricing; landing-page billing matches image studio
  /// (offline and server `quoteImageLandingPage`).
  AiCostEstimate estimateImageLandingPage({
    String? imageModelId,
    String? textModelId,
    int attachmentCount = 0,
    String attachmentResolution = 'medium',
    String? resolution,
    String? imageSize,
    int referenceImageCount = 0,
  }) {
    final mid = imageModelId?.trim();
    if (mid == null || mid.isEmpty) {
      final exchangeRate = config.exchangeRate;
      final costDzd = _roundMoney(
        config.billing.landingPageFixedChargeUsd * exchangeRate,
      );
      return AiCostEstimate(
        providerCostUsd: costDzd / exchangeRate,
        providerCostDzd: costDzd,
        userCostDzd: costDzd,
        exchangeRate: exchangeRate,
        multiplier: 1,
        usedLocalCost: false,
        breakdown: {'fixedCostDzd': costDzd},
      );
    }

    final img = estimateImageGeneration(
      modelId: mid,
      attachmentCount: attachmentCount,
      attachmentResolution: attachmentResolution,
      resolution: resolution,
      imageSize: imageSize,
      referenceImageCount: referenceImageCount,
    );
    var total = img.userCostDzd;
    if (total <= 0) {
      total = _roundMoney(
        config.billing.landingPageFixedChargeUsd * config.exchangeRate,
      );
    }
    final exchangeRate = config.exchangeRate;
    return AiCostEstimate(
      providerCostUsd: total / exchangeRate,
      providerCostDzd: total,
      userCostDzd: total,
      exchangeRate: exchangeRate,
      multiplier: config.billing.retailMultiplier,
      usedLocalCost: img.usedLocalCost,
      breakdown: {
        'imageUserCostDzd': img.userCostDzd,
      },
    );
  }
}
