import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/interfaces/order.dart';

/// API for Noest delivery integration (fees, send order).
class NoestDeliveryIntegrationApi {
  final NoestDeliveryIntegration integration;
  final String storeId;
  final Dio client;

  const NoestDeliveryIntegrationApi({
    required this.client,
    required this.integration,
    required this.storeId,
  });

  Future<List<List<num?>?>> getDeliveryFees() async {
    try {
      var response = await client.get(
        '/stores/$storeId/integrations/noest/fees',
        queryParameters: {'guid': integration.guid, "token": integration.token},
      );
      developer.log('$response');
      var x = (response.data as List)
          .map((e) => (e as List).map((e) => e as num?).toList())
          .toList();
      developer.log('$x');
      return x;
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

  Future<void> send({required OrderEntity order}) async {
    try {
      await client.post(
        '/stores/$storeId/integrations/noest/send',
        data: {
          'guid': integration.guid,
          'token': integration.token,
          'orderId': order.id,
        },
      );
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
}
