// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  name: json['name'] as String?,
  email: json['email'] as String,
  phone: json['phone'] as String?,
  photoUrl: json['photoUrl'] as String?,
  emailVerifiedAt: json['emailVerifiedAt'] == null
      ? null
      : DateTime.parse(json['emailVerifiedAt'] as String),
  phoneVerifiedAt: json['phoneVerifiedAt'] == null
      ? null
      : DateTime.parse(json['phoneVerifiedAt'] as String),
  verifiedAt: json['verifiedAt'] == null
      ? null
      : DateTime.parse(json['verifiedAt'] as String),
  blockedAt: json['blockedAt'] == null
      ? null
      : DateTime.parse(json['blockedAt'] as String),
  partnerApprovedAt: json['partnerApprovedAt'] == null
      ? null
      : DateTime.parse(json['partnerApprovedAt'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  wallet: json['wallet'] == null
      ? const EmbaddedWallet()
      : EmbaddedWallet.fromJson(json['wallet'] as Map<String, dynamic>),
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  social: json['social'] as Map<String, dynamic>? ?? const {},
  claims: json['claims'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'photoUrl': instance.photoUrl,
  'emailVerifiedAt': instance.emailVerifiedAt?.toIso8601String(),
  'phoneVerifiedAt': instance.phoneVerifiedAt?.toIso8601String(),
  'verifiedAt': instance.verifiedAt?.toIso8601String(),
  'blockedAt': instance.blockedAt?.toIso8601String(),
  'partnerApprovedAt': instance.partnerApprovedAt?.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'wallet': instance.wallet.toJson(),
  'metadata': instance.metadata,
  'social': instance.social,
  'claims': instance.claims,
};

_UserUpdate _$UserUpdateFromJson(Map<String, dynamic> json) => _UserUpdate(
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  photoUrl: json['photoUrl'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  emailVerifiedAt: json['emailVerifiedAt'] == null
      ? null
      : DateTime.parse(json['emailVerifiedAt'] as String),
  phoneVerifiedAt: json['phoneVerifiedAt'] == null
      ? null
      : DateTime.parse(json['phoneVerifiedAt'] as String),
  verifiedAt: json['verifiedAt'] == null
      ? null
      : DateTime.parse(json['verifiedAt'] as String),
);

Map<String, dynamic> _$UserUpdateToJson(_UserUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photoUrl': instance.photoUrl,
      'metadata': instance.metadata,
      'emailVerifiedAt': instance.emailVerifiedAt?.toIso8601String(),
      'phoneVerifiedAt': instance.phoneVerifiedAt?.toIso8601String(),
      'verifiedAt': instance.verifiedAt?.toIso8601String(),
    };

_UserUpdateMe _$UserUpdateMeFromJson(Map<String, dynamic> json) =>
    _UserUpdateMe(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      photoUrl: json['photoUrl'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      emailVerifiedAt: json['emailVerifiedAt'] == null
          ? null
          : DateTime.parse(json['emailVerifiedAt'] as String),
      phoneVerifiedAt: json['phoneVerifiedAt'] == null
          ? null
          : DateTime.parse(json['phoneVerifiedAt'] as String),
      verifiedAt: json['verifiedAt'] == null
          ? null
          : DateTime.parse(json['verifiedAt'] as String),
      oldPassword: json['oldPassword'] as String?,
      newPassword: json['newPassword'] as String?,
    );

Map<String, dynamic> _$UserUpdateMeToJson(_UserUpdateMe instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photoUrl': instance.photoUrl,
      'metadata': instance.metadata,
      'emailVerifiedAt': instance.emailVerifiedAt?.toIso8601String(),
      'phoneVerifiedAt': instance.phoneVerifiedAt?.toIso8601String(),
      'verifiedAt': instance.verifiedAt?.toIso8601String(),
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };

_EmbaddedWallet _$EmbaddedWalletFromJson(Map<String, dynamic> json) =>
    _EmbaddedWallet(
      currency: json['currency'] as String? ?? "DZD",
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$EmbaddedWalletToJson(_EmbaddedWallet instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'balance': instance.balance,
    };
