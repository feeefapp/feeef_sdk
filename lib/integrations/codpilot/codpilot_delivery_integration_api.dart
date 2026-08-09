import 'package:dio/dio.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:feeef/orders/models/order.dart';

/// API for Codpilot mini-ERP sync (ping, sync one / many). Not a delivery carrier.
class CodpilotIntegrationApi {
  final CodpilotIntegration integration;
  final String storeId;
  final Dio client;

  const CodpilotIntegrationApi({
    required this.client,
    required this.integration,
    required this.storeId,
  });

  /// Validate credentials (optionally override with form values before save).
  Future<Map<String, dynamic>> ping({
    String? subdomain,
    String? apiId,
    String? apiToken,
  }) async {
    try {
      final response = await client.post(
        '/stores/$storeId/integrations/codpilot/ping',
        data: {
          'subdomain': subdomain ?? integration.subdomain,
          'apiId': apiId ?? integration.apiId,
          'apiToken': apiToken ?? integration.apiToken,
        },
      );
      return Map<String, dynamic>.from(response.data as Map);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response?.data);
      }
      rethrow;
    }
  }

  Future<Map<String, dynamic>> send({required OrderEntity order}) async {
    try {
      final response = await client.post(
        '/stores/$storeId/integrations/codpilot/send',
        data: {'orderId': order.id},
      );
      return Map<String, dynamic>.from(response.data as Map);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response?.data);
      }
      rethrow;
    }
  }

  Future<Map<String, dynamic>> sendMany({required List<String> orderIds}) async {
    try {
      final response = await client.post(
        '/stores/$storeId/integrations/codpilot/sendMany',
        data: {'orderIds': orderIds},
      );
      return Map<String, dynamic>.from(response.data as Map);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response?.data);
      }
      rethrow;
    }
  }
}

/// Order helpers for Codpilot sync attachment (`metadata.codpilot`).
extension OrderCodpilot on Order {
  Map<String, dynamic>? get codpilotMeta {
    final raw = metadata['codpilot'];
    if (raw is Map<String, dynamic>) return raw;
    if (raw is Map) return Map<String, dynamic>.from(raw);
    return null;
  }

  String? get codpilotTrackingId {
    final meta = codpilotMeta;
    if (meta == null) return null;
    final tracking = meta['tracking'] ?? meta['orderId'];
    return tracking?.toString();
  }

  bool get isSyncedToCodpilot {
    final meta = codpilotMeta;
    if (meta == null) return false;
    return meta['status'] == 'synced' &&
        (codpilotTrackingId?.isNotEmpty ?? false);
  }
}
