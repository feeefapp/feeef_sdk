import 'package:feeef/interfaces/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../interfaces/helpers.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User extends UserEntity
    with _$User
    implements Model, ModelMetadata {
  User._();
  factory User({
    required String id,
    required String? name,
    required String email,
    required String? phone,
    required String? photoUrl,
    required DateTime? emailVerifiedAt,
    required DateTime? phoneVerifiedAt,
    required DateTime? verifiedAt,
    required DateTime? blockedAt,
    required DateTime? partnerApprovedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(EmbaddedWallet()) EmbaddedWallet wallet,
    @Default({}) Map<String, dynamic> metadata,
    @Default({}) Map<String, dynamic> social,
    @Default({}) Map<String, dynamic> claims,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// UserUpdate
@freezed
abstract class UserUpdate with _$UserUpdate implements ModelUpdate {
  const factory UserUpdate({
    String? name,
    String? email,
    String? phone,
    String? photoUrl,
    @Default({}) Map<String, dynamic> metadata,
    // verification
    DateTime? emailVerifiedAt,
    DateTime? phoneVerifiedAt,
    DateTime? verifiedAt,
    // password
    // String? password,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _UserUpdate;

  factory UserUpdate.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateFromJson(json);
}

// // UserChangePassword
// @freezed
// class UserChangePassword with _$UserChangePassword implements ModelAuthChangePassword {
//   const factory UserChangePassword({
//     required String oldPassword,
//     required String newPassword,
//   }) = _UserChangePassword;

//   factory UserChangePassword.fromJson(Map<String, dynamic> json) => _$UserChangePasswordFromJson(json);
// }

// UserUpdateMe (also conatin password change)
@freezed
abstract class UserUpdateMe with _$UserUpdateMe implements ModelUpdate {
  const factory UserUpdateMe({
    String? name,
    String? email,
    String? phone,
    String? photoUrl,
    @Default({}) Map<String, dynamic> metadata,
    // verification
    DateTime? emailVerifiedAt,
    DateTime? phoneVerifiedAt,
    DateTime? verifiedAt,
    // password
    String? oldPassword,
    String? newPassword,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _UserUpdateMe;

  factory UserUpdateMe.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateMeFromJson(json);
}

@freezed
abstract class EmbaddedWallet with _$EmbaddedWallet {
  const factory EmbaddedWallet({
    @Default("DZD") String currency,
    @Default(0) double balance,
  }) = _EmbaddedWallet;

  factory EmbaddedWallet.fromJson(Map<String, dynamic> json) =>
      _$EmbaddedWalletFromJson(json);
}
