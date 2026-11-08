// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthToken _$AuthTokenFromJson(Map<String, dynamic> json) => _AuthToken(
  type: json['type'] as String,
  name: json['name'] as String?,
  token: json['token'] as String?,
  abilities: (json['abilities'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  lastUsedAt: json['lastUsedAt'] == null
      ? null
      : DateTime.parse(json['lastUsedAt'] as String),
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
);

Map<String, dynamic> _$AuthTokenToJson(_AuthToken instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'token': instance.token,
      'abilities': instance.abilities,
      'lastUsedAt': instance.lastUsedAt?.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };

_AccessToken _$AccessTokenFromJson(Map<String, dynamic> json) => _AccessToken(
  identifier: json['identifier'],
  tokenableId: json['tokenableId'],
  value: json['value'],
  name: json['name'] as String?,
  type: json['type'] as String,
  abilities: (json['abilities'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  hash: json['hash'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
  lastUsedAt: json['lastUsedAt'] == null
      ? null
      : DateTime.parse(json['lastUsedAt'] as String),
);

Map<String, dynamic> _$AccessTokenToJson(_AccessToken instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'tokenableId': instance.tokenableId,
      'value': instance.value,
      'name': instance.name,
      'type': instance.type,
      'abilities': instance.abilities,
      'hash': instance.hash,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'lastUsedAt': instance.lastUsedAt?.toIso8601String(),
    };
