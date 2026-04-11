// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreDomain _$StoreDomainFromJson(Map<String, dynamic> json) => _StoreDomain(
  name: json['name'] as String,
  verifiedAt: json['verifiedAt'] == null
      ? null
      : DateTime.parse(json['verifiedAt'] as String),
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$StoreDomainToJson(_StoreDomain instance) =>
    <String, dynamic>{
      'name': instance.name,
      'verifiedAt': instance.verifiedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

_StoreBanner _$StoreBannerFromJson(Map<String, dynamic> json) => _StoreBanner(
  title: json['title'] as String,
  url: json['url'] as String?,
  enabled: json['enabled'] as bool? ?? false,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$StoreBannerToJson(_StoreBanner instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'enabled': instance.enabled,
      'metadata': instance.metadata,
    };

_StoreDecoration _$StoreDecorationFromJson(
  Map<String, dynamic> json,
) => _StoreDecoration(
  primary: json['primary'] == null
      ? 0xFF4CAF50
      : const ColorSerializer().fromJson((json['primary'] as num).toInt()),
  onPrimary: json['onPrimary'] == null
      ? 0xFFFFFFFF
      : const ColorSerializer().fromJson((json['onPrimary'] as num).toInt()),
  primaryDark: json['primaryDark'] == null
      ? 0xFF69F0AE
      : const ColorSerializer().fromJson((json['primaryDark'] as num).toInt()),
  onPrimaryDark: json['onPrimaryDark'] == null
      ? 0xFF000000
      : const ColorSerializer().fromJson(
          (json['onPrimaryDark'] as num).toInt(),
        ),
  secondary: json['secondary'] == null
      ? 0xFFFF9800
      : const ColorSerializer().fromJson((json['secondary'] as num).toInt()),
  onSecondary: json['onSecondary'] == null
      ? 0xFFFFFFFF
      : const ColorSerializer().fromJson((json['onSecondary'] as num).toInt()),
  secondaryDark: json['secondaryDark'] == null
      ? 0xFFFFAB40
      : const ColorSerializer().fromJson(
          (json['secondaryDark'] as num).toInt(),
        ),
  onSecondaryDark: json['onSecondaryDark'] == null
      ? 0xFF000000
      : const ColorSerializer().fromJson(
          (json['onSecondaryDark'] as num).toInt(),
        ),
  useLogoDarkFilter: json['useLogoDarkFilter'] as bool? ?? true,
  showStoreLogoInHeader: json['showStoreLogoInHeader'] as bool?,
  logoFullHeight: json['logoFullHeight'] as bool?,
  showStoreNameInHeader: json['showStoreNameInHeader'] as bool?,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  theme: json['theme'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$StoreDecorationToJson(
  _StoreDecoration instance,
) => <String, dynamic>{
  'primary': const ColorSerializer().toJson(instance.primary),
  'onPrimary': const ColorSerializer().toJson(instance.onPrimary),
  'primaryDark': const ColorSerializer().toJson(instance.primaryDark),
  'onPrimaryDark': const ColorSerializer().toJson(instance.onPrimaryDark),
  'secondary': const ColorSerializer().toJson(instance.secondary),
  'onSecondary': const ColorSerializer().toJson(instance.onSecondary),
  'secondaryDark': const ColorSerializer().toJson(instance.secondaryDark),
  'onSecondaryDark': const ColorSerializer().toJson(instance.onSecondaryDark),
  'useLogoDarkFilter': instance.useLogoDarkFilter,
  'showStoreLogoInHeader': instance.showStoreLogoInHeader,
  'logoFullHeight': instance.logoFullHeight,
  'showStoreNameInHeader': instance.showStoreNameInHeader,
  'metadata': instance.metadata,
  'theme': instance.theme,
};

_StoreAction _$StoreActionFromJson(Map<String, dynamic> json) => _StoreAction(
  label: json['label'] as String,
  url: json['url'] as String,
  type: $enumDecode(_$StoreActionTypeEnumMap, json['type']),
);

Map<String, dynamic> _$StoreActionToJson(_StoreAction instance) =>
    <String, dynamic>{
      'label': instance.label,
      'url': instance.url,
      'type': _$StoreActionTypeEnumMap[instance.type]!,
    };

const _$StoreActionTypeEnumMap = {
  StoreActionType.link: 'link',
  StoreActionType.whatsapp: 'whatsapp',
  StoreActionType.telegram: 'telegram',
  StoreActionType.phone: 'phone',
};

_EmbaddedAddress _$EmbaddedAddressFromJson(Map<String, dynamic> json) =>
    _EmbaddedAddress(
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      street: json['street'] as String?,
      zip: json['zip'] as String?,
      location: json['location'] == null
          ? null
          : EmbaddedLocation.fromJson(json['location'] as Map<String, dynamic>),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$EmbaddedAddressToJson(_EmbaddedAddress instance) =>
    <String, dynamic>{
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'street': instance.street,
      'zip': instance.zip,
      'location': instance.location?.toJson(),
      'metadata': instance.metadata,
    };

_EmbaddedLocation _$EmbaddedLocationFromJson(Map<String, dynamic> json) =>
    _EmbaddedLocation(
      geohash: json['geohash'] as String?,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$EmbaddedLocationToJson(_EmbaddedLocation instance) =>
    <String, dynamic>{
      'geohash': instance.geohash,
      'lat': instance.lat,
      'long': instance.long,
    };

_EmbaddedContact _$EmbaddedContactFromJson(Map<String, dynamic> json) =>
    _EmbaddedContact(
      name: json['name'] as String?,
      type: $enumDecode(_$EmbaddedContactTypeEnumMap, json['type']),
      value: json['value'] as String,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$EmbaddedContactToJson(_EmbaddedContact instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': _$EmbaddedContactTypeEnumMap[instance.type]!,
      'value': instance.value,
      'metadata': instance.metadata,
    };

const _$EmbaddedContactTypeEnumMap = {
  EmbaddedContactType.phone: 'phone',
  EmbaddedContactType.email: 'email',
  EmbaddedContactType.facebook: 'facebook',
  EmbaddedContactType.twitter: 'twitter',
  EmbaddedContactType.instagram: 'instagram',
  EmbaddedContactType.linkedin: 'linkedin',
  EmbaddedContactType.website: 'website',
  EmbaddedContactType.whatsapp: 'whatsapp',
  EmbaddedContactType.telegram: 'telegram',
  EmbaddedContactType.signal: 'signal',
  EmbaddedContactType.viber: 'viber',
  EmbaddedContactType.skype: 'skype',
  EmbaddedContactType.zoom: 'zoom',
  EmbaddedContactType.other: 'other',
};

_StoreMember _$StoreMemberFromJson(Map<String, dynamic> json) => _StoreMember(
  userId: json['userId'] as String,
  name: json['name'] as String,
  role: $enumDecode(_$StoreMemberRoleEnumMap, json['role']),
  acceptedAt: json['acceptedAt'] == null
      ? null
      : DateTime.parse(json['acceptedAt'] as String),
  expiredAt: json['expiredAt'] == null
      ? null
      : DateTime.parse(json['expiredAt'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  active: json['active'] as bool? ?? false,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$StoreMemberToJson(_StoreMember instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'role': _$StoreMemberRoleEnumMap[instance.role]!,
      'acceptedAt': instance.acceptedAt?.toIso8601String(),
      'expiredAt': instance.expiredAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'active': instance.active,
      'metadata': instance.metadata,
    };

const _$StoreMemberRoleEnumMap = {
  StoreMemberRole.editor: 'editor',
  StoreMemberRole.viewer: 'viewer',
  StoreMemberRole.confermer: 'confermer',
};

_StoreInviteStore _$StoreInviteStoreFromJson(Map<String, dynamic> json) =>
    _StoreInviteStore(
      id: json['id'] as String,
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String?,
      logoUrl: json['logoUrl'] as String?,
    );

Map<String, dynamic> _$StoreInviteStoreToJson(_StoreInviteStore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconUrl': instance.iconUrl,
      'logoUrl': instance.logoUrl,
    };

_StoreInvite _$StoreInviteFromJson(Map<String, dynamic> json) => _StoreInvite(
      id: json['id'] as String,
      storeId: json['storeId'] as String,
      email: json['email'] as String,
      role: $enumDecode(_$StoreMemberRoleEnumMap, json['role']),
      invitedBy: json['invitedBy'] as String,
      status: $enumDecode(_$StoreInviteStatusEnumMap, json['status']),
      acceptedAt: json['acceptedAt'] == null
          ? null
          : DateTime.parse(json['acceptedAt'] as String),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      store: json['store'] == null
          ? null
          : StoreInviteStore.fromJson(json['store'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$StoreInviteToJson(_StoreInvite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'email': instance.email,
      'role': _$StoreMemberRoleEnumMap[instance.role]!,
      'invitedBy': instance.invitedBy,
      'status': _$StoreInviteStatusEnumMap[instance.status]!,
      'acceptedAt': instance.acceptedAt?.toIso8601String(),
      'expiresAt': instance.expiresAt.toIso8601String(),
      'metadata': instance.metadata,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'store': instance.store?.toJson(),
      'token': instance.token,
    };

const _$StoreInviteStatusEnumMap = {
  StoreInviteStatus.pending: 'pending',
  StoreInviteStatus.accepted: 'accepted',
  StoreInviteStatus.revoked: 'revoked',
  StoreInviteStatus.expired: 'expired',
};
