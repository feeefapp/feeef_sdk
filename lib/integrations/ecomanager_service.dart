import 'package:dio/dio.dart';

import 'package:feeef/feeef_client.dart';
import 'package:feeef/integrations/integrations.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/orders/models/order.dart';

/// Ecomanager Delivery Service
/// Handles delivery operations for Ecomanager platform
class EcomanagerDeliveryService
    extends DeliveryService<EcomanagerDeliveryIntegration> {
  @override
  String get name => 'ecomanager';

  EcomanagerDeliveryService({
    required super.client,
    required super.integration,
  });

  /// Factory constructor to create service from integration
  factory EcomanagerDeliveryService.fromIntegration(
    EcomanagerDeliveryIntegration integration,
  ) {
    final client = Dio(
      BaseOptions(
        baseUrl: integration.baseUrl,
        headers: {
          'Authorization': 'Bearer ${integration.token}',
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    return EcomanagerDeliveryService(client: client, integration: integration);
  }

  @override
  Future<void> deliverOrder({required Order order}) async {
    // Use backend endpoint instead of direct API call
    await sendToEcomanager(order);
  }

  /// Send order to Ecomanager via backend endpoint
  /// This method calls the backend API which handles all Ecomanager integration
  Future<void> sendToEcomanager(Order order) async {
    try {
      // Call backend endpoint to send order to Ecomanager
      final response = await Feeef.instance.client.post(
        '/stores/${order.storeId}/integrations/ecomanager/send',
        data: {'orderId': order.id},
      );

      if (response.data['success'] != true) {
        throw Exception('Failed to send order to Ecomanager');
      }
    } catch (e) {
      throw Exception('Failed to send order to Ecomanager: $e');
    }
  }

  /// Get shipping fees for all wilayas
  Future<List<List<double?>>> getFees() async {
    try {
      final response = await client.get('/api/shop/v2/wilayas');
      final List fees = List.filled(58, [null, null]);

      if (response.data['data'] != null) {
        for (final wilaya in response.data['data']) {
          final index = wilaya['id'] - 1;
          if (index >= 0 && index < 58) {
            fees[index] = [
              wilaya['stopdesk_shipping_fee'] != null
                  ? double.tryParse(wilaya['stopdesk_shipping_fee'].toString())
                  : null,
              wilaya['shipping_fee'] != null
                  ? double.tryParse(wilaya['shipping_fee'].toString())
                  : null,
            ];
          }
        }
      }

      return fees.cast<List<double?>>();
    } catch (e) {
      throw Exception('Failed to get Ecomanager fees: $e');
    }
  }

  /// Get all wilayas
  Future<List<Map<String, dynamic>>> getWilayas() async {
    try {
      final response = await client.get('/api/shop/v2/wilayas');
      return List<Map<String, dynamic>>.from(response.data['data']);
    } catch (e) {
      throw Exception('Failed to get wilayas: $e');
    }
  }

  /// Get all communes
  Future<List<Map<String, dynamic>>> getCommunes() async {
    try {
      final response = await client.get('/api/shop/v2/communes');
      return List<Map<String, dynamic>>.from(response.data['data']);
    } catch (e) {
      throw Exception('Failed to get communes: $e');
    }
  }

  /// Setup webhook
  Future<Map<String, dynamic>> setupWebhook(
    String webhookUrl,
    String secret,
  ) async {
    try {
      // Get existing webhooks
      final existingWebhooks = await getWebhooks();

      // Check if webhook already exists
      final existingWebhook = existingWebhooks.firstWhere(
        (w) => w['delivery_url'] == webhookUrl,
        orElse: () => {},
      );

      if (existingWebhook.isNotEmpty) {
        // Update webhook if not active
        if (existingWebhook['is_active'] == 0) {
          return await updateWebhookStatus(
            existingWebhook['id'].toString(),
            true,
          );
        }
        return existingWebhook;
      }

      // Create new webhook
      final response = await client.post(
        '/api/shop/v2/webhooks',
        data: {
          'name': 'Feeef Order Updates',
          'event': 'OrderStatusChanged',
          'delivery_url': webhookUrl,
          'is_active': true,
          'secret': secret,
          'http_method': 'post',
          'headers': [
            {'key': 'X-Feeef-Source', 'value': 'ecomanager'},
          ],
        },
      );

      return response.data;
    } catch (e) {
      throw Exception('Failed to setup webhook: $e');
    }
  }

  /// Get all webhooks
  Future<List<Map<String, dynamic>>> getWebhooks() async {
    try {
      final response = await client.get('/api/shop/v2/webhooks');
      return List<Map<String, dynamic>>.from(response.data['data'] ?? []);
    } catch (e) {
      throw Exception('Failed to get webhooks: $e');
    }
  }

  /// Update webhook status
  Future<Map<String, dynamic>> updateWebhookStatus(
    String webhookId,
    bool status,
  ) async {
    try {
      final response = await client.put(
        '/api/shop/v2/webhooks/$webhookId/status',
        data: {'status': status},
      );
      return response.data;
    } catch (e) {
      throw Exception('Failed to update webhook status: $e');
    }
  }
}
