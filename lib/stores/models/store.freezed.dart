// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Store {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get slug; StoreBanner? get banner; StoreAction? get action; StoreDomain? get domain; StoreDecoration? get decoration; String get name; String? get iconUrl; String? get logoUrl;@Deprecated("use logoUrl") String? get ondarkLogoUrl; String get userId; List<EmbaddedCategory> get categories; List<Category>? get categoriesRelation; String? get title; String? get description; List<EmbaddedAddress> get addresses; EmbaddedAddress? get address; Map<String, dynamic> get metadata; List<EmbaddedContact> get contacts;@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) StoreIntegrations get integrations; List<List<num?>?> get defaultShippingRates; DateTime? get verifiedAt; DateTime? get blockedAt;// subscription
 StoreSubscription? get subscription; num? get due;// StoreConfigs
 StoreConfigs? get configs; String? get shippingPriceId;// metaPixelIds
 List<String>? get metaPixelIds; Map<String, StoreMember> get members;
/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCopyWith<Store> get copyWith => _$StoreCopyWithImpl<Store>(this as Store, _$identity);

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Store&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.action, action) || other.action == action)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.decoration, decoration) || other.decoration == decoration)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.categoriesRelation, categoriesRelation)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.contacts, contacts)&&(identical(other.integrations, integrations) || other.integrations == integrations)&&const DeepCollectionEquality().equals(other.defaultShippingRates, defaultShippingRates)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.blockedAt, blockedAt) || other.blockedAt == blockedAt)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.due, due) || other.due == due)&&(identical(other.configs, configs) || other.configs == configs)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&const DeepCollectionEquality().equals(other.metaPixelIds, metaPixelIds)&&const DeepCollectionEquality().equals(other.members, members));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,slug,banner,action,domain,decoration,name,iconUrl,logoUrl,ondarkLogoUrl,userId,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(categoriesRelation),title,description,const DeepCollectionEquality().hash(addresses),address,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(contacts),integrations,const DeepCollectionEquality().hash(defaultShippingRates),verifiedAt,blockedAt,subscription,due,configs,shippingPriceId,const DeepCollectionEquality().hash(metaPixelIds),const DeepCollectionEquality().hash(members)]);

@override
String toString() {
  return 'Store(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, name: $name, iconUrl: $iconUrl, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, userId: $userId, categories: $categories, categoriesRelation: $categoriesRelation, title: $title, description: $description, addresses: $addresses, address: $address, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, verifiedAt: $verifiedAt, blockedAt: $blockedAt, subscription: $subscription, due: $due, configs: $configs, shippingPriceId: $shippingPriceId, metaPixelIds: $metaPixelIds, members: $members)';
}


}

/// @nodoc
abstract mixin class $StoreCopyWith<$Res>  {
  factory $StoreCopyWith(Store value, $Res Function(Store) _then) = _$StoreCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String slug, StoreBanner? banner, StoreAction? action, StoreDomain? domain, StoreDecoration? decoration, String name, String? iconUrl, String? logoUrl,@Deprecated("use logoUrl") String? ondarkLogoUrl, String userId, List<EmbaddedCategory> categories, List<Category>? categoriesRelation, String? title, String? description, List<EmbaddedAddress> addresses, EmbaddedAddress? address, Map<String, dynamic> metadata, List<EmbaddedContact> contacts,@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) StoreIntegrations integrations, List<List<num?>?> defaultShippingRates, DateTime? verifiedAt, DateTime? blockedAt, StoreSubscription? subscription, num? due, StoreConfigs? configs, String? shippingPriceId, List<String>? metaPixelIds, Map<String, StoreMember> members
});


$StoreBannerCopyWith<$Res>? get banner;$StoreActionCopyWith<$Res>? get action;$StoreDomainCopyWith<$Res>? get domain;$StoreDecorationCopyWith<$Res>? get decoration;$EmbaddedAddressCopyWith<$Res>? get address;$StoreIntegrationsCopyWith<$Res> get integrations;$StoreSubscriptionCopyWith<$Res>? get subscription;$StoreConfigsCopyWith<$Res>? get configs;

}
/// @nodoc
class _$StoreCopyWithImpl<$Res>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._self, this._then);

  final Store _self;
  final $Res Function(Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? slug = null,Object? banner = freezed,Object? action = freezed,Object? domain = freezed,Object? decoration = freezed,Object? name = null,Object? iconUrl = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? userId = null,Object? categories = null,Object? categoriesRelation = freezed,Object? title = freezed,Object? description = freezed,Object? addresses = null,Object? address = freezed,Object? metadata = null,Object? contacts = null,Object? integrations = null,Object? defaultShippingRates = null,Object? verifiedAt = freezed,Object? blockedAt = freezed,Object? subscription = freezed,Object? due = freezed,Object? configs = freezed,Object? shippingPriceId = freezed,Object? metaPixelIds = freezed,Object? members = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as StoreBanner?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as StoreAction?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as StoreDomain?,decoration: freezed == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as StoreDecoration?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkLogoUrl: freezed == ondarkLogoUrl ? _self.ondarkLogoUrl : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<EmbaddedCategory>,categoriesRelation: freezed == categoriesRelation ? _self.categoriesRelation : categoriesRelation // ignore: cast_nullable_to_non_nullable
as List<Category>?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<EmbaddedAddress>,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as EmbaddedAddress?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,contacts: null == contacts ? _self.contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<EmbaddedContact>,integrations: null == integrations ? _self.integrations : integrations // ignore: cast_nullable_to_non_nullable
as StoreIntegrations,defaultShippingRates: null == defaultShippingRates ? _self.defaultShippingRates : defaultShippingRates // ignore: cast_nullable_to_non_nullable
as List<List<num?>?>,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,blockedAt: freezed == blockedAt ? _self.blockedAt : blockedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as StoreSubscription?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as num?,configs: freezed == configs ? _self.configs : configs // ignore: cast_nullable_to_non_nullable
as StoreConfigs?,shippingPriceId: freezed == shippingPriceId ? _self.shippingPriceId : shippingPriceId // ignore: cast_nullable_to_non_nullable
as String?,metaPixelIds: freezed == metaPixelIds ? _self.metaPixelIds : metaPixelIds // ignore: cast_nullable_to_non_nullable
as List<String>?,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as Map<String, StoreMember>,
  ));
}
/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreBannerCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $StoreBannerCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreActionCopyWith<$Res>? get action {
    if (_self.action == null) {
    return null;
  }

  return $StoreActionCopyWith<$Res>(_self.action!, (value) {
    return _then(_self.copyWith(action: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDomainCopyWith<$Res>? get domain {
    if (_self.domain == null) {
    return null;
  }

  return $StoreDomainCopyWith<$Res>(_self.domain!, (value) {
    return _then(_self.copyWith(domain: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDecorationCopyWith<$Res>? get decoration {
    if (_self.decoration == null) {
    return null;
  }

  return $StoreDecorationCopyWith<$Res>(_self.decoration!, (value) {
    return _then(_self.copyWith(decoration: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $EmbaddedAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreIntegrationsCopyWith<$Res> get integrations {
  
  return $StoreIntegrationsCopyWith<$Res>(_self.integrations, (value) {
    return _then(_self.copyWith(integrations: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreSubscriptionCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
    return null;
  }

  return $StoreSubscriptionCopyWith<$Res>(_self.subscription!, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreConfigsCopyWith<$Res>? get configs {
    if (_self.configs == null) {
    return null;
  }

  return $StoreConfigsCopyWith<$Res>(_self.configs!, (value) {
    return _then(_self.copyWith(configs: value));
  });
}
}


/// Adds pattern-matching-related methods to [Store].
extension StorePatterns on Store {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Store value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Store() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Store value)  $default,){
final _that = this;
switch (_that) {
case _Store():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Store value)?  $default,){
final _that = this;
switch (_that) {
case _Store() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String name,  String? iconUrl,  String? logoUrl, @Deprecated("use logoUrl")  String? ondarkLogoUrl,  String userId,  List<EmbaddedCategory> categories,  List<Category>? categoriesRelation,  String? title,  String? description,  List<EmbaddedAddress> addresses,  EmbaddedAddress? address,  Map<String, dynamic> metadata,  List<EmbaddedContact> contacts, @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)  StoreIntegrations integrations,  List<List<num?>?> defaultShippingRates,  DateTime? verifiedAt,  DateTime? blockedAt,  StoreSubscription? subscription,  num? due,  StoreConfigs? configs,  String? shippingPriceId,  List<String>? metaPixelIds,  Map<String, StoreMember> members)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Store() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.name,_that.iconUrl,_that.logoUrl,_that.ondarkLogoUrl,_that.userId,_that.categories,_that.categoriesRelation,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.verifiedAt,_that.blockedAt,_that.subscription,_that.due,_that.configs,_that.shippingPriceId,_that.metaPixelIds,_that.members);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String name,  String? iconUrl,  String? logoUrl, @Deprecated("use logoUrl")  String? ondarkLogoUrl,  String userId,  List<EmbaddedCategory> categories,  List<Category>? categoriesRelation,  String? title,  String? description,  List<EmbaddedAddress> addresses,  EmbaddedAddress? address,  Map<String, dynamic> metadata,  List<EmbaddedContact> contacts, @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)  StoreIntegrations integrations,  List<List<num?>?> defaultShippingRates,  DateTime? verifiedAt,  DateTime? blockedAt,  StoreSubscription? subscription,  num? due,  StoreConfigs? configs,  String? shippingPriceId,  List<String>? metaPixelIds,  Map<String, StoreMember> members)  $default,) {final _that = this;
switch (_that) {
case _Store():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.name,_that.iconUrl,_that.logoUrl,_that.ondarkLogoUrl,_that.userId,_that.categories,_that.categoriesRelation,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.verifiedAt,_that.blockedAt,_that.subscription,_that.due,_that.configs,_that.shippingPriceId,_that.metaPixelIds,_that.members);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String name,  String? iconUrl,  String? logoUrl, @Deprecated("use logoUrl")  String? ondarkLogoUrl,  String userId,  List<EmbaddedCategory> categories,  List<Category>? categoriesRelation,  String? title,  String? description,  List<EmbaddedAddress> addresses,  EmbaddedAddress? address,  Map<String, dynamic> metadata,  List<EmbaddedContact> contacts, @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)  StoreIntegrations integrations,  List<List<num?>?> defaultShippingRates,  DateTime? verifiedAt,  DateTime? blockedAt,  StoreSubscription? subscription,  num? due,  StoreConfigs? configs,  String? shippingPriceId,  List<String>? metaPixelIds,  Map<String, StoreMember> members)?  $default,) {final _that = this;
switch (_that) {
case _Store() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.name,_that.iconUrl,_that.logoUrl,_that.ondarkLogoUrl,_that.userId,_that.categories,_that.categoriesRelation,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.verifiedAt,_that.blockedAt,_that.subscription,_that.due,_that.configs,_that.shippingPriceId,_that.metaPixelIds,_that.members);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Store extends Store {
   _Store({required this.id, required this.createdAt, required this.updatedAt, required this.slug, this.banner, this.action, this.domain, this.decoration, required this.name, this.iconUrl, this.logoUrl, @Deprecated("use logoUrl") this.ondarkLogoUrl, required this.userId, final  List<EmbaddedCategory> categories = const [], final  List<Category>? categoriesRelation, this.title, this.description, final  List<EmbaddedAddress> addresses = const [], this.address, final  Map<String, dynamic> metadata = const {}, final  List<EmbaddedContact> contacts = const [], @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) this.integrations = const StoreIntegrations(), final  List<List<num?>?> defaultShippingRates = const [], this.verifiedAt, this.blockedAt, this.subscription, this.due, this.configs, this.shippingPriceId, final  List<String>? metaPixelIds, final  Map<String, StoreMember> members = const {}}): _categories = categories,_categoriesRelation = categoriesRelation,_addresses = addresses,_metadata = metadata,_contacts = contacts,_defaultShippingRates = defaultShippingRates,_metaPixelIds = metaPixelIds,_members = members,super._();
  factory _Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String slug;
@override final  StoreBanner? banner;
@override final  StoreAction? action;
@override final  StoreDomain? domain;
@override final  StoreDecoration? decoration;
@override final  String name;
@override final  String? iconUrl;
@override final  String? logoUrl;
@override@Deprecated("use logoUrl") final  String? ondarkLogoUrl;
@override final  String userId;
 final  List<EmbaddedCategory> _categories;
@override@JsonKey() List<EmbaddedCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<Category>? _categoriesRelation;
@override List<Category>? get categoriesRelation {
  final value = _categoriesRelation;
  if (value == null) return null;
  if (_categoriesRelation is EqualUnmodifiableListView) return _categoriesRelation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? title;
@override final  String? description;
 final  List<EmbaddedAddress> _addresses;
@override@JsonKey() List<EmbaddedAddress> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

@override final  EmbaddedAddress? address;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

 final  List<EmbaddedContact> _contacts;
@override@JsonKey() List<EmbaddedContact> get contacts {
  if (_contacts is EqualUnmodifiableListView) return _contacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contacts);
}

@override@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) final  StoreIntegrations integrations;
 final  List<List<num?>?> _defaultShippingRates;
@override@JsonKey() List<List<num?>?> get defaultShippingRates {
  if (_defaultShippingRates is EqualUnmodifiableListView) return _defaultShippingRates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_defaultShippingRates);
}

@override final  DateTime? verifiedAt;
@override final  DateTime? blockedAt;
// subscription
@override final  StoreSubscription? subscription;
@override final  num? due;
// StoreConfigs
@override final  StoreConfigs? configs;
@override final  String? shippingPriceId;
// metaPixelIds
 final  List<String>? _metaPixelIds;
// metaPixelIds
@override List<String>? get metaPixelIds {
  final value = _metaPixelIds;
  if (value == null) return null;
  if (_metaPixelIds is EqualUnmodifiableListView) return _metaPixelIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, StoreMember> _members;
@override@JsonKey() Map<String, StoreMember> get members {
  if (_members is EqualUnmodifiableMapView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_members);
}


/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCopyWith<_Store> get copyWith => __$StoreCopyWithImpl<_Store>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Store&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.action, action) || other.action == action)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.decoration, decoration) || other.decoration == decoration)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._categoriesRelation, _categoriesRelation)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._contacts, _contacts)&&(identical(other.integrations, integrations) || other.integrations == integrations)&&const DeepCollectionEquality().equals(other._defaultShippingRates, _defaultShippingRates)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.blockedAt, blockedAt) || other.blockedAt == blockedAt)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.due, due) || other.due == due)&&(identical(other.configs, configs) || other.configs == configs)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&const DeepCollectionEquality().equals(other._metaPixelIds, _metaPixelIds)&&const DeepCollectionEquality().equals(other._members, _members));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,slug,banner,action,domain,decoration,name,iconUrl,logoUrl,ondarkLogoUrl,userId,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_categoriesRelation),title,description,const DeepCollectionEquality().hash(_addresses),address,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_contacts),integrations,const DeepCollectionEquality().hash(_defaultShippingRates),verifiedAt,blockedAt,subscription,due,configs,shippingPriceId,const DeepCollectionEquality().hash(_metaPixelIds),const DeepCollectionEquality().hash(_members)]);

@override
String toString() {
  return 'Store(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, name: $name, iconUrl: $iconUrl, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, userId: $userId, categories: $categories, categoriesRelation: $categoriesRelation, title: $title, description: $description, addresses: $addresses, address: $address, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, verifiedAt: $verifiedAt, blockedAt: $blockedAt, subscription: $subscription, due: $due, configs: $configs, shippingPriceId: $shippingPriceId, metaPixelIds: $metaPixelIds, members: $members)';
}


}

/// @nodoc
abstract mixin class _$StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) _then) = __$StoreCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String slug, StoreBanner? banner, StoreAction? action, StoreDomain? domain, StoreDecoration? decoration, String name, String? iconUrl, String? logoUrl,@Deprecated("use logoUrl") String? ondarkLogoUrl, String userId, List<EmbaddedCategory> categories, List<Category>? categoriesRelation, String? title, String? description, List<EmbaddedAddress> addresses, EmbaddedAddress? address, Map<String, dynamic> metadata, List<EmbaddedContact> contacts,@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) StoreIntegrations integrations, List<List<num?>?> defaultShippingRates, DateTime? verifiedAt, DateTime? blockedAt, StoreSubscription? subscription, num? due, StoreConfigs? configs, String? shippingPriceId, List<String>? metaPixelIds, Map<String, StoreMember> members
});


@override $StoreBannerCopyWith<$Res>? get banner;@override $StoreActionCopyWith<$Res>? get action;@override $StoreDomainCopyWith<$Res>? get domain;@override $StoreDecorationCopyWith<$Res>? get decoration;@override $EmbaddedAddressCopyWith<$Res>? get address;@override $StoreIntegrationsCopyWith<$Res> get integrations;@override $StoreSubscriptionCopyWith<$Res>? get subscription;@override $StoreConfigsCopyWith<$Res>? get configs;

}
/// @nodoc
class __$StoreCopyWithImpl<$Res>
    implements _$StoreCopyWith<$Res> {
  __$StoreCopyWithImpl(this._self, this._then);

  final _Store _self;
  final $Res Function(_Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? slug = null,Object? banner = freezed,Object? action = freezed,Object? domain = freezed,Object? decoration = freezed,Object? name = null,Object? iconUrl = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? userId = null,Object? categories = null,Object? categoriesRelation = freezed,Object? title = freezed,Object? description = freezed,Object? addresses = null,Object? address = freezed,Object? metadata = null,Object? contacts = null,Object? integrations = null,Object? defaultShippingRates = null,Object? verifiedAt = freezed,Object? blockedAt = freezed,Object? subscription = freezed,Object? due = freezed,Object? configs = freezed,Object? shippingPriceId = freezed,Object? metaPixelIds = freezed,Object? members = null,}) {
  return _then(_Store(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as StoreBanner?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as StoreAction?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as StoreDomain?,decoration: freezed == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as StoreDecoration?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkLogoUrl: freezed == ondarkLogoUrl ? _self.ondarkLogoUrl : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<EmbaddedCategory>,categoriesRelation: freezed == categoriesRelation ? _self._categoriesRelation : categoriesRelation // ignore: cast_nullable_to_non_nullable
as List<Category>?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<EmbaddedAddress>,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as EmbaddedAddress?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,contacts: null == contacts ? _self._contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<EmbaddedContact>,integrations: null == integrations ? _self.integrations : integrations // ignore: cast_nullable_to_non_nullable
as StoreIntegrations,defaultShippingRates: null == defaultShippingRates ? _self._defaultShippingRates : defaultShippingRates // ignore: cast_nullable_to_non_nullable
as List<List<num?>?>,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,blockedAt: freezed == blockedAt ? _self.blockedAt : blockedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as StoreSubscription?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as num?,configs: freezed == configs ? _self.configs : configs // ignore: cast_nullable_to_non_nullable
as StoreConfigs?,shippingPriceId: freezed == shippingPriceId ? _self.shippingPriceId : shippingPriceId // ignore: cast_nullable_to_non_nullable
as String?,metaPixelIds: freezed == metaPixelIds ? _self._metaPixelIds : metaPixelIds // ignore: cast_nullable_to_non_nullable
as List<String>?,members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as Map<String, StoreMember>,
  ));
}

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreBannerCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $StoreBannerCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreActionCopyWith<$Res>? get action {
    if (_self.action == null) {
    return null;
  }

  return $StoreActionCopyWith<$Res>(_self.action!, (value) {
    return _then(_self.copyWith(action: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDomainCopyWith<$Res>? get domain {
    if (_self.domain == null) {
    return null;
  }

  return $StoreDomainCopyWith<$Res>(_self.domain!, (value) {
    return _then(_self.copyWith(domain: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDecorationCopyWith<$Res>? get decoration {
    if (_self.decoration == null) {
    return null;
  }

  return $StoreDecorationCopyWith<$Res>(_self.decoration!, (value) {
    return _then(_self.copyWith(decoration: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $EmbaddedAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreIntegrationsCopyWith<$Res> get integrations {
  
  return $StoreIntegrationsCopyWith<$Res>(_self.integrations, (value) {
    return _then(_self.copyWith(integrations: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreSubscriptionCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
    return null;
  }

  return $StoreSubscriptionCopyWith<$Res>(_self.subscription!, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreConfigsCopyWith<$Res>? get configs {
    if (_self.configs == null) {
    return null;
  }

  return $StoreConfigsCopyWith<$Res>(_self.configs!, (value) {
    return _then(_self.copyWith(configs: value));
  });
}
}


/// @nodoc
mixin _$StoreCreate {

 String? get id; String get name; String get slug; StoreBanner? get banner; StoreAction? get action; StoreDomain? get domain; StoreDecoration? get decoration; String? get logoUrl; String? get ondarkLogoUrl; List<EmbaddedCategory> get categories; String? get title; String? get description; List<EmbaddedAddress> get addresses; EmbaddedAddress? get address; Map<String, dynamic> get metadata; List<EmbaddedContact> get contacts;@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) StoreIntegrations get integrations; List<List<num?>?> get defaultShippingRates; String? get shippingPriceId;// subscription
 StoreSubscription? get subscription; num? get due;
/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCreateCopyWith<StoreCreate> get copyWith => _$StoreCreateCopyWithImpl<StoreCreate>(this as StoreCreate, _$identity);

  /// Serializes this StoreCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.action, action) || other.action == action)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.decoration, decoration) || other.decoration == decoration)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.contacts, contacts)&&(identical(other.integrations, integrations) || other.integrations == integrations)&&const DeepCollectionEquality().equals(other.defaultShippingRates, defaultShippingRates)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.due, due) || other.due == due));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,slug,banner,action,domain,decoration,logoUrl,ondarkLogoUrl,const DeepCollectionEquality().hash(categories),title,description,const DeepCollectionEquality().hash(addresses),address,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(contacts),integrations,const DeepCollectionEquality().hash(defaultShippingRates),shippingPriceId,subscription,due]);

@override
String toString() {
  return 'StoreCreate(id: $id, name: $name, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, categories: $categories, title: $title, description: $description, addresses: $addresses, address: $address, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, shippingPriceId: $shippingPriceId, subscription: $subscription, due: $due)';
}


}

/// @nodoc
abstract mixin class $StoreCreateCopyWith<$Res>  {
  factory $StoreCreateCopyWith(StoreCreate value, $Res Function(StoreCreate) _then) = _$StoreCreateCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String slug, StoreBanner? banner, StoreAction? action, StoreDomain? domain, StoreDecoration? decoration, String? logoUrl, String? ondarkLogoUrl, List<EmbaddedCategory> categories, String? title, String? description, List<EmbaddedAddress> addresses, EmbaddedAddress? address, Map<String, dynamic> metadata, List<EmbaddedContact> contacts,@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) StoreIntegrations integrations, List<List<num?>?> defaultShippingRates, String? shippingPriceId, StoreSubscription? subscription, num? due
});


$StoreBannerCopyWith<$Res>? get banner;$StoreActionCopyWith<$Res>? get action;$StoreDomainCopyWith<$Res>? get domain;$StoreDecorationCopyWith<$Res>? get decoration;$EmbaddedAddressCopyWith<$Res>? get address;$StoreIntegrationsCopyWith<$Res> get integrations;$StoreSubscriptionCopyWith<$Res>? get subscription;

}
/// @nodoc
class _$StoreCreateCopyWithImpl<$Res>
    implements $StoreCreateCopyWith<$Res> {
  _$StoreCreateCopyWithImpl(this._self, this._then);

  final StoreCreate _self;
  final $Res Function(StoreCreate) _then;

/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? slug = null,Object? banner = freezed,Object? action = freezed,Object? domain = freezed,Object? decoration = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? categories = null,Object? title = freezed,Object? description = freezed,Object? addresses = null,Object? address = freezed,Object? metadata = null,Object? contacts = null,Object? integrations = null,Object? defaultShippingRates = null,Object? shippingPriceId = freezed,Object? subscription = freezed,Object? due = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as StoreBanner?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as StoreAction?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as StoreDomain?,decoration: freezed == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as StoreDecoration?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkLogoUrl: freezed == ondarkLogoUrl ? _self.ondarkLogoUrl : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<EmbaddedCategory>,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<EmbaddedAddress>,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as EmbaddedAddress?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,contacts: null == contacts ? _self.contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<EmbaddedContact>,integrations: null == integrations ? _self.integrations : integrations // ignore: cast_nullable_to_non_nullable
as StoreIntegrations,defaultShippingRates: null == defaultShippingRates ? _self.defaultShippingRates : defaultShippingRates // ignore: cast_nullable_to_non_nullable
as List<List<num?>?>,shippingPriceId: freezed == shippingPriceId ? _self.shippingPriceId : shippingPriceId // ignore: cast_nullable_to_non_nullable
as String?,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as StoreSubscription?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}
/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreBannerCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $StoreBannerCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreActionCopyWith<$Res>? get action {
    if (_self.action == null) {
    return null;
  }

  return $StoreActionCopyWith<$Res>(_self.action!, (value) {
    return _then(_self.copyWith(action: value));
  });
}/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDomainCopyWith<$Res>? get domain {
    if (_self.domain == null) {
    return null;
  }

  return $StoreDomainCopyWith<$Res>(_self.domain!, (value) {
    return _then(_self.copyWith(domain: value));
  });
}/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDecorationCopyWith<$Res>? get decoration {
    if (_self.decoration == null) {
    return null;
  }

  return $StoreDecorationCopyWith<$Res>(_self.decoration!, (value) {
    return _then(_self.copyWith(decoration: value));
  });
}/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $EmbaddedAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreIntegrationsCopyWith<$Res> get integrations {
  
  return $StoreIntegrationsCopyWith<$Res>(_self.integrations, (value) {
    return _then(_self.copyWith(integrations: value));
  });
}/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreSubscriptionCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
    return null;
  }

  return $StoreSubscriptionCopyWith<$Res>(_self.subscription!, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreCreate].
extension StoreCreatePatterns on StoreCreate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCreate value)  $default,){
final _that = this;
switch (_that) {
case _StoreCreate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCreate value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String? logoUrl,  String? ondarkLogoUrl,  List<EmbaddedCategory> categories,  String? title,  String? description,  List<EmbaddedAddress> addresses,  EmbaddedAddress? address,  Map<String, dynamic> metadata,  List<EmbaddedContact> contacts, @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)  StoreIntegrations integrations,  List<List<num?>?> defaultShippingRates,  String? shippingPriceId,  StoreSubscription? subscription,  num? due)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.logoUrl,_that.ondarkLogoUrl,_that.categories,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.shippingPriceId,_that.subscription,_that.due);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String? logoUrl,  String? ondarkLogoUrl,  List<EmbaddedCategory> categories,  String? title,  String? description,  List<EmbaddedAddress> addresses,  EmbaddedAddress? address,  Map<String, dynamic> metadata,  List<EmbaddedContact> contacts, @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)  StoreIntegrations integrations,  List<List<num?>?> defaultShippingRates,  String? shippingPriceId,  StoreSubscription? subscription,  num? due)  $default,) {final _that = this;
switch (_that) {
case _StoreCreate():
return $default(_that.id,_that.name,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.logoUrl,_that.ondarkLogoUrl,_that.categories,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.shippingPriceId,_that.subscription,_that.due);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String? logoUrl,  String? ondarkLogoUrl,  List<EmbaddedCategory> categories,  String? title,  String? description,  List<EmbaddedAddress> addresses,  EmbaddedAddress? address,  Map<String, dynamic> metadata,  List<EmbaddedContact> contacts, @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)  StoreIntegrations integrations,  List<List<num?>?> defaultShippingRates,  String? shippingPriceId,  StoreSubscription? subscription,  num? due)?  $default,) {final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.logoUrl,_that.ondarkLogoUrl,_that.categories,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.shippingPriceId,_that.subscription,_that.due);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCreate implements StoreCreate {
  const _StoreCreate({this.id, required this.name, required this.slug, this.banner, this.action, this.domain, this.decoration, this.logoUrl, this.ondarkLogoUrl, final  List<EmbaddedCategory> categories = const [], this.title, this.description, final  List<EmbaddedAddress> addresses = const [], this.address, final  Map<String, dynamic> metadata = const {}, final  List<EmbaddedContact> contacts = const [], @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) this.integrations = const StoreIntegrations(), final  List<List<num?>?> defaultShippingRates = const [], this.shippingPriceId, this.subscription, this.due}): _categories = categories,_addresses = addresses,_metadata = metadata,_contacts = contacts,_defaultShippingRates = defaultShippingRates;
  factory _StoreCreate.fromJson(Map<String, dynamic> json) => _$StoreCreateFromJson(json);

@override final  String? id;
@override final  String name;
@override final  String slug;
@override final  StoreBanner? banner;
@override final  StoreAction? action;
@override final  StoreDomain? domain;
@override final  StoreDecoration? decoration;
@override final  String? logoUrl;
@override final  String? ondarkLogoUrl;
 final  List<EmbaddedCategory> _categories;
@override@JsonKey() List<EmbaddedCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  String? title;
@override final  String? description;
 final  List<EmbaddedAddress> _addresses;
@override@JsonKey() List<EmbaddedAddress> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

@override final  EmbaddedAddress? address;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

 final  List<EmbaddedContact> _contacts;
@override@JsonKey() List<EmbaddedContact> get contacts {
  if (_contacts is EqualUnmodifiableListView) return _contacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contacts);
}

@override@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) final  StoreIntegrations integrations;
 final  List<List<num?>?> _defaultShippingRates;
@override@JsonKey() List<List<num?>?> get defaultShippingRates {
  if (_defaultShippingRates is EqualUnmodifiableListView) return _defaultShippingRates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_defaultShippingRates);
}

@override final  String? shippingPriceId;
// subscription
@override final  StoreSubscription? subscription;
@override final  num? due;

/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCreateCopyWith<_StoreCreate> get copyWith => __$StoreCreateCopyWithImpl<_StoreCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.action, action) || other.action == action)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.decoration, decoration) || other.decoration == decoration)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._contacts, _contacts)&&(identical(other.integrations, integrations) || other.integrations == integrations)&&const DeepCollectionEquality().equals(other._defaultShippingRates, _defaultShippingRates)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.due, due) || other.due == due));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,slug,banner,action,domain,decoration,logoUrl,ondarkLogoUrl,const DeepCollectionEquality().hash(_categories),title,description,const DeepCollectionEquality().hash(_addresses),address,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_contacts),integrations,const DeepCollectionEquality().hash(_defaultShippingRates),shippingPriceId,subscription,due]);

@override
String toString() {
  return 'StoreCreate(id: $id, name: $name, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, categories: $categories, title: $title, description: $description, addresses: $addresses, address: $address, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, shippingPriceId: $shippingPriceId, subscription: $subscription, due: $due)';
}


}

/// @nodoc
abstract mixin class _$StoreCreateCopyWith<$Res> implements $StoreCreateCopyWith<$Res> {
  factory _$StoreCreateCopyWith(_StoreCreate value, $Res Function(_StoreCreate) _then) = __$StoreCreateCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String slug, StoreBanner? banner, StoreAction? action, StoreDomain? domain, StoreDecoration? decoration, String? logoUrl, String? ondarkLogoUrl, List<EmbaddedCategory> categories, String? title, String? description, List<EmbaddedAddress> addresses, EmbaddedAddress? address, Map<String, dynamic> metadata, List<EmbaddedContact> contacts,@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) StoreIntegrations integrations, List<List<num?>?> defaultShippingRates, String? shippingPriceId, StoreSubscription? subscription, num? due
});


@override $StoreBannerCopyWith<$Res>? get banner;@override $StoreActionCopyWith<$Res>? get action;@override $StoreDomainCopyWith<$Res>? get domain;@override $StoreDecorationCopyWith<$Res>? get decoration;@override $EmbaddedAddressCopyWith<$Res>? get address;@override $StoreIntegrationsCopyWith<$Res> get integrations;@override $StoreSubscriptionCopyWith<$Res>? get subscription;

}
/// @nodoc
class __$StoreCreateCopyWithImpl<$Res>
    implements _$StoreCreateCopyWith<$Res> {
  __$StoreCreateCopyWithImpl(this._self, this._then);

  final _StoreCreate _self;
  final $Res Function(_StoreCreate) _then;

/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? slug = null,Object? banner = freezed,Object? action = freezed,Object? domain = freezed,Object? decoration = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? categories = null,Object? title = freezed,Object? description = freezed,Object? addresses = null,Object? address = freezed,Object? metadata = null,Object? contacts = null,Object? integrations = null,Object? defaultShippingRates = null,Object? shippingPriceId = freezed,Object? subscription = freezed,Object? due = freezed,}) {
  return _then(_StoreCreate(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as StoreBanner?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as StoreAction?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as StoreDomain?,decoration: freezed == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as StoreDecoration?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkLogoUrl: freezed == ondarkLogoUrl ? _self.ondarkLogoUrl : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<EmbaddedCategory>,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<EmbaddedAddress>,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as EmbaddedAddress?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,contacts: null == contacts ? _self._contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<EmbaddedContact>,integrations: null == integrations ? _self.integrations : integrations // ignore: cast_nullable_to_non_nullable
as StoreIntegrations,defaultShippingRates: null == defaultShippingRates ? _self._defaultShippingRates : defaultShippingRates // ignore: cast_nullable_to_non_nullable
as List<List<num?>?>,shippingPriceId: freezed == shippingPriceId ? _self.shippingPriceId : shippingPriceId // ignore: cast_nullable_to_non_nullable
as String?,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as StoreSubscription?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreBannerCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $StoreBannerCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreActionCopyWith<$Res>? get action {
    if (_self.action == null) {
    return null;
  }

  return $StoreActionCopyWith<$Res>(_self.action!, (value) {
    return _then(_self.copyWith(action: value));
  });
}/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDomainCopyWith<$Res>? get domain {
    if (_self.domain == null) {
    return null;
  }

  return $StoreDomainCopyWith<$Res>(_self.domain!, (value) {
    return _then(_self.copyWith(domain: value));
  });
}/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDecorationCopyWith<$Res>? get decoration {
    if (_self.decoration == null) {
    return null;
  }

  return $StoreDecorationCopyWith<$Res>(_self.decoration!, (value) {
    return _then(_self.copyWith(decoration: value));
  });
}/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $EmbaddedAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreIntegrationsCopyWith<$Res> get integrations {
  
  return $StoreIntegrationsCopyWith<$Res>(_self.integrations, (value) {
    return _then(_self.copyWith(integrations: value));
  });
}/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreSubscriptionCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
    return null;
  }

  return $StoreSubscriptionCopyWith<$Res>(_self.subscription!, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}
}


/// @nodoc
mixin _$StoreUpdate {

 String? get name; String? get slug; StoreBanner? get banner; StoreAction? get action; StoreDomain? get domain; StoreDecoration? get decoration; String? get logoUrl; String? get iconUrl; String? get ondarkLogoUrl; List<EmbaddedCategory>? get categories; String? get title; String? get description; List<EmbaddedAddress>? get addresses; EmbaddedAddress? get address; Map<String, dynamic>? get metadata; List<EmbaddedContact>? get contacts;@JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson) StoreIntegrations? get integrations; List<List<num?>?>? get defaultShippingRates;// ignore: invalid_annotation_target
@JsonKey(includeFromJson: false) List<String> get setToNull;// subscription
 StoreSubscription? get subscription; num? get due;// StoreConfigs
 StoreConfigs? get configs; String? get shippingPriceId;
/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreUpdateCopyWith<StoreUpdate> get copyWith => _$StoreUpdateCopyWithImpl<StoreUpdate>(this as StoreUpdate, _$identity);

  /// Serializes this StoreUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.action, action) || other.action == action)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.decoration, decoration) || other.decoration == decoration)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.contacts, contacts)&&(identical(other.integrations, integrations) || other.integrations == integrations)&&const DeepCollectionEquality().equals(other.defaultShippingRates, defaultShippingRates)&&const DeepCollectionEquality().equals(other.setToNull, setToNull)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.due, due) || other.due == due)&&(identical(other.configs, configs) || other.configs == configs)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,slug,banner,action,domain,decoration,logoUrl,iconUrl,ondarkLogoUrl,const DeepCollectionEquality().hash(categories),title,description,const DeepCollectionEquality().hash(addresses),address,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(contacts),integrations,const DeepCollectionEquality().hash(defaultShippingRates),const DeepCollectionEquality().hash(setToNull),subscription,due,configs,shippingPriceId]);

@override
String toString() {
  return 'StoreUpdate(name: $name, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, logoUrl: $logoUrl, iconUrl: $iconUrl, ondarkLogoUrl: $ondarkLogoUrl, categories: $categories, title: $title, description: $description, addresses: $addresses, address: $address, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, setToNull: $setToNull, subscription: $subscription, due: $due, configs: $configs, shippingPriceId: $shippingPriceId)';
}


}

/// @nodoc
abstract mixin class $StoreUpdateCopyWith<$Res>  {
  factory $StoreUpdateCopyWith(StoreUpdate value, $Res Function(StoreUpdate) _then) = _$StoreUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? slug, StoreBanner? banner, StoreAction? action, StoreDomain? domain, StoreDecoration? decoration, String? logoUrl, String? iconUrl, String? ondarkLogoUrl, List<EmbaddedCategory>? categories, String? title, String? description, List<EmbaddedAddress>? addresses, EmbaddedAddress? address, Map<String, dynamic>? metadata, List<EmbaddedContact>? contacts,@JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson) StoreIntegrations? integrations, List<List<num?>?>? defaultShippingRates,@JsonKey(includeFromJson: false) List<String> setToNull, StoreSubscription? subscription, num? due, StoreConfigs? configs, String? shippingPriceId
});


$StoreBannerCopyWith<$Res>? get banner;$StoreActionCopyWith<$Res>? get action;$StoreDomainCopyWith<$Res>? get domain;$StoreDecorationCopyWith<$Res>? get decoration;$EmbaddedAddressCopyWith<$Res>? get address;$StoreIntegrationsCopyWith<$Res>? get integrations;$StoreSubscriptionCopyWith<$Res>? get subscription;$StoreConfigsCopyWith<$Res>? get configs;

}
/// @nodoc
class _$StoreUpdateCopyWithImpl<$Res>
    implements $StoreUpdateCopyWith<$Res> {
  _$StoreUpdateCopyWithImpl(this._self, this._then);

  final StoreUpdate _self;
  final $Res Function(StoreUpdate) _then;

/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? slug = freezed,Object? banner = freezed,Object? action = freezed,Object? domain = freezed,Object? decoration = freezed,Object? logoUrl = freezed,Object? iconUrl = freezed,Object? ondarkLogoUrl = freezed,Object? categories = freezed,Object? title = freezed,Object? description = freezed,Object? addresses = freezed,Object? address = freezed,Object? metadata = freezed,Object? contacts = freezed,Object? integrations = freezed,Object? defaultShippingRates = freezed,Object? setToNull = null,Object? subscription = freezed,Object? due = freezed,Object? configs = freezed,Object? shippingPriceId = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as StoreBanner?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as StoreAction?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as StoreDomain?,decoration: freezed == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as StoreDecoration?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkLogoUrl: freezed == ondarkLogoUrl ? _self.ondarkLogoUrl : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<EmbaddedCategory>?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,addresses: freezed == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<EmbaddedAddress>?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as EmbaddedAddress?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,contacts: freezed == contacts ? _self.contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<EmbaddedContact>?,integrations: freezed == integrations ? _self.integrations : integrations // ignore: cast_nullable_to_non_nullable
as StoreIntegrations?,defaultShippingRates: freezed == defaultShippingRates ? _self.defaultShippingRates : defaultShippingRates // ignore: cast_nullable_to_non_nullable
as List<List<num?>?>?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as StoreSubscription?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as num?,configs: freezed == configs ? _self.configs : configs // ignore: cast_nullable_to_non_nullable
as StoreConfigs?,shippingPriceId: freezed == shippingPriceId ? _self.shippingPriceId : shippingPriceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreBannerCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $StoreBannerCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreActionCopyWith<$Res>? get action {
    if (_self.action == null) {
    return null;
  }

  return $StoreActionCopyWith<$Res>(_self.action!, (value) {
    return _then(_self.copyWith(action: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDomainCopyWith<$Res>? get domain {
    if (_self.domain == null) {
    return null;
  }

  return $StoreDomainCopyWith<$Res>(_self.domain!, (value) {
    return _then(_self.copyWith(domain: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDecorationCopyWith<$Res>? get decoration {
    if (_self.decoration == null) {
    return null;
  }

  return $StoreDecorationCopyWith<$Res>(_self.decoration!, (value) {
    return _then(_self.copyWith(decoration: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $EmbaddedAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreIntegrationsCopyWith<$Res>? get integrations {
    if (_self.integrations == null) {
    return null;
  }

  return $StoreIntegrationsCopyWith<$Res>(_self.integrations!, (value) {
    return _then(_self.copyWith(integrations: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreSubscriptionCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
    return null;
  }

  return $StoreSubscriptionCopyWith<$Res>(_self.subscription!, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreConfigsCopyWith<$Res>? get configs {
    if (_self.configs == null) {
    return null;
  }

  return $StoreConfigsCopyWith<$Res>(_self.configs!, (value) {
    return _then(_self.copyWith(configs: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreUpdate].
extension StoreUpdatePatterns on StoreUpdate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreUpdate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreUpdate value)  $default,){
final _that = this;
switch (_that) {
case _StoreUpdate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _StoreUpdate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String? logoUrl,  String? iconUrl,  String? ondarkLogoUrl,  List<EmbaddedCategory>? categories,  String? title,  String? description,  List<EmbaddedAddress>? addresses,  EmbaddedAddress? address,  Map<String, dynamic>? metadata,  List<EmbaddedContact>? contacts, @JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson)  StoreIntegrations? integrations,  List<List<num?>?>? defaultShippingRates, @JsonKey(includeFromJson: false)  List<String> setToNull,  StoreSubscription? subscription,  num? due,  StoreConfigs? configs,  String? shippingPriceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreUpdate() when $default != null:
return $default(_that.name,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.logoUrl,_that.iconUrl,_that.ondarkLogoUrl,_that.categories,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.setToNull,_that.subscription,_that.due,_that.configs,_that.shippingPriceId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String? logoUrl,  String? iconUrl,  String? ondarkLogoUrl,  List<EmbaddedCategory>? categories,  String? title,  String? description,  List<EmbaddedAddress>? addresses,  EmbaddedAddress? address,  Map<String, dynamic>? metadata,  List<EmbaddedContact>? contacts, @JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson)  StoreIntegrations? integrations,  List<List<num?>?>? defaultShippingRates, @JsonKey(includeFromJson: false)  List<String> setToNull,  StoreSubscription? subscription,  num? due,  StoreConfigs? configs,  String? shippingPriceId)  $default,) {final _that = this;
switch (_that) {
case _StoreUpdate():
return $default(_that.name,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.logoUrl,_that.iconUrl,_that.ondarkLogoUrl,_that.categories,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.setToNull,_that.subscription,_that.due,_that.configs,_that.shippingPriceId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String? logoUrl,  String? iconUrl,  String? ondarkLogoUrl,  List<EmbaddedCategory>? categories,  String? title,  String? description,  List<EmbaddedAddress>? addresses,  EmbaddedAddress? address,  Map<String, dynamic>? metadata,  List<EmbaddedContact>? contacts, @JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson)  StoreIntegrations? integrations,  List<List<num?>?>? defaultShippingRates, @JsonKey(includeFromJson: false)  List<String> setToNull,  StoreSubscription? subscription,  num? due,  StoreConfigs? configs,  String? shippingPriceId)?  $default,) {final _that = this;
switch (_that) {
case _StoreUpdate() when $default != null:
return $default(_that.name,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.logoUrl,_that.iconUrl,_that.ondarkLogoUrl,_that.categories,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.setToNull,_that.subscription,_that.due,_that.configs,_that.shippingPriceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreUpdate implements StoreUpdate {
  const _StoreUpdate({this.name, this.slug, this.banner, this.action, this.domain, this.decoration, this.logoUrl, this.iconUrl, this.ondarkLogoUrl, final  List<EmbaddedCategory>? categories, this.title, this.description, final  List<EmbaddedAddress>? addresses, this.address, final  Map<String, dynamic>? metadata, final  List<EmbaddedContact>? contacts, @JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson) this.integrations, final  List<List<num?>?>? defaultShippingRates, @JsonKey(includeFromJson: false) final  List<String> setToNull = const [], this.subscription, this.due, this.configs, this.shippingPriceId}): _categories = categories,_addresses = addresses,_metadata = metadata,_contacts = contacts,_defaultShippingRates = defaultShippingRates,_setToNull = setToNull;
  factory _StoreUpdate.fromJson(Map<String, dynamic> json) => _$StoreUpdateFromJson(json);

@override final  String? name;
@override final  String? slug;
@override final  StoreBanner? banner;
@override final  StoreAction? action;
@override final  StoreDomain? domain;
@override final  StoreDecoration? decoration;
@override final  String? logoUrl;
@override final  String? iconUrl;
@override final  String? ondarkLogoUrl;
 final  List<EmbaddedCategory>? _categories;
@override List<EmbaddedCategory>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? title;
@override final  String? description;
 final  List<EmbaddedAddress>? _addresses;
@override List<EmbaddedAddress>? get addresses {
  final value = _addresses;
  if (value == null) return null;
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  EmbaddedAddress? address;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<EmbaddedContact>? _contacts;
@override List<EmbaddedContact>? get contacts {
  final value = _contacts;
  if (value == null) return null;
  if (_contacts is EqualUnmodifiableListView) return _contacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson) final  StoreIntegrations? integrations;
 final  List<List<num?>?>? _defaultShippingRates;
@override List<List<num?>?>? get defaultShippingRates {
  final value = _defaultShippingRates;
  if (value == null) return null;
  if (_defaultShippingRates is EqualUnmodifiableListView) return _defaultShippingRates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// ignore: invalid_annotation_target
 final  List<String> _setToNull;
// ignore: invalid_annotation_target
@override@JsonKey(includeFromJson: false) List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}

// subscription
@override final  StoreSubscription? subscription;
@override final  num? due;
// StoreConfigs
@override final  StoreConfigs? configs;
@override final  String? shippingPriceId;

/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreUpdateCopyWith<_StoreUpdate> get copyWith => __$StoreUpdateCopyWithImpl<_StoreUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.action, action) || other.action == action)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.decoration, decoration) || other.decoration == decoration)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._contacts, _contacts)&&(identical(other.integrations, integrations) || other.integrations == integrations)&&const DeepCollectionEquality().equals(other._defaultShippingRates, _defaultShippingRates)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.due, due) || other.due == due)&&(identical(other.configs, configs) || other.configs == configs)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,slug,banner,action,domain,decoration,logoUrl,iconUrl,ondarkLogoUrl,const DeepCollectionEquality().hash(_categories),title,description,const DeepCollectionEquality().hash(_addresses),address,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_contacts),integrations,const DeepCollectionEquality().hash(_defaultShippingRates),const DeepCollectionEquality().hash(_setToNull),subscription,due,configs,shippingPriceId]);

@override
String toString() {
  return 'StoreUpdate(name: $name, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, logoUrl: $logoUrl, iconUrl: $iconUrl, ondarkLogoUrl: $ondarkLogoUrl, categories: $categories, title: $title, description: $description, addresses: $addresses, address: $address, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, setToNull: $setToNull, subscription: $subscription, due: $due, configs: $configs, shippingPriceId: $shippingPriceId)';
}


}

/// @nodoc
abstract mixin class _$StoreUpdateCopyWith<$Res> implements $StoreUpdateCopyWith<$Res> {
  factory _$StoreUpdateCopyWith(_StoreUpdate value, $Res Function(_StoreUpdate) _then) = __$StoreUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? slug, StoreBanner? banner, StoreAction? action, StoreDomain? domain, StoreDecoration? decoration, String? logoUrl, String? iconUrl, String? ondarkLogoUrl, List<EmbaddedCategory>? categories, String? title, String? description, List<EmbaddedAddress>? addresses, EmbaddedAddress? address, Map<String, dynamic>? metadata, List<EmbaddedContact>? contacts,@JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson) StoreIntegrations? integrations, List<List<num?>?>? defaultShippingRates,@JsonKey(includeFromJson: false) List<String> setToNull, StoreSubscription? subscription, num? due, StoreConfigs? configs, String? shippingPriceId
});


@override $StoreBannerCopyWith<$Res>? get banner;@override $StoreActionCopyWith<$Res>? get action;@override $StoreDomainCopyWith<$Res>? get domain;@override $StoreDecorationCopyWith<$Res>? get decoration;@override $EmbaddedAddressCopyWith<$Res>? get address;@override $StoreIntegrationsCopyWith<$Res>? get integrations;@override $StoreSubscriptionCopyWith<$Res>? get subscription;@override $StoreConfigsCopyWith<$Res>? get configs;

}
/// @nodoc
class __$StoreUpdateCopyWithImpl<$Res>
    implements _$StoreUpdateCopyWith<$Res> {
  __$StoreUpdateCopyWithImpl(this._self, this._then);

  final _StoreUpdate _self;
  final $Res Function(_StoreUpdate) _then;

/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? slug = freezed,Object? banner = freezed,Object? action = freezed,Object? domain = freezed,Object? decoration = freezed,Object? logoUrl = freezed,Object? iconUrl = freezed,Object? ondarkLogoUrl = freezed,Object? categories = freezed,Object? title = freezed,Object? description = freezed,Object? addresses = freezed,Object? address = freezed,Object? metadata = freezed,Object? contacts = freezed,Object? integrations = freezed,Object? defaultShippingRates = freezed,Object? setToNull = null,Object? subscription = freezed,Object? due = freezed,Object? configs = freezed,Object? shippingPriceId = freezed,}) {
  return _then(_StoreUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as StoreBanner?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as StoreAction?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as StoreDomain?,decoration: freezed == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as StoreDecoration?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkLogoUrl: freezed == ondarkLogoUrl ? _self.ondarkLogoUrl : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<EmbaddedCategory>?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,addresses: freezed == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<EmbaddedAddress>?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as EmbaddedAddress?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,contacts: freezed == contacts ? _self._contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<EmbaddedContact>?,integrations: freezed == integrations ? _self.integrations : integrations // ignore: cast_nullable_to_non_nullable
as StoreIntegrations?,defaultShippingRates: freezed == defaultShippingRates ? _self._defaultShippingRates : defaultShippingRates // ignore: cast_nullable_to_non_nullable
as List<List<num?>?>?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as StoreSubscription?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as num?,configs: freezed == configs ? _self.configs : configs // ignore: cast_nullable_to_non_nullable
as StoreConfigs?,shippingPriceId: freezed == shippingPriceId ? _self.shippingPriceId : shippingPriceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreBannerCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $StoreBannerCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreActionCopyWith<$Res>? get action {
    if (_self.action == null) {
    return null;
  }

  return $StoreActionCopyWith<$Res>(_self.action!, (value) {
    return _then(_self.copyWith(action: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDomainCopyWith<$Res>? get domain {
    if (_self.domain == null) {
    return null;
  }

  return $StoreDomainCopyWith<$Res>(_self.domain!, (value) {
    return _then(_self.copyWith(domain: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreDecorationCopyWith<$Res>? get decoration {
    if (_self.decoration == null) {
    return null;
  }

  return $StoreDecorationCopyWith<$Res>(_self.decoration!, (value) {
    return _then(_self.copyWith(decoration: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $EmbaddedAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreIntegrationsCopyWith<$Res>? get integrations {
    if (_self.integrations == null) {
    return null;
  }

  return $StoreIntegrationsCopyWith<$Res>(_self.integrations!, (value) {
    return _then(_self.copyWith(integrations: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreSubscriptionCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
    return null;
  }

  return $StoreSubscriptionCopyWith<$Res>(_self.subscription!, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreConfigsCopyWith<$Res>? get configs {
    if (_self.configs == null) {
    return null;
  }

  return $StoreConfigsCopyWith<$Res>(_self.configs!, (value) {
    return _then(_self.copyWith(configs: value));
  });
}
}


/// @nodoc
mixin _$StoreSubscription {

 StoreSubscriptionType get type; StoreSubscriptionStatus get status; num get quota; num get consumed; DateTime get startedAt; DateTime? get expiresAt; Map<String, dynamic> get metadata;
/// Create a copy of StoreSubscription
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreSubscriptionCopyWith<StoreSubscription> get copyWith => _$StoreSubscriptionCopyWithImpl<StoreSubscription>(this as StoreSubscription, _$identity);

  /// Serializes this StoreSubscription to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreSubscription&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.quota, quota) || other.quota == quota)&&(identical(other.consumed, consumed) || other.consumed == consumed)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,status,quota,consumed,startedAt,expiresAt,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'StoreSubscription(type: $type, status: $status, quota: $quota, consumed: $consumed, startedAt: $startedAt, expiresAt: $expiresAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $StoreSubscriptionCopyWith<$Res>  {
  factory $StoreSubscriptionCopyWith(StoreSubscription value, $Res Function(StoreSubscription) _then) = _$StoreSubscriptionCopyWithImpl;
@useResult
$Res call({
 StoreSubscriptionType type, StoreSubscriptionStatus status, num quota, num consumed, DateTime startedAt, DateTime? expiresAt, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$StoreSubscriptionCopyWithImpl<$Res>
    implements $StoreSubscriptionCopyWith<$Res> {
  _$StoreSubscriptionCopyWithImpl(this._self, this._then);

  final StoreSubscription _self;
  final $Res Function(StoreSubscription) _then;

/// Create a copy of StoreSubscription
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? status = null,Object? quota = null,Object? consumed = null,Object? startedAt = null,Object? expiresAt = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StoreSubscriptionType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StoreSubscriptionStatus,quota: null == quota ? _self.quota : quota // ignore: cast_nullable_to_non_nullable
as num,consumed: null == consumed ? _self.consumed : consumed // ignore: cast_nullable_to_non_nullable
as num,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreSubscription].
extension StoreSubscriptionPatterns on StoreSubscription {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreSubscription value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreSubscription() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreSubscription value)  $default,){
final _that = this;
switch (_that) {
case _StoreSubscription():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreSubscription value)?  $default,){
final _that = this;
switch (_that) {
case _StoreSubscription() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StoreSubscriptionType type,  StoreSubscriptionStatus status,  num quota,  num consumed,  DateTime startedAt,  DateTime? expiresAt,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreSubscription() when $default != null:
return $default(_that.type,_that.status,_that.quota,_that.consumed,_that.startedAt,_that.expiresAt,_that.metadata);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StoreSubscriptionType type,  StoreSubscriptionStatus status,  num quota,  num consumed,  DateTime startedAt,  DateTime? expiresAt,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _StoreSubscription():
return $default(_that.type,_that.status,_that.quota,_that.consumed,_that.startedAt,_that.expiresAt,_that.metadata);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StoreSubscriptionType type,  StoreSubscriptionStatus status,  num quota,  num consumed,  DateTime startedAt,  DateTime? expiresAt,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _StoreSubscription() when $default != null:
return $default(_that.type,_that.status,_that.quota,_that.consumed,_that.startedAt,_that.expiresAt,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreSubscription implements StoreSubscription {
  const _StoreSubscription({required this.type, required this.status, this.quota = 0, this.consumed = 0, required this.startedAt, this.expiresAt, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _StoreSubscription.fromJson(Map<String, dynamic> json) => _$StoreSubscriptionFromJson(json);

@override final  StoreSubscriptionType type;
@override final  StoreSubscriptionStatus status;
@override@JsonKey() final  num quota;
@override@JsonKey() final  num consumed;
@override final  DateTime startedAt;
@override final  DateTime? expiresAt;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of StoreSubscription
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreSubscriptionCopyWith<_StoreSubscription> get copyWith => __$StoreSubscriptionCopyWithImpl<_StoreSubscription>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreSubscriptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreSubscription&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.quota, quota) || other.quota == quota)&&(identical(other.consumed, consumed) || other.consumed == consumed)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,status,quota,consumed,startedAt,expiresAt,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'StoreSubscription(type: $type, status: $status, quota: $quota, consumed: $consumed, startedAt: $startedAt, expiresAt: $expiresAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$StoreSubscriptionCopyWith<$Res> implements $StoreSubscriptionCopyWith<$Res> {
  factory _$StoreSubscriptionCopyWith(_StoreSubscription value, $Res Function(_StoreSubscription) _then) = __$StoreSubscriptionCopyWithImpl;
@override @useResult
$Res call({
 StoreSubscriptionType type, StoreSubscriptionStatus status, num quota, num consumed, DateTime startedAt, DateTime? expiresAt, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$StoreSubscriptionCopyWithImpl<$Res>
    implements _$StoreSubscriptionCopyWith<$Res> {
  __$StoreSubscriptionCopyWithImpl(this._self, this._then);

  final _StoreSubscription _self;
  final $Res Function(_StoreSubscription) _then;

/// Create a copy of StoreSubscription
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? status = null,Object? quota = null,Object? consumed = null,Object? startedAt = null,Object? expiresAt = freezed,Object? metadata = null,}) {
  return _then(_StoreSubscription(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StoreSubscriptionType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StoreSubscriptionStatus,quota: null == quota ? _self.quota : quota // ignore: cast_nullable_to_non_nullable
as num,consumed: null == consumed ? _self.consumed : consumed // ignore: cast_nullable_to_non_nullable
as num,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$StoreConfigs {

 List<StoreCurrencyConfig> get currencies; String? get selectedCurrency; List<StoreLanguageConfig> get languages; String? get defaultLanguage; List<StoreCountryConfig> get countries; String? get selectedCountry; List<CustomStatusMapping> get customStatusMappings; bool get customStatusEnabled;
/// Create a copy of StoreConfigs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreConfigsCopyWith<StoreConfigs> get copyWith => _$StoreConfigsCopyWithImpl<StoreConfigs>(this as StoreConfigs, _$identity);

  /// Serializes this StoreConfigs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreConfigs&&const DeepCollectionEquality().equals(other.currencies, currencies)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.defaultLanguage, defaultLanguage) || other.defaultLanguage == defaultLanguage)&&const DeepCollectionEquality().equals(other.countries, countries)&&(identical(other.selectedCountry, selectedCountry) || other.selectedCountry == selectedCountry)&&const DeepCollectionEquality().equals(other.customStatusMappings, customStatusMappings)&&(identical(other.customStatusEnabled, customStatusEnabled) || other.customStatusEnabled == customStatusEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currencies),selectedCurrency,const DeepCollectionEquality().hash(languages),defaultLanguage,const DeepCollectionEquality().hash(countries),selectedCountry,const DeepCollectionEquality().hash(customStatusMappings),customStatusEnabled);

@override
String toString() {
  return 'StoreConfigs(currencies: $currencies, selectedCurrency: $selectedCurrency, languages: $languages, defaultLanguage: $defaultLanguage, countries: $countries, selectedCountry: $selectedCountry, customStatusMappings: $customStatusMappings, customStatusEnabled: $customStatusEnabled)';
}


}

/// @nodoc
abstract mixin class $StoreConfigsCopyWith<$Res>  {
  factory $StoreConfigsCopyWith(StoreConfigs value, $Res Function(StoreConfigs) _then) = _$StoreConfigsCopyWithImpl;
@useResult
$Res call({
 List<StoreCurrencyConfig> currencies, String? selectedCurrency, List<StoreLanguageConfig> languages, String? defaultLanguage, List<StoreCountryConfig> countries, String? selectedCountry, List<CustomStatusMapping> customStatusMappings, bool customStatusEnabled
});




}
/// @nodoc
class _$StoreConfigsCopyWithImpl<$Res>
    implements $StoreConfigsCopyWith<$Res> {
  _$StoreConfigsCopyWithImpl(this._self, this._then);

  final StoreConfigs _self;
  final $Res Function(StoreConfigs) _then;

/// Create a copy of StoreConfigs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currencies = null,Object? selectedCurrency = freezed,Object? languages = null,Object? defaultLanguage = freezed,Object? countries = null,Object? selectedCountry = freezed,Object? customStatusMappings = null,Object? customStatusEnabled = null,}) {
  return _then(_self.copyWith(
currencies: null == currencies ? _self.currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<StoreCurrencyConfig>,selectedCurrency: freezed == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as String?,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<StoreLanguageConfig>,defaultLanguage: freezed == defaultLanguage ? _self.defaultLanguage : defaultLanguage // ignore: cast_nullable_to_non_nullable
as String?,countries: null == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as List<StoreCountryConfig>,selectedCountry: freezed == selectedCountry ? _self.selectedCountry : selectedCountry // ignore: cast_nullable_to_non_nullable
as String?,customStatusMappings: null == customStatusMappings ? _self.customStatusMappings : customStatusMappings // ignore: cast_nullable_to_non_nullable
as List<CustomStatusMapping>,customStatusEnabled: null == customStatusEnabled ? _self.customStatusEnabled : customStatusEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreConfigs].
extension StoreConfigsPatterns on StoreConfigs {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreConfigs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreConfigs() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreConfigs value)  $default,){
final _that = this;
switch (_that) {
case _StoreConfigs():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreConfigs value)?  $default,){
final _that = this;
switch (_that) {
case _StoreConfigs() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StoreCurrencyConfig> currencies,  String? selectedCurrency,  List<StoreLanguageConfig> languages,  String? defaultLanguage,  List<StoreCountryConfig> countries,  String? selectedCountry,  List<CustomStatusMapping> customStatusMappings,  bool customStatusEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreConfigs() when $default != null:
return $default(_that.currencies,_that.selectedCurrency,_that.languages,_that.defaultLanguage,_that.countries,_that.selectedCountry,_that.customStatusMappings,_that.customStatusEnabled);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StoreCurrencyConfig> currencies,  String? selectedCurrency,  List<StoreLanguageConfig> languages,  String? defaultLanguage,  List<StoreCountryConfig> countries,  String? selectedCountry,  List<CustomStatusMapping> customStatusMappings,  bool customStatusEnabled)  $default,) {final _that = this;
switch (_that) {
case _StoreConfigs():
return $default(_that.currencies,_that.selectedCurrency,_that.languages,_that.defaultLanguage,_that.countries,_that.selectedCountry,_that.customStatusMappings,_that.customStatusEnabled);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StoreCurrencyConfig> currencies,  String? selectedCurrency,  List<StoreLanguageConfig> languages,  String? defaultLanguage,  List<StoreCountryConfig> countries,  String? selectedCountry,  List<CustomStatusMapping> customStatusMappings,  bool customStatusEnabled)?  $default,) {final _that = this;
switch (_that) {
case _StoreConfigs() when $default != null:
return $default(_that.currencies,_that.selectedCurrency,_that.languages,_that.defaultLanguage,_that.countries,_that.selectedCountry,_that.customStatusMappings,_that.customStatusEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreConfigs implements StoreConfigs {
  const _StoreConfigs({required final  List<StoreCurrencyConfig> currencies, this.selectedCurrency, final  List<StoreLanguageConfig> languages = const [], this.defaultLanguage, final  List<StoreCountryConfig> countries = const [], this.selectedCountry, final  List<CustomStatusMapping> customStatusMappings = const [], this.customStatusEnabled = false}): _currencies = currencies,_languages = languages,_countries = countries,_customStatusMappings = customStatusMappings;
  factory _StoreConfigs.fromJson(Map<String, dynamic> json) => _$StoreConfigsFromJson(json);

 final  List<StoreCurrencyConfig> _currencies;
@override List<StoreCurrencyConfig> get currencies {
  if (_currencies is EqualUnmodifiableListView) return _currencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currencies);
}

@override final  String? selectedCurrency;
 final  List<StoreLanguageConfig> _languages;
@override@JsonKey() List<StoreLanguageConfig> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

@override final  String? defaultLanguage;
 final  List<StoreCountryConfig> _countries;
@override@JsonKey() List<StoreCountryConfig> get countries {
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countries);
}

@override final  String? selectedCountry;
 final  List<CustomStatusMapping> _customStatusMappings;
@override@JsonKey() List<CustomStatusMapping> get customStatusMappings {
  if (_customStatusMappings is EqualUnmodifiableListView) return _customStatusMappings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customStatusMappings);
}

@override@JsonKey() final  bool customStatusEnabled;

/// Create a copy of StoreConfigs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreConfigsCopyWith<_StoreConfigs> get copyWith => __$StoreConfigsCopyWithImpl<_StoreConfigs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreConfigsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreConfigs&&const DeepCollectionEquality().equals(other._currencies, _currencies)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.defaultLanguage, defaultLanguage) || other.defaultLanguage == defaultLanguage)&&const DeepCollectionEquality().equals(other._countries, _countries)&&(identical(other.selectedCountry, selectedCountry) || other.selectedCountry == selectedCountry)&&const DeepCollectionEquality().equals(other._customStatusMappings, _customStatusMappings)&&(identical(other.customStatusEnabled, customStatusEnabled) || other.customStatusEnabled == customStatusEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currencies),selectedCurrency,const DeepCollectionEquality().hash(_languages),defaultLanguage,const DeepCollectionEquality().hash(_countries),selectedCountry,const DeepCollectionEquality().hash(_customStatusMappings),customStatusEnabled);

@override
String toString() {
  return 'StoreConfigs(currencies: $currencies, selectedCurrency: $selectedCurrency, languages: $languages, defaultLanguage: $defaultLanguage, countries: $countries, selectedCountry: $selectedCountry, customStatusMappings: $customStatusMappings, customStatusEnabled: $customStatusEnabled)';
}


}

/// @nodoc
abstract mixin class _$StoreConfigsCopyWith<$Res> implements $StoreConfigsCopyWith<$Res> {
  factory _$StoreConfigsCopyWith(_StoreConfigs value, $Res Function(_StoreConfigs) _then) = __$StoreConfigsCopyWithImpl;
@override @useResult
$Res call({
 List<StoreCurrencyConfig> currencies, String? selectedCurrency, List<StoreLanguageConfig> languages, String? defaultLanguage, List<StoreCountryConfig> countries, String? selectedCountry, List<CustomStatusMapping> customStatusMappings, bool customStatusEnabled
});




}
/// @nodoc
class __$StoreConfigsCopyWithImpl<$Res>
    implements _$StoreConfigsCopyWith<$Res> {
  __$StoreConfigsCopyWithImpl(this._self, this._then);

  final _StoreConfigs _self;
  final $Res Function(_StoreConfigs) _then;

/// Create a copy of StoreConfigs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currencies = null,Object? selectedCurrency = freezed,Object? languages = null,Object? defaultLanguage = freezed,Object? countries = null,Object? selectedCountry = freezed,Object? customStatusMappings = null,Object? customStatusEnabled = null,}) {
  return _then(_StoreConfigs(
currencies: null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<StoreCurrencyConfig>,selectedCurrency: freezed == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as String?,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<StoreLanguageConfig>,defaultLanguage: freezed == defaultLanguage ? _self.defaultLanguage : defaultLanguage // ignore: cast_nullable_to_non_nullable
as String?,countries: null == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<StoreCountryConfig>,selectedCountry: freezed == selectedCountry ? _self.selectedCountry : selectedCountry // ignore: cast_nullable_to_non_nullable
as String?,customStatusMappings: null == customStatusMappings ? _self._customStatusMappings : customStatusMappings // ignore: cast_nullable_to_non_nullable
as List<CustomStatusMapping>,customStatusEnabled: null == customStatusEnabled ? _self.customStatusEnabled : customStatusEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CustomStatusMapping {

/// The custom status name (e.g., "not_respond", "phone_closed_1")
 String get name;/// Auto-generated code based on name if not provided (e.g., "not_respond" -> "not_respond")
 String? get code;/// Optional color for UI display (hex color as number)
 int? get color;/// Whether this custom status is enabled and should be shown in UI
 bool get enabled;/// Status to map to (null means no change)
 OrderStatus? get status;/// Delivery status to map to (null means no change)
 DeliveryStatus? get deliveryStatus;/// Payment status to map to (null means no change)
 PaymentStatus? get paymentStatus;
/// Create a copy of CustomStatusMapping
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomStatusMappingCopyWith<CustomStatusMapping> get copyWith => _$CustomStatusMappingCopyWithImpl<CustomStatusMapping>(this as CustomStatusMapping, _$identity);

  /// Serializes this CustomStatusMapping to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomStatusMapping&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.color, color) || other.color == color)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.status, status) || other.status == status)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,color,enabled,status,deliveryStatus,paymentStatus);

@override
String toString() {
  return 'CustomStatusMapping(name: $name, code: $code, color: $color, enabled: $enabled, status: $status, deliveryStatus: $deliveryStatus, paymentStatus: $paymentStatus)';
}


}

/// @nodoc
abstract mixin class $CustomStatusMappingCopyWith<$Res>  {
  factory $CustomStatusMappingCopyWith(CustomStatusMapping value, $Res Function(CustomStatusMapping) _then) = _$CustomStatusMappingCopyWithImpl;
@useResult
$Res call({
 String name, String? code, int? color, bool enabled, OrderStatus? status, DeliveryStatus? deliveryStatus, PaymentStatus? paymentStatus
});




}
/// @nodoc
class _$CustomStatusMappingCopyWithImpl<$Res>
    implements $CustomStatusMappingCopyWith<$Res> {
  _$CustomStatusMappingCopyWithImpl(this._self, this._then);

  final CustomStatusMapping _self;
  final $Res Function(CustomStatusMapping) _then;

/// Create a copy of CustomStatusMapping
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? code = freezed,Object? color = freezed,Object? enabled = null,Object? status = freezed,Object? deliveryStatus = freezed,Object? paymentStatus = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int?,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus?,deliveryStatus: freezed == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomStatusMapping].
extension CustomStatusMappingPatterns on CustomStatusMapping {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomStatusMapping value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomStatusMapping() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomStatusMapping value)  $default,){
final _that = this;
switch (_that) {
case _CustomStatusMapping():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomStatusMapping value)?  $default,){
final _that = this;
switch (_that) {
case _CustomStatusMapping() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? code,  int? color,  bool enabled,  OrderStatus? status,  DeliveryStatus? deliveryStatus,  PaymentStatus? paymentStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomStatusMapping() when $default != null:
return $default(_that.name,_that.code,_that.color,_that.enabled,_that.status,_that.deliveryStatus,_that.paymentStatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? code,  int? color,  bool enabled,  OrderStatus? status,  DeliveryStatus? deliveryStatus,  PaymentStatus? paymentStatus)  $default,) {final _that = this;
switch (_that) {
case _CustomStatusMapping():
return $default(_that.name,_that.code,_that.color,_that.enabled,_that.status,_that.deliveryStatus,_that.paymentStatus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? code,  int? color,  bool enabled,  OrderStatus? status,  DeliveryStatus? deliveryStatus,  PaymentStatus? paymentStatus)?  $default,) {final _that = this;
switch (_that) {
case _CustomStatusMapping() when $default != null:
return $default(_that.name,_that.code,_that.color,_that.enabled,_that.status,_that.deliveryStatus,_that.paymentStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomStatusMapping implements CustomStatusMapping {
  const _CustomStatusMapping({required this.name, this.code, this.color, this.enabled = true, this.status, this.deliveryStatus, this.paymentStatus});
  factory _CustomStatusMapping.fromJson(Map<String, dynamic> json) => _$CustomStatusMappingFromJson(json);

/// The custom status name (e.g., "not_respond", "phone_closed_1")
@override final  String name;
/// Auto-generated code based on name if not provided (e.g., "not_respond" -> "not_respond")
@override final  String? code;
/// Optional color for UI display (hex color as number)
@override final  int? color;
/// Whether this custom status is enabled and should be shown in UI
@override@JsonKey() final  bool enabled;
/// Status to map to (null means no change)
@override final  OrderStatus? status;
/// Delivery status to map to (null means no change)
@override final  DeliveryStatus? deliveryStatus;
/// Payment status to map to (null means no change)
@override final  PaymentStatus? paymentStatus;

/// Create a copy of CustomStatusMapping
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomStatusMappingCopyWith<_CustomStatusMapping> get copyWith => __$CustomStatusMappingCopyWithImpl<_CustomStatusMapping>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomStatusMappingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomStatusMapping&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.color, color) || other.color == color)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.status, status) || other.status == status)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,color,enabled,status,deliveryStatus,paymentStatus);

@override
String toString() {
  return 'CustomStatusMapping(name: $name, code: $code, color: $color, enabled: $enabled, status: $status, deliveryStatus: $deliveryStatus, paymentStatus: $paymentStatus)';
}


}

/// @nodoc
abstract mixin class _$CustomStatusMappingCopyWith<$Res> implements $CustomStatusMappingCopyWith<$Res> {
  factory _$CustomStatusMappingCopyWith(_CustomStatusMapping value, $Res Function(_CustomStatusMapping) _then) = __$CustomStatusMappingCopyWithImpl;
@override @useResult
$Res call({
 String name, String? code, int? color, bool enabled, OrderStatus? status, DeliveryStatus? deliveryStatus, PaymentStatus? paymentStatus
});




}
/// @nodoc
class __$CustomStatusMappingCopyWithImpl<$Res>
    implements _$CustomStatusMappingCopyWith<$Res> {
  __$CustomStatusMappingCopyWithImpl(this._self, this._then);

  final _CustomStatusMapping _self;
  final $Res Function(_CustomStatusMapping) _then;

/// Create a copy of CustomStatusMapping
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = freezed,Object? color = freezed,Object? enabled = null,Object? status = freezed,Object? deliveryStatus = freezed,Object? paymentStatus = freezed,}) {
  return _then(_CustomStatusMapping(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int?,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus?,deliveryStatus: freezed == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,
  ));
}


}


/// @nodoc
mixin _$StoreCurrencyConfig {

 String get code; String get symbol; int get precision; num get rate;
/// Create a copy of StoreCurrencyConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCurrencyConfigCopyWith<StoreCurrencyConfig> get copyWith => _$StoreCurrencyConfigCopyWithImpl<StoreCurrencyConfig>(this as StoreCurrencyConfig, _$identity);

  /// Serializes this StoreCurrencyConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCurrencyConfig&&(identical(other.code, code) || other.code == code)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.precision, precision) || other.precision == precision)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,symbol,precision,rate);

@override
String toString() {
  return 'StoreCurrencyConfig(code: $code, symbol: $symbol, precision: $precision, rate: $rate)';
}


}

/// @nodoc
abstract mixin class $StoreCurrencyConfigCopyWith<$Res>  {
  factory $StoreCurrencyConfigCopyWith(StoreCurrencyConfig value, $Res Function(StoreCurrencyConfig) _then) = _$StoreCurrencyConfigCopyWithImpl;
@useResult
$Res call({
 String code, String symbol, int precision, num rate
});




}
/// @nodoc
class _$StoreCurrencyConfigCopyWithImpl<$Res>
    implements $StoreCurrencyConfigCopyWith<$Res> {
  _$StoreCurrencyConfigCopyWithImpl(this._self, this._then);

  final StoreCurrencyConfig _self;
  final $Res Function(StoreCurrencyConfig) _then;

/// Create a copy of StoreCurrencyConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? symbol = null,Object? precision = null,Object? rate = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,precision: null == precision ? _self.precision : precision // ignore: cast_nullable_to_non_nullable
as int,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreCurrencyConfig].
extension StoreCurrencyConfigPatterns on StoreCurrencyConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCurrencyConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCurrencyConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCurrencyConfig value)  $default,){
final _that = this;
switch (_that) {
case _StoreCurrencyConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCurrencyConfig value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCurrencyConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String symbol,  int precision,  num rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCurrencyConfig() when $default != null:
return $default(_that.code,_that.symbol,_that.precision,_that.rate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String symbol,  int precision,  num rate)  $default,) {final _that = this;
switch (_that) {
case _StoreCurrencyConfig():
return $default(_that.code,_that.symbol,_that.precision,_that.rate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String symbol,  int precision,  num rate)?  $default,) {final _that = this;
switch (_that) {
case _StoreCurrencyConfig() when $default != null:
return $default(_that.code,_that.symbol,_that.precision,_that.rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCurrencyConfig implements StoreCurrencyConfig {
  const _StoreCurrencyConfig({required this.code, required this.symbol, required this.precision, required this.rate});
  factory _StoreCurrencyConfig.fromJson(Map<String, dynamic> json) => _$StoreCurrencyConfigFromJson(json);

@override final  String code;
@override final  String symbol;
@override final  int precision;
@override final  num rate;

/// Create a copy of StoreCurrencyConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCurrencyConfigCopyWith<_StoreCurrencyConfig> get copyWith => __$StoreCurrencyConfigCopyWithImpl<_StoreCurrencyConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCurrencyConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCurrencyConfig&&(identical(other.code, code) || other.code == code)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.precision, precision) || other.precision == precision)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,symbol,precision,rate);

@override
String toString() {
  return 'StoreCurrencyConfig(code: $code, symbol: $symbol, precision: $precision, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$StoreCurrencyConfigCopyWith<$Res> implements $StoreCurrencyConfigCopyWith<$Res> {
  factory _$StoreCurrencyConfigCopyWith(_StoreCurrencyConfig value, $Res Function(_StoreCurrencyConfig) _then) = __$StoreCurrencyConfigCopyWithImpl;
@override @useResult
$Res call({
 String code, String symbol, int precision, num rate
});




}
/// @nodoc
class __$StoreCurrencyConfigCopyWithImpl<$Res>
    implements _$StoreCurrencyConfigCopyWith<$Res> {
  __$StoreCurrencyConfigCopyWithImpl(this._self, this._then);

  final _StoreCurrencyConfig _self;
  final $Res Function(_StoreCurrencyConfig) _then;

/// Create a copy of StoreCurrencyConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? symbol = null,Object? precision = null,Object? rate = null,}) {
  return _then(_StoreCurrencyConfig(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,precision: null == precision ? _self.precision : precision // ignore: cast_nullable_to_non_nullable
as int,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}


/// @nodoc
mixin _$StoreLanguageConfig {

 String get code; String get name; String get nativeName; bool get rtl;
/// Create a copy of StoreLanguageConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreLanguageConfigCopyWith<StoreLanguageConfig> get copyWith => _$StoreLanguageConfigCopyWithImpl<StoreLanguageConfig>(this as StoreLanguageConfig, _$identity);

  /// Serializes this StoreLanguageConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreLanguageConfig&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.nativeName, nativeName) || other.nativeName == nativeName)&&(identical(other.rtl, rtl) || other.rtl == rtl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,nativeName,rtl);

@override
String toString() {
  return 'StoreLanguageConfig(code: $code, name: $name, nativeName: $nativeName, rtl: $rtl)';
}


}

/// @nodoc
abstract mixin class $StoreLanguageConfigCopyWith<$Res>  {
  factory $StoreLanguageConfigCopyWith(StoreLanguageConfig value, $Res Function(StoreLanguageConfig) _then) = _$StoreLanguageConfigCopyWithImpl;
@useResult
$Res call({
 String code, String name, String nativeName, bool rtl
});




}
/// @nodoc
class _$StoreLanguageConfigCopyWithImpl<$Res>
    implements $StoreLanguageConfigCopyWith<$Res> {
  _$StoreLanguageConfigCopyWithImpl(this._self, this._then);

  final StoreLanguageConfig _self;
  final $Res Function(StoreLanguageConfig) _then;

/// Create a copy of StoreLanguageConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? nativeName = null,Object? rtl = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nativeName: null == nativeName ? _self.nativeName : nativeName // ignore: cast_nullable_to_non_nullable
as String,rtl: null == rtl ? _self.rtl : rtl // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreLanguageConfig].
extension StoreLanguageConfigPatterns on StoreLanguageConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreLanguageConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreLanguageConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreLanguageConfig value)  $default,){
final _that = this;
switch (_that) {
case _StoreLanguageConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreLanguageConfig value)?  $default,){
final _that = this;
switch (_that) {
case _StoreLanguageConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String nativeName,  bool rtl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreLanguageConfig() when $default != null:
return $default(_that.code,_that.name,_that.nativeName,_that.rtl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String nativeName,  bool rtl)  $default,) {final _that = this;
switch (_that) {
case _StoreLanguageConfig():
return $default(_that.code,_that.name,_that.nativeName,_that.rtl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String nativeName,  bool rtl)?  $default,) {final _that = this;
switch (_that) {
case _StoreLanguageConfig() when $default != null:
return $default(_that.code,_that.name,_that.nativeName,_that.rtl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreLanguageConfig implements StoreLanguageConfig {
  const _StoreLanguageConfig({required this.code, required this.name, required this.nativeName, this.rtl = false});
  factory _StoreLanguageConfig.fromJson(Map<String, dynamic> json) => _$StoreLanguageConfigFromJson(json);

@override final  String code;
@override final  String name;
@override final  String nativeName;
@override@JsonKey() final  bool rtl;

/// Create a copy of StoreLanguageConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreLanguageConfigCopyWith<_StoreLanguageConfig> get copyWith => __$StoreLanguageConfigCopyWithImpl<_StoreLanguageConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreLanguageConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreLanguageConfig&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.nativeName, nativeName) || other.nativeName == nativeName)&&(identical(other.rtl, rtl) || other.rtl == rtl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,nativeName,rtl);

@override
String toString() {
  return 'StoreLanguageConfig(code: $code, name: $name, nativeName: $nativeName, rtl: $rtl)';
}


}

/// @nodoc
abstract mixin class _$StoreLanguageConfigCopyWith<$Res> implements $StoreLanguageConfigCopyWith<$Res> {
  factory _$StoreLanguageConfigCopyWith(_StoreLanguageConfig value, $Res Function(_StoreLanguageConfig) _then) = __$StoreLanguageConfigCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String nativeName, bool rtl
});




}
/// @nodoc
class __$StoreLanguageConfigCopyWithImpl<$Res>
    implements _$StoreLanguageConfigCopyWith<$Res> {
  __$StoreLanguageConfigCopyWithImpl(this._self, this._then);

  final _StoreLanguageConfig _self;
  final $Res Function(_StoreLanguageConfig) _then;

/// Create a copy of StoreLanguageConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? nativeName = null,Object? rtl = null,}) {
  return _then(_StoreLanguageConfig(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nativeName: null == nativeName ? _self.nativeName : nativeName // ignore: cast_nullable_to_non_nullable
as String,rtl: null == rtl ? _self.rtl : rtl // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$StoreCountryConfig {

 String get code; String get name; String get nativeName;
/// Create a copy of StoreCountryConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCountryConfigCopyWith<StoreCountryConfig> get copyWith => _$StoreCountryConfigCopyWithImpl<StoreCountryConfig>(this as StoreCountryConfig, _$identity);

  /// Serializes this StoreCountryConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCountryConfig&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.nativeName, nativeName) || other.nativeName == nativeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,nativeName);

@override
String toString() {
  return 'StoreCountryConfig(code: $code, name: $name, nativeName: $nativeName)';
}


}

/// @nodoc
abstract mixin class $StoreCountryConfigCopyWith<$Res>  {
  factory $StoreCountryConfigCopyWith(StoreCountryConfig value, $Res Function(StoreCountryConfig) _then) = _$StoreCountryConfigCopyWithImpl;
@useResult
$Res call({
 String code, String name, String nativeName
});




}
/// @nodoc
class _$StoreCountryConfigCopyWithImpl<$Res>
    implements $StoreCountryConfigCopyWith<$Res> {
  _$StoreCountryConfigCopyWithImpl(this._self, this._then);

  final StoreCountryConfig _self;
  final $Res Function(StoreCountryConfig) _then;

/// Create a copy of StoreCountryConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? nativeName = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nativeName: null == nativeName ? _self.nativeName : nativeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreCountryConfig].
extension StoreCountryConfigPatterns on StoreCountryConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCountryConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCountryConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCountryConfig value)  $default,){
final _that = this;
switch (_that) {
case _StoreCountryConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCountryConfig value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCountryConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String nativeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCountryConfig() when $default != null:
return $default(_that.code,_that.name,_that.nativeName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String nativeName)  $default,) {final _that = this;
switch (_that) {
case _StoreCountryConfig():
return $default(_that.code,_that.name,_that.nativeName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String nativeName)?  $default,) {final _that = this;
switch (_that) {
case _StoreCountryConfig() when $default != null:
return $default(_that.code,_that.name,_that.nativeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCountryConfig implements StoreCountryConfig {
  const _StoreCountryConfig({required this.code, required this.name, required this.nativeName});
  factory _StoreCountryConfig.fromJson(Map<String, dynamic> json) => _$StoreCountryConfigFromJson(json);

@override final  String code;
@override final  String name;
@override final  String nativeName;

/// Create a copy of StoreCountryConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCountryConfigCopyWith<_StoreCountryConfig> get copyWith => __$StoreCountryConfigCopyWithImpl<_StoreCountryConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCountryConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCountryConfig&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.nativeName, nativeName) || other.nativeName == nativeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,nativeName);

@override
String toString() {
  return 'StoreCountryConfig(code: $code, name: $name, nativeName: $nativeName)';
}


}

/// @nodoc
abstract mixin class _$StoreCountryConfigCopyWith<$Res> implements $StoreCountryConfigCopyWith<$Res> {
  factory _$StoreCountryConfigCopyWith(_StoreCountryConfig value, $Res Function(_StoreCountryConfig) _then) = __$StoreCountryConfigCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String nativeName
});




}
/// @nodoc
class __$StoreCountryConfigCopyWithImpl<$Res>
    implements _$StoreCountryConfigCopyWith<$Res> {
  __$StoreCountryConfigCopyWithImpl(this._self, this._then);

  final _StoreCountryConfig _self;
  final $Res Function(_StoreCountryConfig) _then;

/// Create a copy of StoreCountryConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? nativeName = null,}) {
  return _then(_StoreCountryConfig(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nativeName: null == nativeName ? _self.nativeName : nativeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
