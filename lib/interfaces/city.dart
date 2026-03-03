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

  /// Creation timestamp
  abstract final DateTime createdAt;
}
