// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_App _$AppFromJson(Map<String, dynamic> json) => _App(
      id: json['id'] as String,
      name: json['name'] as String,
      logoUrl: json['logoUrl'] as String?,
      clientId: json['clientId'] as String,
      redirectUris: (json['redirectUris'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      scopes: (json['scopes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      active: json['active'] as bool? ?? true,
      lastUsedAt: json['lastUsedAt'] == null
          ? null
          : DateTime.parse(json['lastUsedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      clientSecret: json['clientSecret'] as String?,
    );

Map<String, dynamic> _$AppToJson(_App instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'clientId': instance.clientId,
      'redirectUris': instance.redirectUris,
      'scopes': instance.scopes,
      'active': instance.active,
      'lastUsedAt': instance.lastUsedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'clientSecret': instance.clientSecret,
    };

_AppCreate _$AppCreateFromJson(Map<String, dynamic> json) => _AppCreate(
      name: json['name'] as String,
      logoUrl: json['logoUrl'] as String?,
      redirectUris: (json['redirectUris'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      scopes: (json['scopes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AppCreateToJson(_AppCreate instance) => <String, dynamic>{
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'redirectUris': instance.redirectUris,
      'scopes': instance.scopes,
    };

_AppUpdate _$AppUpdateFromJson(Map<String, dynamic> json) => _AppUpdate(
      name: json['name'] as String?,
      logoUrl: json['logoUrl'] as String?,
      redirectUris: (json['redirectUris'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      scopes: (json['scopes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      active: json['active'] as bool?,
      setToNull: (json['setToNull'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AppUpdateToJson(_AppUpdate instance) => <String, dynamic>{
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'redirectUris': instance.redirectUris,
      'scopes': instance.scopes,
      'active': instance.active,
      'setToNull': instance.setToNull,
    };
