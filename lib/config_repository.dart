import 'package:dio/dio.dart';

import 'package:feeef/core/app_config.dart';
import 'package:feeef/core/feature_rules_parser.dart';
import 'package:feeef/core/platforms.dart';

export 'package:feeef/core/app_config.dart'
    show AIModel, AIModelsConfig, AIModelPricing;

class ConfigRepository {
  final Dio client;
  AppConfig? _cachedConfig;

  ConfigRepository({required this.client});

  Future<AppConfig> fetch() async {
    if (_cachedConfig != null) {
      return _cachedConfig!;
    }

    try {
      final response = await client.get('/configs');
      _cachedConfig = AppConfig.fromJson(response.data);
      return _cachedConfig!;
    } on DioException {
      // If cached, return it; else rethrow
      if (_cachedConfig != null) {
        return _cachedConfig!;
      }
      rethrow;
    }
  }

  Future<void> init() async {
    await fetch();
  }

  AppConfig? get config => _cachedConfig;

  UpdateConfig? get update => _cachedConfig?.update;

  List<PopupConfig>? get popups => _cachedConfig?.popups;

  Map<String, FeatureConfig>? get features => _cachedConfig?.features;

  PaymentConfig? get payments => _cachedConfig?.payments;

  StorePaymentMethodsConfig? get storePaymentMethods =>
      _cachedConfig?.storePaymentMethods;

  AIModelsConfig? get aiModels => _cachedConfig?.aiModels;

  /// Returns whether the feature is active and passes the platform filter (rules).
  ///
  /// Rules use PetitParser: variables [android], [ios], [web], [macos] (1 on
  /// that platform, 0 otherwise), operators `!` (NOT), `+` (OR), `*` (AND).
  /// Empty rules mean no filter (always pass). Parse errors fail closed.
  bool isFeatureActive(String featureKey) {
    final feature = features?[featureKey];
    if (feature == null) return false;
    if (!feature.active) return false;
    final rules = feature.rules.trim();
    if (rules.isEmpty) return true;
    return evaluateFeatureRules(
      rules,
      android: Platforms.isAndroid,
      ios: Platforms.isIOS,
      web: Platforms.isWeb,
      macos: Platforms.isMacOS,
    );
  }
}
