import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:feeef/interfaces/helpers.dart';

String _cloudString(dynamic value, [String fallback = '']) {
  if (value == null) return fallback;
  final text = value.toString().trim();
  return text.isEmpty ? fallback : text;
}

String? _cloudStringOrNull(dynamic value) {
  if (value == null) return null;
  final text = value.toString().trim();
  return text.isEmpty ? null : text;
}

/// Cloud carrier account (Opencod / Feeef Cloud Parcel API).
class CloudCarrierAccount implements Model {
  const CloudCarrierAccount({
    required this.id,
    required this.courierId,
    required this.provider,
    required this.name,
    required this.isActive,
    this.samePriceAllWilayas = false,
    this.fees = const {},
    this.webhookUrl,
    this.configPreview = const {},
    this.labelSource,
    this.createdAt,
    this.updatedAt,
    this.joinedExisting = false,
  });

  @override
  final String id;
  final String courierId;
  final String provider;
  final String name;
  final bool isActive;
  final bool samePriceAllWilayas;
  final Map<String, dynamic> fees;
  final String? webhookUrl;
  final Map<String, dynamic> configPreview;
  final String? labelSource;
  final String? createdAt;
  final String? updatedAt;

  /// True when this login already had a Cloud account. The token is the same one.
  final bool joinedExisting;

  factory CloudCarrierAccount.fromJson(Map<String, dynamic> json) {
    return CloudCarrierAccount(
      id: _cloudString(json['id']),
      courierId: _cloudString(json['courierId']),
      provider: _cloudString(json['provider']),
      name: _cloudString(json['name']),
      isActive: json['isActive'] as bool? ?? true,
      samePriceAllWilayas: json['samePriceAllWilayas'] as bool? ?? false,
      fees: (json['fees'] as Map?)?.cast<String, dynamic>() ?? const {},
      webhookUrl: _cloudStringOrNull(json['webhookUrl']),
      configPreview:
          (json['configPreview'] as Map?)?.cast<String, dynamic>() ?? const {},
      labelSource: _cloudStringOrNull(json['labelSource']),
      createdAt: _cloudStringOrNull(json['createdAt']),
      updatedAt: _cloudStringOrNull(json['updatedAt']),
      joinedExisting: json['joinedExisting'] == true,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'courierId': courierId,
        'provider': provider,
        'name': name,
        'isActive': isActive,
        'samePriceAllWilayas': samePriceAllWilayas,
        'fees': fees,
        'webhookUrl': webhookUrl,
        'configPreview': configPreview,
        'labelSource': labelSource,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'joinedExisting': joinedExisting,
      };

  CloudCarrierAccount copyWith({
    String? name,
    bool? isActive,
    bool? samePriceAllWilayas,
    Map<String, dynamic>? fees,
    String? webhookUrl,
  }) {
    return CloudCarrierAccount(
      id: id,
      courierId: courierId,
      provider: provider,
      name: name ?? this.name,
      isActive: isActive ?? this.isActive,
      samePriceAllWilayas: samePriceAllWilayas ?? this.samePriceAllWilayas,
      fees: fees ?? this.fees,
      webhookUrl: webhookUrl ?? this.webhookUrl,
      configPreview: configPreview,
      labelSource: labelSource,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  num? get homeFee => fees['home'] as num? ?? fees['express_home'] as num?;
  num? get stopdeskFee =>
      fees['stopdesk'] as num? ?? fees['desk'] as num? ?? fees['express_desk'] as num?;

  bool get hasWebhook => webhookUrl != null && webhookUrl!.isNotEmpty;

  /// Search haystack for Merchant [ResourceView] `q`.
  String get searchText => '$name $courierId $provider $id'.toLowerCase();
}

/// Cloud parcel row (subset used by Merchant management UI).
class CloudParcel implements Model {
  const CloudParcel({
    required this.id,
    this.tracking,
    this.reference,
    this.status,
    this.carrierAccountId,
    this.courierId,
    this.customerName,
    this.customerPhone,
    this.toState,
    this.toCity,
    this.deliveryType,
    this.codAmount,
    this.raw = const {},
  });

  @override
  final String id;
  final String? tracking;
  final String? reference;
  final String? status;
  final String? carrierAccountId;
  final String? courierId;
  final String? customerName;
  final String? customerPhone;
  final String? toState;
  final String? toCity;
  final String? deliveryType;
  final num? codAmount;
  final Map<String, dynamic> raw;

  factory CloudParcel.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? recipient;
    final rec = json['recipient'] ?? json['to'];
    if (rec is Map) recipient = rec.cast<String, dynamic>();
    Map<String, dynamic>? dest;
    final d = json['destination'];
    if (d is Map) dest = d.cast<String, dynamic>();
    return CloudParcel(
      id: _cloudString(json['id']),
      tracking: _cloudStringOrNull(
        json['trackingId'] ?? json['tracking'] ?? json['trackingCode'],
      ),
      reference: _cloudStringOrNull(json['reference']),
      status: _cloudStringOrNull(json['status']),
      carrierAccountId: _cloudStringOrNull(json['carrierAccountId']),
      courierId: _cloudStringOrNull(json['courierId']),
      customerName: _cloudStringOrNull(json['customerName']) ??
          _cloudStringOrNull(recipient?['name']),
      customerPhone: _cloudStringOrNull(json['customerPhone']) ??
          _cloudStringOrNull(recipient?['phone']),
      toState: _cloudStringOrNull(json['toState']) ??
          _cloudStringOrNull(dest?['state'] ?? dest?['stateCode']) ??
          _cloudStringOrNull(recipient?['state']),
      toCity: _cloudStringOrNull(json['toCity']) ??
          _cloudStringOrNull(dest?['city'] ?? dest?['cityName']) ??
          _cloudStringOrNull(recipient?['city']),
      deliveryType: _cloudStringOrNull(
        json['deliveryType'] ?? dest?['deliveryType'],
      ),
      codAmount: json['codAmount'] as num?,
      raw: Map<String, dynamic>.from(json),
    );
  }

  Map<String, dynamic> toJson() => Map<String, dynamic>.from(raw);

  String get title => tracking ?? reference ?? id;

  String get searchText =>
      '$id ${tracking ?? ''} ${reference ?? ''} ${status ?? ''} ${customerName ?? ''} ${customerPhone ?? ''} ${toState ?? ''} ${toCity ?? ''}'
          .toLowerCase();
}

/// GEO catalog carrier (`GET /geo/couriers`) — Opencod connect-wizard source of truth.
class CloudCourier implements Model {
  const CloudCourier({
    required this.id,
    required this.adapter,
    required this.name,
    required this.displayName,
    this.logoUrl,
    this.active = true,
    this.operatingCountries = const [],
    this.locales = const {},
    this.raw = const {},
  });

  @override
  final String id;
  final String adapter;
  final String name;
  final String displayName;
  final String? logoUrl;
  final bool active;
  final List<String> operatingCountries;
  final Map<String, dynamic> locales;
  final Map<String, dynamic> raw;

  factory CloudCourier.fromJson(Map<String, dynamic> json) {
    final id = _cloudString(json['id'] ?? json['courierId']);
    final name = _cloudString(json['name'] ?? json['displayName'], id);
    return CloudCourier(
      id: id,
      adapter: _cloudString(json['adapter'], id),
      name: name,
      displayName: _cloudString(json['displayName'], name),
      logoUrl: _cloudStringOrNull(json['logoUrl'] ?? json['logo']),
      active: json['active'] != false,
      operatingCountries: (json['operatingCountries'] as List? ?? const [])
          .map((e) => e.toString())
          .toList(),
      locales: (json['locales'] as Map?)?.cast<String, dynamic>() ?? const {},
      raw: Map<String, dynamic>.from(json),
    );
  }

  Map<String, dynamic> toJson() => Map<String, dynamic>.from(raw);

  String get title => displayName.isNotEmpty ? displayName : name;

  String get searchText =>
      '$id $adapter $name $displayName ${operatingCountries.join(' ')}'
          .toLowerCase();
}

/// Project default for Cloud label printing (courier stickers vs branded ticket).
class CloudLabelSettings {
  const CloudLabelSettings({
    this.defaultMode = 'carrier',
    this.defaultTemplateId,
  });

  final String defaultMode;
  final String? defaultTemplateId;

  bool get preferCarrier => defaultMode != 'platform';

  factory CloudLabelSettings.fromJson(Map<String, dynamic> json) {
    return CloudLabelSettings(
      defaultMode: _cloudString(json['defaultMode'], 'carrier'),
      defaultTemplateId: _cloudStringOrNull(json['defaultTemplateId']),
    );
  }
}

/// Branded ticket template (A6 / 100×100, locale, sender).
class CloudLabelTemplate {
  const CloudLabelTemplate({
    required this.id,
    required this.name,
    this.size = 'a6',
    this.locale = 'fr',
    this.senderName = '',
    this.senderPhone = '',
    this.senderCity = '',
    this.logoUrl = '',
    this.showLogo = false,
    this.isDefault = false,
  });

  final String id;
  final String name;
  final String size;
  final String locale;
  final String senderName;
  final String senderPhone;
  final String senderCity;
  final String logoUrl;
  final bool showLogo;
  final bool isDefault;

  factory CloudLabelTemplate.fromJson(Map<String, dynamic> json) {
    return CloudLabelTemplate(
      id: _cloudString(json['id']),
      name: _cloudString(json['name']),
      size: _cloudString(json['size'], 'a6'),
      locale: _cloudString(json['locale'], 'fr'),
      senderName: _cloudString(json['senderName']),
      senderPhone: _cloudString(json['senderPhone']),
      senderCity: _cloudString(json['senderCity']),
      logoUrl: _cloudString(json['logoUrl']),
      showLogo: json['showLogo'] as bool? ?? false,
      isDefault: json['isDefault'] as bool? ?? false,
    );
  }
}

/// Live quote row from Cloud Parcel quotes.
class CloudQuote implements Model {
  const CloudQuote({
    required this.id,
    required this.name,
    this.amount,
    this.available = true,
    this.reason,
    this.accountId,
    this.courierId,
    this.matched,
    this.suggestedPickupId,
    this.suggestedDestinations = const [],
    this.raw = const {},
  });

  @override
  final String id;
  final String name;
  final num? amount;
  final bool available;
  final String? reason;
  final String? accountId;
  final String? courierId;
  final String? matched;
  final String? suggestedPickupId;
  final List<CloudSuggestedDestination> suggestedDestinations;
  final Map<String, dynamic> raw;

  factory CloudQuote.fromJson(Map<String, dynamic> json, {int index = 0}) {
    final accountId = _cloudStringOrNull(json['accountId']);
    final courierId = _cloudStringOrNull(json['courierId']);
    final id = _cloudString(
      json['id'] ?? accountId ?? courierId ?? 'quote-$index',
    );
    final suggestions = <CloudSuggestedDestination>[];
    final rawList = json['suggestedDestinations'];
    if (rawList is List) {
      for (final item in rawList) {
        if (item is Map) {
          suggestions.add(
            CloudSuggestedDestination.fromJson(Map<String, dynamic>.from(item)),
          );
        }
      }
    }
    return CloudQuote(
      id: id,
      name: _cloudString(
        json['name'] ?? json['accountName'] ?? json['courierId'] ?? 'Quote',
      ),
      amount: json['amount'] as num? ??
          json['price'] as num? ??
          json['fee'] as num?,
      available: json['available'] != false,
      reason: _cloudStringOrNull(json['reason']),
      accountId: accountId,
      courierId: courierId,
      matched: _cloudStringOrNull(json['matched']),
      suggestedPickupId: _cloudStringOrNull(json['suggestedPickupId']),
      suggestedDestinations: suggestions,
      raw: Map<String, dynamic>.from(json),
    );
  }

  Map<String, dynamic> toJson() => Map<String, dynamic>.from(raw);

  String get searchText =>
      '$name ${accountId ?? ''} ${courierId ?? ''} ${reason ?? ''} ${amount ?? ''}'
          .toLowerCase();
}

/// Same-wilaya covered commune suggested when a quote/ship hits no_coverage.
class CloudSuggestedDestination {
  const CloudSuggestedDestination({
    required this.stateCode,
    required this.cityName,
    this.distanceKm,
    this.pickupId,
  });

  final String stateCode;
  final String cityName;
  final num? distanceKm;
  final String? pickupId;

  factory CloudSuggestedDestination.fromJson(Map<String, dynamic> json) {
    return CloudSuggestedDestination(
      stateCode: _cloudString(json['stateCode']),
      cityName: _cloudString(json['cityName']),
      distanceKm: json['distanceKm'] as num?,
      pickupId: _cloudStringOrNull(json['pickupId']),
    );
  }

  Map<String, dynamic> toJson() => {
        'stateCode': stateCode,
        'cityName': cityName,
        if (distanceKm != null) 'distanceKm': distanceKm,
        if (pickupId != null) 'pickupId': pickupId,
      };

  String get label {
    if (distanceKm == null) return cityName;
    final km = distanceKm!;
    if (km < 1) return '$cityName (<1 km)';
    return '$cityName (${km.round()} km)';
  }
}

/// Inbound Cloud webhook / status event for one carrier account.
class CloudWebhookEvent implements Model {
  const CloudWebhookEvent({
    required this.id,
    required this.type,
    this.createdAt,
    this.tracking,
    this.raw = const {},
  });

  @override
  final String id;
  final String type;
  final String? createdAt;
  final String? tracking;
  final Map<String, dynamic> raw;

  factory CloudWebhookEvent.fromJson(
    Map<String, dynamic> json, {
    int index = 0,
  }) {
    final type =
        _cloudString(json['type'] ?? json['event'] ?? json['status'], 'event');
    final createdAt = _cloudStringOrNull(json['createdAt'] ?? json['at']);
    final tracking =
        _cloudStringOrNull(json['tracking'] ?? json['trackingCode']);
    final id = _cloudString(
      json['id'] ?? '$type-${createdAt ?? index}-$tracking',
    );
    return CloudWebhookEvent(
      id: id,
      type: type,
      createdAt: createdAt,
      tracking: tracking,
      raw: Map<String, dynamic>.from(json),
    );
  }

  Map<String, dynamic> toJson() => Map<String, dynamic>.from(raw);

  String get searchText =>
      '$id $type ${createdAt ?? ''} ${tracking ?? ''}'.toLowerCase();
}

/// GEO stopdesk / pickup (`pkp_…`) for office delivery.
class CloudPickup implements Model {
  const CloudPickup({
    required this.id,
    required this.label,
    this.state,
    this.city,
    this.raw = const {},
  });

  @override
  final String id;
  final String label;
  final String? state;
  final String? city;
  final Map<String, dynamic> raw;

  factory CloudPickup.fromJson(Map<String, dynamic> json) {
    final id = _cloudString(json['id']);
    return CloudPickup(
      id: id,
      label: _cloudString(
        json['displayName'] ?? json['name'] ?? json['label'] ?? id,
      ),
      state: _cloudStringOrNull(json['state'] ?? json['stateCode']),
      city: _cloudStringOrNull(json['city'] ?? json['commune']),
      raw: Map<String, dynamic>.from(json),
    );
  }

  Map<String, dynamic> toJson() => Map<String, dynamic>.from(raw);

  String get searchText =>
      '$id $label ${state ?? ''} ${city ?? ''}'.toLowerCase();
}

class CloudFeesMatrix {
  const CloudFeesMatrix({
    this.samePriceAllWilayas = false,
    this.defaults = const {},
    this.rows = const [],
  });

  final bool samePriceAllWilayas;
  final Map<String, dynamic> defaults;
  final List<Map<String, dynamic>> rows;

  factory CloudFeesMatrix.fromJson(Map<String, dynamic> json) {
    final rowsRaw = json['rows'] as List? ?? const [];
    return CloudFeesMatrix(
      samePriceAllWilayas: json['samePriceAllWilayas'] as bool? ?? false,
      defaults: (json['defaults'] as Map?)?.cast<String, dynamic>() ??
          (json['fees'] as Map?)?.cast<String, dynamic>() ??
          const {},
      rows: rowsRaw.map((e) => Map<String, dynamic>.from(e as Map)).toList(),
    );
  }
}

class CloudFeeImportJob {
  const CloudFeeImportJob({
    required this.id,
    required this.status,
    this.fromStateCode,
    this.total = 0,
    this.completed = 0,
    this.error,
  });

  final String id;
  final String status;
  final String? fromStateCode;
  final int total;
  final int completed;
  final String? error;

  bool get isRunning => status == 'queued' || status == 'processing';

  factory CloudFeeImportJob.fromJson(Map<String, dynamic> json) {
    return CloudFeeImportJob(
      id: json['id'] as String,
      status: json['status'] as String? ?? 'queued',
      fromStateCode: json['fromStateCode'] as String?,
      total: (json['total'] as num?)?.toInt() ?? 0,
      completed: (json['completed'] as num?)?.toInt() ?? 0,
      error: json['error'] as String?,
    );
  }
}

class CloudQuotesResult {
  const CloudQuotesResult({
    this.quotes = const [],
    this.recommended,
  });

  final List<Map<String, dynamic>> quotes;
  final Map<String, dynamic>? recommended;

  factory CloudQuotesResult.fromJson(dynamic data) {
    if (data is List) {
      return CloudQuotesResult(
        quotes: data.map((e) => Map<String, dynamic>.from(e as Map)).toList(),
      );
    }
    if (data is Map) {
      final quotes = (data['quotes'] as List? ?? const [])
          .map((e) => Map<String, dynamic>.from(e as Map))
          .toList();
      final rec = data['recommended'];
      return CloudQuotesResult(
        quotes: quotes,
        recommended: rec is Map ? Map<String, dynamic>.from(rec) : null,
      );
    }
    return const CloudQuotesResult();
  }
}

/// One row from batch `POST …/carrier-accounts/fees/resolve`.
class CloudFeeResolveRow {
  const CloudFeeResolveRow({
    required this.accountId,
    this.amount,
    this.matched = 'default',
    this.fees = const {},
  });

  final String accountId;
  final num? amount;
  final String matched;
  final Map<String, num?> fees;

  factory CloudFeeResolveRow.fromJson(Map<String, dynamic> json) {
    final feesRaw = json['fees'];
    final fees = <String, num?>{};
    if (feesRaw is Map) {
      for (final e in feesRaw.entries) {
        final v = e.value;
        fees[e.key.toString()] = v is num ? v : null;
      }
    }
    return CloudFeeResolveRow(
      accountId: (json['accountId'] ?? '').toString(),
      amount: json['amount'] as num?,
      matched: (json['matched'] ?? 'default').toString(),
      fees: fees,
    );
  }

  num? feeFor(String deliveryType) => fees[deliveryType];
}

/// Full management client for Cloud carrier-accounts + parcels via Feeef proxy.
class CloudDeliveryApi {
  CloudDeliveryApi({required this.client});

  final Dio client;

  Map<String, dynamic> _unwrapMap(Response res) {
    final data = res.data['data'];
    return Map<String, dynamic>.from(data as Map);
  }

  List<Map<String, dynamic>> _unwrapList(Response res) {
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => Map<String, dynamic>.from(e as Map)).toList();
  }

  Future<List<CloudCarrierAccount>> listCarrierAccounts(String storeId) async {
    final res = await client.get('/stores/$storeId/carrier-accounts');
    return _unwrapList(res).map(CloudCarrierAccount.fromJson).toList();
  }

  Future<CloudCarrierAccount> createCarrierAccount(
    String storeId, {
    required String courierId,
    required String name,
    required Map<String, dynamic> config,
    bool? samePriceAllWilayas,
    Map<String, dynamic>? fees,
    String? linkCode,
  }) async {
    final res = await client.post(
      '/stores/$storeId/carrier-accounts',
      data: {
        'courierId': courierId,
        'name': name,
        'config': config,
        if (linkCode != null && linkCode.isNotEmpty) 'linkCode': linkCode,
        if (samePriceAllWilayas != null)
          'samePriceAllWilayas': samePriceAllWilayas,
        if (fees != null) 'fees': fees,
      },
    );
    return CloudCarrierAccount.fromJson(_unwrapMap(res));
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
    return CloudCarrierAccount.fromJson(_unwrapMap(res));
  }

  Future<void> deleteCarrierAccount(String storeId, String accountId) async {
    await client.delete('/stores/$storeId/carrier-accounts/$accountId');
  }

  Future<List<CloudCourier>> listCouriers(
    String storeId, {
    String country = 'DZ',
    String lang = 'fr',
  }) async {
    final res = await client.get(
      '/stores/$storeId/couriers',
      queryParameters: {'country': country, 'lang': lang},
    );
    return _unwrapList(res)
        .map(CloudCourier.fromJson)
        .where((c) => c.id.isNotEmpty)
        .toList();
  }

  Future<Map<String, dynamic>> ecotrackLogin(
    String storeId, {
    required String baseUrl,
    required String email,
    required String password,
  }) async {
    final res = await client.post(
      '/stores/$storeId/carrier-accounts/ecotrack-login',
      data: {'baseUrl': baseUrl, 'email': email, 'password': password},
    );
    return _unwrapMap(res);
  }

  Future<List<CloudParcel>> listParcels(
    String storeId, {
    Map<String, dynamic>? query,
  }) async {
    final res = await client.get(
      '/stores/$storeId/parcels',
      queryParameters: query,
    );
    return _unwrapList(res).map(CloudParcel.fromJson).toList();
  }

  Future<CloudParcel> createParcel(
    String storeId,
    Map<String, dynamic> body,
  ) async {
    final res = await client.post('/stores/$storeId/parcels', data: body);
    return CloudParcel.fromJson(_unwrapMap(res));
  }

  Future<CloudParcel> getParcel(String storeId, String parcelId) async {
    final res = await client.get('/stores/$storeId/parcels/$parcelId');
    return CloudParcel.fromJson(_unwrapMap(res));
  }

  Future<CloudParcel> updateParcel(
    String storeId,
    String parcelId,
    Map<String, dynamic> body,
  ) async {
    final res = await client.patch(
      '/stores/$storeId/parcels/$parcelId',
      data: body,
    );
    return CloudParcel.fromJson(_unwrapMap(res));
  }

  Future<CloudParcel> sendParcel(String storeId, String parcelId) async {
    final res = await client.post(
      '/stores/$storeId/parcels/$parcelId/send',
      data: const <String, dynamic>{},
    );
    return CloudParcel.fromJson(_unwrapMap(res));
  }

  Future<CloudParcel> syncParcel(String storeId, String parcelId) async {
    final res = await client.post(
      '/stores/$storeId/parcels/$parcelId/sync',
      data: const <String, dynamic>{},
    );
    return CloudParcel.fromJson(_unwrapMap(res));
  }

  Future<CloudParcel> cancelParcel(
    String storeId,
    String parcelId, {
    String? force,
  }) async {
    final res = await client.post(
      '/stores/$storeId/parcels/$parcelId/cancel',
      data: {if (force != null) 'force': force},
    );
    return CloudParcel.fromJson(_unwrapMap(res));
  }

  Future<void> deleteParcel(String storeId, String parcelId) async {
    await client.delete('/stores/$storeId/parcels/$parcelId');
  }

  Future<Uint8List> labelPdf(
    String storeId,
    String parcelId, {
    String? source,
    String? size,
    String? lang,
    String? templateId,
  }) async {
    final res = await client.get<List<int>>(
      '/stores/$storeId/parcels/$parcelId/label',
      queryParameters: {
        if (source != null) 'source': source,
        if (size != null) 'size': size,
        if (lang != null) 'lang': lang,
        if (templateId != null) 'templateId': templateId,
      },
      options: Options(
        responseType: ResponseType.bytes,
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
    return Uint8List.fromList(res.data ?? const []);
  }

  /// Merged PDF for many parcels (Cloud POST /parcels/labels).
  Future<Uint8List> labelsPdf(
    String storeId,
    List<String> parcelIds, {
    String? source,
    String? size,
    String? lang,
    String? templateId,
  }) async {
    final res = await client.post<List<int>>(
      '/stores/$storeId/parcels/labels',
      data: {
        'parcelIds': parcelIds,
        if (source != null) 'source': source,
        if (size != null) 'size': size,
        if (lang != null) 'lang': lang,
        if (templateId != null) 'templateId': templateId,
      },
      options: Options(
        responseType: ResponseType.bytes,
        receiveTimeout: const Duration(seconds: 120),
      ),
    );
    return Uint8List.fromList(res.data ?? const []);
  }

  Future<CloudLabelSettings> getLabelSettings(String storeId) async {
    final res = await client.get('/stores/$storeId/label-settings');
    return CloudLabelSettings.fromJson(_unwrapMap(res));
  }

  Future<CloudLabelSettings> updateLabelSettings(
    String storeId, {
    String? defaultMode,
    String? defaultTemplateId,
    bool clearDefaultTemplate = false,
  }) async {
    final res = await client.patch(
      '/stores/$storeId/label-settings',
      data: {
        if (defaultMode != null) 'defaultMode': defaultMode,
        if (clearDefaultTemplate)
          'defaultTemplateId': null
        else if (defaultTemplateId != null)
          'defaultTemplateId': defaultTemplateId,
      },
    );
    return CloudLabelSettings.fromJson(_unwrapMap(res));
  }

  Future<List<CloudLabelTemplate>> listLabelTemplates(String storeId) async {
    final res = await client.get('/stores/$storeId/label-templates');
    return [
      for (final row in _unwrapList(res)) CloudLabelTemplate.fromJson(row),
    ];
  }

  Future<CloudLabelTemplate> createLabelTemplate(
    String storeId,
    Map<String, dynamic> body,
  ) async {
    final res = await client.post(
      '/stores/$storeId/label-templates',
      data: body,
    );
    return CloudLabelTemplate.fromJson(_unwrapMap(res));
  }

  Future<CloudLabelTemplate> updateLabelTemplate(
    String storeId,
    String templateId,
    Map<String, dynamic> body,
  ) async {
    final res = await client.patch(
      '/stores/$storeId/label-templates/$templateId',
      data: body,
    );
    return CloudLabelTemplate.fromJson(_unwrapMap(res));
  }

  Future<List<Map<String, dynamic>>> listParcelEvents(
    String storeId,
    String parcelId,
  ) async {
    final res = await client.get('/stores/$storeId/parcels/$parcelId/events');
    return _unwrapList(res);
  }

  Future<CloudQuotesResult> quoteResult(
    String storeId, {
    required String state,
    String? city,
    required String deliveryType,
    String? carrierAccountId,
    String country = 'DZ',
  }) async {
    final res = await client.post(
      '/stores/$storeId/carrier-accounts/quotes',
      data: {
        'country': country,
        'state': state,
        if (city != null && city.isNotEmpty) 'city': city,
        'deliveryType': deliveryType,
        if (carrierAccountId != null) 'carrierAccountId': carrierAccountId,
        'includeUnavailable': true,
      },
    );
    return CloudQuotesResult.fromJson(res.data['data']);
  }

  /// Batch fee resolve for create-parcel — one destination, every account.
  Future<List<CloudFeeResolveRow>> resolveFeesBatch(
    String storeId, {
    required String state,
    String? city,
    String deliveryType = 'home',
    List<String>? accountIds,
    String country = 'DZ',
  }) async {
    final res = await client.post(
      '/stores/$storeId/carrier-accounts/fees/resolve',
      data: {
        'country': country,
        'state': state,
        if (city != null && city.isNotEmpty) 'city': city,
        'deliveryType': deliveryType,
        if (accountIds != null) 'accountIds': accountIds,
      },
    );
    return [
      for (final row in _unwrapList(res)) CloudFeeResolveRow.fromJson(row),
    ];
  }

  /// Unwraps [CloudQuotesResult.quotes].
  ///
  /// Prefer [quoteResult] — this helper drops `recommended` / destination.
  @Deprecated('Use quoteResult — it keeps recommended + destination')
  Future<List<Map<String, dynamic>>> quote(
    String storeId, {
    required String stateCode,
    String? commune,
    required String deliveryType,
    String? carrierAccountId,
  }) async {
    final result = await quoteResult(
      storeId,
      state: stateCode,
      city: commune,
      deliveryType: deliveryType,
      carrierAccountId: carrierAccountId,
    );
    return result.quotes;
  }

  Future<CloudFeesMatrix> getFees(String storeId, String accountId) async {
    final res = await client.get(
      '/stores/$storeId/carrier-accounts/$accountId/fees',
    );
    return CloudFeesMatrix.fromJson(_unwrapMap(res));
  }

  Future<CloudFeesMatrix> putFees(
    String storeId,
    String accountId,
    Map<String, dynamic> body,
  ) async {
    final res = await client.put(
      '/stores/$storeId/carrier-accounts/$accountId/fees',
      data: body,
    );
    return CloudFeesMatrix.fromJson(_unwrapMap(res));
  }

  Future<CloudFeeImportJob> queueFeeImport(
    String storeId,
    String accountId, {
    String? fromStateCode,
  }) async {
    final res = await client.post(
      '/stores/$storeId/carrier-accounts/$accountId/fees/import',
      data: {
        'wait': false,
        if (fromStateCode != null) 'fromStateCode': fromStateCode,
      },
    );
    return CloudFeeImportJob.fromJson(_unwrapMap(res));
  }

  Future<CloudFeeImportJob> feeImportJob(
    String storeId,
    String accountId,
    String jobId,
  ) async {
    final res = await client.get(
      '/stores/$storeId/carrier-accounts/$accountId/fees/import/$jobId',
    );
    return CloudFeeImportJob.fromJson(_unwrapMap(res));
  }

  /// Queue Cloud fee import, poll until terminal, return the new matrix.
  Future<CloudFeesMatrix> importFeesAndWait(
    String storeId,
    String accountId, {
    String? fromStateCode,
    void Function(CloudFeeImportJob job)? onProgress,
  }) async {
    var job = await queueFeeImport(
      storeId,
      accountId,
      fromStateCode: fromStateCode,
    );
    onProgress?.call(job);
    final deadline = DateTime.now().add(const Duration(minutes: 10));
    while (job.isRunning) {
      if (DateTime.now().isAfter(deadline)) {
        throw Exception(
          'Fee import is still running at the carrier — retry in a moment.',
        );
      }
      await Future<void>.delayed(const Duration(milliseconds: 1250));
      job = await feeImportJob(storeId, accountId, job.id);
      onProgress?.call(job);
    }
    if (job.status == 'failed') {
      throw Exception(job.error ?? 'The carrier failed to provide its rate card.');
    }
    final matrix = await getFees(storeId, accountId);
    if (matrix.rows.isEmpty) {
      throw Exception('The carrier returned no rates.');
    }
    return matrix;
  }

  Future<Map<String, dynamic>> syncAccount(
    String storeId,
    String accountId,
  ) async {
    final res = await client.post(
      '/stores/$storeId/carrier-accounts/$accountId/sync',
    );
    return _unwrapMap(res);
  }

  Future<List<Map<String, dynamic>>> listWebhookEvents(
    String storeId,
    String accountId, {
    int limit = 50,
  }) async {
    final res = await client.get(
      '/stores/$storeId/carrier-accounts/$accountId/webhook-events',
      queryParameters: {'limit': limit},
    );
    return _unwrapList(res);
  }

  Future<List<Map<String, dynamic>>> listRemoteParcels(
    String storeId,
    String accountId, {
    required String startDate,
    required String endDate,
  }) async {
    final res = await client.get(
      '/stores/$storeId/carrier-accounts/$accountId/remote-parcels',
      queryParameters: {
        'startDate': startDate,
        'endDate': endDate,
      },
    );
    return _unwrapList(res);
  }

  Future<Map<String, dynamic>> importRemoteParcels(
    String storeId,
    String accountId,
    Map<String, dynamic> body,
  ) async {
    final res = await client.post(
      '/stores/$storeId/carrier-accounts/$accountId/import',
      data: body,
    );
    return _unwrapMap(res);
  }

  Future<List<Map<String, dynamic>>> listCourierFees(
    String storeId, {
    String? accountId,
    bool unassigned = false,
  }) async {
    final res = await client.get(
      unassigned
          ? '/stores/$storeId/courier-fees/unassigned'
          : '/stores/$storeId/courier-fees',
      queryParameters: {
        if (!unassigned && accountId != null) 'accountId': accountId,
      },
    );
    return _unwrapList(res);
  }

  Future<Map<String, dynamic>> createCourierFee(
    String storeId,
    Map<String, dynamic> body,
  ) async {
    final res = await client.post('/stores/$storeId/courier-fees', data: body);
    return _unwrapMap(res);
  }

  Future<Map<String, dynamic>> updateCourierFee(
    String storeId,
    String feeId,
    Map<String, dynamic> body,
  ) async {
    final res = await client.patch(
      '/stores/$storeId/courier-fees/$feeId',
      data: body,
    );
    return _unwrapMap(res);
  }

  Future<void> deleteCourierFee(String storeId, String feeId) async {
    await client.delete('/stores/$storeId/courier-fees/$feeId');
  }

  /// GEO stopdesk offices (`pkp_…`) — required when shipping `stopdesk`.
  Future<List<Map<String, dynamic>>> listPickups({
    String country = 'DZ',
    String? courier,
    String? state,
    String? city,
    String lang = 'fr',
  }) async {
    final res = await client.get(
      '/geo/pickups',
      queryParameters: {
        'country': country,
        'lang': lang,
        if (courier != null && courier.isNotEmpty) 'courier': courier,
        if (state != null && state.isNotEmpty) 'state': state,
        if (city != null && city.isNotEmpty) 'city': city,
      },
    );
    return _unwrapList(res);
  }

  Future<Map<String, dynamic>> shipOrder(
    String storeId,
    String orderId, {
    required String carrierAccountId,
    String? pickupId,
    String? note,
    String coverageFallback = 'none',
    Map<String, dynamic>? destinationOverride,
  }) async {
    final res = await client.post(
      '/stores/$storeId/orders/$orderId/cloud-parcels/send',
      data: {
        'carrierAccountId': carrierAccountId,
        if (pickupId != null && pickupId.isNotEmpty) 'pickupId': pickupId,
        if (note != null && note.isNotEmpty) 'note': note,
        if (coverageFallback != 'none') 'coverageFallback': coverageFallback,
        if (destinationOverride != null) 'destinationOverride': destinationOverride,
      },
    );
    return _unwrapMap(res);
  }

  Future<Map<String, dynamic>> shipOrders(
    String storeId, {
    required List<String> orderIds,
    required String carrierAccountId,
    String? pickupId,
    String? note,
    String coverageFallback = 'none',
    Map<String, dynamic>? destinationOverride,
  }) async {
    final res = await client.post(
      '/stores/$storeId/orders/cloud-parcels/sendMany',
      data: {
        'orderIds': orderIds,
        'carrierAccountId': carrierAccountId,
        if (pickupId != null && pickupId.isNotEmpty) 'pickupId': pickupId,
        if (note != null && note.isNotEmpty) 'note': note,
        if (coverageFallback != 'none') 'coverageFallback': coverageFallback,
        if (destinationOverride != null) 'destinationOverride': destinationOverride,
      },
    );
    return _unwrapMap(res);
  }

  Future<Map<String, dynamic>> unsendOrder(
    String storeId,
    String orderId,
  ) async {
    final res = await client.post(
      '/stores/$storeId/orders/$orderId/cloud-parcels/unsend',
    );
    return _unwrapMap(res);
  }
}
