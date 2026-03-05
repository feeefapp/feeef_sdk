/// City entity interface
abstract class CityEntity {
  /// Country code (part of composite primary key)
  abstract final String countryCode;

  /// State code (part of composite primary key)
  abstract final String stateCode;

  /// City name (part of composite primary key)
  abstract final String name;

  /// Additional metadata as key-value pairs
  abstract final Map<String, dynamic> metadata;

  /// Localized names by locale code (e.g. {'ar': 'المدينة', 'en': 'City'})
  abstract final Map<String, String>? locales;

  /// Creation timestamp
  abstract final DateTime createdAt;
}
