import 'package:feeef/interfaces/state.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

/// State/Province model with composite key (countryCode + code)
@freezed
abstract class State extends StateEntity
    with _$State
    implements Model, ModelMetadata {
  State._();

  factory State({
    /// Country code (part of composite primary key)
    required String countryCode,

    /// State/province code (part of composite primary key)
    required String code,

    /// State/province name
    required String name,

    /// Additional metadata as key-value pairs
    @Default({}) Map<String, dynamic> metadata,

    /// Creation timestamp
    required DateTime createdAt,
  }) = _State;

  /// ID getter returns composite key: countryCode-code
  String get id => '$countryCode-$code';

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);
}

/// State creation request
@freezed
abstract class StateCreate with _$StateCreate implements ModelCreate {
  const factory StateCreate({
    /// Country code (required to identify the parent country)
    required String countryCode,

    /// State/province code
    required String code,

    /// State/province name
    required String name,

    /// Additional metadata as key-value pairs
    @Default({}) Map<String, dynamic> metadata,
  }) = _StateCreate;

  factory StateCreate.fromJson(Map<String, dynamic> json) =>
      _$StateCreateFromJson(json);
}

/// State update request
@freezed
abstract class StateUpdate with _$StateUpdate implements ModelUpdate {
  const factory StateUpdate({
    /// State/province name
    String? name,

    /// Additional metadata as key-value pairs
    Map<String, dynamic>? metadata,
    // setToNull
    @Default([]) List<String> setToNull,
  }) = _StateUpdate;

  factory StateUpdate.fromJson(Map<String, dynamic> json) =>
      _$StateUpdateFromJson(json);
}
