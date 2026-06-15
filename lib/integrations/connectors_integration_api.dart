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

  /// Starts Google Sheets connector setup — reuses export OAuth when already linked, else returns install URL.
  Future<Map<String, dynamic>> prepareGoogleSheetsConnector(
    String storeId, {
    bool popup = false,
    String? origin,
    String? callbackScheme,
    bool forceOAuth = false,
  }) async {
    final response = await client.get(
      '/stores/$storeId/integrations/connectors/google-sheets/install-url',
      queryParameters: {
        if (popup) 'popup': 'true',
        if (origin != null && origin.isNotEmpty) 'origin': origin,
        if (callbackScheme != null && callbackScheme.isNotEmpty)
          'callbackScheme': callbackScheme,
        if (forceOAuth) 'forceOAuth': 'true',
      },
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Returns Google Sheets OAuth URL for inbound connector setup.
  Future<String> getGoogleSheetsInstallUrl(
    String storeId, {
    bool popup = false,
    String? origin,
    String? callbackScheme,
  }) async {
    final prep = await prepareGoogleSheetsConnector(
      storeId,
      popup: popup,
      origin: origin,
      callbackScheme: callbackScheme,
    );
    if (prep['linked'] == true) {
      throw StateError('Google Sheets already linked — use prepareGoogleSheetsConnector');
    }
    return prep['installUrl'] as String;
  }

  /// Lists spreadsheets this app can access (drive.file — created/opened by Feeef).
  Future<List<Map<String, dynamic>>> listGoogleSpreadsheets(
    String storeId,
    String connectorId,
  ) async {
    final response = await client.get(
      '/stores/$storeId/integrations/connectors/$connectorId/google-sheets/spreadsheets',
    );
    final list = response.data['spreadsheets'] as List<dynamic>? ?? [];
    return list.map((e) => Map<String, dynamic>.from(e as Map)).toList();
  }

  /// Creates a new spreadsheet owned by the app with a default Orders tab.
  Future<Map<String, dynamic>> createGoogleSpreadsheet(
    String storeId,
    String connectorId, {
    String? title,
    String? sheetName,
  }) async {
    final response = await client.post(
      '/stores/$storeId/integrations/connectors/$connectorId/google-sheets/spreadsheets',
      data: {
        if (title != null && title.isNotEmpty) 'title': title,
        if (sheetName != null && sheetName.isNotEmpty) 'sheetName': sheetName,
      },
    );
    return Map<String, dynamic>.from(response.data['spreadsheet'] as Map);
  }

  /// Lists tabs in a spreadsheet for connector configuration.
  Future<List<Map<String, dynamic>>> listGoogleSheetTabs(
    String storeId,
    String connectorId,
    String spreadsheetId,
  ) async {
    final response = await client.get(
      '/stores/$storeId/integrations/connectors/$connectorId/google-sheets/spreadsheets/$spreadsheetId/tabs',
    );
    final list = response.data['tabs'] as List<dynamic>? ?? [];
    return list.map((e) => Map<String, dynamic>.from(e as Map)).toList();
  }

  /// Reads row-1 headers and suggested column mapping for a sheet tab.
  Future<Map<String, dynamic>> fetchGoogleSheetHeaders(
    String storeId,
    String connectorId,
    String spreadsheetId,
    String sheetName,
  ) async {
    final encodedSheet = Uri.encodeComponent(sheetName);
    final response = await client.get(
      '/stores/$storeId/integrations/connectors/$connectorId/google-sheets/spreadsheets/$spreadsheetId/sheets/$encodedSheet/headers',
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Binds spreadsheet + tab and runs initial order pull.
  Future<ConnectorConfig> configureGoogleSheetsConnector(
    String storeId,
    String connectorId, {
    required String spreadsheetId,
    required String sheetName,
    String? spreadsheetName,
    Map<String, String>? orderFieldMapping,
  }) async {
    final response = await client.post(
      '/stores/$storeId/integrations/connectors/$connectorId/google-sheets/configure',
      data: {
        'spreadsheetId': spreadsheetId,
        'sheetName': sheetName,
        if (spreadsheetName != null && spreadsheetName.isNotEmpty)
          'spreadsheetName': spreadsheetName,
        if (orderFieldMapping != null && orderFieldMapping.isNotEmpty)
          'fieldMapping': {'order': orderFieldMapping},
      },
    );
    final data = response.data as Map<String, dynamic>;
    return ConnectorConfig.fromJson(data['connector'] as Map<String, dynamic>);
  }

  /// Updates order column mapping and optionally re-pulls orders.
  Future<ConnectorConfig> updateGoogleSheetsFieldMapping(
    String storeId,
    String connectorId, {
    required Map<String, String> orderFieldMapping,
    bool pullOrders = true,
  }) async {
    final response = await client.post(
      '/stores/$storeId/integrations/connectors/$connectorId/google-sheets/field-mapping',
      data: {
        'fieldMapping': {'order': orderFieldMapping},
        'pullOrders': pullOrders,
      },
    );
    final data = response.data as Map<String, dynamic>;
    return ConnectorConfig.fromJson(data['connector'] as Map<String, dynamic>);
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
