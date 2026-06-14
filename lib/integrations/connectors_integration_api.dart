import 'package:dio/dio.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';

/// API for inbound platform connectors (Shopify, YouCan, …).
class ConnectorsIntegrationApi {
  final Dio client;

  const ConnectorsIntegrationApi({required this.client});

  /// Lists connectors for a store (secrets stripped server-side).
  Future<ConnectorsIntegration> listConnectors(String storeId) async {
    final response = await client.get('/stores/$storeId/integrations/connectors');
    return ConnectorsIntegration.fromJson(response.data as Map<String, dynamic>);
  }

  /// Removes a connector by id.
  Future<void> deleteConnector(String storeId, String connectorId) async {
    await client.delete('/stores/$storeId/integrations/connectors/$connectorId');
  }

  /// Returns Shopify OAuth URL to open in browser / WebAuth session.
  Future<String> getShopifyInstallUrl(
    String storeId, {
    required String shop,
    bool popup = false,
    String? origin,
    String? callbackScheme,
  }) async {
    final response = await client.get(
      '/stores/$storeId/integrations/connectors/shopify/install-url',
      queryParameters: {
        'shop': shop,
        if (popup) 'popup': 'true',
        if (origin != null && origin.isNotEmpty) 'origin': origin,
        if (callbackScheme != null && callbackScheme.isNotEmpty)
          'callbackScheme': callbackScheme,
      },
    );
    return response.data['installUrl'] as String;
  }

  /// Returns YouCan OAuth URL to open in browser / WebAuth session.
  Future<String> getYoucanInstallUrl(
    String storeId, {
    bool popup = false,
    String? origin,
    String? callbackScheme,
  }) async {
    final response = await client.get(
      '/stores/$storeId/integrations/connectors/youcan/install-url',
      queryParameters: {
        if (popup) 'popup': 'true',
        if (origin != null && origin.isNotEmpty) 'origin': origin,
        if (callbackScheme != null && callbackScheme.isNotEmpty)
          'callbackScheme': callbackScheme,
      },
    );
    return response.data['installUrl'] as String;
  }

  /// Fetches one-time mobile OAuth payload after deep-link callback.
  Future<Map<String, dynamic>> fetchMobileOAuthResult(String nonce) async {
    final response = await client.get(
      '/integrations/connectors/mobile-result',
      queryParameters: {'nonce': nonce},
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Pulls products and/or orders from the external platform.
  Future<ConnectorConfig> pullConnector(
    String storeId,
    String connectorId, {
    List<String> resources = const ['products', 'orders'],
  }) async {
    final response = await client.post(
      '/stores/$storeId/integrations/connectors/$connectorId/pull',
      data: {'resources': resources},
    );
    final data = response.data as Map<String, dynamic>;
    return ConnectorConfig.fromJson(data['connector'] as Map<String, dynamic>);
  }

  /// Re-registers Shopify webhooks / YouCan REST hooks.
  Future<ConnectorConfig> reconfigureConnectorWebhooks(
    String storeId,
    String connectorId,
  ) async {
    final response = await client.post(
      '/stores/$storeId/integrations/connectors/$connectorId/webhooks',
    );
    final data = response.data as Map<String, dynamic>;
    return ConnectorConfig.fromJson(data['connector'] as Map<String, dynamic>);
  }
}
