/// Lite orders report (`lor`): 8 UTC days of [completed, cancelled, rest] + total.
class LiteOrdersReport {
  LiteOrdersReport({
    required this.lastSync,
    required this.lastItemDate,
    required this.totalOrders,
    required this.data,
  });

  final String lastSync;
  final String lastItemDate;
  final int totalOrders;
  final List<List<int>> data;

  static int _cell(dynamic e) {
    if (e == null) return 0;
    if (e is int) return e;
    if (e is num) return e.toInt();
    return int.tryParse(e.toString()) ?? 0;
  }

  static List<List<int>> _parseRows(dynamic raw) {
    if (raw is! List<dynamic>) return [];
    final out = <List<int>>[];
    for (final row in raw) {
      if (row is List) {
        final nums = row.map(_cell).toList();
        while (nums.length < 3) {
          nums.add(0);
        }
        out.add(nums.take(3).toList());
        continue;
      }
      if (row is Map) {
        final m = Map<String, dynamic>.from(row);
        out.add([
          _cell(m['completed']),
          _cell(m['cancelled'] ?? m['canceled']),
          _cell(m['rest']),
        ]);
        continue;
      }
      out.add([0, 0, 0]);
    }
    return out;
  }

  factory LiteOrdersReport.fromJson(Map<String, dynamic> json) {
    final rawData = json['data'] ?? json['rows'];
    return LiteOrdersReport(
      lastSync: '${json['lastSync'] ?? json['last_sync'] ?? ''}',
      lastItemDate: '${json['lastItemDate'] ?? json['last_item_date'] ?? ''}',
      totalOrders: _cell(json['totalOrders'] ?? json['total_orders']),
      data: _parseRows(rawData is List ? rawData : const []),
    );
  }

  /// Parses a typical **`GET .../analytics/lor`** JSON body: `{ "lor": { ... } }`.
  ///
  /// Also accepts a nested `{ "data": { "lor": ... } }` envelope if present.
  /// Returns an empty report when the payload is missing or invalid (no throw).
  factory LiteOrdersReport.fromApiResponse(dynamic body) {
    if (body is! Map) {
      return LiteOrdersReport(
        lastSync: '',
        lastItemDate: '',
        totalOrders: 0,
        data: [],
      );
    }
    final map = Map<String, dynamic>.from(body);
    dynamic raw = map['lor'];
    final dataEnvelope = map['data'];
    if (raw == null && dataEnvelope is Map) {
      raw = Map<String, dynamic>.from(dataEnvelope)['lor'];
    }
    if (raw is Map) {
      return LiteOrdersReport.fromJson(Map<String, dynamic>.from(raw));
    }
    return LiteOrdersReport(
      lastSync: '',
      lastItemDate: '',
      totalOrders: 0,
      data: [],
    );
  }
}
