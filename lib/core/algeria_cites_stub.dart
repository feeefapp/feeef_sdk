// Stub for Algeria city/wilaya lookup when the SDK is used standalone.
// The host app (e.g. marchant) can provide real data via its own implementation.

enum AlgeriaScript { latin }

class AlgeriaCity {
  final String code;
  final String name;
  const AlgeriaCity({required this.code, required this.name});
}

/// Stub: returns null. Host app may provide real lookup.
AlgeriaCity? getCityByCode({
  required String code,
  required String stateCode,
  required AlgeriaScript lang,
}) =>
    null;

/// Stub: returns empty list. Host app may provide real data.
List<AlgeriaCity> getCitiesByStateCode({required String code}) => [];
