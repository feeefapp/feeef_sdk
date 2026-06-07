import 'package:dio/dio.dart';
import 'package:feeef/core/validation/validation_exception.dart';

/// API client for per-integration subscription billing.
class IntegrationSubscriptionApi {
  final Dio client;

  IntegrationSubscriptionApi(this.client);

  Future<Map<String, dynamic>> getCatalog(String storeId) async {
    final res = await client.get(
      '/stores/$storeId/integrations/subscription/catalog',
    );
    return Map<String, dynamic>.from(res.data as Map);
  }

  Future<Map<String, dynamic>> getStatus(String storeId) async {
    final res = await client.get(
      '/stores/$storeId/integrations/subscription/status',
    );
    return Map<String, dynamic>.from(res.data as Map);
  }

  Future<Map<String, dynamic>> subscribe({
    required String storeId,
    required String integrationId,
  }) async {
    try {
      final res = await client.post(
        '/stores/$storeId/integrations/subscription/subscribe',
        data: {'integrationId': integrationId},
      );
      return Map<String, dynamic>.from(res.data as Map);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response?.data);
      }
      rethrow;
    }
  }

  Future<Map<String, dynamic>> cancel({
    required String storeId,
    required String integrationId,
  }) async {
    final res = await client.post(
      '/stores/$storeId/integrations/subscription/cancel',
      data: {'integrationId': integrationId},
    );
    return Map<String, dynamic>.from(res.data as Map);
  }
}
