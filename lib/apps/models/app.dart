import 'package:freezed_annotation/freezed_annotation.dart';

import '../../interfaces/helpers.dart';

part 'app.freezed.dart';
part 'app.g.dart';

/// Developer-registered app (OAuth client) returned by the apps API.
///
/// [clientSecret] is present only on create and regenerateSecret responses.
@freezed
abstract class App with _$App implements Model {
  const factory App({
    required String id,
    required String name,
    /// Optional app logo URL used by admin and OAuth consent UIs.
    String? logoUrl,
    required String clientId,
    @Default([]) List<String> redirectUris,
    @Default([]) List<String> scopes,
    @Default(true) bool active,
    DateTime? lastUsedAt,
    required DateTime createdAt,
    DateTime? updatedAt,
    /// Only set when returned from create or regenerateSecret; store securely.
    String? clientSecret,
  }) = _App;

  factory App.fromJson(Map<String, dynamic> json) => _$AppFromJson(json);
}

@freezed
abstract class AppCreate with _$AppCreate implements ModelCreate {
  const factory AppCreate({
    required String name,
    /// Optional app logo URL to show during OAuth consent.
    String? logoUrl,
    required List<String> redirectUris,
    required List<String> scopes,
  }) = _AppCreate;

  factory AppCreate.fromJson(Map<String, dynamic> json) =>
      _$AppCreateFromJson(json);
}

@freezed
abstract class AppUpdate with _$AppUpdate implements ModelUpdate {
  const factory AppUpdate({
    String? name,
    /// Optional app logo URL. Set to `null` to clear.
    String? logoUrl,
    List<String>? redirectUris,
    List<String>? scopes,
    bool? active,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _AppUpdate;

  factory AppUpdate.fromJson(Map<String, dynamic> json) =>
      _$AppUpdateFromJson(json);
}
