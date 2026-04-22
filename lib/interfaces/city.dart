/// City entity interface.
///
/// There is no separate id or code: identity is [countryCode] + [stateCode] + [name].
/// [name] is the canonical English-normalized value used in APIs and forms.
/// [locales] is for display labels only — do not persist a translated string as the city.
abstract class CityEntity {
  /// Country code (part of composite primary key)
  abstract final String countryCode;

  /// State code (part of composite primary key)
  abstract final String stateCode;

  /// English-normalized city name (part of composite primary key); use for storage and shipping.
  abstract final String name;

  /// Additional metadata as key-value pairs
  abstract final Map<String, dynamic> metadata;

  /// Display-only translations keyed by language code (e.g. `ar`, `en`, `fr`).
  abstract final Map<String, String>? locales;

  /// Creation timestamp
  abstract final DateTime createdAt;
}
