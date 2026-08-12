import 'package:dio/dio.dart';

import 'models/meta_ads_models.dart';

/// Client for the store-scoped Meta integration (`/stores/:id/integrations/meta`).
///
/// Read-only today. Changing ad delivery needs the `ads_management` permission,
/// which is pending Meta App Review — check
/// [MetaAdsCapabilities.canManage] before offering any write control.
class MetaAdsIntegrationApi {
  final Dio client;

  const MetaAdsIntegrationApi({required this.client});

  String _base(String storeId) => '/stores/$storeId/integrations/meta';

  /// Wraps a call so backend `META_*` errors surface as [MetaAdsException]
  /// instead of a bare [DioException] the UI cannot branch on.
  Future<T> _guard<T>(Future<T> Function() run) async {
    try {
      return await run();
    } on DioException catch (e) {
      throw MetaAdsException.fromResponse(e.response?.data, fallback: e.message);
    }
  }

  /// Date-window params. An explicit range wins over a preset.
  Map<String, dynamic> _rangeParams({
    String? datePreset,
    DateTime? since,
    DateTime? until,
  }) {
    if (since != null && until != null) {
      return {
        'since': _isoDate(since),
        'until': _isoDate(until),
      };
    }
    return {if (datePreset != null) 'datePreset': datePreset};
  }

  static String _isoDate(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-'
      '${d.month.toString().padLeft(2, '0')}-'
      '${d.day.toString().padLeft(2, '0')}';

  // ---------------------------------------------------------------- connection

  /// Connection state, capabilities, and the merchant's saved ad accounts.
  Future<MetaIntegrationStatus> status(String storeId) {
    return _guard(() async {
      final res = await client.get(_base(storeId));
      return MetaIntegrationStatus.fromJson(res.data as Map<String, dynamic>);
    });
  }

  /// Starts OAuth and returns the Meta dialog URL to open.
  ///
  /// Pass [callbackScheme] on native so Meta deep-links back into the app;
  /// pass [popup] + [origin] on web so the callback can `postMessage` the
  /// outcome to the opener. The access token never reaches the client — the
  /// backend persists it during the callback.
  Future<String> startOAuth(
    String storeId, {
    bool popup = false,
    String? origin,
    String? callbackScheme,
  }) {
    return _guard(() async {
      final res = await client.post(
        '${_base(storeId)}/oauth/start',
        data: {
          if (popup) 'popup': true,
          if (origin != null && origin.isNotEmpty) 'origin': origin,
          if (callbackScheme != null && callbackScheme.isNotEmpty)
            'callbackScheme': callbackScheme,
        },
      );
      return res.data['authUrl'] as String;
    });
  }

  /// One-time read of the native deep-link outcome. Carries no credentials.
  Future<({bool ok, String storeId, String? error})> oauthResult(String nonce) {
    return _guard(() async {
      final res = await client.get(
        '/social/meta/oauth-result',
        queryParameters: {'nonce': nonce},
      );
      final data = res.data as Map<String, dynamic>;
      return (
        ok: data['ok'] == true,
        storeId: data['storeId']?.toString() ?? '',
        error: data['error']?.toString(),
      );
    });
  }

  /// Clears the stored credentials. Ad↔product links are kept.
  Future<void> disconnect(String storeId) {
    return _guard(() async {
      await client.delete('${_base(storeId)}/oauth');
    });
  }

  /// Ad accounts visible to the connected Meta user, live from Graph.
  Future<List<MetaAdAccount>> adAccounts(String storeId) {
    return _guard(() async {
      final res = await client.get('${_base(storeId)}/ad-accounts');
      return (res.data['data'] as List? ?? const [])
          .whereType<Map<String, dynamic>>()
          .map(MetaAdAccount.fromJson)
          .toList();
    });
  }

  /// Saves the merchant's chosen accounts, default window, and extra hosts.
  Future<void> updateAdsSettings(
    String storeId, {
    List<MetaAdAccount>? adAccounts,
    String? defaultAdAccountId,
    String? defaultDatePreset,
    List<String>? extraStoreHosts,
    bool? active,
  }) {
    return _guard(() async {
      await client.patch(
        '${_base(storeId)}/ads/settings',
        data: {
          if (adAccounts != null)
            'adAccounts': adAccounts.map((a) => a.toJson()).toList(),
          if (defaultAdAccountId != null)
            'defaultAdAccountId': defaultAdAccountId,
          if (defaultDatePreset != null) 'defaultDatePreset': defaultDatePreset,
          if (extraStoreHosts != null) 'extraStoreHosts': extraStoreHosts,
          if (active != null) 'active': active,
        },
      );
    });
  }

  // --------------------------------------------------------------------- reads

  /// Account-level KPI header for the window.
  Future<MetaInsights> summary(
    String storeId, {
    required String adAccountId,
    String? datePreset,
    DateTime? since,
    DateTime? until,
  }) {
    return _guard(() async {
      final res = await client.get(
        '${_base(storeId)}/ads/summary',
        queryParameters: {
          'adAccountId': adAccountId,
          ..._rangeParams(datePreset: datePreset, since: since, until: until),
        },
      );
      return MetaInsights.fromJson(res.data['data'] as Map<String, dynamic>?);
    });
  }

  Future<MetaAdsPage<MetaCampaign>> campaigns(
    String storeId, {
    required String adAccountId,
    String? datePreset,
    DateTime? since,
    DateTime? until,
    List<String>? effectiveStatus,
    String? search,
    String? after,
    int? limit,
  }) {
    return _guard(() async {
      final res = await client.get(
        '${_base(storeId)}/ads/campaigns',
        queryParameters: {
          'adAccountId': adAccountId,
          ..._rangeParams(datePreset: datePreset, since: since, until: until),
          if (effectiveStatus != null && effectiveStatus.isNotEmpty)
            'effectiveStatus': effectiveStatus,
          if (search != null && search.isNotEmpty) 'q': search,
          if (after != null) 'after': after,
          if (limit != null) 'limit': limit,
        },
      );
      return MetaAdsPage.fromJson(
        res.data as Map<String, dynamic>,
        MetaCampaign.fromJson,
      );
    });
  }

  Future<MetaAdsPage<MetaAdSet>> adSets(
    String storeId, {
    required String adAccountId,
    String? campaignId,
    String? datePreset,
    DateTime? since,
    DateTime? until,
    List<String>? effectiveStatus,
    String? search,
    String? after,
    int? limit,
  }) {
    return _guard(() async {
      final res = await client.get(
        '${_base(storeId)}/ads/adsets',
        queryParameters: {
          'adAccountId': adAccountId,
          if (campaignId != null) 'campaignId': campaignId,
          ..._rangeParams(datePreset: datePreset, since: since, until: until),
          if (effectiveStatus != null && effectiveStatus.isNotEmpty)
            'effectiveStatus': effectiveStatus,
          if (search != null && search.isNotEmpty) 'q': search,
          if (after != null) 'after': after,
          if (limit != null) 'limit': limit,
        },
      );
      return MetaAdsPage.fromJson(
        res.data as Map<String, dynamic>,
        MetaAdSet.fromJson,
      );
    });
  }

  /// Ads, each decorated with its destination URL, matched product, and the
  /// Feeef orders that product took in the same window.
  Future<MetaAdsPage<MetaAd>> ads(
    String storeId, {
    required String adAccountId,
    String? campaignId,
    String? adsetId,
    String? datePreset,
    DateTime? since,
    DateTime? until,
    List<String>? effectiveStatus,
    String? search,
    String? after,
    int? limit,
  }) {
    return _guard(() async {
      final res = await client.get(
        '${_base(storeId)}/ads/ads',
        queryParameters: {
          'adAccountId': adAccountId,
          if (campaignId != null) 'campaignId': campaignId,
          if (adsetId != null) 'adsetId': adsetId,
          ..._rangeParams(datePreset: datePreset, since: since, until: until),
          if (effectiveStatus != null && effectiveStatus.isNotEmpty)
            'effectiveStatus': effectiveStatus,
          if (search != null && search.isNotEmpty) 'q': search,
          if (after != null) 'after': after,
          if (limit != null) 'limit': limit,
        },
      );
      return MetaAdsPage.fromJson(
        res.data as Map<String, dynamic>,
        MetaAd.fromJson,
      );
    });
  }

  /// One ad in full — creative, every destination URL, and its KPIs.
  Future<MetaAdDetail> adDetail(
    String storeId,
    String adId, {
    required String adAccountId,
    String? datePreset,
    DateTime? since,
    DateTime? until,
  }) {
    return _guard(() async {
      final res = await client.get(
        '${_base(storeId)}/ads/ads/$adId',
        queryParameters: {
          'adAccountId': adAccountId,
          ..._rangeParams(datePreset: datePreset, since: since, until: until),
        },
      );
      return MetaAdDetail.fromJson(res.data['data'] as Map<String, dynamic>);
    });
  }

  // ------------------------------------------------------------- product links

  /// The persisted ad↔product mapping.
  Future<({List<MetaAdLink> data, bool hasMore, int total})> links(
    String storeId, {
    String? adAccountId,
    String? productId,
    bool unmatchedOnly = false,
    int page = 1,
    int limit = 50,
  }) {
    return _guard(() async {
      final res = await client.get(
        '${_base(storeId)}/ads/links',
        queryParameters: {
          if (adAccountId != null) 'adAccountId': adAccountId,
          if (productId != null) 'productId': productId,
          if (unmatchedOnly) 'unmatchedOnly': true,
          'page': page,
          'limit': limit,
        },
      );
      final paging = res.data['paging'] as Map<String, dynamic>? ?? const {};
      return (
        data: (res.data['data'] as List? ?? const [])
            .whereType<Map<String, dynamic>>()
            .map(MetaAdLink.fromJson)
            .toList(),
        hasMore: paging['hasMore'] == true,
        total: (paging['total'] as num?)?.toInt() ?? 0,
      );
    });
  }

  /// Points a link at a product by hand. Pass null to clear the override and
  /// hand the row back to automatic resolution.
  Future<MetaAdLink> updateLink(
    String storeId,
    String linkId, {
    required String? productId,
  }) {
    return _guard(() async {
      final res = await client.patch(
        '${_base(storeId)}/ads/links/$linkId',
        data: {'productId': productId},
      );
      return MetaAdLink.fromJson(res.data['data'] as Map<String, dynamic>);
    });
  }

  /// Re-extracts and re-resolves every ad in the account. Manual overrides survive.
  Future<MetaLinkSyncResult> syncLinks(
    String storeId, {
    required String adAccountId,
  }) {
    return _guard(() async {
      final res = await client.post(
        '${_base(storeId)}/ads/sync-links',
        data: {'adAccountId': adAccountId},
      );
      return MetaLinkSyncResult.fromJson(res.data['data'] as Map<String, dynamic>);
    });
  }
}
