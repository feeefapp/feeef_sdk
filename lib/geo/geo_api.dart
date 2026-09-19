import 'package:dio/dio.dart';

/// Cloud GEO surface on the Feeef API (`/geo/*` proxy).
class GeoApi {
  GeoApi({required this.client});

  final Dio client;

  /// Dissolved state outlines as a GeoJSON FeatureCollection.
  ///
  /// `GET /geo/states/polygons?country=&lang=&level=`
  ///
  /// [fallbackBaseUrl] is tried when the primary client returns empty or 404
  /// (local Adonis while the app still talks to alpha).
  Future<Map<String, dynamic>> getStatePolygons({
    required String country,
    String lang = 'fr',
    String level = 'display',
    String? fallbackBaseUrl,
  }) async {
    try {
      final payload = await _getStatePolygons(client, country, lang, level);
      if (_featureCount(payload) > 0 || fallbackBaseUrl == null || fallbackBaseUrl.isEmpty) {
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
}
