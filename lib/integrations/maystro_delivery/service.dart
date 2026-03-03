import 'package:dio/dio.dart';
import 'package:feeef/integrations/integrations.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:feeef/feeef_client.dart';
import 'package:feeef/orders/models/order.dart';

import 'models/create_order_request.dart';

/// Maystro Delivery Service.
///
/// Handles integration with Maystro Delivery API (Bearer token).
/// Territory resolution from city/state metadata (same pattern as ZR Express).
class MaystroDeliveryService
    extends DeliveryService<MaystroDeliveryIntegration> {
  @override
  String get name => 'maystroDelivery';

  final String? storeId;

  MaystroDeliveryService({
    required super.client,
    required super.integration,
    this.storeId,
  });

  @override
  Future<void> deliverOrder({required Order order, String? storeName}) async {
    if (order.maystroDeliveryOrderId != null) {
      throw StateError(
        'Order ${order.id} is already sent to Maystro (orderId: ${order.maystroDeliveryOrderId})',
      );
    }
    final request = buildDefaultRequest(order, storeName: storeName);
    final response = await send(order, request);
    await attach(
      order: order,
      payload: {
        'orderId': response.orderId,
        'trackingNumber': response.trackingNumber,
        'externalId': response.externalId,
      },
    );
  }

  /// Build default Maystro request from order (state/city for territory lookup).
  MaystroCreateOrderRequest buildDefaultRequest(Order order, {String? storeName}) {
    final products = order.items.map((item) {
      final fullProductName =
          item.variantPath != null && item.variantPath!.isNotEmpty
              ? '${item.productName} - ${item.variantPath}'
              : item.productName;
      final productSku = item.sku ?? item.productId;
      return MaystroOrderedProduct(
        productName: fullProductName,
        quantity: item.quantity.toInt(),
        unitPrice: item.price.toDouble(),
        productSku: productSku,
      );
    }).toList();

    String formatPhone(String? phone) {
      if (phone == null || phone.isEmpty) return '';
      phone = phone.replaceAll(RegExp(r'\s+'), '');
      if (phone.startsWith('0')) return '+213${phone.substring(1)}';
      if (!phone.startsWith('+')) return '+213$phone';
      return phone;
    }

    final stateCode = order.shippingState ?? '';
    final stateCodeOnly = stateCode.replaceAll(RegExp(r'[^\d]'), '').padLeft(2, '0');
    final hasCountry =
        order.shippingCountry != null && order.shippingCountry!.isNotEmpty;

    return MaystroCreateOrderRequest(
      externalId: order.id,
      customer: MaystroCustomer(
        name: order.customerName ?? 'Client',
        phone: formatPhone(order.customerPhone),
      ),
      deliveryAddress: MaystroDeliveryAddress(
        street: order.shippingAddress ?? 'Unknown',
        city: hasCountry ? (order.shippingCity ?? '') : '',
        district: hasCountry ? (order.shippingState ?? '') : '',
        postalCode: hasCountry ? '${stateCodeOnly}000' : '',
        country: order.shippingCountry ?? 'algeria',
        communeId: null,
        wilayaId: null,
      ),
      orderedProducts: products,
      amount: order.total.toDouble(),
      description: order.customerNote ?? order.shippingNote,
      stateCode: stateCodeOnly,
      cityCode: order.shippingCity,
    );
  }

  /// Send a single order to Maystro via backend.
  Future<MaystroCreateOrderResponse> send(
    Order order,
    MaystroCreateOrderRequest request,
  ) async {
    if (order.maystroDeliveryOrderId != null) {
      throw StateError('Order ${order.id} is already sent to Maystro');
    }

    final payload = {
      'externalId': request.externalId ?? order.id,
      'customer': {
        'name': request.customer.name,
        'phone': request.customer.phone,
      },
      'deliveryAddress': {
        'street': request.deliveryAddress.street,
        if (request.deliveryAddress.city.isNotEmpty) 'city': request.deliveryAddress.city,
        if (request.deliveryAddress.district.isNotEmpty) 'district': request.deliveryAddress.district,
        if (request.deliveryAddress.postalCode.isNotEmpty) 'postalCode': request.deliveryAddress.postalCode,
        'country': request.deliveryAddress.country,
        if (request.deliveryAddress.communeId != null) 'communeId': request.deliveryAddress.communeId,
        if (request.deliveryAddress.wilayaId != null) 'wilayaId': request.deliveryAddress.wilayaId,
      },
      'orderedProducts': request.orderedProducts
          .map((p) => {
                'productName': p.productName,
                'quantity': p.quantity,
                'unitPrice': p.unitPrice,
                if (p.productSku != null) 'productSku': p.productSku,
              })
          .toList(),
      'amount': request.amount,
      if (request.description != null) 'description': request.description,
      if (request.stateCode != null) 'stateCode': request.stateCode,
      if (request.cityCode != null) 'cityCode': request.cityCode,
    };

    final response = await Feeef.instance.client.post(
      '/stores/${storeId ?? order.storeId}/integrations/maystroDelivery/send',
      data: payload,
    );

    final data = response.data is Map ? response.data as Map<String, dynamic> : <String, dynamic>{};
    final orderId = data['orderId'] as String? ?? data['id'] as String? ?? '';
    final trackingNumber = data['trackingNumber'] as String?;

    await attach(order: order, payload: data);

    return MaystroCreateOrderResponse(
      orderId: orderId,
      trackingNumber: trackingNumber,
      externalId: request.externalId ?? order.id,
      success: true,
    );
  }

  /// Send multiple orders to Maystro (bulk).
  Future<Map<String, dynamic>> sendMany(
    List<Order> orders,
    List<MaystroCreateOrderRequest> requests,
  ) async {
    if (orders.isEmpty || requests.isEmpty) {
      throw ArgumentError('Orders and requests lists must not be empty');
    }
    if (orders.length != requests.length) {
      throw ArgumentError('Orders and requests lists must have the same length');
    }

    final ordersToSend = <Order>[];
    final requestsToSend = <MaystroCreateOrderRequest>[];
    final clientSkipped = <Map<String, dynamic>>[];

    for (int i = 0; i < orders.length; i++) {
      final order = orders[i];
      if (order.maystroDeliveryOrderId != null) {
        clientSkipped.add({
          'externalId': order.id,
          'reason': 'already_sent',
          'orderId': order.maystroDeliveryOrderId,
          'trackingNumber': order.maystroTrackingNumber,
        });
      } else {
        ordersToSend.add(order);
        requestsToSend.add(requests[i]);
      }
    }

    if (ordersToSend.isEmpty) {
      return {
        'created': <dynamic>[],
        'failed': <dynamic>[],
        'skipped': clientSkipped,
        'summary': {
          'total': orders.length,
          'created': 0,
          'failed': 0,
          'skipped': clientSkipped.length,
        },
      };
    }

    final parcels = <Map<String, dynamic>>[];
    for (int i = 0; i < requestsToSend.length; i++) {
      final request = requestsToSend[i];
      final order = ordersToSend[i];
      parcels.add({
        'externalId': request.externalId ?? order.id,
        'customer': {'name': request.customer.name, 'phone': request.customer.phone},
        'deliveryAddress': {
          'street': request.deliveryAddress.street,
          if (request.deliveryAddress.city.isNotEmpty) 'city': request.deliveryAddress.city,
          if (request.deliveryAddress.district.isNotEmpty) 'district': request.deliveryAddress.district,
          if (request.deliveryAddress.postalCode.isNotEmpty) 'postalCode': request.deliveryAddress.postalCode,
          'country': request.deliveryAddress.country,
          if (request.deliveryAddress.communeId != null) 'communeId': request.deliveryAddress.communeId,
          if (request.deliveryAddress.wilayaId != null) 'wilayaId': request.deliveryAddress.wilayaId,
        },
        'orderedProducts': request.orderedProducts
            .map((p) => {
                  'productName': p.productName,
                  'quantity': p.quantity,
                  'unitPrice': p.unitPrice,
                  if (p.productSku != null) 'productSku': p.productSku,
                })
            .toList(),
        'amount': request.amount,
        if (request.description != null) 'description': request.description,
        if (request.stateCode != null) 'stateCode': request.stateCode,
        if (request.cityCode != null) 'cityCode': request.cityCode,
      });
    }

    final targetStoreId = storeId ?? orders.first.storeId;
    final timeoutMs = 30000 + (parcels.length * 1000);

    try {
      final response = await Feeef.instance.client.post(
        '/stores/$targetStoreId/integrations/maystroDelivery/sendMany',
        data: {'parcels': parcels},
        options: Options(
          sendTimeout: Duration(milliseconds: timeoutMs),
          receiveTimeout: Duration(milliseconds: timeoutMs),
        ),
      );

      Map<String, dynamic> data = response.data is Map
          ? response.data as Map<String, dynamic>
          : <String, dynamic>{};
      if (data.containsKey('data') && data['data'] is Map) {
        data = data['data'] as Map<String, dynamic>;
      }

      final created = data['created'] as List<dynamic>? ?? [];
      final failed = data['failed'] as List<dynamic>? ?? [];
      final serverSkipped = data['skipped'] as List<dynamic>? ?? [];
      final allSkipped = [...clientSkipped, ...serverSkipped];

      for (final createdItem in created) {
        try {
          final orderData = createdItem as Map<String, dynamic>;
          final externalId = orderData['externalId'] as String?;
          if (externalId != null) {
            final order = ordersToSend.firstWhere(
              (o) => o.id == externalId,
              orElse: () => ordersToSend.first,
            );
            await attach(order: order, payload: orderData);
          }
        } catch (_) {}
      }

      return {
        'created': created,
        'failed': failed,
        'skipped': allSkipped,
        'summary': {
          'total': orders.length,
          'created': created.length,
          'failed': failed.length,
          'skipped': allSkipped.length,
        },
      };
    } on DioException catch (e) {
      final errorMessage = e.response?.data is Map
          ? (e.response!.data as Map)['message'] as String? ?? e.message ?? 'Send failed'
          : e.message ?? 'Send failed';
      throw Exception(errorMessage);
    }
  }

  @override
  Future<void> detach({required Order order}) async {
    final orderId = order.maystroDeliveryOrderId;
    if (orderId == null || orderId.isEmpty) {
      throw Exception('Order has no Maystro order ID');
    }
    try {
      await Feeef.instance.client.delete(
        '/stores/${storeId ?? order.storeId}/integrations/maystroDelivery/orders',
        data: {'parcelIds': [orderId]},
      );
    } catch (_) {}
    await super.detach(order: order);
  }

  /// Get merged labels (PDF URL).
  Future<Map<String, dynamic>> getLabels({
    required List<String> trackingNumbers,
    required String storeId,
    String format = 'A6',
  }) async {
    final response = await Feeef.instance.client.post(
      '/stores/$storeId/integrations/maystroDelivery/labels',
      data: {'trackingNumbers': trackingNumbers, 'format': format},
    );
    return response.data is Map ? response.data as Map<String, dynamic> : <String, dynamic>{};
  }

  /// Get individual labels for tracking numbers (for "Print Maystro label").
  Future<MaystroIndividualLabelsResponse> getIndividualLabels({
    required List<String> trackingNumbers,
    required String storeId,
    String format = 'A6',
  }) async {
    final response = await Feeef.instance.client.post(
      '/stores/$storeId/integrations/maystroDelivery/labels/individual',
      data: {'trackingNumbers': trackingNumbers, 'format': format},
    );
    final data = response.data is Map ? response.data as Map<String, dynamic> : <String, dynamic>{};
    final list = data['parcelLabelFiles'] as List<dynamic>? ?? [];
    final files = list
        .map((e) => MaystroIndividualLabel(
              trackingNumber: (e as Map?)?['trackingNumber'] as String?,
              fileUrl: (e as Map)['fileUrl'] as String? ?? '',
            ))
        .toList();
    return MaystroIndividualLabelsResponse(
      parcelLabelFiles: files,
      failedTrackingNumbers: (data['failedTrackingNumbers'] as List<dynamic>?)?.cast<String>() ?? [],
    );
  }
}

/// Order extension for Maystro delivery data (metadata.delivery when service === 'maystroDelivery').
extension OrderMaystro on Order {
  Map<String, dynamic>? get _maystroData {
    final delivery = metadata['delivery'];
    if (delivery == null || delivery['service'] != 'maystroDelivery') return null;
    return delivery as Map<String, dynamic>;
  }

  String? get maystroDeliveryOrderId =>
      _maystroData?['payload']?['orderId'] as String?;

  String? get maystroTrackingNumber {
    final fromPayload = _maystroData?['payload']?['trackingNumber'] as String?;
    if (fromPayload != null && fromPayload.isNotEmpty) return fromPayload;
    return trackingCode;
  }
}
