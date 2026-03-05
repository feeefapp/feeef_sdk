/// State/Province entity interface
abstract class StateEntity {
  /// Country code (part of composite primary key)
  abstract final String countryCode;

  /// State/province code (part of composite primary key)
  abstract final String code;

  /// State/province name
  abstract final String name;

  /// Additional metadata as key-value pairs
  abstract final Map<String, dynamic> metadata;

  /// Localized names by locale code (e.g. {'ar': 'الولاية', 'en': 'State'})
  abstract final Map<String, String>? locales;

  /// Creation timestamp
  abstract final DateTime createdAt;
}
