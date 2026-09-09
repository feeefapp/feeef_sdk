import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:feeef/integrations/integrations.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:feeef/core/algeria_cites_stub.dart';
import 'package:feeef/core/string_extensions.dart';
import 'package:feeef/orders/models/order.dart';
import 'models/create_order_request.dart';

/// Noest public API v2.3 — https://app.noest-dz.com/docs/api_documentation_en_v2_3.pdf
///
/// Auth: `Authorization: Bearer {api_token}` + body `user_guid`.
/// `api_token` is also sent in the JSON body for older gateways.
class NoestDeliveryService extends DeliveryService<NoestDeliveryIntegration> {
  static const String apiBase = 'https://app.noest-dz.com';

  @override
  String get name => 'noest';

  NoestDeliveryService({required super.client, required super.integration});

  Map<String, String> _headers() => {
        'Authorization': 'Bearer ${integration.token}',
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };

  Map<String, dynamic> _authFields() => {
        'user_guid': integration.guid,
        'api_token': integration.token,
      };

  /// [deliverOrder] sends an order to Noest delivery service
  @override
  Future<void> deliverOrder({required Order order}) async {
    final stateCode = int.tryParse(order.shippingState ?? '');
    final rawCity = order.shippingCity?.trim() ?? '';
    final cityIndex = int.tryParse(rawCity);

    String commune;
    if (cityIndex != null && cityIndex > 0 && stateCode != null) {
      commune = getCityByCode(
            code: cityIndex.toString(),
            stateCode: stateCode.toString(),
            lang: AlgeriaScript.latin,
          )?.name ??
          rawCity;
    } else {
      commune = rawCity;
    }
    if (commune.isEmpty) commune = 'unknown';

    final request = NoestOrderCreateRequest(
      reference: order.id,
      client: order.customerName ?? 'Unknown',
      phone: formatNoestPhone(order.customerPhone) ?? order.customerPhone ?? '',
      adresse: order.shippingAddress?.nullIfEmpty ?? 'unknown',
      wilayaId: (stateCode != null && stateCode >= 1 && stateCode <= 58)
          ? stateCode
          : 1,
      commune: commune,
      montant: order.total.toDouble(),
      produit: order.items.map((e) => e.productName).join(','),
      poids: 1,
      typeId: 1,
      stopDesk: switch (order.shippingType) {
        ShippingType.home => 0,
        ShippingType.pickup => 1,
        ShippingType.store => 1,
      },
    );

    await send(order, request);
  }

  /// POST /api/public/create/order — returns tracking and attaches it on the Feeef order.
  Future<NoestOrderResponse> send(
    Order order,
    NoestOrderCreateRequest request,
  ) async {
    final payload = sanitizeNoestCreateBody({
      ...request.toJson(),
      ..._authFields(),
    });
    payload['phone'] = formatNoestPhone(payload['phone']?.toString()) ??
        payload['phone'];
    if (payload['phone_2'] != null) {
      final p2 = formatNoestPhone(payload['phone_2']?.toString());
      if (p2 == null || p2.isEmpty) {
        payload.remove('phone_2');
      } else {
        payload['phone_2'] = p2;
      }
    }

    final response = await client.post(
      '$apiBase/api/public/create/order',
      data: payload,
      options: Options(headers: _headers()),
    );
    final json = parseNoestJsonMap(response.data);
    if (json['success'] != true) {
      throw Exception(noestErrorMessage(json));
    }
    final tracking = json['tracking']?.toString().trim() ?? '';
    if (tracking.isEmpty) {
      throw Exception('Noest did not return a tracking id');
    }
    await attach(order: order, payload: json);
    return NoestOrderResponse(tracking: tracking);
  }

  /// Once validated, the order cannot be deleted or modified.
  Future<void> validate(Order order) async {
    if (order.noestTrackingId == null) {
      throw Exception('Order has no Noest tracking ID');
    }

    await client.post(
      '$apiBase/api/public/valid/order',
      data: {
        ..._authFields(),
        'tracking': order.noestTrackingId,
      },
      options: Options(headers: _headers()),
    );
  }

  @override
  Future<void> detach({required Order order}) async {
    await super.detach(order: order);
    await delete(order);
  }

  /// Delete an unvalidated Noest order.
  Future<void> delete(Order order) async {
    if (order.noestTrackingId == null) {
      throw Exception('Order has no Noest tracking ID');
    }

    await client.post(
      '$apiBase/api/public/delete/order',
      data: {
        ..._authFields(),
        'tracking': order.noestTrackingId,
      },
      options: Options(headers: _headers()),
    );
  }

  /// Creates a modification request (v2.3 `update/order`).
  Future<void> update(Order order, NoestOrderCreateRequest request) async {
    if (order.noestTrackingId == null) {
      throw Exception('Order has no Noest tracking ID');
    }

    await client.post(
      '$apiBase/api/public/update/order',
      data: sanitizeNoestCreateBody({
        ...request.toJson(),
        ..._authFields(),
        'tracking': order.noestTrackingId,
      }),
      options: Options(headers: _headers()),
    );
  }

  /// Label URL. Query `api_token` is kept so the merchant app can open it in a browser
  /// (Bearer headers cannot be set on `launchUrl`).
  Uri getLabelUri(Order order) {
    if (order.noestTrackingId == null) {
      throw Exception('Order has no Noest tracking ID');
    }

    return Uri.parse(
      '$apiBase/api/public/get/order/label?api_token=${Uri.encodeComponent(integration.token)}&tracking=${Uri.encodeComponent(order.noestTrackingId!)}',
    );
  }

  Future<Map<String, NoestTrackingInfo>> track(List<String> trackingIds) async {
    final response = await client.post(
      '$apiBase/api/public/get/trackings/info',
      data: {
        ..._authFields(),
        'trackings': trackingIds,
      },
      options: Options(headers: _headers()),
    );

    final json = parseNoestJsonMap(response.data);
    return Map.fromEntries(
      json.entries.where((e) => e.value is Map).map(
            (e) => MapEntry(
              e.key,
              NoestTrackingInfo.fromJson(e.value as Map<String, dynamic>),
            ),
          ),
    );
  }
}

/// National 9–10 digit format required by Noest (`0550123456` / landline `023456789`).
String? formatNoestPhone(String? phone) {
  if (phone == null || phone.trim().isEmpty) return null;
  var s = phone.replaceAll(RegExp(r'[\s\-\(\)]'), '');
  if (s.startsWith('+213')) {
    s = '0${s.substring(4)}';
  } else if (s.startsWith('213') && s.length >= 12) {
    s = '0${s.substring(3)}';
  } else if (!s.startsWith('0') && s.replaceAll(RegExp(r'\D'), '').length >= 9) {
    s = '0$s';
  }
  s = s.replaceAll(RegExp(r'\D'), '');
  if (!s.startsWith('0')) return null;
  if (s.length != 9 && s.length != 10) return null;
  return s;
}

/// Noest historically returned JSON as `text/plain`; v2.3 uses `application/json`.
Map<String, dynamic> parseNoestJsonMap(dynamic data) {
  if (data is Map<String, dynamic>) return data;
  if (data is Map) return Map<String, dynamic>.from(data);
  if (data is String) {
    final decoded = jsonDecode(data);
    if (decoded is Map<String, dynamic>) return decoded;
    if (decoded is Map) return Map<String, dynamic>.from(decoded);
  }
  throw Exception('Unexpected Noest response: $data');
}

String noestErrorMessage(Map<String, dynamic> json) {
  final message = json['message']?.toString().trim();
  if (message != null && message.isNotEmpty) return message;
  final errors = json['errors'];
  if (errors is Map) {
    final parts = <String>[];
    for (final value in errors.values) {
      if (value is List) {
        parts.addAll(value.map((e) => e.toString()));
      } else if (value != null) {
        parts.add(value.toString());
      }
    }
    if (parts.isNotEmpty) return parts.join('\n');
  }
  return 'Noest rejected the order';
}

/// Drop null/empty optional fields so Laravel does not treat them as invalid.
Map<String, dynamic> sanitizeNoestCreateBody(Map<String, dynamic> raw) {
  final body = Map<String, dynamic>.from(raw);
  body.removeWhere((key, value) => value == null || value == '');
  if (body['stop_desk'] != 1) {
    body.remove('station_code');
  }
  if (body['stock'] != 1) {
    body.remove('quantite');
  }
  return body;
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
