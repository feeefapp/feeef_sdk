import 'package:dio/dio.dart';
import 'package:feeef/integrations/integrations.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:feeef/feeef_client.dart';
import 'package:feeef/integrations/delivery/bulk_send_result.dart';
import 'package:feeef/orders/models/order.dart';

import 'bulk_created_attach_payload.dart';
import 'models/create_parcel_request.dart';

/// ZR Express Delivery Service
///
/// Handles integration with ZR Express delivery API.
/// Uses header-based authentication (x-api-key, x-tenant).
class ZrexpressDeliveryService
    extends DeliveryService<ZrexpressDeliveryIntegration> {
  @override
  String get name => 'zrexpress';

  final String? storeId;

  ZrexpressDeliveryService({
    required super.client,
    required super.integration,
    this.storeId,
  });

  @override
  /// [deliverOrder] sends an order to ZR Express
  Future<void> deliverOrder({required Order order, String? storeName}) async {
    // Check if order is already sent to ZR Express
    if (order.zrexpressParcelId?.isNotEmpty == true) {
      throw StateError(
        'Order ${order.id} is already sent to ZR Express (parcelId: ${order.zrexpressParcelId})',
      );
    }

    // Build request from order
    final request = _buildDefaultRequest(order, storeName: storeName);

    // Send via backend
    final response = await send(order, request);
    await attach(
      order: order,
      payload: {
        'parcelId': response.parcelId,
        'trackingNumber': response.trackingNumber,
        'externalId': response.externalId,
      },
    );
  }

  /// Build default ZR Express request from order
  ZrexpressParcelCreateRequest _buildDefaultRequest(
    Order order, {
    String? storeName,
  }) {
    final products = order.items.map((item) {
      // Combine product name with variant path if available
      final fullProductName =
          item.variantPath != null && item.variantPath!.isNotEmpty
          ? '${item.productName} - ${item.variantPath}'
          : item.productName;

      // Get SKU - use item.sku, fallback to productId
      final productSku = item.sku ?? item.productId;

      return ZrexpressOrderedProduct(
        productName: fullProductName,
        quantity: item.quantity.toInt(),
        unitPrice: item.price.toDouble(),
        productSku: productSku,
      );
    }).toList();

    // Format phone number for ZR Express (add +213 prefix if needed)
    String formatPhone(String? phone) {
      if (phone == null || phone.isEmpty) return '';
      phone = phone.replaceAll(RegExp(r'\s+'), '');
      if (phone.startsWith('0')) {
        return '+213${phone.substring(1)}';
      }
      if (!phone.startsWith('+')) {
        return '+213$phone';
      }
      return phone;
    }

    // Determine delivery type based on shipping type
    final deliveryType = order.shippingType == ShippingType.home
        ? ZrexpressDeliveryType.home
        : ZrexpressDeliveryType.pickupPoint;

    // Extract state code (remove any text, keep only digits)
    final stateCode = order.shippingState ?? '';
    final stateCodeOnly = stateCode
        .replaceAll(RegExp(r'[^\d]'), '')
        .padLeft(2, '0');

    // cityTerritoryId and districtTerritoryId are REQUIRED (backend will fetch from metadata)
    // city, district, postalCode are OPTIONAL
    // When shippingCountry is missing, city/district should be codes (optional)
    // When shippingCountry exists, city/district can be names (optional)
    final hasCountry =
        order.shippingCountry != null && order.shippingCountry!.isNotEmpty;

    return ZrexpressParcelCreateRequest(
      externalId: order.id,
      customer: ZrexpressCustomer(
        name: order.customerName ?? 'Client',
        phone: ZrexpressPhone(number1: formatPhone(order.customerPhone)),
      ),
      deliveryAddress: ZrexpressDeliveryAddress(
        street: order.shippingAddress ?? 'Unknown',
        // city, district, postalCode are optional - backend will use codes when country missing
        city: hasCountry ? (order.shippingCity ?? '') : '',
        district: hasCountry ? (order.shippingState ?? '') : '',
        postalCode: hasCountry ? '${stateCodeOnly}000' : '',
        country: order.shippingCountry ?? 'algeria',
        // cityTerritoryId and districtTerritoryId will be fetched by backend from metadata
        cityTerritoryId: null,
        districtTerritoryId: null,
      ),
      orderedProducts: products,
      amount: order.total.toDouble(),
      deliveryType: deliveryType,
      stateCode:
          stateCodeOnly, // Always send state code for backend to fetch territory IDs
      cityCode: order
          .shippingCity, // Send city code for backend to fetch territory IDs
      description: order.customerNote ?? order.shippingNote,
    );
  }

  /// [send] sends a single parcel to ZR Express
  ///
  /// Throws [StateError] if order is already sent to ZR Express
  Future<ZrexpressParcelCreateResponse> send(
    Order order,
    ZrexpressParcelCreateRequest request,
  ) async {
    // Check if order is already sent
    if (order.zrexpressParcelId?.isNotEmpty == true) {
      throw StateError(
        'Order ${order.id} is already sent to ZR Express (parcelId: ${order.zrexpressParcelId})',
      );
    }

    // Build request payload
    final payload = {
      'externalId': request.externalId ?? order.id,
      'customer': {
        'name': request.customer.name,
        'phone': {
          'number1': request.customer.phone.number1,
          if (request.customer.phone.number2 != null)
            'number2': request.customer.phone.number2,
        },
        if (request.customer.customerId != null)
          'customerId': request.customer.customerId,
      },
      'deliveryAddress': {
        'street': request.deliveryAddress.street,
        // city, district, postalCode are optional - only include if not empty
        if (request.deliveryAddress.city.isNotEmpty)
          'city': request.deliveryAddress.city,
        if (request.deliveryAddress.district.isNotEmpty)
          'district': request.deliveryAddress.district,
        if (request.deliveryAddress.postalCode.isNotEmpty)
          'postalCode': request.deliveryAddress.postalCode,
        'country': request.deliveryAddress.country,
        // cityTerritoryId and districtTerritoryId are required (backend will fetch if not provided)
        if (request.deliveryAddress.cityTerritoryId != null)
          'cityTerritoryId': request.deliveryAddress.cityTerritoryId,
        if (request.deliveryAddress.districtTerritoryId != null)
          'districtTerritoryId': request.deliveryAddress.districtTerritoryId,
      },
      'orderedProducts': request.orderedProducts
          .map(
            (p) => {
              'productName': p.productName,
              'quantity': p.quantity,
              'unitPrice': p.unitPrice,
              'stockType': p.stockType,
            },
          )
          .toList(),
      'amount': request.amount,
      'deliveryType': request.deliveryType == ZrexpressDeliveryType.home
          ? 'home'
          : 'pickup-point',
      if (request.hubId != null) 'hubId': request.hubId,
      if (request.description != null) 'description': request.description,
      if (request.stateCode != null) 'stateCode': request.stateCode,
      if (request.cityCode != null) 'cityCode': request.cityCode,
    };

    final response = await Feeef.instance.client.post(
      '/stores/${storeId ?? order.storeId}/integrations/zrexpress/send',
      data: payload,
    );

    final parcelId =
        response.data['parcelId'] as String? ?? response.data['id'] as String;
    final trackingNumber = response.data['trackingNumber'] as String?;

    await attach(order: order, payload: response.data);

    return ZrexpressParcelCreateResponse(
      parcelId: parcelId,
      trackingNumber: trackingNumber,
      externalId: request.externalId ?? order.id,
    );
  }

  /// [sendMany] sends multiple parcels to ZR Express in bulk
  ///
  /// Returns canonical bulk rows (`created` / `failed` / `skipped`) plus [summary].
  Future<DeliveryBulkSendApiResult> sendMany(
    List<Order> orders,
    List<ZrexpressParcelCreateRequest> requests,
  ) async {
    if (orders.isEmpty || requests.isEmpty) {
      throw ArgumentError('Orders and requests lists must not be empty');
    }

    if (orders.length != requests.length) {
      throw ArgumentError(
        'Orders and requests lists must have the same length',
      );
    }

    // Filter out already sent orders
    final List<Order> ordersToSend = [];
    final List<ZrexpressParcelCreateRequest> requestsToSend = [];
    final List<Map<String, dynamic>> clientSkipped = [];

    for (int i = 0; i < orders.length; i++) {
      final order = orders[i];
      if (order.zrexpressParcelId?.isNotEmpty == true) {
        clientSkipped.add({
          'externalId': order.id,
          'reason': 'already_sent',
          'message': 'Already sent (ID: ${order.zrexpressParcelId})',
          'parcelId': order.zrexpressParcelId,
          'trackingNumber': order.zrexpressTrackingNumber,
        });
      } else {
        ordersToSend.add(order);
        requestsToSend.add(requests[i]);
      }
    }

    if (ordersToSend.isEmpty) {
      return DeliveryBulkSendApiResult(
        created: const [],
        failed: const [],
        skipped: clientSkipped,
        summary: {
          'total': orders.length,
          'created': 0,
          'failed': 0,
          'skipped': clientSkipped.length,
        },
      );
    }

    // Build parcels array
    final parcels = <Map<String, dynamic>>[];
    for (int i = 0; i < requestsToSend.length; i++) {
      final request = requestsToSend[i];
      final order = ordersToSend[i];

      parcels.add({
        'externalId': request.externalId ?? order.id,
        'reference': request.externalId ?? order.id,
        'customer': {
          'name': request.customer.name,
          'phone': {
            'number1': request.customer.phone.number1,
            if (request.customer.phone.number2 != null &&
                request.customer.phone.number2!.isNotEmpty)
              'number2': request.customer.phone.number2,
          },
          // customerId will be generated by backend if not provided
          if (request.customer.customerId != null)
            'customerId': request.customer.customerId,
        },
        'deliveryAddress': {
          'street': request.deliveryAddress.street,
          // city, district, postalCode are optional - only include if not empty
          // Model requires them but API accepts empty strings, so we filter empty ones
          if (request.deliveryAddress.city.isNotEmpty)
            'city': request.deliveryAddress.city,
          if (request.deliveryAddress.district.isNotEmpty)
            'district': request.deliveryAddress.district,
          if (request.deliveryAddress.postalCode.isNotEmpty)
            'postalCode': request.deliveryAddress.postalCode,
          'country': request.deliveryAddress.country,
          // cityTerritoryId and districtTerritoryId are required (backend will fetch if not provided)
          if (request.deliveryAddress.cityTerritoryId != null &&
              request.deliveryAddress.cityTerritoryId!.isNotEmpty)
            'cityTerritoryId': request.deliveryAddress.cityTerritoryId,
          if (request.deliveryAddress.districtTerritoryId != null &&
              request.deliveryAddress.districtTerritoryId!.isNotEmpty)
            'districtTerritoryId': request.deliveryAddress.districtTerritoryId,
        },
        'orderedProducts': request.orderedProducts
            .map(
              (p) => {
                'productName': p.productName,
                'quantity': p.quantity,
                'unitPrice': p.unitPrice,
                'stockType': p.stockType,
              },
            )
            .toList(),
        'amount': request.amount,
        'deliveryType': request.deliveryType == ZrexpressDeliveryType.home
            ? 'home'
            : 'pickup-point',
        if (request.hubId != null && request.hubId!.isNotEmpty)
          'hubId': request.hubId,
        if (request.description != null && request.description!.isNotEmpty)
          'description': request.description,
        if (request.stateCode != null && request.stateCode!.isNotEmpty)
          'stateCode': request.stateCode,
        if (request.cityCode != null && request.cityCode!.isNotEmpty)
          'cityCode': request.cityCode,
      });
    }

    final targetStoreId = storeId ?? orders.first.storeId;
    final timeoutMs = 30000 + (parcels.length * 1000);

    try {
      final response = await Feeef.instance.client.post(
        '/stores/$targetStoreId/integrations/zrexpress/sendMany',
        data: {'parcels': parcels},
        options: Options(
          sendTimeout: Duration(milliseconds: timeoutMs),
          receiveTimeout: Duration(milliseconds: timeoutMs),
        ),
      );

      // Handle response - could be direct data or wrapped in 'data' field
      final responseData = response.data;
      print('ZR Express bulk send response: $responseData');

      Map<String, dynamic> data;
      if (responseData is Map) {
        // Check if response is wrapped in 'data' field
        if (responseData.containsKey('data') && responseData['data'] is Map) {
          data = responseData['data'] as Map<String, dynamic>;
        } else {
          // Response is already the data
          data = responseData as Map<String, dynamic>;
        }
      } else {
        // Unexpected response format
        throw Exception('Unexpected response format from ZR Express bulk send');
      }

      final createdRaw = data['created'] as List<dynamic>? ?? [];
      final failedRaw = data['failed'] as List<dynamic>? ?? [];
      final serverSkipped = data['skipped'] as List<dynamic>? ?? [];

      final created = createdRaw
          .whereType<Map>()
          .map((e) => Map<String, dynamic>.from(e))
          .toList();
      final failed = failedRaw
          .whereType<Map>()
          .map((e) => Map<String, dynamic>.from(e))
          .toList();
      final skippedServerMaps = serverSkipped
          .whereType<Map>()
          .map((e) => Map<String, dynamic>.from(e))
          .toList();

      print(
        'Parsed: ${created.length} created, ${failed.length} failed, ${serverSkipped.length} skipped',
      );

      // Merge client-side skipped with server-side skipped
      final allSkipped = [...clientSkipped, ...skippedServerMaps];

      // Attach successful orders (payload must match single-send shape for
      // Order.zrexpressParcelId / zrexpressTrackingNumber).
      for (final orderData in created) {
        try {
          final ref =
              orderData['reference'] as String? ??
              orderData['externalId'] as String?;
          if (ref == null) continue;

          final matches = ordersToSend.where((o) => o.id == ref);
          if (matches.isEmpty) continue;
          final order = matches.first;

          final payload =
              zrexpressBulkCreatedRowToAttachPayload(orderData, order);
          if (payload == null) continue;

          await attach(order: order, payload: payload);
        } catch (e) {
          print('Error attaching order to delivery service: $e');
        }
      }

      return DeliveryBulkSendApiResult(
        created: created,
        failed: failed,
        skipped: allSkipped,
        summary: {
          'total': orders.length,
          'created': created.length,
          'failed': failed.length,
          'skipped': allSkipped.length,
        },
      );
    } on DioException catch (e) {
      print('Error sending parcels to ZR Express: $e');
      print('Response data: ${e.response?.data}');
      print('Response status: ${e.response?.statusCode}');

      // Try to extract error message from response

      String errorMessage = 'Send failed';
      if (e.response?.data is Map) {
        final data = e.response!.data as Map<String, dynamic>;
        if (data['message'] != null) {
          errorMessage = data['message'] as String;
        } else if (data['error'] != null) {
          errorMessage = data['error'] as String;
        } else if (data['detail'] != null) {
          errorMessage = data['detail'] as String;
        }
      } else if (e.message != null) {
        errorMessage = e.message!;
      }

      // If it's a validation error (422), try to parse it and return structured errors
      if (e.response?.statusCode == 422) {
        try {
          final responseData = e.response?.data;
          print('422 response data type: ${responseData.runtimeType}');
          print('422 response data: $responseData');

          // Handle different response formats
          Map<String, dynamic>? errorData;
          if (responseData is Map) {
            errorData = Map<String, dynamic>.from(responseData);
          } else if (responseData is List) {
            errorData = {'errors': responseData, 'message': errorMessage};
          } else if (responseData != null) {
            errorData = {
              'message': errorMessage,
              'errors': {
                'general': [responseData.toString()],
              },
            };
          }

          if (errorData != null) {
            final errors = errorData['errors'];
            Map<String, dynamic> errorsMap = {};

            // Handle errors as Map or List
            if (errors is Map) {
              errorsMap = Map<String, dynamic>.from(errors);
            } else if (errors is List) {
              errorsMap = {'general': errors.map((e) => e.toString()).toList()};
            } else if (errors != null) {
              errorsMap = {
                'general': [errors.toString()],
              };
            }

            // Parse errors and map to specific orders
            // Error format: "parcels.0.deliveryAddress.city" -> order at index 0
            final orderIndexedErrors = <int, Map<String, List<String>>>{};
            final globalErrors = <String, List<String>>{};

            for (final entry in errorsMap.entries) {
              final key = entry.key;
              final values = entry.value is List
                  ? (entry.value as List).cast<String>()
                  : [entry.value.toString()];

              // Check if this is a per-order error (e.g., "parcels.0.field")
              final match = RegExp(r'^parcels\.(\d+)\.(.+)$').firstMatch(key);
              if (match != null) {
                final orderIndex = int.parse(match.group(1)!);
                final fieldName = match.group(2)!;

                if (orderIndex >= 0 && orderIndex < ordersToSend.length) {
                  orderIndexedErrors.putIfAbsent(orderIndex, () => {});
                  orderIndexedErrors[orderIndex]![fieldName] = values;
                }
              } else {
                // Global error (applies to all orders)
                globalErrors[key] = values;
              }
            }

            final failedOrders = <Map<String, dynamic>>[];

            // If we have per-order errors, only mark those orders as failed
            if (orderIndexedErrors.isNotEmpty) {
              for (final entry in orderIndexedErrors.entries) {
                final orderIndex = entry.key;
                final orderErrors = entry.value;
                final order = ordersToSend[orderIndex];

                // Get first error message for display
                final firstError = orderErrors.values.first.first;

                failedOrders.add({
                  'reference': order.id,
                  'externalId': order.id,
                  'error': firstError,
                  'message': firstError,
                  'details': {'errors': orderErrors},
                });
              }

              // Orders without specific errors are still valid - should not be marked as failed
              // But since the whole request failed, we need to return them to pending state
              // Actually, we can't send partial - so all are failed, but with different errors
              // Mark remaining orders as failed due to batch failure

              for (int i = 0; i < ordersToSend.length; i++) {
                if (!orderIndexedErrors.containsKey(i)) {
                  failedOrders.add({
                    'reference': ordersToSend[i].id,
                    'externalId': ordersToSend[i].id,
                    'error': 'Batch failure',
                    'message': 'Batch failure',
                    'details': {
                      'errors': {
                        'batch': ['Fix and retry'],
                      },
                    },
                  });
                }
              }
            } else if (globalErrors.isNotEmpty) {
              // Only global errors - apply to all orders
              for (final order in ordersToSend) {
                failedOrders.add({
                  'reference': order.id,
                  'externalId': order.id,
                  'error': globalErrors.values.first.first,
                  'message': globalErrors.values.first.first,
                  'details': {'errors': globalErrors},
                });
              }
            } else {
              // No specific errors found
              for (final order in ordersToSend) {
                failedOrders.add({
                  'reference': order.id,
                  'externalId': order.id,
                  'error': errorData['message'] as String? ?? errorMessage,
                  'message': errorData['message'] as String? ?? errorMessage,
                  'details': {'errors': {}},
                });
              }
            }

            return DeliveryBulkSendApiResult(
              created: const [],
              failed: failedOrders,
              skipped: clientSkipped,
              summary: {
                'total': orders.length,
                'created': 0,
                'failed': failedOrders.length,
                'skipped': clientSkipped.length,
              },
            );
          }
        } catch (parseError, stack) {
          print('Error parsing 422 response: $parseError');
          print('Stack: $stack');
          // Fall through to mark all as failed with generic error
        }
      }

      // For 400 errors that aren't validation, mark all as failed
      if (e.response?.statusCode == 400) {
        return DeliveryBulkSendApiResult(
          created: const [],
          failed: [
            for (final order in ordersToSend)
              {
                'reference': order.id,
                'externalId': order.id,
                'error': errorMessage,
                'message': errorMessage,
                'details': e.response?.data,
              },
          ],
          skipped: clientSkipped,
          summary: {
            'total': orders.length,
            'created': 0,
            'failed': ordersToSend.length,
            'skipped': clientSkipped.length,
          },
        );
      }

      throw Exception(errorMessage);
    } catch (e) {
      print('Unexpected error sending parcels to ZR Express: $e');
      throw Exception('Failed to send parcels to ZR Express: ${e.toString()}');
    }
  }

  @override
  /// [detach] detaches order from ZR Express delivery service
  Future<void> detach({required Order order}) async {
    final parcelId = order.zrexpressParcelId;
    if (parcelId == null || parcelId.isEmpty) {
      throw Exception('Order has no ZR Express parcel ID');
    }

    // Delete from ZR Express via backend
    try {
      await Feeef.instance.client.delete(
        '/stores/${storeId ?? order.storeId}/integrations/zrexpress/orders',
        data: {
          'parcelIds': [parcelId],
        },
      );
    } catch (e) {
      print('Error detaching order from ZR Express: $e');
    }

    await super.detach(order: order);
  }

  /// Get merged PDF labels for multiple tracking numbers
  Future<ZrexpressLabelsResponse> getLabels({
    required List<String> trackingNumbers,
    required String storeId,
    ZrexpressLabelFormat format = ZrexpressLabelFormat.a6,
  }) async {
    final response = await Feeef.instance.client.post(
      '/stores/$storeId/integrations/zrexpress/labels',
      data: {
        'trackingNumbers': trackingNumbers,
        'format': format == ZrexpressLabelFormat.a6
            ? 'A6'
            : format == ZrexpressLabelFormat.a5
            ? 'A5'
            : 'A4',
      },
    );

    return ZrexpressLabelsResponse.fromJson(response.data);
  }

  /// Get individual PDF labels for tracking numbers
  Future<ZrexpressIndividualLabelsResponse> getIndividualLabels({
    required List<String> trackingNumbers,
    required String storeId,
    ZrexpressLabelFormat format = ZrexpressLabelFormat.a6,
  }) async {
    final response = await Feeef.instance.client.post(
      '/stores/$storeId/integrations/zrexpress/labelIndividual',
      data: {
        'trackingNumbers': trackingNumbers,
        'format': format == ZrexpressLabelFormat.a6
            ? 'A6'
            : format == ZrexpressLabelFormat.a5
            ? 'A5'
            : 'A4',
      },
    );

    return ZrexpressIndividualLabelsResponse.fromJson(response.data);
  }
}

/// Extension methods for Order class to handle ZR Express-specific data
extension OrderZrexpress on Order {
  /// Get the ZR Express delivery data from metadata
  Map<String, dynamic>? get zrexpressData {
    if (metadata['delivery'] == null) return null;
    if (metadata['delivery']['service'] != 'zrexpress') return null;
    return metadata['delivery'];
  }

  /// Get the ZR Express parcel ID
  String? get zrexpressParcelId =>
      zrexpressData?['payload']?['parcelId'] as String?;

  /// Get the ZR Express tracking number
  /// First checks metadata, then falls back to order.trackingCode
  String? get zrexpressTrackingNumber {
    final fromMetadata =
        zrexpressData?['payload']?['trackingNumber'] as String?;
    if (fromMetadata != null && fromMetadata.isNotEmpty) {
      return fromMetadata;
    }
    // Fallback to order.trackingCode if available
    return trackingCode;
  }
}
