import 'package:dio/dio.dart';

import 'package:feeef/core/algeria_cites_stub.dart';
import 'package:feeef/core/string_extensions.dart';
import 'package:feeef/feeef_client.dart';
import 'package:feeef/integrations/integrations.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/integrations/delivery/bulk_send_result.dart';
import 'package:feeef/orders/models/order.dart';
import 'models/create_order_request.dart';

/// Utility function to remove emojis from text
/// This helps prevent issues when sending data to external APIs that don't support emojis
String removeEmojis(String text) {
  if (text.isEmpty) return text;

  // More comprehensive emoji removal regex that covers:
  // - Basic emojis and emoticons
  // - Transport and map symbols
  // - Misc symbols and pictographs
  // - Dingbats and ornamental symbols
  // - Geometric shapes and arrows
  // - Enclosed characters and symbols
  // - CJK symbols and punctuation
  // - Various Unicode symbol ranges
  final emojiRegex = RegExp(
    r'[\u{1F600}-\u{1F64F}]|[\u{1F300}-\u{1F5FF}]|[\u{1F680}-\u{1F6FF}]|[\u{1F900}-\u{1F9FF}]|[\u{1FA70}-\u{1FAFF}]|[\u{1F000}-\u{1F02F}]|[\u{2700}-\u{27BF}]|[\u{2B00}-\u{2BFF}]|[\u{2900}-\u{297F}]|[\u{3000}-\u{303F}]|[\u{20A0}-\u{20CF}]|[\u{25A0}-\u{25FF}]|[\u{2600}-\u{26FF}]|[\u{1F170}-\u{1F251}]|[\u{1F650}-\u{1F67F}]|[\u{1F700}-\u{1F77F}]|[\u{1F780}-\u{1F7FF}]|[\u{1F800}-\u{1F8FF}]|[\u{1FA00}-\u{1FA6F}]|[\u{1FB00}-\u{1FBFF}]|[\u{1FC00}-\u{1FCFF}]|[\u{1FD00}-\u{1FDFF}]|[\u{1FE00}-\u{1FEFF}]|[\u{1FF00}-\u{1FFFF}]|[\u{FE00}-\u{FE0F}]|[\u{200D}]|[\u{200B}-\u{200D}]|[\u{FEFF}]',
    unicode: true,
  );

  // Remove emojis and clean up multiple spaces
  String cleaned = text.replaceAll(emojiRegex, '');

  // Replace multiple consecutive spaces with single space
  cleaned = cleaned.replaceAll(RegExp(r'\s+'), ' ');

  // Trim whitespace from start and end
  return cleaned.trim();
}
// SC: State City encoding system
// becouse every delivery service has its own names of states and cities

class EcotrackDeliveryService
    extends DeliveryService<EcotrackDeliveryIntegration> {
  @override
  String get name => 'ecotrack';

  final String? storeId;

  EcotrackDeliveryService({
    required super.client,
    required super.integration,
    this.storeId,
  });

  @override
  /// [send] send order to ecotrack
  ///
  /// Throws [StateError] if order is already sent to Ecotrack
  Future<void> deliverOrder({required Order order, String? storeName}) async {
    // Check if order is already sent to Ecotrack (defensive check - backend also validates)
    if (order.ecotrackTrackingId?.isNotEmpty == true) {
      throw StateError(
        'Order ${order.id} is already sent to Ecotrack (tracking: ${order.ecotrackTrackingId})',
      );
    }

    // Use backend endpoint instead of direct API call
    var stateCode = int.parse(order.shippingState!);
    var cityCode = int.parse(order.shippingCity!);

    var ecotrackCityName = getCityByCode(
      code: cityCode.toString(),
      stateCode: stateCode.toString(),
      lang: AlgeriaScript.latin,
    )?.name;

    var orderData = {
      'reference': order.id,
      'nom_client': order.customerName,
      'telephone': order.customerPhone,
      'adresse': order.shippingAddress?.nullIfEmpty ?? "unknown",
      'commune': [order.shippingState, order.shippingCity].contains(null)
          ? "unknown"
          : ecotrackCityName,
      'code_wilaya': int.tryParse(order.shippingState.toString()),
      'montant': order.total,
      'remarque': order.metadata['note'],
      'produit': order.items.map((e) => e.productName).join(', '),
      'quantite': order.items.map((e) => e.quantity).join(', '),
      'boutique': storeName?.trim(),
      'type': 1,
      'stop_desk': order.shippingAddress?.nullIfEmpty == null ? 1 : 0,
    };

    var response = await Feeef.instance.client.post(
      '/stores/${storeId ?? order.storeId}/integrations/ecotrack/send',
      data: orderData,
    );

    await attach(order: order, payload: response.data);
  }

  /// [send] send order to ecotrack
  /// return [String] the tracking id
  ///
  /// Throws [StateError] if order is already sent to Ecotrack
  Future<EcotrackOrderCreateResponse> send(
    Order order,
    EcotrackOrderCreateRequest request,
  ) async {
    // Check if order is already sent to Ecotrack (defensive check - backend also validates)
    if (order.ecotrackTrackingId?.isNotEmpty == true) {
      throw StateError(
        'Order ${order.id} is already sent to Ecotrack (tracking: ${order.ecotrackTrackingId})',
      );
    }

    // Clean the produit field by removing emojis to prevent API issues
    var cleanedRequest = request.copyWith(
      produit: request.produit != null ? removeEmojis(request.produit!) : null,
    );

    // Use backend endpoint instead of direct API call
    // Backend will add api_token server-side
    var orderData = cleanedRequest.toJson();
    // Remove api_token if present (shouldn't be, but just in case)
    orderData.remove('api_token');

    final response = await Feeef.instance.client.post(
      '/stores/${storeId ?? order.storeId}/integrations/ecotrack/send',
      data: orderData,
    );

    // fetch scoring
    try {
      var scoring = await getScoring(
        phones: [order.customerPhone!],
        storeId: storeId ?? order.storeId,
      );
      final success = scoring[order.customerPhone!]?.$1 ?? 0;
      final failed = scoring[order.customerPhone!]?.$2 ?? 0;
      final total = success + failed;
      var score = total > 0 ? success / total : 0;
      order = order.copyWith(
        metadata: {
          ...order.metadata,
          if (total > 0) 'riskOfReturnScoreInEcotrack': score,
          if (total > 0) 'totalPreviousOrdersInEcotrack': total,
        },
      );
      print(score);
    } catch (e) {
      print(e);
    }

    await attach(order: order, payload: response.data);
    return (tracking: response.data['tracking'] as String);
  }

  @override
  /// [detach] detach order from delivery service
  Future<void> detach({required Order order}) async {
    final tracking = order.ecotrackTrackingId;
    if (tracking == null || tracking.isEmpty) {
      throw StateError(
        'Order ${order.id} has no Ecotrack tracking id',
      );
    }
    // Delete on carrier + clear Feeef metadata on server before clearing locally.
    await Feeef.instance.client.delete(
      '/stores/${storeId ?? order.storeId}/integrations/ecotrack/orders/$tracking',
    );
    await super.detach(order: order);
  }

  /// Bulk delete / detach by Ecotrack tracking codes.
  ///
  /// POST `/stores/:storeId/integrations/ecotrack/orders/deleteMany` with
  /// `{ trackings: string[] }`. Response: `{ results: [...], summary: { total, succeeded, failed } }`.
  Future<Map<String, dynamic>> deleteManyOrders(List<String> trackings) async {
    final trimmed = trackings.map((t) => t.trim()).where((t) => t.isNotEmpty).toList();
    if (trimmed.isEmpty) {
      return {
        'results': <Map<String, dynamic>>[],
        'summary': {'total': 0, 'succeeded': 0, 'failed': 0},
      };
    }
    final sid = storeId;
    if (sid == null || sid.isEmpty) {
      throw StateError(
        'EcotrackDeliveryService.storeId is required for deleteManyOrders',
      );
    }
    final response = await Feeef.instance.client.post(
      '/stores/$sid/integrations/ecotrack/orders/deleteMany',
      data: {'trackings': trimmed},
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  // Expedier la commande
  // POSTExpedier une commande
  // {{url}}/api/v1/valid/order?tracking={{tracking}}&ask_collection
  //
  // Ce point de terminaison est utilisé pour valider et expédier une commande.
  //
  // NB: Après l’expédition de la commande il ne sera plus possible de modifier les informations ou de la supprimer.
  // PARAMS
  // tracking
  //
  // {{tracking}}
  //
  // L'identifiant unique de la commande | obligatoire
  // ask_collection
  //
  // Demande de ramassage du colis | int , 1 = demander un ramassage , 0 = pas de remassage
  // curl --location -g --request POST '{{url}}/api/v1/valid/order?tracking=%20ECQFLD2102097670'
  // Example Response
  //
  // json
  //
  // {
  //   "success": true,
  //   "message": "Commande expedier avec succès"
  // }
  Future<void> validateOrder({
    required Order order,
    bool askCollection = false,
  }) async {
    await Feeef.instance.client.post(
      '/stores/${storeId ?? order.storeId}/integrations/ecotrack/orders/${order.ecotrackTrackingId}/validate',
      data: {'ask_collection': askCollection},
    );
  }

  // Télécharger l'étiquette (document PDF link)
  // Uses backend endpoint to get label URL (no token exposure)
  Future<Uri> downloadLabelUri({required Order order}) async {
    final response = await Feeef.instance.client.get(
      '/stores/${storeId ?? order.storeId}/integrations/ecotrack/orders/${order.ecotrackTrackingId}/label',
    );
    return Uri.parse(response.data['url']);
  }

  // get scoring
  // Uses backend endpoint instead of direct API call
  Future<Map<String, (int delivered, int failed)>> getScoring({
    required List<String> phones,
    required String storeId,
  }) async {
    try {
      // Limit to 50 phones (backend validator enforces this)
      final phonesToCheck = phones.take(50).toList();

      final response = await Feeef.instance.client.post(
        '/stores/$storeId/integrations/ecotrack/scoring',
        data: {'phones': phonesToCheck},
      );

      var map = <String, (int delivered, int failed)>{};
      if (response.data['result'] != null &&
          response.data['result'] is Map<String, dynamic>) {
        for (var phone in phonesToCheck) {
          if (response.data['result'][phone] != null) {
            final phoneData =
                response.data['result'][phone] as Map<String, dynamic>;
            map[phone] = (
              phoneData['delivered'] as int? ?? 0,
              phoneData['failed'] as int? ?? 0,
            );
          }
        }
      }
      return map;
    } catch (e) {
      print(e);
      return {};
    }
  }

  /// [sendMany] send multiple orders to Ecotrack in bulk
  ///
  /// This method sends multiple orders in a single API call to the backend,
  /// which then sends them to Ecotrack one by one and returns a summary.
  ///
  /// Parameters:
  /// - [orders]: List of orders to send
  /// - [requests]: List of EcotrackOrderCreateRequest corresponding to each order
  ///
  /// Returns:
  /// - Map with 'created', 'failed', and 'skipped' lists, each containing reference and tracking/error info
  ///
  /// Throws:
  /// - [ArgumentError] if orders/requests lists are empty or mismatched
  /// - [FeeefValidationException] if backend returns validation errors (422)
  /// - [DioException] for network errors or other HTTP errors
  Future<DeliveryBulkSendApiResult> sendMany(
    List<Order> orders,
    List<EcotrackOrderCreateRequest> requests,
  ) async {
    // Validate input
    if (orders.isEmpty || requests.isEmpty) {
      throw ArgumentError('Orders and requests lists must not be empty');
    }

    if (orders.length != requests.length) {
      throw ArgumentError(
        'Orders and requests lists must have the same length',
      );
    }

    // Filter out orders already sent to Ecotrack (client-side check)
    final List<Order> ordersToSend = [];
    final List<EcotrackOrderCreateRequest> requestsToSend = [];
    final List<Map<String, dynamic>> clientSkipped = [];

    for (int i = 0; i < orders.length; i++) {
      final order = orders[i];
      if (order.ecotrackTrackingId?.isNotEmpty == true) {
        clientSkipped.add({
          'reference': order.id,
          'reason': 'already_sent',
          'message': 'هذا الطلب مرسل مسبقاً إلى Ecotrack',
          'tracking': order.ecotrackTrackingId,
        });
      } else {
        ordersToSend.add(order);
        requestsToSend.add(requests[i]);
      }
    }

    // If all orders are already sent, return early
    if (ordersToSend.isEmpty) {
      return DeliveryBulkSendApiResult(
        created: const [],
        failed: const [],
        skipped: clientSkipped
            .map((e) => Map<String, dynamic>.from(e as Map))
            .toList(),
        summary: {
          'total': orders.length,
          'created': 0,
          'failed': 0,
          'skipped': clientSkipped.length,
        },
      );
    }

    // Build orders array from requests
    final List<Map<String, dynamic>> ordersData = [];
    for (int i = 0; i < requestsToSend.length; i++) {
      final request = requestsToSend[i];
      final order = ordersToSend[i];

      // Clean the produit field by removing emojis
      final cleanedProduit = request.produit != null
          ? removeEmojis(request.produit!)
          : null;

      // Convert request to JSON and add reference
      final orderData = {
        ...request.copyWith(produit: cleanedProduit).toJson(),
        'reference': order.id,
      };

      // Remove api_token if present (shouldn't be, but just in case)
      orderData.remove('api_token');

      ordersData.add(orderData);
    }

    // Use the first order's storeId (all orders should be from the same store)
    final targetStoreId = storeId ?? orders.first.storeId;

    try {
      // Send bulk request to backend
      // Backend uses Ecotrack's bulk API (up to 100 orders per request)
      // Timeout: 30s base + 1s per order (bulk API is fast)
      final timeoutMs = 30000 + (ordersData.length * 1000);

      final response = await Feeef.instance.client.post(
        '/stores/$targetStoreId/integrations/ecotrack/sendMany',
        data: {'orders': ordersData},
        options: Options(
          sendTimeout: Duration(milliseconds: timeoutMs),
          receiveTimeout: Duration(milliseconds: timeoutMs),
        ),
      );

      // Parse response
      final responseData = response.data as Map<String, dynamic>;
      final data = responseData['data'] as Map<String, dynamic>? ?? {};
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

      // Merge client-side skipped with server-side skipped
      final allSkipped = [
        ...clientSkipped
            .map((e) => Map<String, dynamic>.from(e as Map)),
        ...skippedServerMaps,
      ];

      // Attach successful orders to delivery service
      for (final orderData in created) {
        try {
          final reference = orderData['reference'] as String?;

          if (reference != null) {
            // Find the corresponding order
            final order = ordersToSend.firstWhere(
              (o) => o.id == reference,
              orElse: () => ordersToSend.first, // Fallback (shouldn't happen)
            );

            // Attach order to delivery service
            await attach(order: order, payload: orderData);
          }
        } catch (e) {
          // Log but don't fail the entire operation if attachment fails
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
    } on DioException {
      // Re-throw DioException to be handled by caller
      // The caller can use LaravelValidationError.fromDioException to parse validation errors
      rethrow;
    } catch (e) {
      // Wrap unexpected errors
      throw Exception('Failed to send orders to Ecotrack: ${e.toString()}');
    }
  }
}

typedef EcotrackOrderCreateResponse = ({String tracking});

/// extentions in [Order]
extension OrderEcotrack on Order {
  // get the ecotrack data
  Map<String, dynamic>? get ecotrackData {
    if (metadata['delivery'] == null) return null;
    // service match
    if (metadata['delivery']['service'] != 'ecotrack') return null;
    return metadata['delivery'];
  }

  String? get ecotrackTrackingId => ecotrackData?["payload"]?["tracking"];

  Map<String, dynamic>? get deliveryData => metadata['delivery'];
}
