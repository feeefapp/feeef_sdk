/// Country entity interface
abstract class CountryEntity {
  /// ISO 3166-1 alpha-2 country code (e.g., US, DZ, SA)
  abstract final String code;

  /// Country name (e.g., United States, Algeria, Saudi Arabia)
  abstract final String name;

  /// Phone country code without + (e.g., 1, 213, 966)
  abstract final String phone;

  /// Additional metadata as key-value pairs
  abstract final Map<String, dynamic> metadata;

  /// Creation timestamp
  abstract final DateTime createdAt;
}
