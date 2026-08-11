import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:feeef/feeef_client.dart';
import 'package:feeef/integrations/delivery/bulk_send_result.dart';
import 'package:feeef/integrations/delivery/parcel.dart';
import 'package:feeef/integrations/feeef_delivery/models.dart';
import 'package:feeef/integrations/integrations.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/orders/models/order.dart';

export 'package:feeef/integrations/feeef_delivery/models.dart';

/// Response from `POST .../integrations/feeefDelivery/send`.
class FeeefDeliverySendResponse {
  final bool success;
  final String? tracking;
  final String? orderId;
  final String? error;
  final Map<String, dynamic>? raw;

  FeeefDeliverySendResponse({
    required this.success,
    this.tracking,
    this.orderId,
    this.error,
    this.raw,
  });

  factory FeeefDeliverySendResponse.fromJson(Map<String, dynamic> json) {
    return FeeefDeliverySendResponse(
      success: json['success'] == true,
      tracking: json['tracking'] as String?,
      orderId: json['orderId'] as String?,
      error: json['error'] as String?,
      raw: json['raw'] is Map
          ? Map<String, dynamic>.from(json['raw'] as Map)
          : null,
    );
  }
}

/// Body for `POST .../integrations/feeefDelivery/enable`.
class FeeefDeliveryEnableRequest {
  final String? firstName;
  final String? lastName;
  final String? wilayaCode;
  final String? communeCode;
  final String? phoneNumber;
  final String? email;
  final String? pickupAddress;
  final int? pickupLocationType;
  final int? senderCenterId;
  final int? defaultBuralistId;
  final FeeefDeliveryNearAccountType? preferredAccountType;

  const FeeefDeliveryEnableRequest({
    this.firstName,
    this.lastName,
    this.wilayaCode,
    this.communeCode,
    this.phoneNumber,
    this.email,
    this.pickupAddress,
    this.pickupLocationType,
    this.senderCenterId,
    this.defaultBuralistId,
    this.preferredAccountType,
  });

  Map<String, dynamic> toJson() => {
        if (firstName != null && firstName!.trim().isNotEmpty)
          'firstName': firstName!.trim(),
        if (lastName != null && lastName!.trim().isNotEmpty)
          'lastName': lastName!.trim(),
        if (wilayaCode != null && wilayaCode!.trim().isNotEmpty)
          'wilayaCode': wilayaCode!.trim(),
        if (communeCode != null && communeCode!.trim().isNotEmpty)
          'communeCode': communeCode!.trim(),
        if (phoneNumber != null && phoneNumber!.trim().isNotEmpty)
          'phoneNumber': phoneNumber!.trim(),
        if (email != null && email!.trim().isNotEmpty) 'email': email!.trim(),
        if (pickupAddress != null && pickupAddress!.trim().isNotEmpty)
          'pickupAddress': pickupAddress!.trim(),
        if (pickupLocationType != null) 'pickupLocationType': pickupLocationType,
        if (senderCenterId != null) 'senderCenterId': senderCenterId,
        if (defaultBuralistId != null) 'defaultBuralistId': defaultBuralistId,
        if (preferredAccountType != null)
          'preferredAccountType': preferredAccountType!.name,
      };
}

/// Feeef Delivery client — white-label Near Delivery via Feeef API.
///
/// Merchants never hold Near API keys. Enable provisions a sender under Feeef's
/// integrator credentials. Base path: `/stores/$storeId/integrations/feeefDelivery/...`.
class FeeefDeliveryService extends DeliveryService<FeeefDeliveryIntegration> {
  @override
  String get name => 'feeefDelivery';

  final String storeId;

  FeeefDeliveryService({
    required super.client,
    required super.integration,
    required this.storeId,
  });

  String get _base => '/stores/$storeId/integrations/feeefDelivery';

  /// Provisions Feeef Delivery for [storeId] (no API key from merchant).
  ///
  /// Backend persists `store.integrations.feeefDelivery` and returns it.
  static Future<FeeefDeliveryIntegration> enable(
    String storeId,
    FeeefDeliveryEnableRequest request,
  ) async {
    final response = await Feeef.instance.client.post(
      '/stores/$storeId/integrations/feeefDelivery/enable',
      data: request.toJson(),
    );
    final data = response.data is Map
        ? response.data as Map<String, dynamic>
        : <String, dynamic>{};
    final raw = data['integration'];
    if (raw is! Map) {
      throw StateError('Feeef Delivery enable: missing integration in response');
    }
    return FeeefDeliveryIntegration.fromJson(Map<String, dynamic>.from(raw));
  }

  /// List Near centers for [storeId] (integrator geo — works before/after enable).
  static Future<List<FeeefDeliveryCenter>> fetchCenters(
    String storeId, {
    String? wilayaCode,
  }) async {
    final response = await Feeef.instance.client.get(
      '/stores/$storeId/integrations/feeefDelivery/geo/centers',
    );
    var list = feeefDeliveryGeoRows(response.data)
        .map(FeeefDeliveryCenter.fromJson)
        .where((c) => c.id > 0)
        .toList();
    final filter = wilayaCode?.replaceAll(RegExp(r'\D'), '');
    if (filter != null && filter.isNotEmpty) {
      final padded = filter.length == 1 ? '0$filter' : filter.padLeft(2, '0');
      final norm = padded.length > 2 ? padded.substring(padded.length - 2) : padded;
      list = list.where((c) {
        final w = c.wilayaCode?.replaceAll(RegExp(r'\D'), '') ?? '';
        if (w.isEmpty) return true;
        final wp = w.length == 1 ? '0$w' : (w.length > 2 ? w.substring(w.length - 2) : w.padLeft(2, '0'));
        return wp == norm || w == filter;
      }).toList();
    }
    return List.unmodifiable(list);
  }

  /// List Near buralists for [storeId] (often empty on staging).
  static Future<List<FeeefDeliveryBuralist>> fetchBuralists(String storeId) async {
    final response = await Feeef.instance.client.get(
      '/stores/$storeId/integrations/feeefDelivery/geo/buralists',
    );
    return feeefDeliveryGeoRows(response.data)
        .map(FeeefDeliveryBuralist.fromJson)
        .where((b) => b.id > 0)
        .toList(growable: false);
  }

  /// Health check against Near geo (`GET .../ping`).
  Future<Map<String, dynamic>> ping() async {
    final response = await Feeef.instance.client.get('$_base/ping');
    return response.data is Map
        ? Map<String, dynamic>.from(response.data as Map)
        : <String, dynamic>{'ok': false};
  }

  /// Near wilayas (`GET .../geo/wilayas`).
  Future<List<FeeefDeliveryWilaya>> listWilayas() async {
    final rows = await _geoRows('wilayas');
    return rows
        .map(FeeefDeliveryWilaya.fromJson)
        .where((w) => w.code.isNotEmpty)
        .toList(growable: false);
  }

  /// Near sender centers (`GET .../geo/centers`).
  ///
  /// Optional [wilayaCode] filters client-side (Near list is usually small).
  Future<List<FeeefDeliveryCenter>> listCenters({String? wilayaCode}) async {
    final rows = await _geoRows('centers');
    var list = rows
        .map(FeeefDeliveryCenter.fromJson)
        .where((c) => c.id > 0)
        .toList();
    final filter = wilayaCode?.replaceAll(RegExp(r'\D'), '');
    if (filter != null && filter.isNotEmpty) {
      final padded = filter.padLeft(2, '0').substring(filter.length > 2 ? filter.length - 2 : 0);
      list = list
          .where((c) {
            final w = c.wilayaCode?.replaceAll(RegExp(r'\D'), '') ?? '';
            if (w.isEmpty) return true;
            final wp = w.padLeft(2, '0');
            return wp == padded || w == filter;
          })
          .toList();
    }
    return List.unmodifiable(list);
  }

  /// Near buralists (`GET .../geo/buralists`). Often empty on staging.
  Future<List<FeeefDeliveryBuralist>> listBuralists() async {
    final rows = await _geoRows('buralists');
    return rows
        .map(FeeefDeliveryBuralist.fromJson)
        .where((b) => b.id > 0)
        .toList(growable: false);
  }

  Future<List<Map<String, dynamic>>> _geoRows(String kind) async {
    final response = await Feeef.instance.client.get('$_base/geo/$kind');
    return feeefDeliveryGeoRows(response.data);
  }

  /// Delivery fees matrix (`GET .../fees`).
  Future<Map<String, dynamic>> fees() async {
    final response = await Feeef.instance.client.get('$_base/fees');
    return response.data is Map
        ? Map<String, dynamic>.from(response.data as Map)
        : <String, dynamic>{};
  }

  /// Copy-rates rows for Feeef shipping prices (`GET .../rates`).
  Future<List<Map<String, dynamic>>> rates() async {
    final response = await Feeef.instance.client.get('$_base/rates');
    final data = response.data is Map
        ? response.data as Map<String, dynamic>
        : <String, dynamic>{};
    final rates = data['rates'];
    if (rates is! List) return const [];
    return rates
        .whereType<Map>()
        .map((e) => Map<String, dynamic>.from(e))
        .toList(growable: false);
  }

  /// Builds the HTTP body expected by Feeef Delivery send validators.
  Map<String, dynamic> parcelPayload(ParcelCreate parcel) {
    return {
      'reference': parcel.externalReference,
      'contact': {
        if (parcel.contact.firstName != null)
          'firstName': parcel.contact.firstName,
        if (parcel.contact.lastName != null) 'lastName': parcel.contact.lastName,
        if (parcel.contact.phones.isNotEmpty) 'phones': parcel.contact.phones,
        if (parcel.contact.emails.isNotEmpty) 'emails': parcel.contact.emails,
      },
      'address': {
        if (parcel.address.street != null) 'street': parcel.address.street,
        if (parcel.address.cityCode != null) 'cityCode': parcel.address.cityCode,
        if (parcel.address.stateCode != null)
          'stateCode': parcel.address.stateCode,
        if (parcel.address.country != null) 'country': parcel.address.country,
        if (parcel.address.note != null) 'note': parcel.address.note,
      },
      'total': parcel.total,
      if (parcel.declaredValue != null) 'declaredValue': parcel.declaredValue,
      if (parcel.shippingType != null)
        'shippingType': parcel.shippingType!.name,
      if (parcel.shippingPrice != null) 'shippingPrice': parcel.shippingPrice,
      if (parcel.freeShipping != null) 'freeShipping': parcel.freeShipping,
      if (parcel.pickupId != null) 'pickupId': parcel.pickupId,
      if (parcel.summary.isNotEmpty) 'summary': parcel.summary,
      if (parcel.items.isNotEmpty)
        'items': parcel.items
            .map(
              (i) => {
                'name': i.name,
                'quantity': i.quantity,
                if (i.price != null) 'price': i.price,
                if (i.variantPath != null) 'variantPath': i.variantPath,
              },
            )
            .toList(),
      if (parcel.extensions.isNotEmpty) 'extensions': parcel.extensions,
    };
  }

  /// Default [ParcelCreate] from a Feeef [Order] (wilaya/commune = state/city codes).
  ParcelCreate buildParcelFromOrder(Order order) {
    final name = (order.customerName ?? 'Client').trim();
    String firstName;
    String? lastName;
    final parts = name.split(RegExp(r'\s+'));
    if (parts.length <= 1) {
      firstName = name.isEmpty ? 'Client' : parts.first;
    } else {
      firstName = parts.first;
      lastName = parts.sublist(1).join(' ');
    }

    final phones = <String>[];
    final p1 = order.customerPhone?.trim();
    if (p1 != null && p1.isNotEmpty) phones.add(p1);

    final items = order.items
        .map(
          (e) => ParcelLineItem(
            name: e.variantPath != null && e.variantPath!.isNotEmpty
                ? '${e.productName} - ${e.variantPath}'
                : e.productName,
            quantity: e.quantity.toInt(),
            price: e.price.toDouble(),
            variantPath: e.variantPath,
          ),
        )
        .toList();

    final summary = items.map((i) => i.name).join(', ');

    return ParcelCreate(
      storeId: storeId,
      externalReference: order.id,
      contact: ParcelContact(
        firstName: firstName,
        lastName: lastName,
        phones: phones.isEmpty ? const [''] : phones,
      ),
      address: ParcelAddress(
        street: order.shippingAddress ?? '',
        cityCode: order.shippingCity,
        stateCode: order.shippingState,
        country: order.shippingCountry ?? 'DZ',
        note: order.shippingNote,
      ),
      total: order.total.toDouble(),
      declaredValue: order.total.toDouble(),
      items: items,
      summary: summary.isEmpty ? order.id : summary,
      notes: order.customerNote,
      shippingType: order.shippingType,
      shippingPrice: order.shippingPrice?.toDouble(),
      freeShipping: order.shippingPrice == 0,
      type: ParcelTypes.forward,
    );
  }

  /// Sends one parcel (`POST .../send`) and attaches delivery metadata on success.
  Future<FeeefDeliverySendResponse> send(Order order, ParcelCreate parcel) async {
    if (order.feeefDeliveryTracking?.isNotEmpty == true) {
      throw StateError(
        'Order ${order.id} is already sent to Feeef Delivery (${order.feeefDeliveryTracking})',
      );
    }

    final response = await Feeef.instance.client.post(
      '$_base/send',
      data: parcelPayload(parcel),
    );
    final data = response.data is Map
        ? Map<String, dynamic>.from(response.data as Map)
        : <String, dynamic>{};
    final result = FeeefDeliverySendResponse.fromJson(data);
    if (!result.success) {
      throw StateError(result.error ?? 'Feeef Delivery send failed');
    }
    final tracking = result.tracking;
    if (tracking == null || tracking.isEmpty) {
      throw StateError('Feeef Delivery: missing tracking in response');
    }
    await attach(
      order: order,
      payload: {
        'tracking': tracking,
        'trackingId': tracking,
        if (result.orderId != null) 'orderId': result.orderId,
        if (result.raw != null) 'provider': result.raw,
      },
    );
    return result;
  }

  /// Bulk send (`POST .../sendMany`).
  Future<DeliveryBulkSendApiResult> sendMany(
    List<Order> orders,
    List<ParcelCreate> parcels,
  ) async {
    if (orders.isEmpty || parcels.isEmpty) {
      throw ArgumentError('Orders and parcels must not be empty');
    }
    if (orders.length != parcels.length) {
      throw ArgumentError('Orders and parcels length mismatch');
    }

    final payload = {
      'parcels': parcels.map(parcelPayload).toList(),
    };
    final timeoutMs = 30000 + (parcels.length * 1000);
    final response = await Feeef.instance.client.post(
      '$_base/sendMany',
      data: payload,
      options: Options(
        sendTimeout: Duration(milliseconds: timeoutMs),
        receiveTimeout: Duration(milliseconds: timeoutMs),
      ),
    );
    final body = response.data is Map
        ? Map<String, dynamic>.from(response.data as Map)
        : <String, dynamic>{};
    // Controller returns `{ created, failed }` at top level (no `data` wrapper).
    final DeliveryBulkSendApiResult result;
    if (body['created'] is List || body['failed'] is List) {
      final created = (body['created'] as List? ?? const [])
          .whereType<Map>()
          .map((e) => Map<String, dynamic>.from(e))
          .toList();
      final failed = (body['failed'] as List? ?? const [])
          .whereType<Map>()
          .map((e) => Map<String, dynamic>.from(e))
          .toList();
      result = DeliveryBulkSendApiResult(
        created: created,
        failed: failed,
        skipped: const [],
        summary: {
          'total': orders.length,
          'created': created.length,
          'failed': failed.length,
          'skipped': 0,
        },
      );
    } else {
      result = DeliveryBulkSendApiResult.fromHttpBody(body);
    }

    for (final created in result.created) {
      final ref = created['reference'] as String? ??
          created['externalId'] as String?;
      final tracking = created['tracking'] as String? ??
          created['trackingId'] as String?;
      if (ref == null || tracking == null || tracking.isEmpty) continue;
      try {
        final order = orders.firstWhere((o) => o.id == ref);
        await attach(
          order: order,
          payload: {
            'tracking': tracking,
            'trackingId': tracking,
            ...created,
          },
        );
      } catch (_) {}
    }

    return result;
  }

  /// Downloads parcel label PDF bytes (`GET .../parcels/:tracking/label`).
  Future<Uint8List> label(String tracking) async {
    final response = await Feeef.instance.client.get<List<int>>(
      '$_base/parcels/${Uri.encodeComponent(tracking)}/label',
      options: Options(responseType: ResponseType.bytes),
    );
    final data = response.data;
    if (data == null) {
      throw StateError('Feeef Delivery label: empty response');
    }
    return Uint8List.fromList(data);
  }

  /// Encaissement preview (`GET .../encaissements/preview`).
  Future<Map<String, dynamic>> encaissementPreview([
    Map<String, dynamic>? query,
  ]) async {
    final response = await Feeef.instance.client.get(
      '$_base/encaissements/preview',
      queryParameters: query,
    );
    return response.data is Map
        ? Map<String, dynamic>.from(response.data as Map)
        : <String, dynamic>{};
  }

  /// List encaissement batches (`GET .../encaissements/batches`).
  Future<Map<String, dynamic>> encaissementBatches([
    Map<String, dynamic>? query,
  ]) async {
    final response = await Feeef.instance.client.get(
      '$_base/encaissements/batches',
      queryParameters: query,
    );
    return response.data is Map
        ? Map<String, dynamic>.from(response.data as Map)
        : <String, dynamic>{};
  }

  /// Single encaissement batch (`GET .../encaissements/batches/:batchId`).
  Future<Map<String, dynamic>> encaissementBatch(String batchId) async {
    final response = await Feeef.instance.client.get(
      '$_base/encaissements/batches/${Uri.encodeComponent(batchId)}',
    );
    return response.data is Map
        ? Map<String, dynamic>.from(response.data as Map)
        : <String, dynamic>{};
  }

  /// Confirm encaissement batch (`POST .../encaissements/batches/confirm`).
  Future<Map<String, dynamic>> confirmEncaissement(String token) async {
    final response = await Feeef.instance.client.post(
      '$_base/encaissements/batches/confirm',
      data: {'token': token},
    );
    return response.data is Map
        ? Map<String, dynamic>.from(response.data as Map)
        : <String, dynamic>{};
  }

  @override
  Future<void> deliverOrder({required Order order, String? storeName}) async {
    final parcel = buildParcelFromOrder(order);
    await send(order, parcel);
  }
}

/// Order helpers for Feeef Delivery (`metadata.delivery` when service is `feeefDelivery`).
extension OrderFeeefDelivery on Order {
  Map<String, dynamic>? get feeefDeliveryData {
    final d = metadata['delivery'];
    if (d is! Map) return null;
    if (d['service'] != 'feeefDelivery') return null;
    return Map<String, dynamic>.from(d);
  }

  String? get feeefDeliveryTracking {
    final data = feeefDeliveryData;
    if (data == null) return null;
    final payload = data['payload'];
    if (payload is! Map) return null;
    final p = Map<String, dynamic>.from(payload);
    final t = p['tracking'] as String? ?? p['trackingId'] as String?;
    if (t != null && t.isNotEmpty) return t;
    return null;
  }
}
