import 'package:dio/dio.dart';

/// Cloud GEO city hit from `GET /geo/search`.
class GeoCityHit {
  const GeoCityHit({
    required this.name,
    required this.displayName,
    required this.stateCode,
    this.id,
    this.country = 'DZ',
    this.locales = const {},
    this.center,
    this.raw = const {},
  });

  final String? id;
  final String name;
  final String displayName;
  final String stateCode;
  final String country;
  final Map<String, String> locales;
  final ({double lat, double lng})? center;
  final Map<String, dynamic> raw;

  factory GeoCityHit.fromJson(Map<String, dynamic> json) {
    final localesRaw = json['locales'];
    final locales = <String, String>{};
    if (localesRaw is Map) {
      for (final e in localesRaw.entries) {
        final v = e.value;
        if (v is String && v.trim().isNotEmpty) {
          locales[e.key.toString()] = v;
        } else if (v is Map && v['name'] is String) {
          locales[e.key.toString()] = v['name'] as String;
        }
      }
    }
    ({double lat, double lng})? center;
    final c = json['center'];
    if (c is Map && c['lat'] is num && c['lng'] is num) {
      center = (lat: (c['lat'] as num).toDouble(), lng: (c['lng'] as num).toDouble());
    }
    final name = (json['name'] ?? '').toString().trim();
    final display = (json['displayName'] ?? name).toString().trim();
    return GeoCityHit(
      id: json['id']?.toString(),
      name: name,
      displayName: display.isEmpty ? name : display,
      stateCode: (json['stateCode'] ?? json['state'] ?? '').toString(),
      country: (json['country'] ?? json['countryCode'] ?? 'DZ').toString(),
      locales: locales,
      center: center,
      raw: Map<String, dynamic>.from(json),
    );
  }
}

/// Courier territory row (`GET /geo/couriers/:id/cities`).
class GeoCourierCity {
  const GeoCourierCity({
    required this.cityName,
    required this.hasPickup,
    this.label,
    this.canonical,
    this.raw = const {},
  });

  final String cityName;
  final bool hasPickup;
  final String? label;
  final GeoCityHit? canonical;
  final Map<String, dynamic> raw;

  factory GeoCourierCity.fromJson(Map<String, dynamic> json) {
    GeoCityHit? canonical;
    final c = json['canonical'];
    if (c is Map) {
      canonical = GeoCityHit.fromJson(Map<String, dynamic>.from(c));
    }
    return GeoCourierCity(
      cityName: (json['cityName'] ?? json['name'] ?? '').toString(),
      hasPickup: json['hasPickup'] == true,
      label: json['label']?.toString() ??
          json['displayName']?.toString() ??
          canonical?.displayName,
      canonical: canonical,
      raw: Map<String, dynamic>.from(json),
    );
  }
}

/// Stop-desk / pickup (`pkp_…`).
class GeoPickupHit {
  const GeoPickupHit({
    required this.id,
    required this.name,
    this.address,
    this.externalId,
    this.stateCode,
    this.cityName,
    this.locales = const {},
    this.raw = const {},
  });

  final String id;
  final String name;
  final String? address;
  final String? externalId;
  final String? stateCode;
  final String? cityName;
  final Map<String, String> locales;
  final Map<String, dynamic> raw;

  factory GeoPickupHit.fromJson(Map<String, dynamic> json) {
    final localesRaw = json['locales'];
    final locales = <String, String>{};
    if (localesRaw is Map) {
      for (final e in localesRaw.entries) {
        final v = e.value;
        if (v is String && v.trim().isNotEmpty) {
          locales[e.key.toString()] = v;
        }
      }
    }
    String? stateCode;
    String? cityName;
    final city = json['city'];
    if (city is Map) {
      stateCode = city['stateCode']?.toString();
      cityName = city['name']?.toString() ?? city['displayName']?.toString();
    }
    stateCode ??= json['state']?.toString() ?? json['stateCode']?.toString();
    cityName ??= json['cityName']?.toString() ?? json['commune']?.toString();
    final id = (json['id'] ?? '').toString();
    return GeoPickupHit(
      id: id,
      name: (json['name'] ?? json['displayName'] ?? json['label'] ?? id)
          .toString(),
      address: json['address']?.toString(),
      externalId: json['externalId']?.toString() ?? json['ref']?.toString(),
      stateCode: stateCode,
      cityName: cityName,
      locales: locales,
      raw: Map<String, dynamic>.from(json),
    );
  }

  String get haystack => [
        name,
        externalId,
        address,
        cityName,
        stateCode,
        ...locales.values,
      ].whereType<String>().join(' ').toLowerCase();
}

/// Cloud GEO surface on the Feeef API (`/geo/*` proxy).
class GeoApi {
  GeoApi({required this.client});

  final Dio client;

  List<Map<String, dynamic>> _unwrapList(Response res) {
    final data = res.data;
    if (data is Map && data['data'] is List) {
      return (data['data'] as List)
          .map((e) => Map<String, dynamic>.from(e as Map))
          .toList();
    }
    if (data is List) {
      return data.map((e) => Map<String, dynamic>.from(e as Map)).toList();
    }
    return const [];
  }

  /// Dissolved state outlines as a GeoJSON FeatureCollection.
  Future<Map<String, dynamic>> getStatePolygons({
    required String country,
    String lang = 'fr',
    String level = 'display',
    String? fallbackBaseUrl,
  }) async {
    try {
      final payload = await _getStatePolygons(client, country, lang, level);
      if (_featureCount(payload) > 0 ||
          fallbackBaseUrl == null ||
          fallbackBaseUrl.isEmpty) {
        return payload;
      }
    } on DioException {
      if (fallbackBaseUrl == null || fallbackBaseUrl.isEmpty) rethrow;
    }
    final origin = fallbackBaseUrl!;
    final fallback = Dio(
      BaseOptions(
        baseUrl: origin,
        headers: Map<String, dynamic>.from(client.options.headers),
      ),
    );
    return _getStatePolygons(fallback, country, lang, level);
  }

  Future<Map<String, dynamic>> _getStatePolygons(
    Dio dio,
    String country,
    String lang,
    String level,
  ) async {
    final response = await dio.get(
      '/geo/states/polygons',
      queryParameters: {
        'country': country.toUpperCase(),
        'lang': lang,
        'level': level,
      },
      options: Options(receiveTimeout: const Duration(seconds: 120)),
    );
    final data = response.data;
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    return const {};
  }

  int _featureCount(Map<String, dynamic> payload) {
    final data = payload['data'];
    if (data is Map && data['features'] is List) {
      return (data['features'] as List).length;
    }
    if (payload['features'] is List) return (payload['features'] as List).length;
    return 0;
  }

  /// Debounced commune search — `GET /geo/search?q=`.
  Future<List<GeoCityHit>> search({
    required String q,
    String country = 'DZ',
    String lang = 'fr',
    int limit = 8,
  }) async {
    final res = await client.get(
      '/geo/search',
      queryParameters: {
        'q': q,
        'country': country,
        'lang': lang,
        'limit': limit,
      },
    );
    return [for (final row in _unwrapList(res)) GeoCityHit.fromJson(row)];
  }

  /// Stop desks — `GET /geo/pickups` or courier-scoped list.
  Future<List<GeoPickupHit>> listPickups({
    String country = 'DZ',
    String? courierId,
    String? state,
    String? city,
    String lang = 'fr',
  }) async {
    final res = await client.get(
      '/geo/pickups',
      queryParameters: {
        'country': country,
        'lang': lang,
        if (courierId != null && courierId.isNotEmpty) 'courier': courierId,
        if (state != null && state.isNotEmpty) 'state': state,
        if (city != null && city.isNotEmpty) 'city': city,
      },
    );
    return [for (final row in _unwrapList(res)) GeoPickupHit.fromJson(row)];
  }

  /// Territory for stop-desk gates — `GET /geo/couriers/:id/cities`.
  Future<List<GeoCourierCity>> listCourierCities({
    required String courierId,
    String country = 'DZ',
    String? state,
    String? city,
    bool? hasPickup,
    bool expandCanonical = false,
    String lang = 'fr',
  }) async {
    final res = await client.get(
      '/geo/couriers/${Uri.encodeComponent(courierId)}/cities',
      queryParameters: {
        'country': country,
        'lang': lang,
        if (state != null && state.isNotEmpty) 'state': state,
        if (city != null && city.isNotEmpty) 'city': city,
        if (hasPickup != null) 'hasPickup': hasPickup.toString(),
        if (expandCanonical) 'expand': 'canonical',
      },
    );
    return [for (final row in _unwrapList(res)) GeoCourierCity.fromJson(row)];
  }
}
