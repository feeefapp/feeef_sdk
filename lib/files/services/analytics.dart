import 'package:dio/dio.dart';

/// Financial timeline response structure
class FinancialTimelineData {
  final Map<String, double> revenues;
  final Map<String, double> costs;
  final Map<String, double> profits;
  final Map<String, int> orders;
  final FinancialTotals totals;
  final String from;
  final String to;
  final String storeId;
  final int step;

  const FinancialTimelineData({
    required this.revenues,
    required this.costs,
    required this.profits,
    required this.orders,
    required this.totals,
    required this.from,
    required this.to,
    required this.storeId,
    required this.step,
  });

  factory FinancialTimelineData.fromJson(Map<String, dynamic> json) {
    return FinancialTimelineData(
      revenues: Map<String, double>.from(
        json['revenues'].map((k, v) => MapEntry(k, v?.toDouble() ?? 0.0)),
      ),
      costs: Map<String, double>.from(
        json['costs'].map((k, v) => MapEntry(k, v?.toDouble() ?? 0.0)),
      ),
      profits: Map<String, double>.from(
        json['profits'].map((k, v) => MapEntry(k, v?.toDouble() ?? 0.0)),
      ),
      orders: Map<String, int>.from(
        json['orders'].map((k, v) => MapEntry(k, v?.toInt() ?? 0)),
      ),
      totals: FinancialTotals.fromJson(json['totals']),
      from: json['from'],
      to: json['to'],
      storeId: json['storeId'],
      step: json['step'],
    );
  }
}

/// Financial totals structure
class FinancialTotals {
  final double revenues;
  final double costs;
  final double profits;
  final int orders;

  const FinancialTotals({
    required this.revenues,
    required this.costs,
    required this.profits,
    required this.orders,
  });

  factory FinancialTotals.fromJson(Map<String, dynamic> json) {
    return FinancialTotals(
      revenues: json['revenues']?.toDouble() ?? 0.0,
      costs: json['costs']?.toDouble() ?? 0.0,
      profits: json['profits']?.toDouble() ?? 0.0,
      orders: json['orders']?.toInt() ?? 0,
    );
  }
}

/// Orders timeline response structure
class OrdersTimelineData {
  final Map<String, Map<String, int>> timeline;
  final Map<String, int> statusCounts;
  final int totalOrders;
  final String from;
  final String to;
  final String storeId;
  final String groupBy;
  final int step;

  const OrdersTimelineData({
    required this.timeline,
    required this.statusCounts,
    required this.totalOrders,
    required this.from,
    required this.to,
    required this.storeId,
    required this.groupBy,
    required this.step,
  });

  factory OrdersTimelineData.fromJson(Map<String, dynamic> json) {
    return OrdersTimelineData(
      timeline: Map<String, Map<String, int>>.from(
        json['timeline'].map((k, v) => MapEntry(k, Map<String, int>.from(v))),
      ),
      statusCounts: Map<String, int>.from(json['statusCounts']),
      totalOrders: json['totalOrders'],
      from: json['from'],
      to: json['to'],
      storeId: json['storeId'],
      groupBy: json['groupBy'],
      step: json['step'],
    );
  }
}

/// Store orders count by field response (migrated from actions)
typedef StoreOrdersCountByFieldType = ({
  Map<String, int> counts,
  int total,
  String field,
  String storeId,
  DateTime? from,
  DateTime? to,
  int limit,
  bool truncated,
});

/// Analytics service class for handling analytics API calls
class Analytics {
  final Dio client;

  Analytics({required this.client});

  /// Get financial timeline data (revenue, costs, profits, orders) for a date range
  ///
  /// Example usage:
  /// ```dart
  /// final data = await analytics.getFinancialTimeline(
  ///   storeId: "store123",
  ///   from: DateTime.now().subtract(Duration(days: 7)),
  ///   to: DateTime.now(),
  ///   step: 86400, // 1 day
  ///   productId: "product123", // Optional filter
  ///   status: "completed", // Optional filter
  ///   tags: "urgent", // Optional filter
  ///   confirmerId: "user123", // Optional filter
  /// );
  /// ```
  Future<FinancialTimelineData> getFinancialTimeline({
    required String storeId,
    required DateTime from,
    required DateTime to,
    int step = 86400, // Default: 1 day in seconds
    String? productId,
    String? status,
    String? tags,
    String? confirmerId,
  }) async {
    try {
      final response = await client.post(
        '/actions/analytics/getFinancialTimeline',
        data: {
          'storeId': storeId,
          'from': from.toIso8601String(),
          'to': to.toIso8601String(),
          'step': step,
          if (productId != null) 'productId': productId,
          if (status != null) 'status': status,
          if (tags != null) 'tags': tags,
          if (confirmerId != null) 'confirmerId': confirmerId,
        },
      );

      return FinancialTimelineData.fromJson(response.data);
    } catch (e) {
      print('Error fetching financial timeline: $e');
      rethrow;
    }
  }

  /// Get orders timeline data for a date range
  ///
  /// Example usage:
  /// ```dart
  /// final data = await analytics.getOrdersTimeline(
  ///   storeId: "store123",
  ///   from: DateTime.now().subtract(Duration(days: 30)),
  ///   to: DateTime.now(),
  ///   groupBy: 'status',
  ///   productId: "product123", // Optional filter
  ///   status: "completed", // Optional filter
  ///   tags: "urgent", // Optional filter
  ///   confirmerId: "user123", // Optional filter
  /// );
  /// ```
  Future<OrdersTimelineData> getOrdersTimeline({
    required String storeId,
    required DateTime from,
    required DateTime to,
    int step = 86400,
    String groupBy = 'status',
    String? productId,
    String? status,
    String? tags,
    String? confirmerId,
  }) async {
    try {
      final response = await client.post(
        '/actions/analytics/getOrdersTimeline',
        data: {
          'storeId': storeId,
          'from': from.toIso8601String(),
          'to': to.toIso8601String(),
          'step': step,
          'groupBy': groupBy,
          if (productId != null) 'productId': productId,
          if (status != null) 'status': status,
          if (tags != null) 'tags': tags,
          if (confirmerId != null) 'confirmerId': confirmerId,
        },
      );

      return OrdersTimelineData.fromJson(response.data);
    } catch (e) {
      print('Error fetching orders timeline: $e');
      rethrow;
    }
  }

  /// Get store orders count by field (migrated from actions)
  ///
  /// Example usage:
  /// ```dart
  /// final data = await analytics.getStoreOrdersCountByField(
  ///   storeId: "store123",
  ///   field: "shipping_state",
  ///   from: DateTime.now().subtract(Duration(days: 30)),
  ///   to: DateTime.now(),
  ///   productId: "product123", // Optional filter
  ///   status: "completed", // Optional filter
  ///   tags: "urgent", // Optional filter
  ///   confirmerId: "user123", // Optional filter
  /// );
  /// ```
  Future<StoreOrdersCountByFieldType> getStoreOrdersCountByField({
    required String storeId,
    required String
    field, // 'status', 'payment_status', 'delivery_status', 'shipping_method', 'shipping_state'
    DateTime? from,
    DateTime? to,
    int limit = 60,
    String? productId,
    String? status,
    String? tags,
    String? confirmerId,
  }) async {
    try {
      final response = await client.post(
        '/actions/analytics/getOrdersCountByField',
        data: {
          'storeId': storeId,
          'field': field,
          if (from != null) 'from': from.toIso8601String(),
          if (to != null) 'to': to.toIso8601String(),
          'limit': limit,
          if (productId != null) 'productId': productId,
          if (status != null) 'status': status,
          if (tags != null) 'tags': tags,
          if (confirmerId != null) 'confirmerId': confirmerId,
        },
      );

      final data = response.data;
      return (
        counts: Map<String, int>.from(data['counts']),
        total: data['total'] as int,
        field: data['field'] as String,
        storeId: data['storeId'] as String,
        from: data['from'] != null ? DateTime.parse(data['from']) : null,
        to: data['to'] != null ? DateTime.parse(data['to']) : null,
        limit: data['limit'] as int,
        truncated: data['truncated'] as bool,
      );
    } catch (e) {
      print('Error fetching store orders count by field: $e');
      rethrow;
    }
  }
}
