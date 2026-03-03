import 'package:diacritic/diacritic.dart';
import 'package:dio/dio.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/feeef_client.dart';

/// Data model for Ecotrack finance response.
class EcotrackFinanceData {
  final bool success;
  final double amountsNotEncaissed;
  final double feesNotEncaissed;
  final double notEncaissed;
  final double amountsEncaissed;
  final double feesEncaissed;
  final double encaissed;
  final double amountsPaymentReady;
  final double feesPaymentReady;
  final double paymentReady;

  const EcotrackFinanceData({
    required this.success,
    required this.amountsNotEncaissed,
    required this.feesNotEncaissed,
    required this.notEncaissed,
    required this.amountsEncaissed,
    required this.feesEncaissed,
    required this.encaissed,
    required this.amountsPaymentReady,
    required this.feesPaymentReady,
    required this.paymentReady,
  });

  factory EcotrackFinanceData.fromJson(Map<String, dynamic> json) {
    return EcotrackFinanceData(
      success: json['success'] ?? false,
      amountsNotEncaissed: (json['amounts_not_encaissed'] ?? 0).toDouble(),
      feesNotEncaissed: (json['fees_not_encaissed'] ?? 0).toDouble(),
      notEncaissed: (json['not_encaissed'] ?? 0).toDouble(),
      amountsEncaissed: (json['amounts_encaissed'] ?? 0).toDouble(),
      feesEncaissed: (json['fees_encaissed'] ?? 0).toDouble(),
      encaissed: (json['encaissed'] ?? 0).toDouble(),
      amountsPaymentReady: (json['amounts_payment_ready'] ?? 0).toDouble(),
      feesPaymentReady: (json['fees_payment_ready'] ?? 0).toDouble(),
      paymentReady: (json['payment_ready'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'amounts_not_encaissed': amountsNotEncaissed,
      'fees_not_encaissed': feesNotEncaissed,
      'not_encaissed': notEncaissed,
      'amounts_encaissed': amountsEncaissed,
      'fees_encaissed': feesEncaissed,
      'encaissed': encaissed,
      'amounts_payment_ready': amountsPaymentReady,
      'fees_payment_ready': feesPaymentReady,
      'payment_ready': paymentReady,
    };
  }
}

/// Wilaya-level Ecotrack stats.
class EcotrackWilayaData {
  final int wilayaId;
  final int total;
  final int retours;
  final int livred;
  final String wilayaName;

  const EcotrackWilayaData({
    required this.wilayaId,
    required this.total,
    required this.retours,
    required this.livred,
    required this.wilayaName,
  });

  factory EcotrackWilayaData.fromJson(Map<String, dynamic> json) {
    return EcotrackWilayaData(
      wilayaId: (json['wilaya_id'] ?? 0).toInt(),
      total: (json['total'] ?? 0).toInt(),
      retours: (json['retours'] ?? 0).toInt(),
      livred: (json['livred'] ?? 0).toInt(),
      wilayaName: json['wilaya_name'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'wilaya_id': wilayaId,
      'total': total,
      'retours': retours,
      'livred': livred,
      'wilaya_name': wilayaName,
    };
  }
}

/// Today's activity summary from Ecotrack.
class EcotrackTodayActivity {
  final int expedie;
  final int delivered;
  final int returned;
  final int suspended;

  const EcotrackTodayActivity({
    required this.expedie,
    required this.delivered,
    required this.returned,
    required this.suspended,
  });

  factory EcotrackTodayActivity.fromJson(Map<String, dynamic> json) {
    return EcotrackTodayActivity(
      expedie: (json['expedie'] ?? 0).toInt(),
      delivered: (json['delivered'] ?? 0).toInt(),
      returned: (json['returned'] ?? 0).toInt(),
      suspended: (json['suspended'] ?? 0).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'expedie': expedie,
      'delivered': delivered,
      'returned': returned,
      'suspended': suspended,
    };
  }
}

/// Global Ecotrack stats.
class EcotrackGlobalStats {
  final int enTraitement;
  final int livred;
  final int retours;
  final int total;

  const EcotrackGlobalStats({
    required this.enTraitement,
    required this.livred,
    required this.retours,
    required this.total,
  });

  factory EcotrackGlobalStats.fromJson(Map<String, dynamic> json) {
    return EcotrackGlobalStats(
      enTraitement: (json['enTraitement'] ?? 0).toInt(),
      livred: (json['livred'] ?? 0).toInt(),
      retours: (json['retours'] ?? 0).toInt(),
      total: (json['total'] ?? 0).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'enTraitement': enTraitement,
      'livred': livred,
      'retours': retours,
      'total': total,
    };
  }
}

/// Ecotrack statistics (wilaya, today, global).
class EcotrackStatisticsData {
  final List<EcotrackWilayaData> topWilaya;
  final EcotrackTodayActivity todayActivity;
  final EcotrackGlobalStats globalStats;

  const EcotrackStatisticsData({
    required this.topWilaya,
    required this.todayActivity,
    required this.globalStats,
  });

  factory EcotrackStatisticsData.fromJson(Map<String, dynamic> json) {
    return EcotrackStatisticsData(
      topWilaya: (json['top_wilaya'] as List<dynamic>? ?? [])
          .map((e) => EcotrackWilayaData.fromJson(e as Map<String, dynamic>))
          .toList(),
      todayActivity: EcotrackTodayActivity.fromJson(
        json['today_act'] as Map<String, dynamic>? ?? {},
      ),
      globalStats: EcotrackGlobalStats.fromJson(
        json['global'] as Map<String, dynamic>? ?? {},
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'top_wilaya': topWilaya.map((e) => e.toJson()).toList(),
      'today_act': todayActivity.toJson(),
      'global': globalStats.toJson(),
    };
  }
}

/// API for Ecotrack delivery integration (fees, finance, statistics, sync).
class EcotrackDeliveryIntegrationApi {
  final EcotrackDeliveryIntegration integration;
  final String storeId;
  final Dio client;

  const EcotrackDeliveryIntegrationApi({
    required this.client,
    required this.integration,
    required this.storeId,
  });

  Future<List<List<num?>?>> getDeliveryFees() async {
    try {
      var response = await client.get(
        '/stores/$storeId/integrations/ecotrack/fees',
        queryParameters: {
          'baseUrl': integration.baseUrl,
          "token": integration.token,
        },
      );
      return (response.data as List)
          .map((e) => (e as List).map((e) => e as num?).toList())
          .toList();
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<EcotrackFinanceData> getFinancialData({
    int? limit,
    String? search,
    String? telephone,
  }) async {
    try {
      final queryParams = {
        'api_token': integration.token,
        if (limit != null) 'limit': limit.toString(),
        if (search != null) 'search': search,
        if (telephone != null) 'telephone': telephone,
      };

      final response = await client.get(
        '/stores/$storeId/integrations/ecotrack/finance',
        queryParameters: queryParams,
      );

      if (response.data['success'] == true) {
        return EcotrackFinanceData.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch financial data');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<EcotrackStatisticsData> getStatistics() async {
    try {
      final response = await client.get(
        '/stores/$storeId/integrations/ecotrack/statistics',
      );

      return EcotrackStatisticsData.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<EcotrackSyncStatus> getSyncStatus() async {
    try {
      final response = await client.get(
        '/stores/$storeId/integrations/ecotrack/sync/status',
      );

      return EcotrackSyncStatus.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<EcotrackSyncResult> triggerSync({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      final response = await client.post(
        '/stores/$storeId/integrations/ecotrack/sync',
        data: {
          if (startDate != null) 'startDate': startDate.toIso8601String(),
          if (endDate != null) 'endDate': endDate.toIso8601String(),
        },
      );

      return EcotrackSyncResult.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      if (e.response?.data != null) {
        return EcotrackSyncResult.fromJson(e.response!.data);
      }
      rethrow;
    }
  }

  @Deprecated(
    'Use triggerSync() instead - it uses backend-based sync which is more efficient and secure',
  )
  Future<Map<String, String>> syncOrders({
    required DateTime startDate,
    required DateTime endDate,
    int? limit,
  }) async {
    try {
      List<dynamic> allData = [];
      int currentPage = 1;
      bool hasMorePages = true;

      while (hasMorePages && (limit == null || allData.length < limit)) {
        var response = await client.get(
          '/stores/$storeId/integrations/ecotrack/orders',
          queryParameters: {
            "api_token": integration.token,
            'start_date': startDate.toIso8601String().split('T').first,
            'end_date': endDate.toIso8601String().split('T').first,
            'page': currentPage,
          },
        );

        final pageData = List.from(response.data['data']);

        if (limit != null) {
          int remainingSpace = limit - allData.length;
          if (remainingSpace > 0) {
            allData.addAll(pageData.take(remainingSpace));
          }
        } else {
          allData.addAll(pageData);
        }

        int lastPage = response.data['last_page'] ?? 1;
        hasMorePages = currentPage < lastPage;
        currentPage++;

        if (limit != null && allData.length >= limit) {
          break;
        }
      }

      var by = "reference";
      if (allData
              .where((e) => ((e[by] as String?) ?? '').trim().isNotEmpty)
              .length <
          allData.length / 2) {
        by = "phone";
      }

      var orders = <String, String>{};
      for (var order in allData) {
        if (order[by] != null && order["status"] != null) {
          orders[order[by]!] = removeDiacritics(order["status"]);
        }
      }

      await Feeef.instance.actions.syncEcotrackOrders(
        storeId: storeId,
        data: orders,
        by: by == "reference" ? "id" : "customerPhone",
      );

      return orders;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }
}

/// Result of an Ecotrack sync operation.
class EcotrackSyncResult {
  final bool success;
  final String message;
  final String? syncId;
  final int? totalFetched;
  final int? totalUpdated;
  final int? totalSkipped;
  final String? syncedAt;
  final List<String>? errors;

  EcotrackSyncResult({
    required this.success,
    required this.message,
    this.syncId,
    this.totalFetched,
    this.totalUpdated,
    this.totalSkipped,
    this.syncedAt,
    this.errors,
  });

  factory EcotrackSyncResult.fromJson(Map<String, dynamic> json) {
    return EcotrackSyncResult(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
      syncId: json['syncId'],
      totalFetched: json['totalFetched'],
      totalUpdated: json['totalUpdated'],
      totalSkipped: json['totalSkipped'],
      syncedAt: json['syncedAt'],
      errors: json['errors'] != null ? List<String>.from(json['errors']) : null,
    );
  }
}

/// Status of Ecotrack sync availability.
class EcotrackSyncStatus {
  final bool canSync;
  final String? lastSyncAt;
  final String? nextSyncAvailableAt;
  final int? minutesUntilNextSync;

  EcotrackSyncStatus({
    required this.canSync,
    this.lastSyncAt,
    this.nextSyncAvailableAt,
    this.minutesUntilNextSync,
  });

  factory EcotrackSyncStatus.fromJson(Map<String, dynamic> json) {
    return EcotrackSyncStatus(
      canSync: json['canSync'] ?? true,
      lastSyncAt: json['lastSyncAt'],
      nextSyncAvailableAt: json['nextSyncAvailableAt'],
      minutesUntilNextSync: json['minutesUntilNextSync'],
    );
  }

  String get statusMessage {
    if (canSync) {
      if (lastSyncAt != null) {
        return 'المزامنة متاحة (آخر مزامنة: ${_formatDateTime(lastSyncAt!)})';
      }
      return 'المزامنة متاحة';
    }
    if (minutesUntilNextSync != null) {
      if (minutesUntilNextSync! >= 60) {
        final hours = minutesUntilNextSync! ~/ 60;
        final mins = minutesUntilNextSync! % 60;
        return 'المزامنة متاحة بعد $hours ساعة${mins > 0 ? ' و $mins دقيقة' : ''}';
      }
      return 'المزامنة متاحة بعد $minutesUntilNextSync دقيقة';
    }
    return 'المزامنة غير متاحة حالياً';
  }

  String _formatDateTime(String isoString) {
    try {
      final dt = DateTime.parse(isoString);
      final now = DateTime.now();
      final diff = now.difference(dt);

      if (diff.inMinutes < 60) {
        return 'منذ ${diff.inMinutes} دقيقة';
      } else if (diff.inHours < 24) {
        return 'منذ ${diff.inHours} ساعة';
      } else {
        return 'منذ ${diff.inDays} يوم';
      }
    } catch (e) {
      return isoString;
    }
  }
}
