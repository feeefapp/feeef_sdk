import 'package:dio/dio.dart';
import 'package:feeef/integrations/integrations.dart';
import 'package:feeef/integrations/yalidine/models/create_order_request.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:feeef/core/algeria_cites_stub.dart';
import 'package:feeef/core/string_extensions.dart';
import 'package:feeef/feeef_client.dart';
import 'package:feeef/orders/models/order.dart';

/// Yalidine/Guepex Delivery Service
///
/// Handles integration with Yalidine and Guepex delivery APIs.
/// Uses header-based authentication (X-API-ID, X-API-TOKEN).
///
/// Key improvements:
/// - Better error handling with structured error responses
/// - Support for backend territory resolution via stateCode/cityCode
/// - Correct phone number formatting (0XXXXXXXXX format for Algeria)
/// - Proper stopdesk_id as integer type
class YalidineDeliveryService
    extends DeliveryService<YalidineDeliveryIntegration> {
  @override
  String get name => 'yalidine';

  final String? storeId;

  YalidineDeliveryService({
    required super.client,
    required super.integration,
    this.storeId,
  });

  @override
  /// [deliverOrder] sends an order to Yalidine
  Future<void> deliverOrder({required Order order, String? storeName}) async {
    // Check if order is already sent to Yalidine
    if (order.yalidineTrackingId?.isNotEmpty == true) {
      throw StateError(
        'Order ${order.id} is already sent to Yalidine (tracking: ${order.yalidineTrackingId})',
      );
    }

    // Build request from order
    final request = _buildDefaultRequest(order, storeName: storeName);

    // Send via backend
    final response = await send(order, request);
    await attach(
      order: order,
      payload: {'tracking': response.tracking, 'label': response.ticket},
    );
  }

  /// Build default Yalidine request from order
  ///
  /// Uses backend territory resolution by passing stateCode and cityCode.
  /// The backend will resolve the actual wilaya and commune names from metadata.
  YalidineOrderCreateRequest _buildDefaultRequest(
    Order order, {
    String? storeName,
  }) {
    // Build product list string
    final productList = order.items
        .map(
          (item) =>
              '${item.productName}${item.variantPath != null && item.variantPath!.isNotEmpty ? ' - ${item.variantPath}' : ''} x${item.quantity}',
        )
        .join(', ');

    // Extract state code (remove any text, keep only digits)
    final stateCode = order.shippingState ?? '';
    final stateCodeOnly = stateCode
        .replaceAll(RegExp(r'[^\d]'), '')
        .padLeft(2, '0');

    // Parse wilaya ID from state code
    final wilayaId = int.tryParse(stateCodeOnly) ?? 1;

    // Determine if this is a stopdesk delivery
    final isStopDesk = order.shippingType != ShippingType.home;

    // Get the first and last name from customer name
    final nameParts = (order.customerName ?? 'Client').split(' ');
    final firstName = nameParts.isNotEmpty ? nameParts.first : 'Client';
    final lastName = nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '';

    // Calculate free shipping
    final freeShipping = order.shippingPrice == 0;

    return YalidineOrderCreateRequest(
      orderId: order.id,
      fromWilayaName: integration.metadata?['state'] ?? 'Alger',
      firstName: firstName,
      familyName: lastName,
      contactPhone: formatPhoneForYalidine(order.customerPhone),
      address: order.shippingAddress ?? 'Non spécifié',
      toCommuneName: order.shippingCity ?? '',
      toWilayaName: stateCode,
      productList: productList.isNotEmpty ? productList : 'Produit',
      price: order.total.round(),
      doInsurance: false,
      declaredValue: order.total.round(),
      height: 0,
      width: 0,
      length: 0,
      weight: 0,
      freeShipping: freeShipping,
      isStopDesk: isStopDesk,
      stopDeskId:
          null, // Will be auto-selected by backend based on state metadata
      hasExchange: false,
      productToCollect: null,
      // Pass state/city codes for backend resolution
      stateCode: stateCodeOnly,
      cityCode: order.shippingCity,
    );
  }

  /// Format phone number for Yalidine API
  ///
  /// Yalidine API requires:
  /// - Mobile: 0 + 9 digits = 10 digits total (e.g., 0550123456)
  /// - Landline: 0 + 8 digits = 9 digits total (e.g., 023456789)
  ///
  /// Must start with 0 and contain 9 digits for mobile or 8 digits for landline.
  /// Returns empty string if phone cannot be formatted to valid length.
  static String formatPhoneForYalidine(String? phone) {
    if (phone == null || phone.isEmpty) return '';

    // Remove all whitespace and non-digit characters except +
    String s = phone.replaceAll(RegExp(r'[\s\-\(\)]'), '');

    // Handle +213 format
    if (s.startsWith('+213')) {
      s = '0${s.substring(4)}';
    }
    // Handle 213 format (without +)
    else if (s.startsWith('213') && s.length >= 12) {
      s = '0${s.substring(3)}';
    }
    // Ensure it starts with 0
    else if (!s.startsWith('0') && s.length >= 9) {
      s = '0$s';
    }

    // Remove any non-digit characters
    s = s.replaceAll(RegExp(r'\D'), '');

    // Validate: must start with 0 and be exactly 9 or 10 digits total
    if (!s.startsWith('0')) {
      return '';
    }

    // Check length: must be 9 (landline) or 10 (mobile) digits total
    if (s.length != 9 && s.length != 10) {
      print(
        'Yalidine: Invalid phone length: ${s.length} digits (expected 9 or 10). Phone: $phone',
      );
      return '';
    }

    return s;
  }

  /// Fetch communes/cities for a specific wilaya from the Yalidine API
  /// GET /v1/communes/?wilaya_id={wilayaId}
  Future<List<Map<String, dynamic>>> fetchCommunes(int wilayaId) async {
    try {
      final dio = Dio();
      final String url =
          "https://api.${integration.agent.name}.app/v1/communes/";
      final String apiId = integration.id;
      final String apiToken = integration.token;

      final response = await dio.get(
        url,
        queryParameters: {'wilaya_id': wilayaId},
        options: Options(headers: {"X-API-ID": apiId, "X-API-TOKEN": apiToken}),
      );

      if (response.statusCode == 200 && response.data['data'] != null) {
        return List<Map<String, dynamic>>.from(response.data['data']);
      }

      return [];
    } catch (e) {
      print('Error fetching communes: $e');
      // Fallback to stub data if API fails (host app can provide real data)
      final cities = getCitiesByStateCode(
        code: wilayaId.toString().padLeft(2, '0'),
      );
      return cities
          .map(
            (city) => {
              'id': int.tryParse(city.code) ?? 0,
              'name': city.name,
              'wilaya_id': wilayaId,
              'has_stop_desk': 0,
              'is_deliverable': 1,
            },
          )
          .toList();
    }
  }

  /// Fetch stop desks/centers for a specific wilaya from the Yalidine API
  /// GET /v1/centers/?wilaya_id={wilayaId}
  Future<List<Map<String, dynamic>>> fetchCenters(int wilayaId) async {
    try {
      final dio = Dio();
      final String url =
          "https://api.${integration.agent.name}.app/v1/centers/";
      final String apiId = integration.id;
      final String apiToken = integration.token;

      final response = await dio.get(
        url,
        queryParameters: {'wilaya_id': wilayaId},
        options: Options(headers: {"X-API-ID": apiId, "X-API-TOKEN": apiToken}),
      );

      if (response.statusCode == 200 && response.data['data'] != null) {
        return List<Map<String, dynamic>>.from(response.data['data']);
      }

      return [];
    } catch (e) {
      print('Error fetching centers: $e');
      // Return empty list if API fails - centers are not critical
      return [];
    }
  }

  /// Fetch centers from backend (using database metadata)
  /// GET /stores/:storeId/integrations/yalidine/centers?stateCode={stateCode}
  Future<YalidineCentersResponse> fetchCentersFromBackend(
    String stateCode,
  ) async {
    try {
      final response = await client.get(
        '/stores/${storeId ?? ''}/integrations/yalidine/centers',
        queryParameters: {'stateCode': stateCode},
      );

      final data = response.data as Map<String, dynamic>;
      final centers =
          (data['centers'] as List<dynamic>?)
              ?.map((e) => (e is int) ? e : int.tryParse(e.toString()) ?? 0)
              .toList() ??
          [];
      final deliverable = data['deliverable'] as bool? ?? false;
      final wilayaName = data['wilaya_name'] as String?;

      return (
        centers: centers,
        deliverable: deliverable,
        wilayaName: wilayaName,
      );
    } catch (e) {
      print('Error fetching centers from backend: $e');
      return (centers: [], deliverable: false, wilayaName: null)
          as YalidineCentersResponse;
    }
  }

  /// Resolve territory metadata from backend
  /// POST /stores/:storeId/integrations/yalidine/resolve
  Future<YalidineResolveResponse?> resolveTerritory({
    required String stateCode,
    String? cityCode,
    String? cityName,
  }) async {
    try {
      final response = await client.post(
        '/stores/${storeId ?? ''}/integrations/yalidine/resolve',
        data: {
          'stateCode': stateCode,
          if (cityCode != null) 'cityCode': cityCode,
          if (cityName != null) 'cityName': cityName,
        },
      );

      final data = response.data as Map<String, dynamic>;
      return (
        wilayaId: data['wilaya_id'] as int,
        wilayaName: data['wilaya_name'] as String,
        communeId: data['commune_id'] as int,
        communeName: data['commune_name'] as String,
        centerIds:
            (data['center_ids'] as List<dynamic>?)
                ?.map((e) => (e is int) ? e : int.tryParse(e.toString()) ?? 0)
                .toList() ??
            [],
        deliverable: data['deliverable'] as bool? ?? true,
      );
    } catch (e) {
      print('Error resolving territory: $e');
      return null;
    }
  }

  /// Fetch delivery fees for a route from the Yalidine API
  /// GET /v1/fees/?from_wilaya_id={fromWilayaId}&to_wilaya_id={toWilayaId}
  Future<Map<String, dynamic>?> fetchDeliveryFees(
    int fromWilayaId,
    int toWilayaId,
  ) async {
    try {
      final dio = Dio();
      final String url = "https://api.${integration.agent.name}.app/v1/fees/";
      final String apiId = integration.id;
      final String apiToken = integration.token;

      final response = await dio.get(
        url,
        queryParameters: {
          'from_wilaya_id': fromWilayaId,
          'to_wilaya_id': toWilayaId,
        },
        options: Options(headers: {"X-API-ID": apiId, "X-API-TOKEN": apiToken}),
      );

      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }

      return null;
    } catch (e) {
      print('Error fetching delivery fees: $e');
      return null;
    }
  }

  /// [send] send order to Yalidine
  /// return [YalidineOrderCreateResponse] with tracking and ticket
  Future<YalidineOrderCreateResponse> send(
    Order order,
    YalidineOrderCreateRequest request,
  ) async {
    // Build parcel with correct types for Yalidine API
    final parcel = {
      "order_id": request.orderId,
      "from_wilaya_name": request.fromWilayaName,
      "firstname": request.firstName.nullIfEmpty ?? "unknown",
      "familyname": request.familyName.nullIfEmpty ?? "unknown",
      "contact_phone": request.contactPhone,
      "address": request.address,
      "to_commune_name": request.toCommuneName,
      "to_wilaya_name": request.toWilayaName,
      "product_list": request.productList,
      "price": request.price,
      "do_insurance": request.doInsurance,
      "declared_value": request.declaredValue,
      "height": request.height,
      "width": request.width,
      "length": request.length,
      "weight": request.weight,
      "freeshipping": request.freeShipping,
      "is_stopdesk": request.isStopDesk,
      "has_exchange": request.hasExchange,
      "product_to_collect": request.productToCollect,
      // Pass state/city codes for backend resolution
      if (request.stateCode != null) "stateCode": request.stateCode,
      if (request.cityCode != null) "cityCode": request.cityCode,
    };

    // Add stopdesk_id only if it's a stopdesk delivery
    // Note: stopdesk_id must be an integer for Yalidine API
    if (request.isStopDesk && request.stopDeskId != null) {
      final stopDeskIdInt = int.tryParse(request.stopDeskId!);
      if (stopDeskIdInt != null) {
        parcel["stopdesk_id"] = stopDeskIdInt;
      }
    }

    try {
      final response = await client.post(
        '/stores/${storeId ?? order.storeId}/integrations/yalidine/send',
        data: [parcel],
      );

      // Parse response - handle both direct response and nested response formats
      final responseData = response.data;
      Map<String, dynamic>? parcelResult;

      if (responseData is Map<String, dynamic>) {
        // Check if response has success field (new format)
        if (responseData.containsKey('success')) {
          if (responseData['success'] == false) {
            throw YalidineApiException(
              message:
                  responseData['error'] as String? ?? 'Failed to create parcel',
              orderId: request.orderId,
            );
          }
          parcelResult = responseData;
        }
        // Check for order_id keyed response (Yalidine bulk format)
        else if (responseData.containsKey(request.orderId)) {
          parcelResult = responseData[request.orderId] as Map<String, dynamic>?;
        }
        // Take first value if it's a map response
        else if (responseData.isNotEmpty && responseData.values.first is Map) {
          parcelResult = responseData.values.first as Map<String, dynamic>;
        }
      }

      if (parcelResult == null) {
        throw YalidineApiException(
          message: 'Invalid response format from Yalidine API',
          orderId: request.orderId,
        );
      }

      // Check for success field in parcel result
      if (parcelResult['success'] == false) {
        throw YalidineApiException(
          message:
              parcelResult['message'] as String? ?? 'Failed to create parcel',
          orderId: request.orderId,
        );
      }

      final tracking = parcelResult["tracking"] as String?;
      final ticket = parcelResult["label"] as String?;

      await attach(order: order, payload: parcelResult);

      return (tracking: tracking, ticket: ticket);
    } on DioException catch (e) {
      // Parse Yalidine validation errors (Laravel format)
      if (e.response?.statusCode == 422 && e.response?.data != null) {
        final errorData = e.response!.data as Map<String, dynamic>;
        final errors = errorData['errors'] as Map<String, dynamic>?;
        if (errors != null) {
          final messages = errors.values
              .expand((e) => e is List ? e : [e])
              .join(', ');
          throw YalidineApiException(
            message: 'Validation error: $messages',
            orderId: request.orderId,
            errors: errors,
          );
        }
        throw YalidineApiException(
          message: errorData['message'] as String? ?? 'Validation error',
          orderId: request.orderId,
        );
      }
      rethrow;
    }
  }

  /// [sendMany] send multiple orders to Yalidine in bulk
  ///
  /// This method sends multiple orders in a single API call to Yalidine.
  /// Returns a [YalidineBulkSendResult] with created and failed parcels.
  ///
  /// Parameters:
  /// - [orders]: List of orders to send
  /// - [requests]: List of YalidineOrderCreateRequest corresponding to each order
  ///
  /// Returns:
  /// - [YalidineBulkSendResult] with created, failed, and summary information
  Future<YalidineBulkSendResult> sendMany(
    List<Order> orders,
    List<YalidineOrderCreateRequest> requests,
  ) async {
    if (orders.isEmpty || requests.isEmpty) {
      throw ArgumentError('Orders and requests lists must not be empty');
    }

    if (orders.length != requests.length) {
      throw ArgumentError(
        'Orders and requests lists must have the same length',
      );
    }

    // Build parcels array from requests with correct types
    final List<Map<String, dynamic>> parcels = requests.map((request) {
      final parcel = {
        "order_id": request.orderId,
        "from_wilaya_name": request.fromWilayaName,
        "firstname": request.firstName.nullIfEmpty ?? "unknown",
        "familyname": request.familyName.nullIfEmpty ?? "unknown",
        "contact_phone": request.contactPhone,
        "address": request.address,
        "to_commune_name": request.toCommuneName,
        "to_wilaya_name": request.toWilayaName,
        "product_list": request.productList,
        "price": request.price,
        "do_insurance": request.doInsurance,
        "declared_value": request.declaredValue,
        "height": request.height,
        "width": request.width,
        "length": request.length,
        "weight": request.weight,
        "freeshipping": request.freeShipping,
        "is_stopdesk": request.isStopDesk,
        "has_exchange": request.hasExchange,
        "product_to_collect": request.productToCollect,
        // Pass state/city codes for backend resolution
        if (request.stateCode != null) "stateCode": request.stateCode,
        if (request.cityCode != null) "cityCode": request.cityCode,
      };

      // Add stopdesk_id as integer if present
      if (request.isStopDesk && request.stopDeskId != null) {
        final stopDeskIdInt = int.tryParse(request.stopDeskId!);
        if (stopDeskIdInt != null) {
          parcel["stopdesk_id"] = stopDeskIdInt;
        }
      }

      return parcel;
    }).toList();

    // Use the first order's storeId (all orders should be from the same store)
    final targetStoreId = storeId ?? orders.first.storeId;

    try {
      // Send bulk request to backend
      final response = await client.post(
        '/stores/$targetStoreId/integrations/yalidine/sendMany',
        data: {'parcels': parcels},
      );

      final responseData = response.data as Map<String, dynamic>;
      final data = responseData['data'] as Map<String, dynamic>? ?? {};
      final createdRaw = data['created'] as List<dynamic>? ?? [];
      final failedRaw = data['failed'] as List<dynamic>? ?? [];
      final summary =
          responseData['summary'] as Map<String, dynamic>? ??
          {
            'total': orders.length,
            'created': createdRaw.length,
            'failed': failedRaw.length,
          };

      // Parse created parcels
      final List<YalidineCreatedParcel> created = [];
      for (final item in createdRaw) {
        final parcelData = item as Map<String, dynamic>;
        final orderId = parcelData['order_id'] as String?;

        if (orderId != null) {
          created.add((
            orderId: orderId,
            tracking: parcelData['tracking'] as String?,
            label: parcelData['label'] as String?,
            importId: parcelData['import_id'] as int?,
          ));

          // Find the corresponding order and attach
          final order = orders.firstWhere(
            (o) => o.id == orderId,
            orElse: () => orders.first,
          );
          await attach(order: order, payload: parcelData);
        }
      }

      // Parse failed parcels
      final List<YalidineFailedParcel> failed = [];
      for (final item in failedRaw) {
        final parcelData = item as Map<String, dynamic>;
        failed.add((
          orderId: parcelData['order_id'] as String? ?? '',
          error: parcelData['error'] as String? ?? 'Unknown error',
        ));
      }

      return (
        created: created,
        failed: failed,
        summary: (
          total: summary['total'] as int? ?? orders.length,
          created: summary['created'] as int? ?? created.length,
          failed: summary['failed'] as int? ?? failed.length,
        ),
      );
    } on DioException catch (e) {
      // Handle bulk API errors
      if (e.response?.statusCode == 422 && e.response?.data != null) {
        final errorData = e.response!.data as Map<String, dynamic>;
        throw YalidineApiException(
          message: errorData['message'] as String? ?? 'Bulk validation error',
          errors: errorData['errors'] as Map<String, dynamic>?,
        );
      }
      rethrow;
    }
  }

  @override
  /// [detach] detaches order from Yalidine delivery service
  /// Deletes the parcel from Yalidine API before removing metadata
  Future<void> detach({required Order order}) async {
    final tracking = order.yalidineTrackingId;
    if (tracking == null || tracking.isEmpty) {
      // If no tracking ID, just remove metadata (order was never sent or already deleted)
      await super.detach(order: order);
      return;
    }

    // Delete from Yalidine via backend
    try {
      await Feeef.instance.client.delete(
        '/stores/${storeId ?? order.storeId}/integrations/yalidine/orders/$tracking',
      );
    } catch (e) {
      // Log error but continue with metadata removal
      // The parcel might already be deleted or in a state that can't be deleted
      print('Error deleting parcel from Yalidine: $e');
      // Continue to remove metadata even if API deletion fails
    }

    // Remove metadata after successful or failed deletion
    await super.detach(order: order);
  }

  /// [localSend] send order to Yalidine locally (direct API call, bypassing backend)
  /// return [YalidineOrderCreateResponse] with tracking and ticket
  ///
  /// Note: This method is provided for compatibility but using [send] is recommended
  /// as it leverages backend territory resolution and error handling.
  Future<YalidineOrderCreateResponse> localSend(
    Order order,
    YalidineOrderCreateRequest request,
  ) async {
    final dio = Dio();

    final String url = "https://api.${integration.agent.name}.app/v1/parcels/";
    final String apiId = integration.id;
    final String apiToken = integration.token;

    // Build parcel with integer stopdesk_id
    final parcel = {
      "order_id": request.orderId,
      "from_wilaya_name": request.fromWilayaName,
      "firstname": request.firstName,
      "familyname": request.familyName,
      "contact_phone": request.contactPhone,
      "address": request.address,
      "to_commune_name": request.toCommuneName,
      "to_wilaya_name": request.toWilayaName,
      "product_list": request.productList,
      "price": request.price,
      "do_insurance": request.doInsurance,
      "declared_value": request.declaredValue,
      "height": request.height,
      "width": request.width,
      "length": request.length,
      "weight": request.weight,
      "freeshipping": request.freeShipping,
      "is_stopdesk": request.isStopDesk,
      "has_exchange": request.hasExchange,
      "product_to_collect": request.productToCollect,
    };

    // Add stopdesk_id as integer if present
    if (request.isStopDesk && request.stopDeskId != null) {
      final stopDeskIdInt = int.tryParse(request.stopDeskId!);
      if (stopDeskIdInt != null) {
        parcel["stopdesk_id"] = stopDeskIdInt;
      }
    }

    try {
      final response = await dio.post(
        url,
        options: Options(
          headers: {
            "X-API-ID": apiId,
            "X-API-TOKEN": apiToken,
            "Content-Type": "application/json",
          },
        ),
        data: [parcel],
      );

      // Parse response - keys are order_id
      final responseData = response.data as Map<String, dynamic>;
      final parcelResult =
          responseData[request.orderId] as Map<String, dynamic>?;

      if (parcelResult == null) {
        throw YalidineApiException(
          message: 'No response for order from Yalidine API',
          orderId: request.orderId,
        );
      }

      if (parcelResult['success'] == false) {
        throw YalidineApiException(
          message: parcelResult['message'] as String? ?? 'Creation failed',
          orderId: request.orderId,
        );
      }

      String? tracking = parcelResult["tracking"] as String?;
      String? ticket = parcelResult["label"] as String?;

      await attach(order: order, payload: parcelResult);

      return (tracking: tracking, ticket: ticket);
    } on DioException catch (e) {
      // Parse Yalidine validation errors
      if (e.response?.statusCode == 422 && e.response?.data != null) {
        final errorData = e.response!.data;
        if (errorData is Map<String, dynamic> && errorData['errors'] != null) {
          final errors = errorData['errors'] as Map<String, dynamic>;
          final messages = errors.values
              .expand((e) => e is List ? e : [e])
              .join(', ');
          throw YalidineApiException(
            message: 'Validation error: $messages',
            orderId: request.orderId,
            errors: errors,
          );
        }
      }
      print("Error: $e");
      rethrow;
    }
  }
}

/// Response type for single order creation
typedef YalidineOrderCreateResponse = ({String? tracking, String? ticket});

/// Response type for centers query
typedef YalidineCentersResponse = ({
  List<int> centers,
  bool deliverable,
  String? wilayaName,
});

/// Response type for territory resolution
typedef YalidineResolveResponse = ({
  int wilayaId,
  String wilayaName,
  int communeId,
  String communeName,
  List<int> centerIds,
  bool deliverable,
});

/// Created parcel info from bulk send
typedef YalidineCreatedParcel = ({
  String orderId,
  String? tracking,
  String? label,
  int? importId,
});

/// Failed parcel info from bulk send
typedef YalidineFailedParcel = ({String orderId, String error});

/// Bulk send summary
typedef YalidineBulkSummary = ({int total, int created, int failed});

/// Result of bulk send operation
typedef YalidineBulkSendResult = ({
  List<YalidineCreatedParcel> created,
  List<YalidineFailedParcel> failed,
  YalidineBulkSummary summary,
});

/// Custom exception for Yalidine API errors
class YalidineApiException implements Exception {
  final String message;
  final String? orderId;
  final Map<String, dynamic>? errors;

  YalidineApiException({required this.message, this.orderId, this.errors});

  @override
  String toString() {
    if (orderId != null) {
      return 'YalidineApiException: $message (order: $orderId)';
    }
    return 'YalidineApiException: $message';
  }
}

/// Extensions on [Order] for Yalidine data access
extension OrderYalidine on Order {
  /// Get the yalidine delivery data
  Map<String, dynamic>? get yalidineData {
    if (metadata['delivery'] == null) return null;
    // service match
    if (metadata['delivery']['service'] != 'yalidine') return null;
    return metadata['delivery'];
  }

  /// Get the Yalidine tracking ID
  String? get yalidineTrackingId => yalidineData?["payload"]?["tracking"];

  /// Get the Yalidine ticket/label URL
  String? get yalidineTicket => yalidineData?["payload"]?["label"];
}
