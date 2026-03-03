import 'dart:convert';

import 'package:feeef/integrations/integrations.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:feeef/core/algeria_cites_stub.dart';
import 'package:feeef/core/string_extensions.dart';
import 'package:feeef/orders/models/order.dart';
import 'models/create_order_request.dart';

/// NoestDeliveryService handles integration with the Noest delivery API
/// Documentation: docs/delivery_services/noest.md
class NoestDeliveryService extends DeliveryService<NoestDeliveryIntegration> {
  @override
  String get name => 'noest';

  NoestDeliveryService({required super.client, required super.integration});

  @override
  /// [deliverOrder] sends an order to Noest delivery service
  Future<void> deliverOrder({required Order order}) async {
    var stateCode = int.parse(order.shippingState!);
    var cityCode = int.parse(order.shippingCity!);

    var cityName = getCityByCode(
      code: cityCode.toString(),
      stateCode: stateCode.toString(),
      lang: AlgeriaScript.latin,
    )?.name;

    var request = NoestOrderCreateRequest(
      reference: order.id,
      client: order.customerName ?? "Unknown",
      phone: order.customerPhone!,
      adresse: order.shippingAddress?.nullIfEmpty ?? "unknown",
      wilayaId: stateCode,
      commune: cityName ?? "unknown",
      montant: order.total.toDouble() ?? 0.0,
      produit: order.items.map((e) => e.productName).join(','),
      poids: 1, // Default weight
      typeId: 1, // Default to delivery
      stopDesk: switch (order.shippingType) {
        ShippingType.home => 0,
        ShippingType.pickup => 1,
        ShippingType.store => 1,
      },
    );

    final response = await send(order, request);
    await attach(order: order, payload: {"tracking": response.tracking});
  }

  /// [send] sends an order to Noest and returns the tracking info
  Future<NoestOrderResponse> send(
    Order order,
    NoestOrderCreateRequest request,
  ) async {
    final response = await client.post(
      'https://app.noest-dz.com/api/public/create/order',
      data: {
        ...request.toJson(),
        'api_token': integration.token,
        'user_guid': integration.guid,
      },
    );
    // decode that sh*ty response
    var json = jsonDecode(response.data);
    if (json["success"] != true) throw "Error!: ${json["message"]}";
    var tracking = json['tracking'] as String;
    await attach(order: order, payload: json);

    return NoestOrderResponse(tracking: tracking);
  }

  /// [validate] validates an order with Noest
  /// Once validated, the order cannot be deleted or modified
  Future<void> validate(Order order) async {
    if (order.noestTrackingId == null) {
      throw Exception('Order has no Noest tracking ID');
    }

    await client.post(
      'https://app.noest-dz.com/api/public/valid/order',
      data: {
        'api_token': integration.token,
        'user_guid': integration.guid,
        'tracking': order.noestTrackingId,
      },
    );
  }

  @override
  /// [detach] detach order from delivery service
  Future<void> detach({required Order order}) async {
    await super.detach(order: order);
    await delete(order);
    print("done");
  }

  /// [delete] deletes an order from Noest
  Future<void> delete(Order order) async {
    if (order.noestTrackingId == null) {
      throw Exception('Order has no Noest tracking ID');
    }

    var response = await client.post(
      'https://app.noest-dz.com/api/public/delete/order',
      data: {
        'api_token': integration.token,
        'user_guid': integration.guid,
        'tracking': order.noestTrackingId,
      },
    );
    print(response.data);
  }

  /// [update] updates an order with Noest
  Future<void> update(Order order, NoestOrderCreateRequest request) async {
    if (order.noestTrackingId == null) {
      throw Exception('Order has no Noest tracking ID');
    }

    await client.post(
      'https://app.noest-dz.com/api/public/update/order',
      data: {
        ...request.toJson(),
        'api_token': integration.token,
        'user_guid': integration.guid,
        'tracking': order.noestTrackingId,
      },
    );
  }

  /// [getLabel] gets the shipping label for an order
  Uri getLabelUri(Order order) {
    if (order.noestTrackingId == null) {
      throw Exception('Order has no Noest tracking ID');
    }

    return Uri.parse(
      'https://app.noest-dz.com/api/public/get/order/label?api_token=${integration.token}&tracking=${order.noestTrackingId}',
    );
  }

  /// [track] gets tracking information for multiple orders
  Future<Map<String, NoestTrackingInfo>> track(List<String> trackingIds) async {
    final response = await client.post(
      'https://app.noest-dz.com/api/public/get/trackings/info',
      data: {
        'api_token': integration.token,
        'user_guid': integration.guid,
        'trackings': trackingIds,
      },
    );

    return Map.fromEntries(
      (response.data as Map<String, dynamic>).entries.map(
        (e) => MapEntry(
          e.key,
          NoestTrackingInfo.fromJson(e.value as Map<String, dynamic>),
        ),
      ),
    );
  }
}

/// NoestOrderResponse represents the response from creating an order
class NoestOrderResponse {
  final String tracking;

  NoestOrderResponse({required this.tracking});
}

/// NoestTrackingInfo represents tracking information for an order
class NoestTrackingInfo {
  final NoestOrderInfo orderInfo;
  final List<NoestActivityEvent> activity;

  NoestTrackingInfo({required this.orderInfo, required this.activity});

  factory NoestTrackingInfo.fromJson(Map<String, dynamic> json) {
    return NoestTrackingInfo(
      orderInfo: NoestOrderInfo.fromJson(
        json['OrderInfo'] as Map<String, dynamic>,
      ),
      activity: (json['activity'] as List)
          .map((e) => NoestActivityEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

/// NoestOrderInfo represents basic order information
class NoestOrderInfo {
  final String tracking;
  final String? reference;
  final String client;
  final String phone;
  final String adresse;
  final int wilayaId;
  final double montant;
  final String produit;
  final int typeId;

  NoestOrderInfo({
    required this.tracking,
    this.reference,
    required this.client,
    required this.phone,
    required this.adresse,
    required this.wilayaId,
    required this.montant,
    required this.produit,
    required this.typeId,
  });

  factory NoestOrderInfo.fromJson(Map<String, dynamic> json) {
    return NoestOrderInfo(
      tracking: json['tracking'] as String,
      reference: json['reference'] as String?,
      client: json['client'] as String,
      phone: json['phone'] as String,
      adresse: json['adresse'] as String,
      wilayaId: json['wilaya_id'] as int,
      montant: (json['montant'] as num).toDouble(),
      produit: json['produit'] as String,
      typeId: json['type_id'] as int,
    );
  }
}

/// NoestActivityEvent represents a tracking event
class NoestActivityEvent {
  final String event;
  final DateTime date;

  NoestActivityEvent({required this.event, required this.date});

  factory NoestActivityEvent.fromJson(Map<String, dynamic> json) {
    return NoestActivityEvent(
      event: json['event'] as String,
      date: DateTime.parse(json['date'] as String),
    );
  }
}

/// Extension methods for Order class to handle Noest-specific data
extension OrderNoest on Order {
  Map<String, dynamic>? get noestData {
    if (metadata['delivery'] == null) return null;
    if (metadata['delivery']['service'] != 'noest') return null;
    return metadata['delivery'];
  }

  String? get noestTrackingId => noestData?['payload']?['tracking'] as String?;
}
