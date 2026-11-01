import 'package:dio/dio.dart';

/// Analytics v2 (feeef.all docs/analytics-v2/PLAN.md): `ff.metrics`.
///
/// Every answer is shaped by the caller's [AnalyticsAccess]: sections and values the member
/// may not see are absent, never zero. Dates are store-local `YYYY-MM-DD` days (Algeria).
class MetricsRepository {
  MetricsRepository({required this.client});

  final Dio client;

  /// The whole overview screen in one call: live counts, status counters, KPIs for the period
  /// and the previous one, the daily series and the ranked lists. [filters] (`dim:key`, dims
  /// `wilaya`, `source`, `product`, `courier`) narrow every section.
  Future<StoreOverview> overview(
    String storeId, {
    String? from,
    String? to,
    MetricsCompare? compare,
    List<String>? filters,
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      '/stores/${Uri.encodeComponent(storeId)}/overview',
      queryParameters: {
        'from': ?from,
        'to': ?to,
        'compare': ?compare?.name,
        if (filters != null && filters.isNotEmpty) 'f': filters,
      },
      cancelToken: cancelToken,
    );
    return StoreOverview.fromJson(Map<String, dynamic>.from(res.data as Map));
  }

  /// Live working-room counts (not cached on the server), narrowed by [filters] like [overview].
  Future<MetricsNow> now(
    String storeId, {
    List<String>? filters,
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      '/stores/${Uri.encodeComponent(storeId)}/metrics/now',
      queryParameters: {if (filters != null && filters.isNotEmpty) 'f': filters},
      cancelToken: cancelToken,
    );
    return MetricsNow.fromJson(Map<String, dynamic>.from(res.data as Map));
  }

  /// Any registered metrics, grouped by `total`, `day`, `hour` or a dimension
  /// (`wilaya`, `product`, `source`, `courier`, `member`). [filters] are `dim:key`.
  Future<MetricsResult> query(
    String storeId, {
    required List<String> metrics,
    String by = 'total',
    String? from,
    String? to,
    MetricsCompare? compare,
    List<String>? filters,
    int? limit,
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      '/stores/${Uri.encodeComponent(storeId)}/metrics',
      queryParameters: {
        'm': metrics.join(','),
        'by': by,
        'from': ?from,
        'to': ?to,
        'compare': ?compare?.name,
        'f': ?filters,
        'limit': ?limit,
      },
      cancelToken: cancelToken,
    );
    return MetricsResult.fromJson(Map<String, dynamic>.from(res.data as Map));
  }
}

enum MetricsCompare { previous, year, none }

Map<String, dynamic> _map(Object? v) =>
    v is Map ? Map<String, dynamic>.from(v) : const <String, dynamic>{};
List<Object?> _list(Object? v) => v is List ? v : const [];
num? _num(Object? v) => v is num ? v : null;

/// What the signed-in member may see in analytics.
class AnalyticsAccess {
  const AnalyticsAccess({
    required this.userId,
    required this.orders,
    required this.money,
    required this.team,
    required this.products,
    required this.inventory,
    required this.finance,
    required this.integrations,
  });

  factory AnalyticsAccess.fromJson(Map<String, dynamic> j) => AnalyticsAccess(
    userId: j['userId'] as String? ?? '',
    orders: j['orders'] as String? ?? 'none',
    money: j['money'] == true,
    team: j['team'] == true,
    products: j['products'] == true,
    inventory: j['inventory'] == true,
    finance: j['finance'] == true,
    integrations: j['integrations'] == true,
  );

  final String userId;

  /// `all`, `self` (only the member's own orders) or `none`.
  final String orders;
  final bool money;
  final bool team;
  final bool products;
  final bool inventory;
  final bool finance;
  final bool integrations;

  bool get self => orders == 'self';
}

/// One row: a key (day, hour, dimension value or '' for totals) and metric values.
/// A null value is "not enough data" (rates below the minimum sample).
class MetricsRow {
  const MetricsRow({required this.key, required this.values});

  factory MetricsRow.fromJson(Map<String, dynamic> j) => MetricsRow(
    key: j['key'] as String? ?? '',
    values: {for (final e in _map(j['values']).entries) e.key: _num(e.value)},
  );

  final String key;
  final Map<String, num?> values;

  num? operator [](String metric) => values[metric];
}

class MetricsRange {
  const MetricsRange({
    required this.from,
    required this.to,
    required this.compare,
    this.previousFrom,
    this.previousTo,
  });

  factory MetricsRange.fromJson(Map<String, dynamic> j) {
    final prev = j['previous'] is Map ? _map(j['previous']) : null;
    return MetricsRange(
      from: j['from'] as String,
      to: j['to'] as String,
      compare: j['compare'] as String? ?? 'none',
      previousFrom: prev?['from'] as String?,
      previousTo: prev?['to'] as String?,
    );
  }

  final String from;
  final String to;
  final String compare;
  final String? previousFrom;
  final String? previousTo;
}

class MetricsResult {
  const MetricsResult({required this.range, required this.rows, this.previous});

  factory MetricsResult.fromJson(Map<String, dynamic> j) => MetricsResult(
    range: MetricsRange.fromJson(_map(j['range'])),
    rows: [for (final r in _list(j['rows'])) MetricsRow.fromJson(_map(r))],
    previous: j['previous'] == null
        ? null
        : [for (final r in _list(j['previous'])) MetricsRow.fromJson(_map(r))],
  );

  final MetricsRange range;
  final List<MetricsRow> rows;
  final List<MetricsRow>? previous;
}

class MetricsStatusCount {
  const MetricsStatusCount({required this.phase, required this.statusId, required this.count});

  factory MetricsStatusCount.fromJson(Map<String, dynamic> j) => MetricsStatusCount(
    phase: j['phase'] as String? ?? 'open',
    statusId: j['statusId'] as String?,
    count: (_num(j['count']) ?? 0).toInt(),
  );

  /// `open`, `pack`, `ship`, `done` or `fail`.
  final String phase;
  final String? statusId;
  final int count;
}

/// A catalog status as the overview labels it.
class MetricsStatusLabel {
  const MetricsStatusLabel({
    required this.name,
    this.slug,
    this.room,
    this.locales = const {},
    this.color,
    this.sortOrder = 0,
    this.closeAs,
  });

  factory MetricsStatusLabel.fromJson(Map<String, dynamic> j) => MetricsStatusLabel(
    name: j['name'] as String? ?? '',
    slug: j['slug'] as String?,
    room: j['room'] as String?,
    locales: {for (final e in _map(j['locales']).entries) e.key: '${e.value}'},
    color: j['color'] as String?,
    sortOrder: (_num(j['sortOrder']) ?? 0).toInt(),
    closeAs: j['closeAs'] as String?,
  );

  final String name;
  final String? slug;
  final String? room;
  final Map<String, String> locales;

  /// `#rrggbb`, or null for the room's default.
  final String? color;
  final int sortOrder;
  final String? closeAs;

  String localizedName(String languageCode) {
    final v = locales[languageCode];
    return v != null && v.trim().isNotEmpty ? v : name;
  }
}

/// Live counts in the working rooms.
class MetricsNow {
  const MetricsNow({
    required this.byStatus,
    required this.waitingCall,
    required this.oldestWaitingAt,
    required this.stuck,
  });

  factory MetricsNow.fromJson(Map<String, dynamic> j) {
    final waiting = _map(j['waitingCall']);
    return MetricsNow(
      byStatus: [for (final r in _list(j['byStatus'])) MetricsStatusCount.fromJson(_map(r))],
      waitingCall: (_num(waiting['count']) ?? 0).toInt(),
      oldestWaitingAt: DateTime.tryParse(waiting['oldestAt'] as String? ?? ''),
      stuck: (_num(j['stuck']) ?? 0).toInt(),
    );
  }

  final List<MetricsStatusCount> byStatus;

  /// Orders on the confirmation desk (phase `open`).
  final int waitingCall;
  final DateTime? oldestWaitingAt;

  /// Parcels with the courier and no update for 5 days.
  final int stuck;

  /// Orders in [phase] across its statuses.
  int phaseCount(String phase) =>
      byStatus.where((s) => s.phase == phase).fold(0, (a, s) => a + s.count);
}

class TeamRow extends MetricsRow {
  const TeamRow({required super.key, required super.values, this.name});

  final String? name;
}

/// `GET /stores/:id/overview`.
class StoreOverview {
  const StoreOverview({
    required this.access,
    required this.range,
    required this.now,
    required this.kpis,
    required this.kpisPrevious,
    required this.series,
    required this.seriesPrevious,
    required this.lists,
    required this.team,
    this.filters = const [],
    this.statuses = const [],
    this.statusLabels = const {},
    this.productNames = const {},
    this.wilayaNames = const {},
  });

  factory StoreOverview.fromJson(Map<String, dynamic> j) {
    List<MetricsRow> rows(Object? v) => [for (final r in _list(v)) MetricsRow.fromJson(_map(r))];
    Map<String, num?> values(Object? v) => {for (final e in _map(v).entries) e.key: _num(e.value)};
    return StoreOverview(
      access: AnalyticsAccess.fromJson(_map(j['access'])),
      range: MetricsRange.fromJson(_map(j['range'])),
      now: MetricsNow.fromJson(_map(j['now'])),
      kpis: values(j['kpis']),
      kpisPrevious: j['kpisPrevious'] == null ? null : values(j['kpisPrevious']),
      series: rows(j['series']),
      seriesPrevious: j['seriesPrevious'] == null ? null : rows(j['seriesPrevious']),
      lists: {for (final e in _map(j['lists']).entries) e.key: rows(e.value)},
      filters: [
        for (final f in _list(j['filters']))
          if (_map(f)['dim'] != null) '${_map(f)['dim']}:${_map(f)['key']}',
      ],
      statuses: [for (final r in _list(j['statuses'])) MetricsStatusCount.fromJson(_map(r))],
      statusLabels: {
        for (final e in _map(_map(j['labels'])['statuses']).entries)
          e.key: MetricsStatusLabel.fromJson(_map(e.value)),
      },
      productNames: {
        for (final e in _map(_map(j['labels'])['products']).entries) e.key: '${e.value}',
      },
      wilayaNames: {
        for (final e in _map(_map(j['labels'])['wilayas']).entries)
          e.key: {for (final n in _map(e.value).entries) n.key: '${n.value}'},
      },
      team: j['team'] == null
          ? null
          : [
              for (final r in _list(j['team']))
                TeamRow(
                  key: _map(r)['key'] as String? ?? '',
                  values: MetricsRow.fromJson(_map(r)).values,
                  name: _map(r)['name'] as String?,
                ),
            ],
    );
  }

  final AnalyticsAccess access;
  final MetricsRange range;
  final MetricsNow now;

  /// The filters the answer applies (`dim:key`).
  final List<String> filters;

  /// Orders placed in the period by where they are now (phase and catalog status), largest first.
  final List<MetricsStatusCount> statuses;

  /// Status id → catalog label, for [statuses] and [now].
  final Map<String, MetricsStatusLabel> statusLabels;

  /// Totals for the period. Keys present only when the member may see them
  /// (`delivered_sales` needs money).
  final Map<String, num?> kpis;
  final Map<String, num?>? kpisPrevious;

  /// Per day: `cohort_placed`, `cohort_delivered`, `cohort_returned`, `cohort_cancelled`.
  final List<MetricsRow> series;

  /// Per day of the comparison period: `cohort_placed`.
  final List<MetricsRow>? seriesPrevious;

  /// `products`, `sources` (top 6) and `wilayas` (all), only those the member may see.
  final Map<String, List<MetricsRow>> lists;

  /// Per confirmer, when the member may see the team.
  final List<TeamRow>? team;

  /// Product id → name, for the products list.
  final Map<String, String> productNames;

  /// Wilaya code → name per language code (`ar`, `en`, `fr`, plus `default`).
  final Map<String, Map<String, String>> wilayaNames;

  /// The same overview with fresh live counts.
  StoreOverview withNow(MetricsNow now) => StoreOverview(
    access: access,
    range: range,
    now: now,
    kpis: kpis,
    kpisPrevious: kpisPrevious,
    series: series,
    seriesPrevious: seriesPrevious,
    lists: lists,
    team: team,
    filters: filters,
    statuses: statuses,
    statusLabels: statusLabels,
    productNames: productNames,
    wilayaNames: wilayaNames,
  );

  /// Wilaya name in [languageCode], falling back to the stored name, then the code.
  String wilayaName(String code, String languageCode) {
    final names = wilayaNames[code];
    return names?[languageCode] ?? names?['default'] ?? code;
  }
}
