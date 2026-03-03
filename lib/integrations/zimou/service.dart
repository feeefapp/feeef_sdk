import 'package:dio/dio.dart';
import 'package:feeef/integrations/integrations.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/orders/models/order.dart';

import 'models/zimou_wilaya.dart';
import 'models/zimou_commune.dart';
import 'models/create_package_request.dart';
import 'models/zimou_package_response.dart';

/// Zimou Express Delivery Service
/// Handles integration with Zimou Express API for package delivery management
class ZimouExpressDeliveryService
    extends DeliveryService<ZimouExpressDeliveryIntegration> {
  /// Base URL for Zimou Express API
  static const String baseUrl = 'https://zimou.express/api/v3';

  @override
  String get name => 'zimou';

  ZimouExpressDeliveryService({
    required super.client,
    required super.integration,
  });

  /// Factory constructor to create service from integration
  factory ZimouExpressDeliveryService.fromIntegration(
    ZimouExpressDeliveryIntegration integration,
  ) {
    final client = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          'Authorization': 'Bearer ${integration.apiKey}',
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
    return ZimouExpressDeliveryService(
      client: client,
      integration: integration,
    );
  }

  @override
  /// [deliverOrder] sends an order to Zimou Express
  Future<void> deliverOrder({required Order order, String? storeName}) async {
    // This method is not implemented yet
    throw UnimplementedError('Use send method instead');
  }

  /// Fetch all wilayas from Zimou API
  /// GET /helpers/wilayas
  Future<List<ZimouWilaya>> fetchWilayas() async {
    try {
      final response = await client.get('/helpers/wilayas');

      if (response.statusCode == 200 && response.data is List) {
        return List<ZimouWilaya>.from(
          (response.data as List).map(
            (w) => ZimouWilaya.fromJson(w as Map<String, dynamic>),
          ),
        );
      }

      return [];
    } catch (e) {
      print('Error fetching wilayas: $e');
      return [];
    }
  }

  /// Fetch all communes from Zimou API
  /// GET /helpers/communes
  Future<List<ZimouCommune>> fetchCommunes() async {
    try {
      final response = await client.get('/helpers/communes');

      if (response.statusCode == 200 && response.data is List) {
        return List<ZimouCommune>.from(
          (response.data as List).map(
            (c) => ZimouCommune.fromJson(c as Map<String, dynamic>),
          ),
        );
      }

      return [];
    } catch (e) {
      print('Error fetching communes: $e');
      return [];
    }
  }

  /// Fetch communes for a specific wilaya
  Future<List<ZimouCommune>> fetchCommunesForWilaya(int wilayaId) async {
    try {
      final allCommunes = await fetchCommunes();
      return allCommunes.where((c) => c.wilayaId == wilayaId).toList();
    } catch (e) {
      print('Error fetching communes for wilaya $wilayaId: $e');
      return [];
    }
  }

  /// Create a single package in Zimou Express
  /// POST /packages
  Future<ZimouPackageResponse> send(
    Order order,
    ZimouPackageCreateRequest request,
  ) async {
    try {
      final response = await client.post('/packages', data: request.toJson());

      if (response.statusCode == 201) {
        final packageResponse = ZimouPackageResponse.fromJson(response.data);
        await attach(order: order, payload: response.data);
        return packageResponse;
      }

      throw Exception('Failed to create package: ${response.statusMessage}');
    } catch (e) {
      print('Error sending package to Zimou: $e');
      rethrow;
    }
  }

  /// Create multiple packages in bulk
  /// POST /packages/bulk
  Future<Map<String, dynamic>> createBulkPackages(
    List<ZimouPackageCreateRequest> packages,
  ) async {
    try {
      final response = await client.post(
        '/packages/bulk',
        data: packages.map((p) => p.toJson()).toList(),
      );

      if (response.statusCode == 207) {
        return response.data;
      }

      throw Exception(
        'Failed to create bulk packages: ${response.statusMessage}',
      );
    } catch (e) {
      print('Error creating bulk packages: $e');
      rethrow;
    }
  }

  /// Get package details
  /// GET /packages/{package_id}
  Future<ZimouPackageResponse> getPackageDetails(int packageId) async {
    try {
      final response = await client.get('/packages/$packageId');

      if (response.statusCode == 200) {
        return ZimouPackageResponse.fromJson(response.data);
      }

      throw Exception(
        'Failed to get package details: ${response.statusMessage}',
      );
    } catch (e) {
      print('Error fetching package details: $e');
      rethrow;
    }
  }

  /// Update package details
  /// PUT /packages/{package_id}
  Future<void> updatePackage(
    int packageId,
    Map<String, dynamic> updates,
  ) async {
    try {
      final response = await client.put('/packages/$packageId', data: updates);

      if (response.statusCode != 200) {
        throw Exception('Failed to update package: ${response.statusMessage}');
      }
    } catch (e) {
      print('Error updating package: $e');
      rethrow;
    }
  }

  /// Delete packages in bulk
  /// DELETE /packages/bulk
  Future<Map<String, dynamic>> cancelBulkPackages(
    List<String> trackingCodes,
  ) async {
    try {
      final params = {'tracking_codes[]': trackingCodes};

      final response = await client.delete(
        '/packages/bulk',
        queryParameters: params,
      );

      if (response.statusCode == 200) {
        return response.data;
      }

      throw Exception('Failed to delete packages: ${response.statusMessage}');
    } catch (e) {
      print('Error deleting packages: $e');
      rethrow;
    }
  }

  /// Get account statistics
  /// GET /statistics
  Future<Map<String, dynamic>> getStatistics() async {
    try {
      final response = await client.get('/statistics');

      if (response.statusCode == 200) {
        return response.data;
      }

      throw Exception('Failed to get statistics: ${response.statusMessage}');
    } catch (e) {
      print('Error fetching statistics: $e');
      rethrow;
    }
  }
}
