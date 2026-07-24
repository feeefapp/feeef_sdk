import 'package:dio/dio.dart';

import 'package:feeef/core/algeria_cites_stub.dart';
import 'package:feeef/core/string_extensions.dart';
import 'package:feeef/core/validation/validation_exception.dart';
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

    final tracking = _trackingFromPayload(response.data);
    if (tracking != null) {
      try {
        final scoring = await getScoring(
          trackings: [tracking],
          storeId: storeId ?? order.storeId,
        );
        final phone = order.customerPhone?.trim();
        final entry = (phone != null && scoring.containsKey(phone))
            ? scoring[phone]
            : (scoring.isNotEmpty ? scoring.values.first : null);
        if (entry != null) {
          order = order.copyWith(
            metadata: {
              ...order.metadata,
              'ecotrackScoringLevel': entry.level,
              'riskOfReturnScoreInEcotrack': entry.deliveryConfidenceScore,
              'totalPreviousOrdersInEcotrack': 1,
            },
          );
        }
      } catch (e) {
        print(e);
      }
    }

    await _attachIfTrackingPresent(order: order, payload: response.data);
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

    // fetch scoring by tracking (public API does not accept phones)
    try {
      final trackingForScore = _trackingFromPayload(response.data);
      if (trackingForScore != null) {
        final scoring = await getScoring(
          trackings: [trackingForScore],
          storeId: storeId ?? order.storeId,
        );
        final phone = order.customerPhone?.trim();
        final entry = (phone != null && scoring.containsKey(phone))
            ? scoring[phone]
            : (scoring.isNotEmpty ? scoring.values.first : null);
        if (entry != null) {
          order = order.copyWith(
            metadata: {
              ...order.metadata,
              'ecotrackScoringLevel': entry.level,
              'riskOfReturnScoreInEcotrack': entry.deliveryConfidenceScore,
              // Level-only API — keep banner visible with a sentinel count.
              'totalPreviousOrdersInEcotrack': 1,
            },
          );
        }
      }
    } catch (e) {
      print(e);
    }

    final tracking = _trackingFromPayload(response.data);
    if (tracking == null) {
      _throwEcotrackCarrierFailure(response.data);
    }
    await _attachIfTrackingPresent(order: order, payload: response.data);
    return (tracking: tracking);
  }

  @override
  /// [detach] detach order from delivery service.
  ///
  /// - No / invalid tracking → clear Feeef `metadata.delivery` only (orphan link).
  /// - With tracking → best-effort DELETE on Ecotrack, then always clear local metadata
  ///   so cancel-link cannot get stuck when the carrier rejects the delete.
  Future<void> detach({required Order order}) async {
    final tracking = order.ecotrackTrackingId;
    if (tracking != null && tracking.isNotEmpty) {
      try {
        await Feeef.instance.client.delete(
          '/stores/${storeId ?? order.storeId}/integrations/ecotrack/orders/$tracking',
        );
      } catch (e) {
        // Carrier may already have deleted the parcel, or tracking was never valid.
        // Still remove Feeef delivery metadata so the merchant can re-send.
        print('Error deleting parcel from Ecotrack: $e');
      }
    }
    await super.detach(order: order);
  }

  /// Non-empty tracking from a carrier / sendMany row payload, or null.
  static String? _trackingFromPayload(dynamic payload) {
    if (payload is! Map) return null;
    // Explicit carrier rejection must never be treated as a soft "missing tracking".
    if (payload['success'] == false) return null;
    final raw = payload['tracking'];
    if (raw is! String) return null;
    final trimmed = raw.trim();
    return trimmed.isEmpty ? null : trimmed;
  }

  /// Maps Ecotrack French/Arabic carrier messages onto Feeef form fields.
  static String? _ecotrackCarrierErrorField(String message) {
    final m = message.toLowerCase();
    if (m.contains('produit') ||
        m.contains('réference') ||
        m.contains('reference') ||
        m.contains('référence') ||
        m.contains("n'existe") ||
        m.contains('desactiv') ||
        m.contains('désactiv')) {
      return 'produit';
    }
    if (m.contains('stock')) return 'stock';
    if (m.contains('wilaya') || m.contains('commune')) return 'commune';
    if (m.contains('telephone') || m.contains('téléphone') || m.contains('phone')) {
      return 'telephone';
    }
    if (m.contains('adresse') || m.contains('address')) return 'adresse';
    if (m.contains('montant') || m.contains('amount')) return 'montant';
    return null;
  }

  /// Throws [FeeefValidationException] so merchant FormDialogs show AlertCard + field errors
  /// (same contract as 422 / Maystro send failures). Never use [StateError] for carrier rejects.
  static Never _throwEcotrackCarrierFailure(dynamic payload) {
    final map = payload is Map
        ? Map<String, dynamic>.from(payload)
        : <String, dynamic>{};

    final violations = <FeeefViolation>[];

    final errorsRaw = map['errors'];
    if (errorsRaw is Map) {
      errorsRaw.forEach((field, value) {
        final messages = value is List
            ? value.map((e) => e.toString()).toList()
            : [value.toString()];
        for (final msg in messages) {
          if (msg.trim().isEmpty) continue;
          violations.add(
            FeeefViolation(
              message: msg.trim(),
              field: field.toString(),
              rule: 'ecotrack',
            ),
          );
        }
      });
    } else if (errorsRaw is List) {
      for (final item in errorsRaw) {
        if (item is Map) {
          final msg = (item['message'] ?? item['error'] ?? '').toString().trim();
          if (msg.isEmpty) continue;
          violations.add(
            FeeefViolation(
              message: msg,
              field: item['field']?.toString(),
              rule: item['rule']?.toString() ?? 'ecotrack',
            ),
          );
        }
      }
    }

    final message = (map['message'] ?? map['error'] ?? '')
        .toString()
        .trim();
    if (violations.isEmpty) {
      final resolved = message.isNotEmpty
          ? message
          : 'Ecotrack send failed (no tracking id)';
      violations.add(
        FeeefViolation(
          message: resolved,
          field: _ecotrackCarrierErrorField(resolved),
          rule: 'ecotrack',
        ),
      );
    } else if (message.isNotEmpty &&
        !violations.any((v) => v.message == message)) {
      // Keep top-level carrier message visible in FormDialog AlertCard.
      violations.insert(
        0,
        FeeefViolation(
          message: message,
          field: _ecotrackCarrierErrorField(message),
          rule: 'ecotrack',
        ),
      );
    }

    throw FeeefValidationException(errors: violations);
  }

  /// Attaches delivery metadata only when Ecotrack returned a real tracking id.
  ///
  /// Prevents `metadata.delivery.payload.tracking: null` which orphans the order.
  Future<void> _attachIfTrackingPresent({
    required Order order,
    required dynamic payload,
  }) async {
    if (_trackingFromPayload(payload) == null) {
      _throwEcotrackCarrierFailure(payload);
    }
    if (payload is Map<String, dynamic>) {
      await attach(order: order, payload: payload);
    } else if (payload is Map) {
      await attach(
        order: order,
        payload: Map<String, dynamic>.from(payload),
      );
    } else {
      throw FeeefValidationException(
        errors: [
          FeeefViolation(
            message: 'Ecotrack response for order ${order.id} is not a map payload',
            rule: 'ecotrack',
          ),
        ],
      );
    }
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
    final tracking = order.ecotrackTrackingId;
    if (tracking == null || tracking.isEmpty) {
      throw StateError(
        'Order ${order.id} has no Ecotrack tracking id — cannot validate',
      );
    }
    await Feeef.instance.client.post(
      '/stores/${storeId ?? order.storeId}/integrations/ecotrack/orders/$tracking/validate',
      data: {'ask_collection': askCollection},
    );
  }

  // Télécharger l'étiquette (document PDF link)
  // Uses backend endpoint to get label URL (no token exposure)
  Future<Uri> downloadLabelUri({required Order order}) async {
    final tracking = order.ecotrackTrackingId;
    if (tracking == null || tracking.isEmpty) {
      throw StateError(
        'Order ${order.id} has no Ecotrack tracking id — cannot print label',
      );
    }
    final response = await Feeef.instance.client.get(
      '/stores/${storeId ?? order.storeId}/integrations/ecotrack/orders/$tracking/label',
    );
    return Uri.parse(response.data['url']);
  }

  /// Delivery scoring via Feeef → Ecotrack public API (`trackings`, not phones).
  ///
  /// Returns phone → [EcotrackPhoneScore] from `{ Phone, Level }` rows.
  Future<Map<String, EcotrackPhoneScore>> getScoring({
    required List<String> trackings,
    required String storeId,
  }) async {
    try {
      final codes = trackings
          .map((t) => t.trim())
          .where((t) => t.isNotEmpty)
          .take(100)
          .toList();
      if (codes.isEmpty) return {};

      final response = await Feeef.instance.client.post(
        '/stores/$storeId/integrations/ecotrack/scoring',
        data: {'trackings': codes},
      );

      final map = <String, EcotrackPhoneScore>{};
      final data = response.data;
      if (data is! Map) return map;

      final result = data['result'];
      if (result is Map) {
        for (final e in result.entries) {
          final phone = e.key.toString().trim();
          if (phone.isEmpty) continue;
          final row = e.value;
          final level = row is Map
              ? (row['level'] ?? row['Level'])?.toString().trim()
              : null;
          if (level == null || level.isEmpty) continue;
          map[phone] = EcotrackPhoneScore(level: level);
        }
      }

      final entries = data['entries'];
      if (entries is List) {
        for (final item in entries) {
          if (item is! Map) continue;
          final phone = (item['phone'] ?? item['Phone'])?.toString().trim();
          final level = (item['level'] ?? item['Level'])?.toString().trim();
          if (phone == null ||
              phone.isEmpty ||
              level == null ||
              level.isEmpty) {
            continue;
          }
          map.putIfAbsent(phone, () => EcotrackPhoneScore(level: level));
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

      // Attach successful orders only when carrier returned a tracking id.
      // Never write `delivery.payload.tracking: null` — that orphans the order.
      for (final orderData in created) {
        try {
          final reference = orderData['reference'] as String?;
          if (reference == null) continue;
          if (_trackingFromPayload(orderData) == null) {
            print(
              'Skipping Ecotrack attach for $reference: missing tracking in created row',
            );
            continue;
          }

          final order = ordersToSend.firstWhere(
            (o) => o.id == reference,
            orElse: () => ordersToSend.first, // Fallback (shouldn't happen)
          );

          await attach(order: order, payload: orderData);
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

/// One phone scoring row from Ecotrack public API (`Level`).
class EcotrackPhoneScore {
  const EcotrackPhoneScore({required this.level});

  /// Ecotrack delivery confidence band (`low`, `high`, `average`, …).
  final String level;

  /// Approximate 0–1 delivery confidence for legacy risk banners
  /// (higher = better delivery / lower return risk).
  double get deliveryConfidenceScore {
    switch (level.trim().toLowerCase()) {
      case 'excellent':
        return 0.95;
      case 'good':
      case 'high':
        return 0.85;
      case 'average':
      case 'medium':
        return 0.5;
      case 'low':
      case 'bad':
        return 0.2;
      case 'very_bad':
      case 'verybad':
        return 0.1;
      default:
        return 0.5;
    }
  }
}

/// extentions in [Order]
extension OrderEcotrack on Order {
  // get the ecotrack data
  Map<String, dynamic>? get ecotrackData {
    if (metadata['delivery'] == null) return null;
    // service match
    if (metadata['delivery']['service'] != 'ecotrack') return null;
    return metadata['delivery'];
  }

  String? get ecotrackTrackingId {
    final raw = ecotrackData?["payload"]?["tracking"];
    if (raw is! String) return null;
    final tracking = raw.trim();
    // JSON null can stringify to "null" via Dart interpolation / bad persists.
    if (tracking.isEmpty || tracking.toLowerCase() == 'null') return null;
    return tracking;
  }

  Map<String, dynamic>? get deliveryData => metadata['delivery'];
}
