import 'dart:typed_data';

import 'package:dio/dio.dart';

/// Cloud carrier account (Opencod / Feeef Cloud Parcel API).
class CloudCarrierAccount {
  const CloudCarrierAccount({
    required this.id,
    required this.courierId,
    required this.provider,
    required this.name,
    required this.isActive,
    this.samePriceAllWilayas = false,
    this.fees = const {},
    this.webhookUrl,
    this.createdAt,
    this.updatedAt,
  });

  final String id;
  final String courierId;
  final String provider;
  final String name;
  final bool isActive;
  final bool samePriceAllWilayas;
  final Map<String, dynamic> fees;
  final String? webhookUrl;
  final String? createdAt;
  final String? updatedAt;

  factory CloudCarrierAccount.fromJson(Map<String, dynamic> json) {
    return CloudCarrierAccount(
      id: json['id'] as String,
      courierId: json['courierId'] as String? ?? '',
      provider: json['provider'] as String? ?? '',
      name: json['name'] as String? ?? '',
      isActive: json['isActive'] as bool? ?? true,
      samePriceAllWilayas: json['samePriceAllWilayas'] as bool? ?? false,
      fees: (json['fees'] as Map?)?.cast<String, dynamic>() ?? const {},
      webhookUrl: json['webhookUrl'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );
  }
}

/// Cloud parcel row (subset used by Merchant management UI).
class CloudParcel {
  const CloudParcel({
    required this.id,
    this.tracking,
    this.status,
    this.carrierAccountId,
    this.customerName,
    this.toState,
    this.toCity,
    this.raw = const {},
  });

  final String id;
  final String? tracking;
  final String? status;
  final String? carrierAccountId;
  final String? customerName;
  final String? toState;
  final String? toCity;
  final Map<String, dynamic> raw;

  factory CloudParcel.fromJson(Map<String, dynamic> json) {
    return CloudParcel(
      id: json['id'] as String,
      tracking: json['tracking'] as String? ?? json['trackingCode'] as String?,
      status: json['status'] as String?,
      carrierAccountId: json['carrierAccountId'] as String?,
      customerName: json['customerName'] as String? ??
          (json['to'] is Map ? (json['to'] as Map)['name'] as String? : null),
      toState: json['toState'] as String? ??
          (json['to'] is Map ? (json['to'] as Map)['state'] as String? : null),
      toCity: json['toCity'] as String? ??
          (json['to'] is Map ? (json['to'] as Map)['city'] as String? : null),
      raw: Map<String, dynamic>.from(json),
    );
  }
}

/// Full management client for Cloud carrier-accounts + parcels via Feeef proxy.
class CloudDeliveryApi {
  CloudDeliveryApi({required this.client});

  final Dio client;

  Future<List<CloudCarrierAccount>> listCarrierAccounts(String storeId) async {
    final res = await client.get('/stores/$storeId/carrier-accounts');
    final data = res.data['data'] as List? ?? const [];
    return data
        .map((e) => CloudCarrierAccount.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
  }

  Future<CloudCarrierAccount> createCarrierAccount(
    String storeId, {
    required String courierId,
    required String name,
    required Map<String, dynamic> config,
  }) async {
    final res = await client.post(
      '/stores/$storeId/carrier-accounts',
      data: {'courierId': courierId, 'name': name, 'config': config},
    );
    return CloudCarrierAccount.fromJson(
      Map<String, dynamic>.from(res.data['data'] as Map),
    );
  }

  Future<CloudCarrierAccount> updateCarrierAccount(
    String storeId,
    String accountId,
    Map<String, dynamic> body,
  ) async {
    final res = await client.put(
      '/stores/$storeId/carrier-accounts/$accountId',
      data: body,
    );
    return CloudCarrierAccount.fromJson(
      Map<String, dynamic>.from(res.data['data'] as Map),
    );
  }

  Future<void> deleteCarrierAccount(String storeId, String accountId) async {
    await client.delete('/stores/$storeId/carrier-accounts/$accountId');
  }

  Future<List<Map<String, dynamic>>> listCouriers(
    String storeId, {
    String country = 'DZ',
    String lang = 'fr',
  }) async {
    final res = await client.get(
      '/stores/$storeId/couriers',
      queryParameters: {'country': country, 'lang': lang},
    );
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => Map<String, dynamic>.from(e as Map)).toList();
  }

  Future<List<CloudParcel>> listParcels(
    String storeId, {
    Map<String, dynamic>? query,
  }) async {
    final res = await client.get(
      '/stores/$storeId/parcels',
      queryParameters: query,
    );
    final data = res.data['data'] as List? ?? const [];
    return data
        .map((e) => CloudParcel.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
  }

  Future<CloudParcel> createParcel(
    String storeId,
    Map<String, dynamic> body,
  ) async {
    final res = await client.post('/stores/$storeId/parcels', data: body);
    return CloudParcel.fromJson(
      Map<String, dynamic>.from(res.data['data'] as Map),
    );
  }

  Future<CloudParcel> sendParcel(String storeId, String parcelId) async {
    final res = await client.post('/stores/$storeId/parcels/$parcelId/send');
    return CloudParcel.fromJson(
      Map<String, dynamic>.from(res.data['data'] as Map),
    );
  }

  Future<CloudParcel> syncParcel(String storeId, String parcelId) async {
    final res = await client.post('/stores/$storeId/parcels/$parcelId/sync');
    return CloudParcel.fromJson(
      Map<String, dynamic>.from(res.data['data'] as Map),
    );
  }

  Future<CloudParcel> cancelParcel(String storeId, String parcelId) async {
    final res = await client.post('/stores/$storeId/parcels/$parcelId/cancel');
    return CloudParcel.fromJson(
      Map<String, dynamic>.from(res.data['data'] as Map),
    );
  }

  Future<void> deleteParcel(String storeId, String parcelId) async {
    await client.delete('/stores/$storeId/parcels/$parcelId');
  }

  Future<Uint8List> labelPdf(String storeId, String parcelId) async {
    final res = await client.get<List<int>>(
      '/stores/$storeId/parcels/$parcelId/label',
      options: Options(responseType: ResponseType.bytes),
    );
    return Uint8List.fromList(res.data ?? const []);
  }

  Future<List<Map<String, dynamic>>> quote(
    String storeId, {
    required String stateCode,
    String? commune,
    required String deliveryType,
    String? carrierAccountId,
  }) async {
    final res = await client.post(
      '/stores/$storeId/carrier-accounts/quotes',
      data: {
        'stateCode': stateCode,
        if (commune != null) 'commune': commune,
        'deliveryType': deliveryType,
        if (carrierAccountId != null) 'carrierAccountId': carrierAccountId,
      },
    );
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => Map<String, dynamic>.from(e as Map)).toList();
  }
}
