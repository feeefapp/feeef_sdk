enum PopupStrategy { once, always, eachDay, tillInteract, dailyTillInteract }

enum PopupActionType { externalUrl, route }

class PopupAction {
  final PopupActionType type;
  final String value;

  PopupAction({required this.type, required this.value});

  factory PopupAction.fromJson(Map<String, dynamic> json) {
    return PopupAction(
      type: PopupActionType.values.firstWhere((e) => e.name == json['type']),
      value: json['value'],
    );
  }

  Map<String, dynamic> toJson() => {'type': type.name, 'value': value};
}

class PopupConfig {
  final String imageUrl;
  final List<String> routes;
  final PopupStrategy strategy;
  final PopupAction action;

  PopupConfig({
    required this.imageUrl,
    required this.routes,
    required this.strategy,
    required this.action,
  });

  factory PopupConfig.fromJson(Map<String, dynamic> json) {
    return PopupConfig(
      imageUrl: json['imageUrl'],
      routes: List<String>.from(json['routes']),
      strategy: PopupStrategy.values.firstWhere(
        (e) => e.name == json['strategy'],
      ),
      action: PopupAction.fromJson(json['action']),
    );
  }

  Map<String, dynamic> toJson() => {
    'imageUrl': imageUrl,
    'routes': routes,
    'strategy': strategy.name,
    'action': action.toJson(),
  };
}

class UpdateConfig {
  final int min;
  final int? force;
  final String whatsnew;

  UpdateConfig({required this.min, this.force, required this.whatsnew});

  factory UpdateConfig.fromJson(Map<String, dynamic> json) {
    return UpdateConfig(
      min: json['min'],
      force: json['force'],
      whatsnew: json['whatsnew'],
    );
  }

  Map<String, dynamic> toJson() => {
    'min': min,
    'force': force,
    'whatsnew': whatsnew,
  };
}

class PartnersProgramSubfeatures {
  final bool send;
  final bool receive;
  final bool payDue;
  final bool buySubscription;
  final bool chargePoints;
  final bool deposit;

  PartnersProgramSubfeatures({
    required this.send,
    required this.receive,
    required this.payDue,
    required this.buySubscription,
    required this.chargePoints,
    required this.deposit,
  });

  factory PartnersProgramSubfeatures.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return PartnersProgramSubfeatures(
        send: true,
        receive: true,
        payDue: true,
        buySubscription: true,
        chargePoints: true,
        deposit: true,
      );
    }
    return PartnersProgramSubfeatures(
      send: json['send'] ?? true,
      receive: json['receive'] ?? true,
      payDue: json['payDue'] ?? true,
      buySubscription: json['buySubscription'] ?? true,
      chargePoints: json['chargePoints'] ?? true,
      deposit: json['deposit'] ?? true,
    );
  }

  Map<String, dynamic> toJson() => {
    'send': send,
    'receive': receive,
    'payDue': payDue,
    'buySubscription': buySubscription,
    'chargePoints': chargePoints,
    'deposit': deposit,
  };
}

class OnboardingConfig {
  final bool active;
  final bool enableCountry;
  final bool enableLang;
  final bool? enableCurrency;
  final bool? enableMembers;
  final bool? enableBranding;

  OnboardingConfig({
    required this.active,
    required this.enableCountry,
    required this.enableLang,
    this.enableCurrency,
    this.enableMembers,
    this.enableBranding,
  });

  factory OnboardingConfig.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return OnboardingConfig(
        active: true,
        enableCountry: true,
        enableLang: true,
        enableCurrency: true,
        enableMembers: true,
        enableBranding: true,
      );
    }
    return OnboardingConfig(
      active: json['active'] ?? true,
      enableCountry: json['enableCountry'] ?? true,
      enableLang: json['enableLang'] ?? true,
      enableCurrency: json['enableCurrency'] as bool?,
      enableMembers: json['enableMembers'] as bool?,
      enableBranding: json['enableBranding'] as bool?,
    );
  }

  Map<String, dynamic> toJson() => {
    'active': active,
    'enableCountry': enableCountry,
    'enableLang': enableLang,
    if (enableCurrency != null) 'enableCurrency': enableCurrency,
    if (enableMembers != null) 'enableMembers': enableMembers,
    if (enableBranding != null) 'enableBranding': enableBranding,
  };
}

class FeatureConfig {
  final bool active;
  final String rules;
  final String? whatsappNumber;
  final PartnersProgramSubfeatures? subfeatures;
  final OnboardingConfig? onboarding;

  FeatureConfig({
    required this.active,
    required this.rules,
    this.whatsappNumber,
    this.subfeatures,
    this.onboarding,
  });

  factory FeatureConfig.fromJson(Map<String, dynamic> json) {
    return FeatureConfig(
      active: json['active'],
      rules: json['rules'],
      whatsappNumber: json['whatsappNumber'],
      subfeatures: json['subfeatures'] != null
          ? PartnersProgramSubfeatures.fromJson(json['subfeatures'])
          : null,
      onboarding: json['onboarding'] != null
          ? OnboardingConfig.fromJson(json['onboarding'])
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
    'active': active,
    'rules': rules,
    if (whatsappNumber != null) 'whatsappNumber': whatsappNumber,
    if (subfeatures != null) 'subfeatures': subfeatures!.toJson(),
    if (onboarding != null) 'onboarding': onboarding!.toJson(),
  };
}

class PaymentMethodConfig {
  final String name;
  final bool active;
  final String? instructions;
  final Map<String, String> credentials;
  final String? currency;
  final num? exchangeRate;
  final num? minAmount;
  final num? maxAmount;

  PaymentMethodConfig({
    required this.name,
    required this.active,
    this.instructions,
    required this.credentials,
    this.currency,
    this.exchangeRate,
    this.minAmount,
    this.maxAmount,
  });

  factory PaymentMethodConfig.fromJson(Map<String, dynamic> json) {
    return PaymentMethodConfig(
      name: json['name'] ?? '',
      active: json['active'] ?? false,
      instructions: json['instructions'],
      credentials: Map<String, String>.from(json['credentials'] ?? {}),
      currency: json['currency'],
      exchangeRate: json['exchangeRate'] != null
          ? (json['exchangeRate'] as num)
          : null,
      minAmount: json['minAmount'] != null ? (json['minAmount'] as num) : null,
      maxAmount: json['maxAmount'] != null ? (json['maxAmount'] as num) : null,
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'active': active,
    'instructions': instructions,
    'credentials': credentials,
    'currency': currency,
    'exchangeRate': exchangeRate,
    'minAmount': minAmount,
    'maxAmount': maxAmount,
  };
}

/// Store payment method definition
/// Used for merchant store payment integrations (different from PaymentMethodConfig which is for deposits/subscriptions)
class StorePaymentMethod {
  final String id; // Slug identifier (e.g., 'chargily', 'paypal')
  final String name; // Display name (e.g., 'Chargily Pay', 'PayPal')
  final String? description;
  final bool active; // Whether this method is available/enabled

  StorePaymentMethod({
    required this.id,
    required this.name,
    this.description,
    required this.active,
  });

  factory StorePaymentMethod.fromJson(Map<String, dynamic> json) {
    return StorePaymentMethod(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'],
      active: json['active'] ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    if (description != null) 'description': description,
    'active': active,
  };
}

/// Store payment methods configuration
/// Contains list of available payment methods that merchants can configure for their stores
class StorePaymentMethodsConfig {
  final List<StorePaymentMethod> methods;

  StorePaymentMethodsConfig({required this.methods});

  factory StorePaymentMethodsConfig.fromJson(Map<String, dynamic> json) {
    return StorePaymentMethodsConfig(
      methods: (json['methods'] as List? ?? [])
          .map((e) => StorePaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'methods': methods.map((e) => e.toJson()).toList(),
  };
}

class PaymentConfig {
  final Map<String, PaymentMethodConfig> automatic;
  final Map<String, PaymentMethodConfig> manual;

  PaymentConfig({required this.automatic, required this.manual});

  factory PaymentConfig.fromJson(Map<String, dynamic> json) {
    return PaymentConfig(
      automatic: (json['automatic'] as Map<String, dynamic>).map(
        (k, v) => MapEntry(k, PaymentMethodConfig.fromJson(v)),
      ),
      manual: (json['manual'] as Map<String, dynamic>).map(
        (k, v) => MapEntry(k, PaymentMethodConfig.fromJson(v)),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'automatic': automatic.map((k, v) => MapEntry(k, v.toJson())),
    'manual': manual.map((k, v) => MapEntry(k, v.toJson())),
  };
}

class CurrencyConfig {
  final String code;
  final String symbol;
  final String name;
  final int precision;
  final num defaultRate;

  CurrencyConfig({
    required this.code,
    required this.symbol,
    required this.name,
    required this.precision,
    required this.defaultRate,
  });

  factory CurrencyConfig.fromJson(Map<String, dynamic> json) {
    return CurrencyConfig(
      code: json['code'],
      symbol: json['symbol'],
      name: json['name'],
      precision: json['precision'],
      defaultRate: json['defaultRate'],
    );
  }

  Map<String, dynamic> toJson() => {
    'code': code,
    'symbol': symbol,
    'name': name,
    'precision': precision,
    'defaultRate': defaultRate,
  };
}

class LanguageConfig {
  final String code;
  final String name;
  final String nativeName;
  final bool? rtl;

  LanguageConfig({
    required this.code,
    required this.name,
    required this.nativeName,
    this.rtl,
  });

  factory LanguageConfig.fromJson(Map<String, dynamic> json) {
    return LanguageConfig(
      code: json['code'],
      name: json['name'],
      nativeName: json['nativeName'],
      rtl: json['rtl'],
    );
  }

  Map<String, dynamic> toJson() => {
    'code': code,
    'name': name,
    'nativeName': nativeName,
    if (rtl != null) 'rtl': rtl,
  };
}

class PlanDiscount {
  final bool enabled;
  final List<List<int>>? keyframes; // [[months, discount%], ...]
  final int? minMonths;

  PlanDiscount({required this.enabled, this.keyframes, this.minMonths});

  factory PlanDiscount.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return PlanDiscount(enabled: false);
    }
    return PlanDiscount(
      enabled: json['enabled'] ?? false,
      keyframes: json['keyframes'] != null
          ? (json['keyframes'] as List)
                .map((e) => List<int>.from(e as List))
                .toList()
          : null,
      minMonths: json['minMonths'],
    );
  }

  Map<String, dynamic> toJson() => {
    'enabled': enabled,
    if (keyframes != null) 'keyframes': keyframes,
    if (minMonths != null) 'minMonths': minMonths,
  };
}

class Plan {
  final String id;
  final String name;
  final int cost;
  final int quota;
  final List<String> features;
  final PlanDiscount? discount;

  Plan({
    required this.id,
    required this.name,
    required this.cost,
    required this.quota,
    required this.features,
    this.discount,
  });

  factory Plan.fromJson(Map<String, dynamic> json) {
    return Plan(
      id: json['id'],
      name: json['name'],
      cost: json['cost'],
      quota: json['quota'],
      features: List<String>.from(json['features']),
      discount: PlanDiscount.fromJson(
        json['discount'] as Map<String, dynamic>?,
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'cost': cost,
    'quota': quota,
    'features': features,
    if (discount != null) 'discount': discount!.toJson(),
  };
}

class ExtraConfig {
  final int? maxDueAllowed;
  final String? dueContactNumber;
  final bool? showWallet;

  ExtraConfig({this.maxDueAllowed, this.dueContactNumber, this.showWallet});

  factory ExtraConfig.fromJson(Map<String, dynamic> json) {
    return ExtraConfig(
      maxDueAllowed: json['maxDueAllowed'],
      dueContactNumber: json['dueContactNumber'],
      showWallet: json['showWallet'] as bool?,
    );
  }

  Map<String, dynamic> toJson() => {
    if (maxDueAllowed != null) 'maxDueAllowed': maxDueAllowed,
    if (dueContactNumber != null) 'dueContactNumber': dueContactNumber,
    if (showWallet != null) 'showWallet': showWallet,
  };
}

class AIModelPricing {
  final double input;
  final double output;
  final String unit; // 'tokens' | 'image' | 'video' | 'audio'
  final String? contextThreshold;

  AIModelPricing({
    required this.input,
    required this.output,
    required this.unit,
    this.contextThreshold,
  });

  factory AIModelPricing.fromJson(Map<String, dynamic> json) {
    return AIModelPricing(
      input: (json['input'] as num).toDouble(),
      output: (json['output'] as num).toDouble(),
      unit: json['unit'] as String,
      contextThreshold: json['contextThreshold'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'input': input,
    'output': output,
    'unit': unit,
    if (contextThreshold != null) 'contextThreshold': contextThreshold,
  };
}

class AIModel {
  final String id;
  final String name;
  final String description;
  final List<String> capabilities;
  final List<AIModelPricing> pricing;
  final double? localCost; // Local cost per image (what we charge users)
  final bool? isNew;
  final String? knowledgeCutoff;
  final bool active;

  AIModel({
    required this.id,
    required this.name,
    required this.description,
    required this.capabilities,
    required this.pricing,
    this.localCost,
    this.isNew,
    this.knowledgeCutoff,
    required this.active,
  });

  factory AIModel.fromJson(Map<String, dynamic> json) {
    return AIModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      capabilities: List<String>.from(json['capabilities'] as List),
      pricing: (json['pricing'] as List)
          .map((e) => AIModelPricing.fromJson(e as Map<String, dynamic>))
          .toList(),
      localCost: json['localCost'] != null
          ? (json['localCost'] as num).toDouble()
          : null,
      isNew: json['isNew'] as bool?,
      knowledgeCutoff: json['knowledgeCutoff'] as String?,
      active: json['active'] as bool,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'capabilities': capabilities,
    'pricing': pricing.map((e) => e.toJson()).toList(),
    if (localCost != null) 'localCost': localCost,
    if (isNew != null) 'isNew': isNew,
    if (knowledgeCutoff != null) 'knowledgeCutoff': knowledgeCutoff,
    'active': active,
  };
}

class AIModelsConfig {
  final List<AIModel> models;
  final double? exchangeRate; // USD to local currency (DZD)
  final double? defaultImageCost; // Default cost per image in DZD
  final double?
  referenceImageCost; // Extra cost per reference image (coins/DZD)
  final Map<String, double>?
  resolutionCosts; // Extra cost per resolution (coins/DZD)

  AIModelsConfig({
    required this.models,
    this.exchangeRate,
    this.defaultImageCost,
    this.referenceImageCost,
    this.resolutionCosts,
  });

  factory AIModelsConfig.fromJson(Map<String, dynamic> json) {
    return AIModelsConfig(
      models: (json['models'] as List)
          .map((e) => AIModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      exchangeRate: json['exchangeRate'] != null
          ? (json['exchangeRate'] as num).toDouble()
          : null,
      defaultImageCost: json['defaultImageCost'] != null
          ? (json['defaultImageCost'] as num).toDouble()
          : null,
      referenceImageCost: json['referenceImageCost'] != null
          ? (json['referenceImageCost'] as num).toDouble()
          : null,
      resolutionCosts: json['resolutionCosts'] != null
          ? (json['resolutionCosts'] as Map<String, dynamic>).map(
              (k, v) => MapEntry(k, (v as num).toDouble()),
            )
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
    'models': models.map((e) => e.toJson()).toList(),
    if (exchangeRate != null) 'exchangeRate': exchangeRate,
    if (defaultImageCost != null) 'defaultImageCost': defaultImageCost,
    if (referenceImageCost != null) 'referenceImageCost': referenceImageCost,
    if (resolutionCosts != null) 'resolutionCosts': resolutionCosts,
  };
}

class AppConfig {
  final UpdateConfig update;
  final List<PopupConfig> popups;
  final Map<String, FeatureConfig> features;
  final List<Plan> plans;
  final PaymentConfig? payments;
  final StorePaymentMethodsConfig? storePaymentMethods;
  final List<CurrencyConfig> currencies;
  final List<LanguageConfig> languages;
  final ExtraConfig? extra;
  final AIModelsConfig? aiModels;

  AppConfig({
    required this.update,
    required this.popups,
    required this.features,
    required this.plans,
    this.payments,
    this.storePaymentMethods,
    required this.currencies,
    required this.languages,
    this.extra,
    this.aiModels,
  });

  factory AppConfig.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? aiModelsJson;
    if (json['aiModels'] != null) {
      aiModelsJson = Map<String, dynamic>.from(json['aiModels'] as Map);
    } else {
      final features = json['features'];
      if (features is Map && features['ai'] is Map) {
        final aiFeature = features['ai'] as Map;
        if (aiFeature['aiModels'] != null) {
          aiModelsJson = Map<String, dynamic>.from(
            aiFeature['aiModels'] as Map,
          );
        }
      }
    }

    return AppConfig(
      update: UpdateConfig.fromJson(json['update']),
      popups: (json['popups'] as List)
          .map((e) => PopupConfig.fromJson(e))
          .toList(),
      features: (json['features'] as Map<String, dynamic>).map(
        (k, v) => MapEntry(k, FeatureConfig.fromJson(v)),
      ),
      plans: (json['plans'] as List).map((e) => Plan.fromJson(e)).toList(),
      payments: json['payments'] != null
          ? PaymentConfig.fromJson(json['payments'])
          : null,
      storePaymentMethods: json['storePaymentMethods'] != null
          ? StorePaymentMethodsConfig.fromJson(json['storePaymentMethods'])
          : null,
      currencies: (json['currencies'] as List)
          .map((e) => CurrencyConfig.fromJson(e))
          .toList(),
      languages: (json['languages'] as List)
          .map((e) => LanguageConfig.fromJson(e))
          .toList(),
      extra: json['extra'] != null ? ExtraConfig.fromJson(json['extra']) : null,
      aiModels: aiModelsJson != null
          ? AIModelsConfig.fromJson(aiModelsJson)
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
    'update': update.toJson(),
    'popups': popups.map((e) => e.toJson()).toList(),
    'features': features.map((k, v) => MapEntry(k, v.toJson())),
    'plans': plans.map((e) => e.toJson()),
    if (payments != null) 'payments': payments!.toJson(),
    if (storePaymentMethods != null)
      'storePaymentMethods': storePaymentMethods!.toJson(),
    'currencies': currencies.map((e) => e.toJson()).toList(),
    if (aiModels != null) 'aiModels': aiModels!.toJson(),
    'languages': languages.map((e) => e.toJson()).toList(),
    if (extra != null) 'extra': extra!.toJson(),
  };
}
