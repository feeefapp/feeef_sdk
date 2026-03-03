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
      ? Colors.green
      : const ColorSerializer().fromJson((json['primary'] as num).toInt()),
  onPrimary: json['onPrimary'] == null
      ? Colors.white
      : const ColorSerializer().fromJson((json['onPrimary'] as num).toInt()),
  primaryDark: json['primaryDark'] == null
      ? Colors.greenAccent
      : const ColorSerializer().fromJson((json['primaryDark'] as num).toInt()),
  onPrimaryDark: json['onPrimaryDark'] == null
      ? Colors.black
      : const ColorSerializer().fromJson(
          (json['onPrimaryDark'] as num).toInt(),
        ),
  secondary: json['secondary'] == null
      ? Colors.orange
      : const ColorSerializer().fromJson((json['secondary'] as num).toInt()),
  onSecondary: json['onSecondary'] == null
      ? Colors.white
      : const ColorSerializer().fromJson((json['onSecondary'] as num).toInt()),
  secondaryDark: json['secondaryDark'] == null
      ? Colors.orangeAccent
      : const ColorSerializer().fromJson(
          (json['secondaryDark'] as num).toInt(),
        ),
  onSecondaryDark: json['onSecondaryDark'] == null
      ? Colors.black
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
