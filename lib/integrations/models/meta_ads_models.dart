/// Read models for the Meta Ads integration.
///
/// Hand-written serialization rather than freezed/json_serializable: these
/// mirror a remote API we do not control, so a Graph field arriving with an
/// unexpected shape must degrade to a default instead of throwing mid-list.
/// Same approach as `lib/inventory/models/inventory_models.dart`.
library;

double _toDouble(dynamic value) {
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value) ?? 0;
  return 0;
}

double? _toDoubleOrNull(dynamic value) {
  if (value == null) return null;
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value);
  return null;
}

int _toInt(dynamic value) {
  if (value is num) return value.toInt();
  if (value is String) return int.tryParse(value) ?? 0;
  return 0;
}

int? _toIntOrNull(dynamic value) {
  if (value == null) return null;
  if (value is num) return value.toInt();
  if (value is String) return int.tryParse(value);
  return null;
}

String? _toStringOrNull(dynamic value) {
  if (value == null) return null;
  final s = value.toString();
  return s.isEmpty ? null : s;
}

List<String> _toStringList(dynamic value) {
  if (value is! List) return const [];
  return value.map((e) => e.toString()).toList();
}

/// Delivery state as Meta reports it. `effectiveStatus` rolls up the parent —
/// an ACTIVE ad inside a paused campaign reads as CAMPAIGN_PAUSED.
enum MetaDeliveryStatus {
  active,
  paused,
  campaignPaused,
  adsetPaused,
  pendingReview,
  disapproved,
  preapproved,
  pendingBillingInfo,
  inProcess,
  withIssues,
  archived,
  deleted,
  unknown;

  static MetaDeliveryStatus parse(String? raw) {
    switch (raw?.toUpperCase()) {
      case 'ACTIVE':
        return MetaDeliveryStatus.active;
      case 'PAUSED':
        return MetaDeliveryStatus.paused;
      case 'CAMPAIGN_PAUSED':
        return MetaDeliveryStatus.campaignPaused;
      case 'ADSET_PAUSED':
        return MetaDeliveryStatus.adsetPaused;
      case 'PENDING_REVIEW':
        return MetaDeliveryStatus.pendingReview;
      case 'DISAPPROVED':
        return MetaDeliveryStatus.disapproved;
      case 'PREAPPROVED':
        return MetaDeliveryStatus.preapproved;
      case 'PENDING_BILLING_INFO':
        return MetaDeliveryStatus.pendingBillingInfo;
      case 'IN_PROCESS':
        return MetaDeliveryStatus.inProcess;
      case 'WITH_ISSUES':
        return MetaDeliveryStatus.withIssues;
      case 'ARCHIVED':
        return MetaDeliveryStatus.archived;
      case 'DELETED':
        return MetaDeliveryStatus.deleted;
      default:
        return MetaDeliveryStatus.unknown;
    }
  }

  /// True when the object is actually spending right now.
  bool get isDelivering => this == MetaDeliveryStatus.active;

  /// True when Meta is blocking delivery for a reason the merchant must fix.
  bool get needsAttention =>
      this == MetaDeliveryStatus.disapproved ||
      this == MetaDeliveryStatus.withIssues ||
      this == MetaDeliveryStatus.pendingBillingInfo;
}

/// What the store's Meta connection is allowed to do right now.
class MetaAdsCapabilities {
  final bool connected;
  final bool canRead;

  /// False until `ads_management` is granted. Gate every write control on this.
  final bool canManage;
  final List<String> grantedScopes;
  final DateTime? expiresAt;
  final bool needsReconnect;

  /// Human-readable explanation for whichever capability is off.
  final String? reason;

  const MetaAdsCapabilities({
    required this.connected,
    required this.canRead,
    required this.canManage,
    this.grantedScopes = const [],
    this.expiresAt,
    this.needsReconnect = false,
    this.reason,
  });

  /// Safe default before the first status fetch resolves.
  static const disconnected = MetaAdsCapabilities(
    connected: false,
    canRead: false,
    canManage: false,
  );

  factory MetaAdsCapabilities.fromJson(Map<String, dynamic> json) {
    return MetaAdsCapabilities(
      connected: json['connected'] == true,
      canRead: json['canRead'] == true,
      canManage: json['canManage'] == true,
      grantedScopes: _toStringList(json['grantedScopes']),
      expiresAt: DateTime.tryParse(json['expiresAt']?.toString() ?? ''),
      needsReconnect: json['needsReconnect'] == true,
      reason: _toStringOrNull(json['reason']),
    );
  }
}

class MetaAdAccount {
  final String id;
  final String accountId;
  final String name;
  final String? currency;
  final String? timezoneName;
  final int? accountStatus;
  final double? amountSpent;

  const MetaAdAccount({
    required this.id,
    required this.accountId,
    required this.name,
    this.currency,
    this.timezoneName,
    this.accountStatus,
    this.amountSpent,
  });

  factory MetaAdAccount.fromJson(Map<String, dynamic> json) {
    return MetaAdAccount(
      id: json['id']?.toString() ?? '',
      accountId: json['accountId']?.toString() ?? '',
      name: json['name']?.toString() ?? '',
      currency: _toStringOrNull(json['currency']),
      timezoneName: _toStringOrNull(json['timezoneName']),
      accountStatus: _toIntOrNull(json['accountStatus']),
      amountSpent: _toDoubleOrNull(json['amountSpent']),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'accountId': accountId,
    'name': name,
    if (currency != null) 'currency': currency,
    if (timezoneName != null) 'timezoneName': timezoneName,
    if (accountStatus != null) 'accountStatus': accountStatus,
  };

  /// Meta account status 1 = ACTIVE. Anything else cannot spend.
  bool get isActive => accountStatus == 1;
}

/// Delivery metrics for the selected window.
class MetaInsights {
  final double spend;
  final int impressions;
  final int reach;
  final double frequency;
  final int clicks;
  final int linkClicks;
  final double ctr;
  final double linkCtr;
  final double cpc;
  final double cpm;
  final double cpp;
  final int landingPageViews;
  final String? dateStart;
  final String? dateStop;

  const MetaInsights({
    this.spend = 0,
    this.impressions = 0,
    this.reach = 0,
    this.frequency = 0,
    this.clicks = 0,
    this.linkClicks = 0,
    this.ctr = 0,
    this.linkCtr = 0,
    this.cpc = 0,
    this.cpm = 0,
    this.cpp = 0,
    this.landingPageViews = 0,
    this.dateStart,
    this.dateStop,
  });

  static const zero = MetaInsights();

  factory MetaInsights.fromJson(Map<String, dynamic>? json) {
    if (json == null) return MetaInsights.zero;
    return MetaInsights(
      spend: _toDouble(json['spend']),
      impressions: _toInt(json['impressions']),
      reach: _toInt(json['reach']),
      frequency: _toDouble(json['frequency']),
      clicks: _toInt(json['clicks']),
      linkClicks: _toInt(json['linkClicks']),
      ctr: _toDouble(json['ctr']),
      linkCtr: _toDouble(json['linkCtr']),
      cpc: _toDouble(json['cpc']),
      cpm: _toDouble(json['cpm']),
      cpp: _toDouble(json['cpp']),
      landingPageViews: _toInt(json['landingPageViews']),
      dateStart: _toStringOrNull(json['dateStart']),
      dateStop: _toStringOrNull(json['dateStop']),
    );
  }

  bool get hasSpend => spend > 0;
}

/// Orders and revenue this ad's product actually took, from Feeef's own data.
class MetaFeeefAttribution {
  final int orders;
  final int delivered;
  final int cancelled;
  final double revenue;
  final double pipelineRevenue;
  final double? costPerOrder;
  final double? roas;

  /// True when other ads point at the same product, so these figures are shared.
  final bool shared;

  const MetaFeeefAttribution({
    this.orders = 0,
    this.delivered = 0,
    this.cancelled = 0,
    this.revenue = 0,
    this.pipelineRevenue = 0,
    this.costPerOrder,
    this.roas,
    this.shared = false,
  });

  static MetaFeeefAttribution? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return MetaFeeefAttribution(
      orders: _toInt(json['orders']),
      delivered: _toInt(json['delivered']),
      cancelled: _toInt(json['cancelled']),
      revenue: _toDouble(json['revenue']),
      pipelineRevenue: _toDouble(json['pipelineRevenue']),
      costPerOrder: _toDoubleOrNull(json['costPerOrder']),
      roas: _toDoubleOrNull(json['roas']),
      shared: json['shared'] == true,
    );
  }
}

/// Feeef-side totals for a whole list, de-duplicated by product.
class MetaFeeefTotals {
  final double spend;
  final int orders;
  final int delivered;
  final double revenue;
  final double? roas;

  const MetaFeeefTotals({
    this.spend = 0,
    this.orders = 0,
    this.delivered = 0,
    this.revenue = 0,
    this.roas,
  });

  static const zero = MetaFeeefTotals();

  factory MetaFeeefTotals.fromJson(Map<String, dynamic>? json) {
    if (json == null) return MetaFeeefTotals.zero;
    return MetaFeeefTotals(
      spend: _toDouble(json['spend']),
      orders: _toInt(json['orders']),
      delivered: _toInt(json['delivered']),
      revenue: _toDouble(json['revenue']),
      roas: _toDoubleOrNull(json['roas']),
    );
  }
}

/// The product an ad points at, as resolved from its destination URL.
class MetaLinkedProduct {
  final String id;
  final String name;
  final String? slug;
  final String? photoUrl;

  const MetaLinkedProduct({
    required this.id,
    required this.name,
    this.slug,
    this.photoUrl,
  });

  static MetaLinkedProduct? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    final id = json['id']?.toString();
    if (id == null || id.isEmpty) return null;
    return MetaLinkedProduct(
      id: id,
      name: json['name']?.toString() ?? '',
      slug: _toStringOrNull(json['slug']),
      photoUrl: _toStringOrNull(json['photoUrl']),
    );
  }
}

/// An ad's destination URL and how it resolved.
class MetaAdDestination {
  final String url;
  final String normalizedUrl;
  final String source;
  final String matchMethod;
  final String? matchReason;
  final bool manualOverride;
  final String? linkId;
  final MetaLinkedProduct? product;

  const MetaAdDestination({
    required this.url,
    required this.normalizedUrl,
    required this.source,
    required this.matchMethod,
    this.matchReason,
    this.manualOverride = false,
    this.linkId,
    this.product,
  });

  static MetaAdDestination? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return MetaAdDestination(
      url: json['url']?.toString() ?? '',
      normalizedUrl: json['normalizedUrl']?.toString() ?? '',
      source: json['source']?.toString() ?? '',
      matchMethod: json['matchMethod']?.toString() ?? 'unmatched',
      matchReason: _toStringOrNull(json['matchReason']),
      manualOverride: json['manualOverride'] == true,
      linkId: _toStringOrNull(json['linkId']),
      product: MetaLinkedProduct.fromJson(
        json['product'] as Map<String, dynamic>?,
      ),
    );
  }

  bool get isMatched => product != null;
}

/// A persisted ad↔product mapping row.
class MetaAdLink {
  final String id;
  final String adId;
  final String adAccountId;
  final String? campaignId;
  final String? adsetId;
  final String destinationUrl;
  final String normalizedUrl;
  final String urlSource;
  final String? urlTags;
  final String matchMethod;
  final double matchConfidence;
  final bool manualOverride;
  final String? matchReason;
  final DateTime? lastSeenAt;
  final MetaLinkedProduct? product;

  const MetaAdLink({
    required this.id,
    required this.adId,
    required this.adAccountId,
    required this.destinationUrl,
    required this.normalizedUrl,
    required this.urlSource,
    required this.matchMethod,
    this.campaignId,
    this.adsetId,
    this.urlTags,
    this.matchConfidence = 0,
    this.manualOverride = false,
    this.matchReason,
    this.lastSeenAt,
    this.product,
  });

  factory MetaAdLink.fromJson(Map<String, dynamic> json) {
    return MetaAdLink(
      id: json['id']?.toString() ?? '',
      adId: json['adId']?.toString() ?? '',
      adAccountId: json['adAccountId']?.toString() ?? '',
      campaignId: _toStringOrNull(json['campaignId']),
      adsetId: _toStringOrNull(json['adsetId']),
      destinationUrl: json['destinationUrl']?.toString() ?? '',
      normalizedUrl: json['normalizedUrl']?.toString() ?? '',
      urlSource: json['urlSource']?.toString() ?? '',
      urlTags: _toStringOrNull(json['urlTags']),
      matchMethod: json['matchMethod']?.toString() ?? 'unmatched',
      matchConfidence: _toDouble(json['matchConfidence']),
      manualOverride: json['manualOverride'] == true,
      matchReason: _toStringOrNull(json['matchReason']),
      lastSeenAt: DateTime.tryParse(json['lastSeenAt']?.toString() ?? ''),
      product: MetaLinkedProduct.fromJson(
        json['product'] as Map<String, dynamic>?,
      ),
    );
  }

  bool get isMatched => product != null;
}

/// Shared surface across the three levels, so one table widget can render any.
abstract class MetaAdsNode {
  String get id;
  String get name;
  MetaDeliveryStatus get effectiveStatus;
  MetaInsights get insights;
  double? get dailyBudget;
  double? get lifetimeBudget;
}

class MetaCampaign implements MetaAdsNode {
  @override
  final String id;
  @override
  final String name;
  final String status;
  @override
  final MetaDeliveryStatus effectiveStatus;
  final String? objective;
  final String? buyingType;
  @override
  final double? dailyBudget;
  @override
  final double? lifetimeBudget;
  final double? budgetRemaining;
  final String? bidStrategy;
  final DateTime? startTime;
  final DateTime? stopTime;
  final DateTime? updatedTime;
  @override
  final MetaInsights insights;

  const MetaCampaign({
    required this.id,
    required this.name,
    required this.status,
    required this.effectiveStatus,
    required this.insights,
    this.objective,
    this.buyingType,
    this.dailyBudget,
    this.lifetimeBudget,
    this.budgetRemaining,
    this.bidStrategy,
    this.startTime,
    this.stopTime,
    this.updatedTime,
  });

  factory MetaCampaign.fromJson(Map<String, dynamic> json) {
    return MetaCampaign(
      id: json['id']?.toString() ?? '',
      name: json['name']?.toString() ?? '',
      status: json['status']?.toString() ?? 'UNKNOWN',
      effectiveStatus: MetaDeliveryStatus.parse(
        json['effectiveStatus']?.toString(),
      ),
      objective: _toStringOrNull(json['objective']),
      buyingType: _toStringOrNull(json['buyingType']),
      dailyBudget: _toDoubleOrNull(json['dailyBudget']),
      lifetimeBudget: _toDoubleOrNull(json['lifetimeBudget']),
      budgetRemaining: _toDoubleOrNull(json['budgetRemaining']),
      bidStrategy: _toStringOrNull(json['bidStrategy']),
      startTime: DateTime.tryParse(json['startTime']?.toString() ?? ''),
      stopTime: DateTime.tryParse(json['stopTime']?.toString() ?? ''),
      updatedTime: DateTime.tryParse(json['updatedTime']?.toString() ?? ''),
      insights: MetaInsights.fromJson(json['insights'] as Map<String, dynamic>?),
    );
  }
}

class MetaTargetingSummary {
  final List<String> countries;
  final int? ageMin;
  final int? ageMax;
  final List<int> genders;
  final List<String> publisherPlatforms;

  const MetaTargetingSummary({
    this.countries = const [],
    this.ageMin,
    this.ageMax,
    this.genders = const [],
    this.publisherPlatforms = const [],
  });

  static MetaTargetingSummary? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return MetaTargetingSummary(
      countries: _toStringList(json['countries']),
      ageMin: _toIntOrNull(json['ageMin']),
      ageMax: _toIntOrNull(json['ageMax']),
      genders: (json['genders'] as List?)?.map(_toInt).toList() ?? const [],
      publisherPlatforms: _toStringList(json['publisherPlatforms']),
    );
  }
}

class MetaAdSet implements MetaAdsNode {
  @override
  final String id;
  @override
  final String name;
  final String? campaignId;
  final String status;
  @override
  final MetaDeliveryStatus effectiveStatus;
  @override
  final double? dailyBudget;
  @override
  final double? lifetimeBudget;
  final String? billingEvent;
  final String? optimizationGoal;
  final double? bidAmount;
  final String? bidStrategy;
  final DateTime? startTime;
  final DateTime? endTime;
  final DateTime? updatedTime;
  final String? destinationType;
  final String? promotedPixelId;
  final MetaTargetingSummary? targeting;
  @override
  final MetaInsights insights;

  const MetaAdSet({
    required this.id,
    required this.name,
    required this.status,
    required this.effectiveStatus,
    required this.insights,
    this.campaignId,
    this.dailyBudget,
    this.lifetimeBudget,
    this.billingEvent,
    this.optimizationGoal,
    this.bidAmount,
    this.bidStrategy,
    this.startTime,
    this.endTime,
    this.updatedTime,
    this.destinationType,
    this.promotedPixelId,
    this.targeting,
  });

  factory MetaAdSet.fromJson(Map<String, dynamic> json) {
    return MetaAdSet(
      id: json['id']?.toString() ?? '',
      name: json['name']?.toString() ?? '',
      campaignId: _toStringOrNull(json['campaignId']),
      status: json['status']?.toString() ?? 'UNKNOWN',
      effectiveStatus: MetaDeliveryStatus.parse(
        json['effectiveStatus']?.toString(),
      ),
      dailyBudget: _toDoubleOrNull(json['dailyBudget']),
      lifetimeBudget: _toDoubleOrNull(json['lifetimeBudget']),
      billingEvent: _toStringOrNull(json['billingEvent']),
      optimizationGoal: _toStringOrNull(json['optimizationGoal']),
      bidAmount: _toDoubleOrNull(json['bidAmount']),
      bidStrategy: _toStringOrNull(json['bidStrategy']),
      startTime: DateTime.tryParse(json['startTime']?.toString() ?? ''),
      endTime: DateTime.tryParse(json['endTime']?.toString() ?? ''),
      updatedTime: DateTime.tryParse(json['updatedTime']?.toString() ?? ''),
      destinationType: _toStringOrNull(json['destinationType']),
      promotedPixelId: _toStringOrNull(json['promotedPixelId']),
      targeting: MetaTargetingSummary.fromJson(
        json['targetingSummary'] as Map<String, dynamic>?,
      ),
      insights: MetaInsights.fromJson(json['insights'] as Map<String, dynamic>?),
    );
  }
}

class MetaAd implements MetaAdsNode {
  @override
  final String id;
  @override
  final String name;
  final String? adsetId;
  final String? campaignId;
  final String status;
  @override
  final MetaDeliveryStatus effectiveStatus;
  final DateTime? updatedTime;
  final String? previewUrl;
  @override
  final MetaInsights insights;

  /// Where this ad sends people, and the product that resolves to.
  final MetaAdDestination? destination;

  /// Orders the matched product actually took in the same window.
  final MetaFeeefAttribution? feeef;

  const MetaAd({
    required this.id,
    required this.name,
    required this.status,
    required this.effectiveStatus,
    required this.insights,
    this.adsetId,
    this.campaignId,
    this.updatedTime,
    this.previewUrl,
    this.destination,
    this.feeef,
  });

  /// Ads carry no budget of their own — it lives on the ad set.
  @override
  double? get dailyBudget => null;
  @override
  double? get lifetimeBudget => null;

  factory MetaAd.fromJson(Map<String, dynamic> json) {
    return MetaAd(
      id: json['id']?.toString() ?? '',
      name: json['name']?.toString() ?? '',
      adsetId: _toStringOrNull(json['adsetId']),
      campaignId: _toStringOrNull(json['campaignId']),
      status: json['status']?.toString() ?? 'UNKNOWN',
      effectiveStatus: MetaDeliveryStatus.parse(
        json['effectiveStatus']?.toString(),
      ),
      updatedTime: DateTime.tryParse(json['updatedTime']?.toString() ?? ''),
      previewUrl: _toStringOrNull(json['previewUrl']),
      insights: MetaInsights.fromJson(json['insights'] as Map<String, dynamic>?),
      destination: MetaAdDestination.fromJson(
        json['destination'] as Map<String, dynamic>?,
      ),
      feeef: MetaFeeefAttribution.fromJson(
        json['feeef'] as Map<String, dynamic>?,
      ),
    );
  }
}

/// Full ad detail, including every destination URL the creative carries.
class MetaAdDetail {
  final MetaAd ad;
  final MetaInsights insights;
  final String? urlTags;
  final List<({String url, String source})> destinations;
  final List<MetaAdLink> links;
  final MetaFeeefAttribution? feeef;

  const MetaAdDetail({
    required this.ad,
    required this.insights,
    required this.destinations,
    required this.links,
    this.urlTags,
    this.feeef,
  });

  factory MetaAdDetail.fromJson(Map<String, dynamic> json) {
    return MetaAdDetail(
      ad: MetaAd.fromJson(json),
      insights: MetaInsights.fromJson(json['insights'] as Map<String, dynamic>?),
      urlTags: _toStringOrNull(json['urlTags']),
      destinations:
          (json['destinations'] as List?)
              ?.whereType<Map<String, dynamic>>()
              .map(
                (e) => (
                  url: e['url']?.toString() ?? '',
                  source: e['source']?.toString() ?? '',
                ),
              )
              .toList() ??
          const [],
      links:
          (json['links'] as List?)
              ?.whereType<Map<String, dynamic>>()
              .map(MetaAdLink.fromJson)
              .toList() ??
          const [],
      feeef: MetaFeeefAttribution.fromJson(
        json['feeef'] as Map<String, dynamic>?,
      ),
    );
  }
}

/// One page of a cursor-paginated list, plus the totals for the whole query.
class MetaAdsPage<T> {
  final List<T> data;
  final String? after;
  final bool hasMore;
  final MetaInsights totals;
  final MetaFeeefTotals feeefTotals;
  final MetaAdsCapabilities capabilities;

  const MetaAdsPage({
    required this.data,
    required this.hasMore,
    this.after,
    this.totals = MetaInsights.zero,
    this.feeefTotals = MetaFeeefTotals.zero,
    this.capabilities = MetaAdsCapabilities.disconnected,
  });

  factory MetaAdsPage.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) parse,
  ) {
    final meta = json['meta'] as Map<String, dynamic>? ?? const {};
    final paging = json['paging'] as Map<String, dynamic>? ?? const {};
    return MetaAdsPage(
      data:
          (json['data'] as List?)
              ?.whereType<Map<String, dynamic>>()
              .map(parse)
              .toList() ??
          const [],
      after: _toStringOrNull(paging['after']),
      hasMore: paging['hasMore'] == true,
      totals: MetaInsights.fromJson(meta['totals'] as Map<String, dynamic>?),
      feeefTotals: MetaFeeefTotals.fromJson(
        meta['feeefTotals'] as Map<String, dynamic>?,
      ),
      capabilities: meta['capabilities'] is Map<String, dynamic>
          ? MetaAdsCapabilities.fromJson(
              meta['capabilities'] as Map<String, dynamic>,
            )
          : MetaAdsCapabilities.disconnected,
    );
  }
}

/// Connection status for the whole Meta integration.
class MetaIntegrationStatus {
  final bool active;
  final MetaAdsCapabilities capabilities;
  final List<MetaAdAccount> adAccounts;
  final String? defaultAdAccountId;
  final String defaultDatePreset;
  final List<String> extraStoreHosts;
  final DateTime? connectedAt;

  const MetaIntegrationStatus({
    required this.active,
    required this.capabilities,
    this.adAccounts = const [],
    this.defaultAdAccountId,
    this.defaultDatePreset = 'last_7d',
    this.extraStoreHosts = const [],
    this.connectedAt,
  });

  factory MetaIntegrationStatus.fromJson(Map<String, dynamic> json) {
    final ads = json['ads'] as Map<String, dynamic>? ?? const {};
    return MetaIntegrationStatus(
      active: json['active'] == true,
      capabilities: MetaAdsCapabilities.fromJson(
        json['capabilities'] as Map<String, dynamic>? ?? const {},
      ),
      adAccounts:
          (ads['adAccounts'] as List?)
              ?.whereType<Map<String, dynamic>>()
              .map(MetaAdAccount.fromJson)
              .toList() ??
          const [],
      defaultAdAccountId: _toStringOrNull(ads['defaultAdAccountId']),
      defaultDatePreset: ads['defaultDatePreset']?.toString() ?? 'last_7d',
      extraStoreHosts: _toStringList(ads['extraStoreHosts']),
      connectedAt: DateTime.tryParse(json['connectedAt']?.toString() ?? ''),
    );
  }
}

/// Result of a full link re-sync.
class MetaLinkSyncResult {
  final int adsScanned;
  final int urlsFound;
  final int matched;
  final int unmatched;

  const MetaLinkSyncResult({
    this.adsScanned = 0,
    this.urlsFound = 0,
    this.matched = 0,
    this.unmatched = 0,
  });

  factory MetaLinkSyncResult.fromJson(Map<String, dynamic> json) {
    return MetaLinkSyncResult(
      adsScanned: _toInt(json['adsScanned']),
      urlsFound: _toInt(json['urlsFound']),
      matched: _toInt(json['matched']),
      unmatched: _toInt(json['unmatched']),
    );
  }
}

/// Typed backend failures, so the UI can offer reconnect / retry instead of
/// dumping a raw Graph message.
enum MetaAdsErrorCode {
  notConnected,
  tokenExpired,
  scopeMissing,
  rateLimited,
  accountUnavailable,
  notConfigured,
  requestFailed,
  unknown;

  static MetaAdsErrorCode parse(String? raw) {
    switch (raw) {
      case 'META_NOT_CONNECTED':
        return MetaAdsErrorCode.notConnected;
      case 'META_TOKEN_EXPIRED':
        return MetaAdsErrorCode.tokenExpired;
      case 'META_SCOPE_MISSING':
        return MetaAdsErrorCode.scopeMissing;
      case 'META_RATE_LIMITED':
        return MetaAdsErrorCode.rateLimited;
      case 'META_ACCOUNT_UNAVAILABLE':
        return MetaAdsErrorCode.accountUnavailable;
      case 'META_NOT_CONFIGURED':
        return MetaAdsErrorCode.notConfigured;
      case 'META_REQUEST_FAILED':
        return MetaAdsErrorCode.requestFailed;
      default:
        return MetaAdsErrorCode.unknown;
    }
  }

  /// True when the fix is for the merchant to reconnect their Meta account.
  bool get requiresReconnect =>
      this == MetaAdsErrorCode.notConnected ||
      this == MetaAdsErrorCode.tokenExpired ||
      this == MetaAdsErrorCode.scopeMissing;
}

class MetaAdsException implements Exception {
  final MetaAdsErrorCode code;
  final String message;
  final int? retryAfterSeconds;

  const MetaAdsException({
    required this.code,
    required this.message,
    this.retryAfterSeconds,
  });

  factory MetaAdsException.fromResponse(dynamic data, {String? fallback}) {
    if (data is Map) {
      return MetaAdsException(
        code: MetaAdsErrorCode.parse(data['code']?.toString()),
        message:
            data['message']?.toString() ??
            fallback ??
            'Meta request failed.',
        retryAfterSeconds: _toIntOrNull(data['retryAfterSeconds']),
      );
    }
    return MetaAdsException(
      code: MetaAdsErrorCode.unknown,
      message: fallback ?? 'Meta request failed.',
    );
  }

  @override
  String toString() => 'MetaAdsException(${code.name}): $message';
}
