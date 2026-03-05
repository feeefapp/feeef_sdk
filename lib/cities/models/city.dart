import 'package:feeef/interfaces/city.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

/// Parses optional locales map from API jsonb (locale code -> display name).
Map<String, String>? _localesFromJson(dynamic value) {
  if (value == null) return null;
  final map = value as Map<String, dynamic>;
  return map.map((k, e) => MapEntry(k, (e ?? '').toString()));
}

/// City model with composite key (countryCode + stateCode + name)
@freezed
// ignore: non_abstract_class_inherits_abstract_member
abstract class City extends CityEntity
    with _$City
    implements Model, ModelMetadata {
  City._();

  factory City({
    /// Country code (part of composite primary key)
    required String countryCode,

    /// State code (part of composite primary key)
    required String stateCode,

    /// City name (part of composite primary key)
    required String name,

    /// Additional metadata as key-value pairs
    @Default({}) Map<String, dynamic> metadata,

    /// Localized names by locale code (e.g. {'ar': 'المدينة', 'en': 'City'}). From API locales jsonb.
    Map<String, String>? locales,

    /// Creation timestamp
    required DateTime createdAt,
  }) = _City;

  /// ID getter returns composite key: countryCode-stateCode-name
  @override
  String get id => '$countryCode-$stateCode-$name';

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

/// City creation request
@freezed
// ignore: non_abstract_class_inherits_abstract_member
abstract class CityCreate with _$CityCreate implements ModelCreate {
  const factory CityCreate({
    /// Country code (required to identify the parent country)
    required String countryCode,

    /// State code (required to identify the parent state)
    required String stateCode,

    /// City name
    required String name,

    /// Additional metadata as key-value pairs
    @Default({}) Map<String, dynamic> metadata,
  }) = _CityCreate;

  factory CityCreate.fromJson(Map<String, dynamic> json) =>
      _$CityCreateFromJson(json);
}

/// City update request
@freezed
// ignore: non_abstract_class_inherits_abstract_member
abstract class CityUpdate with _$CityUpdate implements ModelUpdate {
  const factory CityUpdate({
    /// City name
    String? name,

    /// Additional metadata as key-value pairs
    Map<String, dynamic>? metadata,

    @Default([]) List<String> setToNull,
  }) = _CityUpdate;

  factory CityUpdate.fromJson(Map<String, dynamic> json) =>
      _$CityUpdateFromJson(json);
}
