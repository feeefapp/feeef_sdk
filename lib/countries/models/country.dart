import 'package:feeef/interfaces/country.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

/// Parses optional locales map from API jsonb (locale code -> display name).
Map<String, String>? _localesFromJson(dynamic value) {
  if (value == null) return null;
  final map = value as Map<String, dynamic>;
  return map.map((k, e) => MapEntry(k, (e ?? '').toString()));
}

/// Country model representing a country
@freezed
abstract class Country extends CountryEntity
    with _$Country
    implements Model, ModelMetadata {
  Country._();

  factory Country({
    /// ISO 3166-1 alpha-2 country code (e.g., US, DZ, SA)
    required String code,

    /// Country name (e.g., United States, Algeria, Saudi Arabia)
    required String name,

    /// Phone country code without + (e.g., 1, 213, 966)
    required String phone,

    /// Additional metadata as key-value pairs
    @Default({}) Map<String, dynamic> metadata,

    /// Localized names by locale code (e.g. {'ar': 'الجزائر', 'en': 'Algeria'}). From API locales jsonb.
    Map<String, String>? locales,

    /// Creation timestamp
    required DateTime createdAt,
  }) = _Country;

  /// ID getter returns the country code
  @override
  String get id => code;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
