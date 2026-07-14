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
@JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) StoreSubscription? get subscription; num? get due;// StoreConfigs
 StoreConfigs? get configs; String? get shippingPriceId; String? get templateId; String? get projectId;// metaPixelIds
 List<String>? get metaPixelIds; Map<String, StoreMember> get members;/// Present when list/show is called with `with[]=lor` and the user may view analytics.
@JsonKey(fromJson: _storeLorFromJson, toJson: _storeLorToJson) LiteOrdersReport? get lor;/// Present when `with[]=template` — active [StoreTemplate] row (usually the store fork).
@JsonKey(fromJson: _storeTemplateFromJson, toJson: _storeTemplateToJson) StoreTemplate? get template;
/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCopyWith<Store> get copyWith => _$StoreCopyWithImpl<Store>(this as Store, _$identity);

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Store&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.action, action) || other.action == action)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.decoration, decoration) || other.decoration == decoration)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.categoriesRelation, categoriesRelation)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.contacts, contacts)&&(identical(other.integrations, integrations) || other.integrations == integrations)&&const DeepCollectionEquality().equals(other.defaultShippingRates, defaultShippingRates)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.blockedAt, blockedAt) || other.blockedAt == blockedAt)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.due, due) || other.due == due)&&(identical(other.configs, configs) || other.configs == configs)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&const DeepCollectionEquality().equals(other.metaPixelIds, metaPixelIds)&&const DeepCollectionEquality().equals(other.members, members)&&(identical(other.lor, lor) || other.lor == lor)&&(identical(other.template, template) || other.template == template));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,slug,banner,action,domain,decoration,name,iconUrl,logoUrl,ondarkLogoUrl,userId,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(categoriesRelation),title,description,const DeepCollectionEquality().hash(addresses),address,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(contacts),integrations,const DeepCollectionEquality().hash(defaultShippingRates),verifiedAt,blockedAt,subscription,due,configs,shippingPriceId,templateId,projectId,const DeepCollectionEquality().hash(metaPixelIds),const DeepCollectionEquality().hash(members),lor,template]);

@override
String toString() {
  return 'Store(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, name: $name, iconUrl: $iconUrl, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, userId: $userId, categories: $categories, categoriesRelation: $categoriesRelation, title: $title, description: $description, addresses: $addresses, address: $address, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, verifiedAt: $verifiedAt, blockedAt: $blockedAt, subscription: $subscription, due: $due, configs: $configs, shippingPriceId: $shippingPriceId, templateId: $templateId, projectId: $projectId, metaPixelIds: $metaPixelIds, members: $members, lor: $lor, template: $template)';
}


}

/// @nodoc
abstract mixin class $StoreCopyWith<$Res>  {
  factory $StoreCopyWith(Store value, $Res Function(Store) _then) = _$StoreCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String slug, StoreBanner? banner, StoreAction? action, StoreDomain? domain, StoreDecoration? decoration, String name, String? iconUrl, String? logoUrl,@Deprecated("use logoUrl") String? ondarkLogoUrl, String userId, List<EmbaddedCategory> categories, List<Category>? categoriesRelation, String? title, String? description, List<EmbaddedAddress> addresses, EmbaddedAddress? address, Map<String, dynamic> metadata, List<EmbaddedContact> contacts,@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) StoreIntegrations integrations, List<List<num?>?> defaultShippingRates, DateTime? verifiedAt, DateTime? blockedAt,@JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) StoreSubscription? subscription, num? due, StoreConfigs? configs, String? shippingPriceId, String? templateId, String? projectId, List<String>? metaPixelIds, Map<String, StoreMember> members,@JsonKey(fromJson: _storeLorFromJson, toJson: _storeLorToJson) LiteOrdersReport? lor,@JsonKey(fromJson: _storeTemplateFromJson, toJson: _storeTemplateToJson) StoreTemplate? template
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? slug = null,Object? banner = freezed,Object? action = freezed,Object? domain = freezed,Object? decoration = freezed,Object? name = null,Object? iconUrl = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? userId = null,Object? categories = null,Object? categoriesRelation = freezed,Object? title = freezed,Object? description = freezed,Object? addresses = null,Object? address = freezed,Object? metadata = null,Object? contacts = null,Object? integrations = null,Object? defaultShippingRates = null,Object? verifiedAt = freezed,Object? blockedAt = freezed,Object? subscription = freezed,Object? due = freezed,Object? configs = freezed,Object? shippingPriceId = freezed,Object? templateId = freezed,Object? projectId = freezed,Object? metaPixelIds = freezed,Object? members = null,Object? lor = freezed,Object? template = freezed,}) {
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
as String?,templateId: freezed == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String?,projectId: freezed == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String?,metaPixelIds: freezed == metaPixelIds ? _self.metaPixelIds : metaPixelIds // ignore: cast_nullable_to_non_nullable
as List<String>?,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as Map<String, StoreMember>,lor: freezed == lor ? _self.lor : lor // ignore: cast_nullable_to_non_nullable
as LiteOrdersReport?,template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as StoreTemplate?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String name,  String? iconUrl,  String? logoUrl, @Deprecated("use logoUrl")  String? ondarkLogoUrl,  String userId,  List<EmbaddedCategory> categories,  List<Category>? categoriesRelation,  String? title,  String? description,  List<EmbaddedAddress> addresses,  EmbaddedAddress? address,  Map<String, dynamic> metadata,  List<EmbaddedContact> contacts, @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)  StoreIntegrations integrations,  List<List<num?>?> defaultShippingRates,  DateTime? verifiedAt,  DateTime? blockedAt, @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson)  StoreSubscription? subscription,  num? due,  StoreConfigs? configs,  String? shippingPriceId,  String? templateId,  String? projectId,  List<String>? metaPixelIds,  Map<String, StoreMember> members, @JsonKey(fromJson: _storeLorFromJson, toJson: _storeLorToJson)  LiteOrdersReport? lor, @JsonKey(fromJson: _storeTemplateFromJson, toJson: _storeTemplateToJson)  StoreTemplate? template)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Store() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.name,_that.iconUrl,_that.logoUrl,_that.ondarkLogoUrl,_that.userId,_that.categories,_that.categoriesRelation,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.verifiedAt,_that.blockedAt,_that.subscription,_that.due,_that.configs,_that.shippingPriceId,_that.templateId,_that.projectId,_that.metaPixelIds,_that.members,_that.lor,_that.template);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String name,  String? iconUrl,  String? logoUrl, @Deprecated("use logoUrl")  String? ondarkLogoUrl,  String userId,  List<EmbaddedCategory> categories,  List<Category>? categoriesRelation,  String? title,  String? description,  List<EmbaddedAddress> addresses,  EmbaddedAddress? address,  Map<String, dynamic> metadata,  List<EmbaddedContact> contacts, @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)  StoreIntegrations integrations,  List<List<num?>?> defaultShippingRates,  DateTime? verifiedAt,  DateTime? blockedAt, @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson)  StoreSubscription? subscription,  num? due,  StoreConfigs? configs,  String? shippingPriceId,  String? templateId,  String? projectId,  List<String>? metaPixelIds,  Map<String, StoreMember> members, @JsonKey(fromJson: _storeLorFromJson, toJson: _storeLorToJson)  LiteOrdersReport? lor, @JsonKey(fromJson: _storeTemplateFromJson, toJson: _storeTemplateToJson)  StoreTemplate? template)  $default,) {final _that = this;
switch (_that) {
case _Store():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.name,_that.iconUrl,_that.logoUrl,_that.ondarkLogoUrl,_that.userId,_that.categories,_that.categoriesRelation,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.verifiedAt,_that.blockedAt,_that.subscription,_that.due,_that.configs,_that.shippingPriceId,_that.templateId,_that.projectId,_that.metaPixelIds,_that.members,_that.lor,_that.template);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String name,  String? iconUrl,  String? logoUrl, @Deprecated("use logoUrl")  String? ondarkLogoUrl,  String userId,  List<EmbaddedCategory> categories,  List<Category>? categoriesRelation,  String? title,  String? description,  List<EmbaddedAddress> addresses,  EmbaddedAddress? address,  Map<String, dynamic> metadata,  List<EmbaddedContact> contacts, @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)  StoreIntegrations integrations,  List<List<num?>?> defaultShippingRates,  DateTime? verifiedAt,  DateTime? blockedAt, @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson)  StoreSubscription? subscription,  num? due,  StoreConfigs? configs,  String? shippingPriceId,  String? templateId,  String? projectId,  List<String>? metaPixelIds,  Map<String, StoreMember> members, @JsonKey(fromJson: _storeLorFromJson, toJson: _storeLorToJson)  LiteOrdersReport? lor, @JsonKey(fromJson: _storeTemplateFromJson, toJson: _storeTemplateToJson)  StoreTemplate? template)?  $default,) {final _that = this;
switch (_that) {
case _Store() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.name,_that.iconUrl,_that.logoUrl,_that.ondarkLogoUrl,_that.userId,_that.categories,_that.categoriesRelation,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.verifiedAt,_that.blockedAt,_that.subscription,_that.due,_that.configs,_that.shippingPriceId,_that.templateId,_that.projectId,_that.metaPixelIds,_that.members,_that.lor,_that.template);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Store extends Store {
   _Store({required this.id, required this.createdAt, required this.updatedAt, required this.slug, this.banner, this.action, this.domain, this.decoration, required this.name, this.iconUrl, this.logoUrl, @Deprecated("use logoUrl") this.ondarkLogoUrl, required this.userId, final  List<EmbaddedCategory> categories = const [], final  List<Category>? categoriesRelation, this.title, this.description, final  List<EmbaddedAddress> addresses = const [], this.address, final  Map<String, dynamic> metadata = const {}, final  List<EmbaddedContact> contacts = const [], @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) this.integrations = const StoreIntegrations(), final  List<List<num?>?> defaultShippingRates = const [], this.verifiedAt, this.blockedAt, @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) this.subscription, this.due, this.configs, this.shippingPriceId, this.templateId, this.projectId, final  List<String>? metaPixelIds, final  Map<String, StoreMember> members = const {}, @JsonKey(fromJson: _storeLorFromJson, toJson: _storeLorToJson) this.lor, @JsonKey(fromJson: _storeTemplateFromJson, toJson: _storeTemplateToJson) this.template}): _categories = categories,_categoriesRelation = categoriesRelation,_addresses = addresses,_metadata = metadata,_contacts = contacts,_defaultShippingRates = defaultShippingRates,_metaPixelIds = metaPixelIds,_members = members,super._();
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
@override@JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) final  StoreSubscription? subscription;
@override final  num? due;
// StoreConfigs
@override final  StoreConfigs? configs;
@override final  String? shippingPriceId;
@override final  String? templateId;
@override final  String? projectId;
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

/// Present when list/show is called with `with[]=lor` and the user may view analytics.
@override@JsonKey(fromJson: _storeLorFromJson, toJson: _storeLorToJson) final  LiteOrdersReport? lor;
/// Present when `with[]=template` — active [StoreTemplate] row (usually the store fork).
@override@JsonKey(fromJson: _storeTemplateFromJson, toJson: _storeTemplateToJson) final  StoreTemplate? template;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Store&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.action, action) || other.action == action)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.decoration, decoration) || other.decoration == decoration)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._categoriesRelation, _categoriesRelation)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._contacts, _contacts)&&(identical(other.integrations, integrations) || other.integrations == integrations)&&const DeepCollectionEquality().equals(other._defaultShippingRates, _defaultShippingRates)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.blockedAt, blockedAt) || other.blockedAt == blockedAt)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.due, due) || other.due == due)&&(identical(other.configs, configs) || other.configs == configs)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&const DeepCollectionEquality().equals(other._metaPixelIds, _metaPixelIds)&&const DeepCollectionEquality().equals(other._members, _members)&&(identical(other.lor, lor) || other.lor == lor)&&(identical(other.template, template) || other.template == template));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,slug,banner,action,domain,decoration,name,iconUrl,logoUrl,ondarkLogoUrl,userId,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_categoriesRelation),title,description,const DeepCollectionEquality().hash(_addresses),address,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_contacts),integrations,const DeepCollectionEquality().hash(_defaultShippingRates),verifiedAt,blockedAt,subscription,due,configs,shippingPriceId,templateId,projectId,const DeepCollectionEquality().hash(_metaPixelIds),const DeepCollectionEquality().hash(_members),lor,template]);

@override
String toString() {
  return 'Store(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, name: $name, iconUrl: $iconUrl, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, userId: $userId, categories: $categories, categoriesRelation: $categoriesRelation, title: $title, description: $description, addresses: $addresses, address: $address, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, verifiedAt: $verifiedAt, blockedAt: $blockedAt, subscription: $subscription, due: $due, configs: $configs, shippingPriceId: $shippingPriceId, templateId: $templateId, projectId: $projectId, metaPixelIds: $metaPixelIds, members: $members, lor: $lor, template: $template)';
}


}

/// @nodoc
abstract mixin class _$StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) _then) = __$StoreCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String slug, StoreBanner? banner, StoreAction? action, StoreDomain? domain, StoreDecoration? decoration, String name, String? iconUrl, String? logoUrl,@Deprecated("use logoUrl") String? ondarkLogoUrl, String userId, List<EmbaddedCategory> categories, List<Category>? categoriesRelation, String? title, String? description, List<EmbaddedAddress> addresses, EmbaddedAddress? address, Map<String, dynamic> metadata, List<EmbaddedContact> contacts,@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) StoreIntegrations integrations, List<List<num?>?> defaultShippingRates, DateTime? verifiedAt, DateTime? blockedAt,@JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) StoreSubscription? subscription, num? due, StoreConfigs? configs, String? shippingPriceId, String? templateId, String? projectId, List<String>? metaPixelIds, Map<String, StoreMember> members,@JsonKey(fromJson: _storeLorFromJson, toJson: _storeLorToJson) LiteOrdersReport? lor,@JsonKey(fromJson: _storeTemplateFromJson, toJson: _storeTemplateToJson) StoreTemplate? template
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? slug = null,Object? banner = freezed,Object? action = freezed,Object? domain = freezed,Object? decoration = freezed,Object? name = null,Object? iconUrl = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? userId = null,Object? categories = null,Object? categoriesRelation = freezed,Object? title = freezed,Object? description = freezed,Object? addresses = null,Object? address = freezed,Object? metadata = null,Object? contacts = null,Object? integrations = null,Object? defaultShippingRates = null,Object? verifiedAt = freezed,Object? blockedAt = freezed,Object? subscription = freezed,Object? due = freezed,Object? configs = freezed,Object? shippingPriceId = freezed,Object? templateId = freezed,Object? projectId = freezed,Object? metaPixelIds = freezed,Object? members = null,Object? lor = freezed,Object? template = freezed,}) {
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
as String?,templateId: freezed == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String?,projectId: freezed == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String?,metaPixelIds: freezed == metaPixelIds ? _self._metaPixelIds : metaPixelIds // ignore: cast_nullable_to_non_nullable
as List<String>?,members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as Map<String, StoreMember>,lor: freezed == lor ? _self.lor : lor // ignore: cast_nullable_to_non_nullable
as LiteOrdersReport?,template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as StoreTemplate?,
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

 String? get id; String get name; String get slug; StoreBanner? get banner; StoreAction? get action; StoreDomain? get domain; StoreDecoration? get decoration; String? get logoUrl; String? get ondarkLogoUrl; List<EmbaddedCategory> get categories; String? get title; String? get description; List<EmbaddedAddress> get addresses; EmbaddedAddress? get address; Map<String, dynamic> get metadata; List<EmbaddedContact> get contacts;@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) StoreIntegrations get integrations; List<List<num?>?> get defaultShippingRates; String? get shippingPriceId; String? get projectId;// subscription
@JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) StoreSubscription? get subscription; num? get due;
/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCreateCopyWith<StoreCreate> get copyWith => _$StoreCreateCopyWithImpl<StoreCreate>(this as StoreCreate, _$identity);

  /// Serializes this StoreCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.action, action) || other.action == action)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.decoration, decoration) || other.decoration == decoration)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.contacts, contacts)&&(identical(other.integrations, integrations) || other.integrations == integrations)&&const DeepCollectionEquality().equals(other.defaultShippingRates, defaultShippingRates)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.due, due) || other.due == due));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,slug,banner,action,domain,decoration,logoUrl,ondarkLogoUrl,const DeepCollectionEquality().hash(categories),title,description,const DeepCollectionEquality().hash(addresses),address,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(contacts),integrations,const DeepCollectionEquality().hash(defaultShippingRates),shippingPriceId,projectId,subscription,due]);

@override
String toString() {
  return 'StoreCreate(id: $id, name: $name, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, categories: $categories, title: $title, description: $description, addresses: $addresses, address: $address, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, shippingPriceId: $shippingPriceId, projectId: $projectId, subscription: $subscription, due: $due)';
}


}

/// @nodoc
abstract mixin class $StoreCreateCopyWith<$Res>  {
  factory $StoreCreateCopyWith(StoreCreate value, $Res Function(StoreCreate) _then) = _$StoreCreateCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String slug, StoreBanner? banner, StoreAction? action, StoreDomain? domain, StoreDecoration? decoration, String? logoUrl, String? ondarkLogoUrl, List<EmbaddedCategory> categories, String? title, String? description, List<EmbaddedAddress> addresses, EmbaddedAddress? address, Map<String, dynamic> metadata, List<EmbaddedContact> contacts,@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) StoreIntegrations integrations, List<List<num?>?> defaultShippingRates, String? shippingPriceId, String? projectId,@JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) StoreSubscription? subscription, num? due
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? slug = null,Object? banner = freezed,Object? action = freezed,Object? domain = freezed,Object? decoration = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? categories = null,Object? title = freezed,Object? description = freezed,Object? addresses = null,Object? address = freezed,Object? metadata = null,Object? contacts = null,Object? integrations = null,Object? defaultShippingRates = null,Object? shippingPriceId = freezed,Object? projectId = freezed,Object? subscription = freezed,Object? due = freezed,}) {
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
as String?,projectId: freezed == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String? logoUrl,  String? ondarkLogoUrl,  List<EmbaddedCategory> categories,  String? title,  String? description,  List<EmbaddedAddress> addresses,  EmbaddedAddress? address,  Map<String, dynamic> metadata,  List<EmbaddedContact> contacts, @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)  StoreIntegrations integrations,  List<List<num?>?> defaultShippingRates,  String? shippingPriceId,  String? projectId, @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson)  StoreSubscription? subscription,  num? due)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.logoUrl,_that.ondarkLogoUrl,_that.categories,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.shippingPriceId,_that.projectId,_that.subscription,_that.due);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String? logoUrl,  String? ondarkLogoUrl,  List<EmbaddedCategory> categories,  String? title,  String? description,  List<EmbaddedAddress> addresses,  EmbaddedAddress? address,  Map<String, dynamic> metadata,  List<EmbaddedContact> contacts, @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)  StoreIntegrations integrations,  List<List<num?>?> defaultShippingRates,  String? shippingPriceId,  String? projectId, @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson)  StoreSubscription? subscription,  num? due)  $default,) {final _that = this;
switch (_that) {
case _StoreCreate():
return $default(_that.id,_that.name,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.logoUrl,_that.ondarkLogoUrl,_that.categories,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.shippingPriceId,_that.projectId,_that.subscription,_that.due);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String? logoUrl,  String? ondarkLogoUrl,  List<EmbaddedCategory> categories,  String? title,  String? description,  List<EmbaddedAddress> addresses,  EmbaddedAddress? address,  Map<String, dynamic> metadata,  List<EmbaddedContact> contacts, @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson)  StoreIntegrations integrations,  List<List<num?>?> defaultShippingRates,  String? shippingPriceId,  String? projectId, @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson)  StoreSubscription? subscription,  num? due)?  $default,) {final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.logoUrl,_that.ondarkLogoUrl,_that.categories,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.shippingPriceId,_that.projectId,_that.subscription,_that.due);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCreate implements StoreCreate {
  const _StoreCreate({this.id, required this.name, required this.slug, this.banner, this.action, this.domain, this.decoration, this.logoUrl, this.ondarkLogoUrl, final  List<EmbaddedCategory> categories = const [], this.title, this.description, final  List<EmbaddedAddress> addresses = const [], this.address, final  Map<String, dynamic> metadata = const {}, final  List<EmbaddedContact> contacts = const [], @JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) this.integrations = const StoreIntegrations(), final  List<List<num?>?> defaultShippingRates = const [], this.shippingPriceId, this.projectId, @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) this.subscription, this.due}): _categories = categories,_addresses = addresses,_metadata = metadata,_contacts = contacts,_defaultShippingRates = defaultShippingRates;
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
@override final  String? projectId;
// subscription
@override@JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) final  StoreSubscription? subscription;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.action, action) || other.action == action)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.decoration, decoration) || other.decoration == decoration)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._contacts, _contacts)&&(identical(other.integrations, integrations) || other.integrations == integrations)&&const DeepCollectionEquality().equals(other._defaultShippingRates, _defaultShippingRates)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.due, due) || other.due == due));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,slug,banner,action,domain,decoration,logoUrl,ondarkLogoUrl,const DeepCollectionEquality().hash(_categories),title,description,const DeepCollectionEquality().hash(_addresses),address,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_contacts),integrations,const DeepCollectionEquality().hash(_defaultShippingRates),shippingPriceId,projectId,subscription,due]);

@override
String toString() {
  return 'StoreCreate(id: $id, name: $name, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, categories: $categories, title: $title, description: $description, addresses: $addresses, address: $address, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, shippingPriceId: $shippingPriceId, projectId: $projectId, subscription: $subscription, due: $due)';
}


}

/// @nodoc
abstract mixin class _$StoreCreateCopyWith<$Res> implements $StoreCreateCopyWith<$Res> {
  factory _$StoreCreateCopyWith(_StoreCreate value, $Res Function(_StoreCreate) _then) = __$StoreCreateCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String slug, StoreBanner? banner, StoreAction? action, StoreDomain? domain, StoreDecoration? decoration, String? logoUrl, String? ondarkLogoUrl, List<EmbaddedCategory> categories, String? title, String? description, List<EmbaddedAddress> addresses, EmbaddedAddress? address, Map<String, dynamic> metadata, List<EmbaddedContact> contacts,@JsonKey(fromJson: _storeIntegrationsFromJson, toJson: _storeIntegrationsToJson) StoreIntegrations integrations, List<List<num?>?> defaultShippingRates, String? shippingPriceId, String? projectId,@JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) StoreSubscription? subscription, num? due
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? slug = null,Object? banner = freezed,Object? action = freezed,Object? domain = freezed,Object? decoration = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? categories = null,Object? title = freezed,Object? description = freezed,Object? addresses = null,Object? address = freezed,Object? metadata = null,Object? contacts = null,Object? integrations = null,Object? defaultShippingRates = null,Object? shippingPriceId = freezed,Object? projectId = freezed,Object? subscription = freezed,Object? due = freezed,}) {
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
as String?,projectId: freezed == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
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
@JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) StoreSubscription? get subscription; num? get due;// StoreConfigs
 StoreConfigs? get configs; String? get shippingPriceId; String? get templateId; String? get projectId;
/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreUpdateCopyWith<StoreUpdate> get copyWith => _$StoreUpdateCopyWithImpl<StoreUpdate>(this as StoreUpdate, _$identity);

  /// Serializes this StoreUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.action, action) || other.action == action)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.decoration, decoration) || other.decoration == decoration)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.contacts, contacts)&&(identical(other.integrations, integrations) || other.integrations == integrations)&&const DeepCollectionEquality().equals(other.defaultShippingRates, defaultShippingRates)&&const DeepCollectionEquality().equals(other.setToNull, setToNull)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.due, due) || other.due == due)&&(identical(other.configs, configs) || other.configs == configs)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.projectId, projectId) || other.projectId == projectId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,slug,banner,action,domain,decoration,logoUrl,iconUrl,ondarkLogoUrl,const DeepCollectionEquality().hash(categories),title,description,const DeepCollectionEquality().hash(addresses),address,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(contacts),integrations,const DeepCollectionEquality().hash(defaultShippingRates),const DeepCollectionEquality().hash(setToNull),subscription,due,configs,shippingPriceId,templateId,projectId]);

@override
String toString() {
  return 'StoreUpdate(name: $name, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, logoUrl: $logoUrl, iconUrl: $iconUrl, ondarkLogoUrl: $ondarkLogoUrl, categories: $categories, title: $title, description: $description, addresses: $addresses, address: $address, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, setToNull: $setToNull, subscription: $subscription, due: $due, configs: $configs, shippingPriceId: $shippingPriceId, templateId: $templateId, projectId: $projectId)';
}


}

/// @nodoc
abstract mixin class $StoreUpdateCopyWith<$Res>  {
  factory $StoreUpdateCopyWith(StoreUpdate value, $Res Function(StoreUpdate) _then) = _$StoreUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? slug, StoreBanner? banner, StoreAction? action, StoreDomain? domain, StoreDecoration? decoration, String? logoUrl, String? iconUrl, String? ondarkLogoUrl, List<EmbaddedCategory>? categories, String? title, String? description, List<EmbaddedAddress>? addresses, EmbaddedAddress? address, Map<String, dynamic>? metadata, List<EmbaddedContact>? contacts,@JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson) StoreIntegrations? integrations, List<List<num?>?>? defaultShippingRates,@JsonKey(includeFromJson: false) List<String> setToNull,@JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) StoreSubscription? subscription, num? due, StoreConfigs? configs, String? shippingPriceId, String? templateId, String? projectId
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? slug = freezed,Object? banner = freezed,Object? action = freezed,Object? domain = freezed,Object? decoration = freezed,Object? logoUrl = freezed,Object? iconUrl = freezed,Object? ondarkLogoUrl = freezed,Object? categories = freezed,Object? title = freezed,Object? description = freezed,Object? addresses = freezed,Object? address = freezed,Object? metadata = freezed,Object? contacts = freezed,Object? integrations = freezed,Object? defaultShippingRates = freezed,Object? setToNull = null,Object? subscription = freezed,Object? due = freezed,Object? configs = freezed,Object? shippingPriceId = freezed,Object? templateId = freezed,Object? projectId = freezed,}) {
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
as String?,templateId: freezed == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String?,projectId: freezed == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String? logoUrl,  String? iconUrl,  String? ondarkLogoUrl,  List<EmbaddedCategory>? categories,  String? title,  String? description,  List<EmbaddedAddress>? addresses,  EmbaddedAddress? address,  Map<String, dynamic>? metadata,  List<EmbaddedContact>? contacts, @JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson)  StoreIntegrations? integrations,  List<List<num?>?>? defaultShippingRates, @JsonKey(includeFromJson: false)  List<String> setToNull, @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson)  StoreSubscription? subscription,  num? due,  StoreConfigs? configs,  String? shippingPriceId,  String? templateId,  String? projectId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreUpdate() when $default != null:
return $default(_that.name,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.logoUrl,_that.iconUrl,_that.ondarkLogoUrl,_that.categories,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.setToNull,_that.subscription,_that.due,_that.configs,_that.shippingPriceId,_that.templateId,_that.projectId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String? logoUrl,  String? iconUrl,  String? ondarkLogoUrl,  List<EmbaddedCategory>? categories,  String? title,  String? description,  List<EmbaddedAddress>? addresses,  EmbaddedAddress? address,  Map<String, dynamic>? metadata,  List<EmbaddedContact>? contacts, @JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson)  StoreIntegrations? integrations,  List<List<num?>?>? defaultShippingRates, @JsonKey(includeFromJson: false)  List<String> setToNull, @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson)  StoreSubscription? subscription,  num? due,  StoreConfigs? configs,  String? shippingPriceId,  String? templateId,  String? projectId)  $default,) {final _that = this;
switch (_that) {
case _StoreUpdate():
return $default(_that.name,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.logoUrl,_that.iconUrl,_that.ondarkLogoUrl,_that.categories,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.setToNull,_that.subscription,_that.due,_that.configs,_that.shippingPriceId,_that.templateId,_that.projectId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? slug,  StoreBanner? banner,  StoreAction? action,  StoreDomain? domain,  StoreDecoration? decoration,  String? logoUrl,  String? iconUrl,  String? ondarkLogoUrl,  List<EmbaddedCategory>? categories,  String? title,  String? description,  List<EmbaddedAddress>? addresses,  EmbaddedAddress? address,  Map<String, dynamic>? metadata,  List<EmbaddedContact>? contacts, @JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson)  StoreIntegrations? integrations,  List<List<num?>?>? defaultShippingRates, @JsonKey(includeFromJson: false)  List<String> setToNull, @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson)  StoreSubscription? subscription,  num? due,  StoreConfigs? configs,  String? shippingPriceId,  String? templateId,  String? projectId)?  $default,) {final _that = this;
switch (_that) {
case _StoreUpdate() when $default != null:
return $default(_that.name,_that.slug,_that.banner,_that.action,_that.domain,_that.decoration,_that.logoUrl,_that.iconUrl,_that.ondarkLogoUrl,_that.categories,_that.title,_that.description,_that.addresses,_that.address,_that.metadata,_that.contacts,_that.integrations,_that.defaultShippingRates,_that.setToNull,_that.subscription,_that.due,_that.configs,_that.shippingPriceId,_that.templateId,_that.projectId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreUpdate implements StoreUpdate {
  const _StoreUpdate({this.name, this.slug, this.banner, this.action, this.domain, this.decoration, this.logoUrl, this.iconUrl, this.ondarkLogoUrl, final  List<EmbaddedCategory>? categories, this.title, this.description, final  List<EmbaddedAddress>? addresses, this.address, final  Map<String, dynamic>? metadata, final  List<EmbaddedContact>? contacts, @JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson) this.integrations, final  List<List<num?>?>? defaultShippingRates, @JsonKey(includeFromJson: false) final  List<String> setToNull = const [], @JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) this.subscription, this.due, this.configs, this.shippingPriceId, this.templateId, this.projectId}): _categories = categories,_addresses = addresses,_metadata = metadata,_contacts = contacts,_defaultShippingRates = defaultShippingRates,_setToNull = setToNull;
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
@override@JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) final  StoreSubscription? subscription;
@override final  num? due;
// StoreConfigs
@override final  StoreConfigs? configs;
@override final  String? shippingPriceId;
@override final  String? templateId;
@override final  String? projectId;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.action, action) || other.action == action)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.decoration, decoration) || other.decoration == decoration)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._contacts, _contacts)&&(identical(other.integrations, integrations) || other.integrations == integrations)&&const DeepCollectionEquality().equals(other._defaultShippingRates, _defaultShippingRates)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.due, due) || other.due == due)&&(identical(other.configs, configs) || other.configs == configs)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.projectId, projectId) || other.projectId == projectId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,slug,banner,action,domain,decoration,logoUrl,iconUrl,ondarkLogoUrl,const DeepCollectionEquality().hash(_categories),title,description,const DeepCollectionEquality().hash(_addresses),address,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_contacts),integrations,const DeepCollectionEquality().hash(_defaultShippingRates),const DeepCollectionEquality().hash(_setToNull),subscription,due,configs,shippingPriceId,templateId,projectId]);

@override
String toString() {
  return 'StoreUpdate(name: $name, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, logoUrl: $logoUrl, iconUrl: $iconUrl, ondarkLogoUrl: $ondarkLogoUrl, categories: $categories, title: $title, description: $description, addresses: $addresses, address: $address, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, setToNull: $setToNull, subscription: $subscription, due: $due, configs: $configs, shippingPriceId: $shippingPriceId, templateId: $templateId, projectId: $projectId)';
}


}

/// @nodoc
abstract mixin class _$StoreUpdateCopyWith<$Res> implements $StoreUpdateCopyWith<$Res> {
  factory _$StoreUpdateCopyWith(_StoreUpdate value, $Res Function(_StoreUpdate) _then) = __$StoreUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? slug, StoreBanner? banner, StoreAction? action, StoreDomain? domain, StoreDecoration? decoration, String? logoUrl, String? iconUrl, String? ondarkLogoUrl, List<EmbaddedCategory>? categories, String? title, String? description, List<EmbaddedAddress>? addresses, EmbaddedAddress? address, Map<String, dynamic>? metadata, List<EmbaddedContact>? contacts,@JsonKey(fromJson: _storeIntegrationsFromJsonNullable, toJson: _storeIntegrationsToJson) StoreIntegrations? integrations, List<List<num?>?>? defaultShippingRates,@JsonKey(includeFromJson: false) List<String> setToNull,@JsonKey(fromJson: _storeSubscriptionFromJson, toJson: _storeSubscriptionToJson) StoreSubscription? subscription, num? due, StoreConfigs? configs, String? shippingPriceId, String? templateId, String? projectId
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? slug = freezed,Object? banner = freezed,Object? action = freezed,Object? domain = freezed,Object? decoration = freezed,Object? logoUrl = freezed,Object? iconUrl = freezed,Object? ondarkLogoUrl = freezed,Object? categories = freezed,Object? title = freezed,Object? description = freezed,Object? addresses = freezed,Object? address = freezed,Object? metadata = freezed,Object? contacts = freezed,Object? integrations = freezed,Object? defaultShippingRates = freezed,Object? setToNull = null,Object? subscription = freezed,Object? due = freezed,Object? configs = freezed,Object? shippingPriceId = freezed,Object? templateId = freezed,Object? projectId = freezed,}) {
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
as String?,templateId: freezed == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String?,projectId: freezed == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
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
mixin _$StoreIntegrationSubscription {

 DateTime get startAt; DateTime? get expiresAt; IntegrationBillingStatus get status; num get price; bool get autoRenew; int get failedAttempts; DateTime? get nextRetryAt;
/// Create a copy of StoreIntegrationSubscription
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreIntegrationSubscriptionCopyWith<StoreIntegrationSubscription> get copyWith => _$StoreIntegrationSubscriptionCopyWithImpl<StoreIntegrationSubscription>(this as StoreIntegrationSubscription, _$identity);

  /// Serializes this StoreIntegrationSubscription to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreIntegrationSubscription&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.price, price) || other.price == price)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew)&&(identical(other.failedAttempts, failedAttempts) || other.failedAttempts == failedAttempts)&&(identical(other.nextRetryAt, nextRetryAt) || other.nextRetryAt == nextRetryAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startAt,expiresAt,status,price,autoRenew,failedAttempts,nextRetryAt);

@override
String toString() {
  return 'StoreIntegrationSubscription(startAt: $startAt, expiresAt: $expiresAt, status: $status, price: $price, autoRenew: $autoRenew, failedAttempts: $failedAttempts, nextRetryAt: $nextRetryAt)';
}


}

/// @nodoc
abstract mixin class $StoreIntegrationSubscriptionCopyWith<$Res>  {
  factory $StoreIntegrationSubscriptionCopyWith(StoreIntegrationSubscription value, $Res Function(StoreIntegrationSubscription) _then) = _$StoreIntegrationSubscriptionCopyWithImpl;
@useResult
$Res call({
 DateTime startAt, DateTime? expiresAt, IntegrationBillingStatus status, num price, bool autoRenew, int failedAttempts, DateTime? nextRetryAt
});




}
/// @nodoc
class _$StoreIntegrationSubscriptionCopyWithImpl<$Res>
    implements $StoreIntegrationSubscriptionCopyWith<$Res> {
  _$StoreIntegrationSubscriptionCopyWithImpl(this._self, this._then);

  final StoreIntegrationSubscription _self;
  final $Res Function(StoreIntegrationSubscription) _then;

/// Create a copy of StoreIntegrationSubscription
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startAt = null,Object? expiresAt = freezed,Object? status = null,Object? price = null,Object? autoRenew = null,Object? failedAttempts = null,Object? nextRetryAt = freezed,}) {
  return _then(_self.copyWith(
startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as IntegrationBillingStatus,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,autoRenew: null == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool,failedAttempts: null == failedAttempts ? _self.failedAttempts : failedAttempts // ignore: cast_nullable_to_non_nullable
as int,nextRetryAt: freezed == nextRetryAt ? _self.nextRetryAt : nextRetryAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreIntegrationSubscription].
extension StoreIntegrationSubscriptionPatterns on StoreIntegrationSubscription {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreIntegrationSubscription value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreIntegrationSubscription() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreIntegrationSubscription value)  $default,){
final _that = this;
switch (_that) {
case _StoreIntegrationSubscription():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreIntegrationSubscription value)?  $default,){
final _that = this;
switch (_that) {
case _StoreIntegrationSubscription() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime startAt,  DateTime? expiresAt,  IntegrationBillingStatus status,  num price,  bool autoRenew,  int failedAttempts,  DateTime? nextRetryAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreIntegrationSubscription() when $default != null:
return $default(_that.startAt,_that.expiresAt,_that.status,_that.price,_that.autoRenew,_that.failedAttempts,_that.nextRetryAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime startAt,  DateTime? expiresAt,  IntegrationBillingStatus status,  num price,  bool autoRenew,  int failedAttempts,  DateTime? nextRetryAt)  $default,) {final _that = this;
switch (_that) {
case _StoreIntegrationSubscription():
return $default(_that.startAt,_that.expiresAt,_that.status,_that.price,_that.autoRenew,_that.failedAttempts,_that.nextRetryAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime startAt,  DateTime? expiresAt,  IntegrationBillingStatus status,  num price,  bool autoRenew,  int failedAttempts,  DateTime? nextRetryAt)?  $default,) {final _that = this;
switch (_that) {
case _StoreIntegrationSubscription() when $default != null:
return $default(_that.startAt,_that.expiresAt,_that.status,_that.price,_that.autoRenew,_that.failedAttempts,_that.nextRetryAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreIntegrationSubscription implements StoreIntegrationSubscription {
  const _StoreIntegrationSubscription({required this.startAt, this.expiresAt, this.status = IntegrationBillingStatus.active, this.price = 0, this.autoRenew = true, this.failedAttempts = 0, this.nextRetryAt});
  factory _StoreIntegrationSubscription.fromJson(Map<String, dynamic> json) => _$StoreIntegrationSubscriptionFromJson(json);

@override final  DateTime startAt;
@override final  DateTime? expiresAt;
@override@JsonKey() final  IntegrationBillingStatus status;
@override@JsonKey() final  num price;
@override@JsonKey() final  bool autoRenew;
@override@JsonKey() final  int failedAttempts;
@override final  DateTime? nextRetryAt;

/// Create a copy of StoreIntegrationSubscription
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreIntegrationSubscriptionCopyWith<_StoreIntegrationSubscription> get copyWith => __$StoreIntegrationSubscriptionCopyWithImpl<_StoreIntegrationSubscription>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreIntegrationSubscriptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreIntegrationSubscription&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.price, price) || other.price == price)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew)&&(identical(other.failedAttempts, failedAttempts) || other.failedAttempts == failedAttempts)&&(identical(other.nextRetryAt, nextRetryAt) || other.nextRetryAt == nextRetryAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startAt,expiresAt,status,price,autoRenew,failedAttempts,nextRetryAt);

@override
String toString() {
  return 'StoreIntegrationSubscription(startAt: $startAt, expiresAt: $expiresAt, status: $status, price: $price, autoRenew: $autoRenew, failedAttempts: $failedAttempts, nextRetryAt: $nextRetryAt)';
}


}

/// @nodoc
abstract mixin class _$StoreIntegrationSubscriptionCopyWith<$Res> implements $StoreIntegrationSubscriptionCopyWith<$Res> {
  factory _$StoreIntegrationSubscriptionCopyWith(_StoreIntegrationSubscription value, $Res Function(_StoreIntegrationSubscription) _then) = __$StoreIntegrationSubscriptionCopyWithImpl;
@override @useResult
$Res call({
 DateTime startAt, DateTime? expiresAt, IntegrationBillingStatus status, num price, bool autoRenew, int failedAttempts, DateTime? nextRetryAt
});




}
/// @nodoc
class __$StoreIntegrationSubscriptionCopyWithImpl<$Res>
    implements _$StoreIntegrationSubscriptionCopyWith<$Res> {
  __$StoreIntegrationSubscriptionCopyWithImpl(this._self, this._then);

  final _StoreIntegrationSubscription _self;
  final $Res Function(_StoreIntegrationSubscription) _then;

/// Create a copy of StoreIntegrationSubscription
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startAt = null,Object? expiresAt = freezed,Object? status = null,Object? price = null,Object? autoRenew = null,Object? failedAttempts = null,Object? nextRetryAt = freezed,}) {
  return _then(_StoreIntegrationSubscription(
startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as IntegrationBillingStatus,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,autoRenew: null == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool,failedAttempts: null == failedAttempts ? _self.failedAttempts : failedAttempts // ignore: cast_nullable_to_non_nullable
as int,nextRetryAt: freezed == nextRetryAt ? _self.nextRetryAt : nextRetryAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$StoreSubscription {

 StoreSubscriptionType get type; StoreSubscriptionStatus get status; num get quota; num get consumed; DateTime get startedAt; DateTime? get expiresAt; Map<String, dynamic> get metadata;@JsonKey(fromJson: _storeSubscriptionIntegrationsFromJson, toJson: _storeSubscriptionIntegrationsToJson) Map<String, StoreIntegrationSubscription> get integrations;
/// Create a copy of StoreSubscription
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreSubscriptionCopyWith<StoreSubscription> get copyWith => _$StoreSubscriptionCopyWithImpl<StoreSubscription>(this as StoreSubscription, _$identity);

  /// Serializes this StoreSubscription to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreSubscription&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.quota, quota) || other.quota == quota)&&(identical(other.consumed, consumed) || other.consumed == consumed)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.integrations, integrations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,status,quota,consumed,startedAt,expiresAt,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(integrations));

@override
String toString() {
  return 'StoreSubscription(type: $type, status: $status, quota: $quota, consumed: $consumed, startedAt: $startedAt, expiresAt: $expiresAt, metadata: $metadata, integrations: $integrations)';
}


}

/// @nodoc
abstract mixin class $StoreSubscriptionCopyWith<$Res>  {
  factory $StoreSubscriptionCopyWith(StoreSubscription value, $Res Function(StoreSubscription) _then) = _$StoreSubscriptionCopyWithImpl;
@useResult
$Res call({
 StoreSubscriptionType type, StoreSubscriptionStatus status, num quota, num consumed, DateTime startedAt, DateTime? expiresAt, Map<String, dynamic> metadata,@JsonKey(fromJson: _storeSubscriptionIntegrationsFromJson, toJson: _storeSubscriptionIntegrationsToJson) Map<String, StoreIntegrationSubscription> integrations
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
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? status = null,Object? quota = null,Object? consumed = null,Object? startedAt = null,Object? expiresAt = freezed,Object? metadata = null,Object? integrations = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StoreSubscriptionType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StoreSubscriptionStatus,quota: null == quota ? _self.quota : quota // ignore: cast_nullable_to_non_nullable
as num,consumed: null == consumed ? _self.consumed : consumed // ignore: cast_nullable_to_non_nullable
as num,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,integrations: null == integrations ? _self.integrations : integrations // ignore: cast_nullable_to_non_nullable
as Map<String, StoreIntegrationSubscription>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StoreSubscriptionType type,  StoreSubscriptionStatus status,  num quota,  num consumed,  DateTime startedAt,  DateTime? expiresAt,  Map<String, dynamic> metadata, @JsonKey(fromJson: _storeSubscriptionIntegrationsFromJson, toJson: _storeSubscriptionIntegrationsToJson)  Map<String, StoreIntegrationSubscription> integrations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreSubscription() when $default != null:
return $default(_that.type,_that.status,_that.quota,_that.consumed,_that.startedAt,_that.expiresAt,_that.metadata,_that.integrations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StoreSubscriptionType type,  StoreSubscriptionStatus status,  num quota,  num consumed,  DateTime startedAt,  DateTime? expiresAt,  Map<String, dynamic> metadata, @JsonKey(fromJson: _storeSubscriptionIntegrationsFromJson, toJson: _storeSubscriptionIntegrationsToJson)  Map<String, StoreIntegrationSubscription> integrations)  $default,) {final _that = this;
switch (_that) {
case _StoreSubscription():
return $default(_that.type,_that.status,_that.quota,_that.consumed,_that.startedAt,_that.expiresAt,_that.metadata,_that.integrations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StoreSubscriptionType type,  StoreSubscriptionStatus status,  num quota,  num consumed,  DateTime startedAt,  DateTime? expiresAt,  Map<String, dynamic> metadata, @JsonKey(fromJson: _storeSubscriptionIntegrationsFromJson, toJson: _storeSubscriptionIntegrationsToJson)  Map<String, StoreIntegrationSubscription> integrations)?  $default,) {final _that = this;
switch (_that) {
case _StoreSubscription() when $default != null:
return $default(_that.type,_that.status,_that.quota,_that.consumed,_that.startedAt,_that.expiresAt,_that.metadata,_that.integrations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreSubscription implements StoreSubscription {
  const _StoreSubscription({required this.type, required this.status, this.quota = 0, this.consumed = 0, required this.startedAt, this.expiresAt, final  Map<String, dynamic> metadata = const {}, @JsonKey(fromJson: _storeSubscriptionIntegrationsFromJson, toJson: _storeSubscriptionIntegrationsToJson) final  Map<String, StoreIntegrationSubscription> integrations = const {}}): _metadata = metadata,_integrations = integrations;
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

 final  Map<String, StoreIntegrationSubscription> _integrations;
@override@JsonKey(fromJson: _storeSubscriptionIntegrationsFromJson, toJson: _storeSubscriptionIntegrationsToJson) Map<String, StoreIntegrationSubscription> get integrations {
  if (_integrations is EqualUnmodifiableMapView) return _integrations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_integrations);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreSubscription&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.quota, quota) || other.quota == quota)&&(identical(other.consumed, consumed) || other.consumed == consumed)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._integrations, _integrations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,status,quota,consumed,startedAt,expiresAt,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_integrations));

@override
String toString() {
  return 'StoreSubscription(type: $type, status: $status, quota: $quota, consumed: $consumed, startedAt: $startedAt, expiresAt: $expiresAt, metadata: $metadata, integrations: $integrations)';
}


}

/// @nodoc
abstract mixin class _$StoreSubscriptionCopyWith<$Res> implements $StoreSubscriptionCopyWith<$Res> {
  factory _$StoreSubscriptionCopyWith(_StoreSubscription value, $Res Function(_StoreSubscription) _then) = __$StoreSubscriptionCopyWithImpl;
@override @useResult
$Res call({
 StoreSubscriptionType type, StoreSubscriptionStatus status, num quota, num consumed, DateTime startedAt, DateTime? expiresAt, Map<String, dynamic> metadata,@JsonKey(fromJson: _storeSubscriptionIntegrationsFromJson, toJson: _storeSubscriptionIntegrationsToJson) Map<String, StoreIntegrationSubscription> integrations
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
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? status = null,Object? quota = null,Object? consumed = null,Object? startedAt = null,Object? expiresAt = freezed,Object? metadata = null,Object? integrations = null,}) {
  return _then(_StoreSubscription(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StoreSubscriptionType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StoreSubscriptionStatus,quota: null == quota ? _self.quota : quota // ignore: cast_nullable_to_non_nullable
as num,consumed: null == consumed ? _self.consumed : consumed // ignore: cast_nullable_to_non_nullable
as num,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,integrations: null == integrations ? _self._integrations : integrations // ignore: cast_nullable_to_non_nullable
as Map<String, StoreIntegrationSubscription>,
  ));
}


}


/// @nodoc
mixin _$StoreConfigs {

 List<StoreCurrencyConfig> get currencies; String? get selectedCurrency; List<StoreLanguageConfig> get languages; String? get defaultLanguage; List<StoreCountryConfig> get countries; String? get selectedCountry; List<CustomStatusMapping> get customStatusMappings; bool get customStatusEnabled; InventoryIntegration? get inventory_integration; FinanceIntegration? get finance_integration;
/// Create a copy of StoreConfigs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreConfigsCopyWith<StoreConfigs> get copyWith => _$StoreConfigsCopyWithImpl<StoreConfigs>(this as StoreConfigs, _$identity);

  /// Serializes this StoreConfigs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreConfigs&&const DeepCollectionEquality().equals(other.currencies, currencies)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.defaultLanguage, defaultLanguage) || other.defaultLanguage == defaultLanguage)&&const DeepCollectionEquality().equals(other.countries, countries)&&(identical(other.selectedCountry, selectedCountry) || other.selectedCountry == selectedCountry)&&const DeepCollectionEquality().equals(other.customStatusMappings, customStatusMappings)&&(identical(other.customStatusEnabled, customStatusEnabled) || other.customStatusEnabled == customStatusEnabled)&&(identical(other.inventory_integration, inventory_integration) || other.inventory_integration == inventory_integration)&&(identical(other.finance_integration, finance_integration) || other.finance_integration == finance_integration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currencies),selectedCurrency,const DeepCollectionEquality().hash(languages),defaultLanguage,const DeepCollectionEquality().hash(countries),selectedCountry,const DeepCollectionEquality().hash(customStatusMappings),customStatusEnabled,inventory_integration,finance_integration);

@override
String toString() {
  return 'StoreConfigs(currencies: $currencies, selectedCurrency: $selectedCurrency, languages: $languages, defaultLanguage: $defaultLanguage, countries: $countries, selectedCountry: $selectedCountry, customStatusMappings: $customStatusMappings, customStatusEnabled: $customStatusEnabled, inventory_integration: $inventory_integration, finance_integration: $finance_integration)';
}


}

/// @nodoc
abstract mixin class $StoreConfigsCopyWith<$Res>  {
  factory $StoreConfigsCopyWith(StoreConfigs value, $Res Function(StoreConfigs) _then) = _$StoreConfigsCopyWithImpl;
@useResult
$Res call({
 List<StoreCurrencyConfig> currencies, String? selectedCurrency, List<StoreLanguageConfig> languages, String? defaultLanguage, List<StoreCountryConfig> countries, String? selectedCountry, List<CustomStatusMapping> customStatusMappings, bool customStatusEnabled, InventoryIntegration? inventory_integration, FinanceIntegration? finance_integration
});


$InventoryIntegrationCopyWith<$Res>? get inventory_integration;$FinanceIntegrationCopyWith<$Res>? get finance_integration;

}
/// @nodoc
class _$StoreConfigsCopyWithImpl<$Res>
    implements $StoreConfigsCopyWith<$Res> {
  _$StoreConfigsCopyWithImpl(this._self, this._then);

  final StoreConfigs _self;
  final $Res Function(StoreConfigs) _then;

/// Create a copy of StoreConfigs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currencies = null,Object? selectedCurrency = freezed,Object? languages = null,Object? defaultLanguage = freezed,Object? countries = null,Object? selectedCountry = freezed,Object? customStatusMappings = null,Object? customStatusEnabled = null,Object? inventory_integration = freezed,Object? finance_integration = freezed,}) {
  return _then(_self.copyWith(
currencies: null == currencies ? _self.currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<StoreCurrencyConfig>,selectedCurrency: freezed == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as String?,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<StoreLanguageConfig>,defaultLanguage: freezed == defaultLanguage ? _self.defaultLanguage : defaultLanguage // ignore: cast_nullable_to_non_nullable
as String?,countries: null == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as List<StoreCountryConfig>,selectedCountry: freezed == selectedCountry ? _self.selectedCountry : selectedCountry // ignore: cast_nullable_to_non_nullable
as String?,customStatusMappings: null == customStatusMappings ? _self.customStatusMappings : customStatusMappings // ignore: cast_nullable_to_non_nullable
as List<CustomStatusMapping>,customStatusEnabled: null == customStatusEnabled ? _self.customStatusEnabled : customStatusEnabled // ignore: cast_nullable_to_non_nullable
as bool,inventory_integration: freezed == inventory_integration ? _self.inventory_integration : inventory_integration // ignore: cast_nullable_to_non_nullable
as InventoryIntegration?,finance_integration: freezed == finance_integration ? _self.finance_integration : finance_integration // ignore: cast_nullable_to_non_nullable
as FinanceIntegration?,
  ));
}
/// Create a copy of StoreConfigs
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryIntegrationCopyWith<$Res>? get inventory_integration {
    if (_self.inventory_integration == null) {
    return null;
  }

  return $InventoryIntegrationCopyWith<$Res>(_self.inventory_integration!, (value) {
    return _then(_self.copyWith(inventory_integration: value));
  });
}/// Create a copy of StoreConfigs
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceIntegrationCopyWith<$Res>? get finance_integration {
    if (_self.finance_integration == null) {
    return null;
  }

  return $FinanceIntegrationCopyWith<$Res>(_self.finance_integration!, (value) {
    return _then(_self.copyWith(finance_integration: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StoreCurrencyConfig> currencies,  String? selectedCurrency,  List<StoreLanguageConfig> languages,  String? defaultLanguage,  List<StoreCountryConfig> countries,  String? selectedCountry,  List<CustomStatusMapping> customStatusMappings,  bool customStatusEnabled,  InventoryIntegration? inventory_integration,  FinanceIntegration? finance_integration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreConfigs() when $default != null:
return $default(_that.currencies,_that.selectedCurrency,_that.languages,_that.defaultLanguage,_that.countries,_that.selectedCountry,_that.customStatusMappings,_that.customStatusEnabled,_that.inventory_integration,_that.finance_integration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StoreCurrencyConfig> currencies,  String? selectedCurrency,  List<StoreLanguageConfig> languages,  String? defaultLanguage,  List<StoreCountryConfig> countries,  String? selectedCountry,  List<CustomStatusMapping> customStatusMappings,  bool customStatusEnabled,  InventoryIntegration? inventory_integration,  FinanceIntegration? finance_integration)  $default,) {final _that = this;
switch (_that) {
case _StoreConfigs():
return $default(_that.currencies,_that.selectedCurrency,_that.languages,_that.defaultLanguage,_that.countries,_that.selectedCountry,_that.customStatusMappings,_that.customStatusEnabled,_that.inventory_integration,_that.finance_integration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StoreCurrencyConfig> currencies,  String? selectedCurrency,  List<StoreLanguageConfig> languages,  String? defaultLanguage,  List<StoreCountryConfig> countries,  String? selectedCountry,  List<CustomStatusMapping> customStatusMappings,  bool customStatusEnabled,  InventoryIntegration? inventory_integration,  FinanceIntegration? finance_integration)?  $default,) {final _that = this;
switch (_that) {
case _StoreConfigs() when $default != null:
return $default(_that.currencies,_that.selectedCurrency,_that.languages,_that.defaultLanguage,_that.countries,_that.selectedCountry,_that.customStatusMappings,_that.customStatusEnabled,_that.inventory_integration,_that.finance_integration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreConfigs implements StoreConfigs {
  const _StoreConfigs({required final  List<StoreCurrencyConfig> currencies, this.selectedCurrency, final  List<StoreLanguageConfig> languages = const [], this.defaultLanguage, final  List<StoreCountryConfig> countries = const [], this.selectedCountry, final  List<CustomStatusMapping> customStatusMappings = const [], this.customStatusEnabled = false, this.inventory_integration, this.finance_integration}): _currencies = currencies,_languages = languages,_countries = countries,_customStatusMappings = customStatusMappings;
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
@override final  InventoryIntegration? inventory_integration;
@override final  FinanceIntegration? finance_integration;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreConfigs&&const DeepCollectionEquality().equals(other._currencies, _currencies)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.defaultLanguage, defaultLanguage) || other.defaultLanguage == defaultLanguage)&&const DeepCollectionEquality().equals(other._countries, _countries)&&(identical(other.selectedCountry, selectedCountry) || other.selectedCountry == selectedCountry)&&const DeepCollectionEquality().equals(other._customStatusMappings, _customStatusMappings)&&(identical(other.customStatusEnabled, customStatusEnabled) || other.customStatusEnabled == customStatusEnabled)&&(identical(other.inventory_integration, inventory_integration) || other.inventory_integration == inventory_integration)&&(identical(other.finance_integration, finance_integration) || other.finance_integration == finance_integration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currencies),selectedCurrency,const DeepCollectionEquality().hash(_languages),defaultLanguage,const DeepCollectionEquality().hash(_countries),selectedCountry,const DeepCollectionEquality().hash(_customStatusMappings),customStatusEnabled,inventory_integration,finance_integration);

@override
String toString() {
  return 'StoreConfigs(currencies: $currencies, selectedCurrency: $selectedCurrency, languages: $languages, defaultLanguage: $defaultLanguage, countries: $countries, selectedCountry: $selectedCountry, customStatusMappings: $customStatusMappings, customStatusEnabled: $customStatusEnabled, inventory_integration: $inventory_integration, finance_integration: $finance_integration)';
}


}

/// @nodoc
abstract mixin class _$StoreConfigsCopyWith<$Res> implements $StoreConfigsCopyWith<$Res> {
  factory _$StoreConfigsCopyWith(_StoreConfigs value, $Res Function(_StoreConfigs) _then) = __$StoreConfigsCopyWithImpl;
@override @useResult
$Res call({
 List<StoreCurrencyConfig> currencies, String? selectedCurrency, List<StoreLanguageConfig> languages, String? defaultLanguage, List<StoreCountryConfig> countries, String? selectedCountry, List<CustomStatusMapping> customStatusMappings, bool customStatusEnabled, InventoryIntegration? inventory_integration, FinanceIntegration? finance_integration
});


@override $InventoryIntegrationCopyWith<$Res>? get inventory_integration;@override $FinanceIntegrationCopyWith<$Res>? get finance_integration;

}
/// @nodoc
class __$StoreConfigsCopyWithImpl<$Res>
    implements _$StoreConfigsCopyWith<$Res> {
  __$StoreConfigsCopyWithImpl(this._self, this._then);

  final _StoreConfigs _self;
  final $Res Function(_StoreConfigs) _then;

/// Create a copy of StoreConfigs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currencies = null,Object? selectedCurrency = freezed,Object? languages = null,Object? defaultLanguage = freezed,Object? countries = null,Object? selectedCountry = freezed,Object? customStatusMappings = null,Object? customStatusEnabled = null,Object? inventory_integration = freezed,Object? finance_integration = freezed,}) {
  return _then(_StoreConfigs(
currencies: null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<StoreCurrencyConfig>,selectedCurrency: freezed == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as String?,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<StoreLanguageConfig>,defaultLanguage: freezed == defaultLanguage ? _self.defaultLanguage : defaultLanguage // ignore: cast_nullable_to_non_nullable
as String?,countries: null == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<StoreCountryConfig>,selectedCountry: freezed == selectedCountry ? _self.selectedCountry : selectedCountry // ignore: cast_nullable_to_non_nullable
as String?,customStatusMappings: null == customStatusMappings ? _self._customStatusMappings : customStatusMappings // ignore: cast_nullable_to_non_nullable
as List<CustomStatusMapping>,customStatusEnabled: null == customStatusEnabled ? _self.customStatusEnabled : customStatusEnabled // ignore: cast_nullable_to_non_nullable
as bool,inventory_integration: freezed == inventory_integration ? _self.inventory_integration : inventory_integration // ignore: cast_nullable_to_non_nullable
as InventoryIntegration?,finance_integration: freezed == finance_integration ? _self.finance_integration : finance_integration // ignore: cast_nullable_to_non_nullable
as FinanceIntegration?,
  ));
}

/// Create a copy of StoreConfigs
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryIntegrationCopyWith<$Res>? get inventory_integration {
    if (_self.inventory_integration == null) {
    return null;
  }

  return $InventoryIntegrationCopyWith<$Res>(_self.inventory_integration!, (value) {
    return _then(_self.copyWith(inventory_integration: value));
  });
}/// Create a copy of StoreConfigs
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceIntegrationCopyWith<$Res>? get finance_integration {
    if (_self.finance_integration == null) {
    return null;
  }

  return $FinanceIntegrationCopyWith<$Res>(_self.finance_integration!, (value) {
    return _then(_self.copyWith(finance_integration: value));
  });
}
}


/// @nodoc
mixin _$InventoryLifecycleRule {

 String get id; PixelStatusDimension get dimension; String get equals;
/// Create a copy of InventoryLifecycleRule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryLifecycleRuleCopyWith<InventoryLifecycleRule> get copyWith => _$InventoryLifecycleRuleCopyWithImpl<InventoryLifecycleRule>(this as InventoryLifecycleRule, _$identity);

  /// Serializes this InventoryLifecycleRule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryLifecycleRule&&(identical(other.id, id) || other.id == id)&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.equals, equals) || other.equals == equals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dimension,equals);

@override
String toString() {
  return 'InventoryLifecycleRule(id: $id, dimension: $dimension, equals: $equals)';
}


}

/// @nodoc
abstract mixin class $InventoryLifecycleRuleCopyWith<$Res>  {
  factory $InventoryLifecycleRuleCopyWith(InventoryLifecycleRule value, $Res Function(InventoryLifecycleRule) _then) = _$InventoryLifecycleRuleCopyWithImpl;
@useResult
$Res call({
 String id, PixelStatusDimension dimension, String equals
});




}
/// @nodoc
class _$InventoryLifecycleRuleCopyWithImpl<$Res>
    implements $InventoryLifecycleRuleCopyWith<$Res> {
  _$InventoryLifecycleRuleCopyWithImpl(this._self, this._then);

  final InventoryLifecycleRule _self;
  final $Res Function(InventoryLifecycleRule) _then;

/// Create a copy of InventoryLifecycleRule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dimension = null,Object? equals = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as PixelStatusDimension,equals: null == equals ? _self.equals : equals // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryLifecycleRule].
extension InventoryLifecycleRulePatterns on InventoryLifecycleRule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryLifecycleRule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryLifecycleRule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryLifecycleRule value)  $default,){
final _that = this;
switch (_that) {
case _InventoryLifecycleRule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryLifecycleRule value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryLifecycleRule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  PixelStatusDimension dimension,  String equals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryLifecycleRule() when $default != null:
return $default(_that.id,_that.dimension,_that.equals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  PixelStatusDimension dimension,  String equals)  $default,) {final _that = this;
switch (_that) {
case _InventoryLifecycleRule():
return $default(_that.id,_that.dimension,_that.equals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  PixelStatusDimension dimension,  String equals)?  $default,) {final _that = this;
switch (_that) {
case _InventoryLifecycleRule() when $default != null:
return $default(_that.id,_that.dimension,_that.equals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryLifecycleRule implements InventoryLifecycleRule {
  const _InventoryLifecycleRule({required this.id, required this.dimension, required this.equals});
  factory _InventoryLifecycleRule.fromJson(Map<String, dynamic> json) => _$InventoryLifecycleRuleFromJson(json);

@override final  String id;
@override final  PixelStatusDimension dimension;
@override final  String equals;

/// Create a copy of InventoryLifecycleRule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryLifecycleRuleCopyWith<_InventoryLifecycleRule> get copyWith => __$InventoryLifecycleRuleCopyWithImpl<_InventoryLifecycleRule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryLifecycleRuleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryLifecycleRule&&(identical(other.id, id) || other.id == id)&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.equals, equals) || other.equals == equals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dimension,equals);

@override
String toString() {
  return 'InventoryLifecycleRule(id: $id, dimension: $dimension, equals: $equals)';
}


}

/// @nodoc
abstract mixin class _$InventoryLifecycleRuleCopyWith<$Res> implements $InventoryLifecycleRuleCopyWith<$Res> {
  factory _$InventoryLifecycleRuleCopyWith(_InventoryLifecycleRule value, $Res Function(_InventoryLifecycleRule) _then) = __$InventoryLifecycleRuleCopyWithImpl;
@override @useResult
$Res call({
 String id, PixelStatusDimension dimension, String equals
});




}
/// @nodoc
class __$InventoryLifecycleRuleCopyWithImpl<$Res>
    implements _$InventoryLifecycleRuleCopyWith<$Res> {
  __$InventoryLifecycleRuleCopyWithImpl(this._self, this._then);

  final _InventoryLifecycleRule _self;
  final $Res Function(_InventoryLifecycleRule) _then;

/// Create a copy of InventoryLifecycleRule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dimension = null,Object? equals = null,}) {
  return _then(_InventoryLifecycleRule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as PixelStatusDimension,equals: null == equals ? _self.equals : equals // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$InventoryIntegration {

 List<OrderStatus> get reserve_on; List<OrderStatus> get unreserve_on; List<OrderStatus> get consume_on; List<InventoryLifecycleRule> get reserve_rules; List<InventoryLifecycleRule> get unreserve_rules; List<InventoryLifecycleRule> get consume_rules; MissingInventoryBucketPolicy get missing_bucket_policy; bool get allow_backorder;
/// Create a copy of InventoryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryIntegrationCopyWith<InventoryIntegration> get copyWith => _$InventoryIntegrationCopyWithImpl<InventoryIntegration>(this as InventoryIntegration, _$identity);

  /// Serializes this InventoryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryIntegration&&const DeepCollectionEquality().equals(other.reserve_on, reserve_on)&&const DeepCollectionEquality().equals(other.unreserve_on, unreserve_on)&&const DeepCollectionEquality().equals(other.consume_on, consume_on)&&const DeepCollectionEquality().equals(other.reserve_rules, reserve_rules)&&const DeepCollectionEquality().equals(other.unreserve_rules, unreserve_rules)&&const DeepCollectionEquality().equals(other.consume_rules, consume_rules)&&(identical(other.missing_bucket_policy, missing_bucket_policy) || other.missing_bucket_policy == missing_bucket_policy)&&(identical(other.allow_backorder, allow_backorder) || other.allow_backorder == allow_backorder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(reserve_on),const DeepCollectionEquality().hash(unreserve_on),const DeepCollectionEquality().hash(consume_on),const DeepCollectionEquality().hash(reserve_rules),const DeepCollectionEquality().hash(unreserve_rules),const DeepCollectionEquality().hash(consume_rules),missing_bucket_policy,allow_backorder);

@override
String toString() {
  return 'InventoryIntegration(reserve_on: $reserve_on, unreserve_on: $unreserve_on, consume_on: $consume_on, reserve_rules: $reserve_rules, unreserve_rules: $unreserve_rules, consume_rules: $consume_rules, missing_bucket_policy: $missing_bucket_policy, allow_backorder: $allow_backorder)';
}


}

/// @nodoc
abstract mixin class $InventoryIntegrationCopyWith<$Res>  {
  factory $InventoryIntegrationCopyWith(InventoryIntegration value, $Res Function(InventoryIntegration) _then) = _$InventoryIntegrationCopyWithImpl;
@useResult
$Res call({
 List<OrderStatus> reserve_on, List<OrderStatus> unreserve_on, List<OrderStatus> consume_on, List<InventoryLifecycleRule> reserve_rules, List<InventoryLifecycleRule> unreserve_rules, List<InventoryLifecycleRule> consume_rules, MissingInventoryBucketPolicy missing_bucket_policy, bool allow_backorder
});




}
/// @nodoc
class _$InventoryIntegrationCopyWithImpl<$Res>
    implements $InventoryIntegrationCopyWith<$Res> {
  _$InventoryIntegrationCopyWithImpl(this._self, this._then);

  final InventoryIntegration _self;
  final $Res Function(InventoryIntegration) _then;

/// Create a copy of InventoryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reserve_on = null,Object? unreserve_on = null,Object? consume_on = null,Object? reserve_rules = null,Object? unreserve_rules = null,Object? consume_rules = null,Object? missing_bucket_policy = null,Object? allow_backorder = null,}) {
  return _then(_self.copyWith(
reserve_on: null == reserve_on ? _self.reserve_on : reserve_on // ignore: cast_nullable_to_non_nullable
as List<OrderStatus>,unreserve_on: null == unreserve_on ? _self.unreserve_on : unreserve_on // ignore: cast_nullable_to_non_nullable
as List<OrderStatus>,consume_on: null == consume_on ? _self.consume_on : consume_on // ignore: cast_nullable_to_non_nullable
as List<OrderStatus>,reserve_rules: null == reserve_rules ? _self.reserve_rules : reserve_rules // ignore: cast_nullable_to_non_nullable
as List<InventoryLifecycleRule>,unreserve_rules: null == unreserve_rules ? _self.unreserve_rules : unreserve_rules // ignore: cast_nullable_to_non_nullable
as List<InventoryLifecycleRule>,consume_rules: null == consume_rules ? _self.consume_rules : consume_rules // ignore: cast_nullable_to_non_nullable
as List<InventoryLifecycleRule>,missing_bucket_policy: null == missing_bucket_policy ? _self.missing_bucket_policy : missing_bucket_policy // ignore: cast_nullable_to_non_nullable
as MissingInventoryBucketPolicy,allow_backorder: null == allow_backorder ? _self.allow_backorder : allow_backorder // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryIntegration].
extension InventoryIntegrationPatterns on InventoryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _InventoryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OrderStatus> reserve_on,  List<OrderStatus> unreserve_on,  List<OrderStatus> consume_on,  List<InventoryLifecycleRule> reserve_rules,  List<InventoryLifecycleRule> unreserve_rules,  List<InventoryLifecycleRule> consume_rules,  MissingInventoryBucketPolicy missing_bucket_policy,  bool allow_backorder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryIntegration() when $default != null:
return $default(_that.reserve_on,_that.unreserve_on,_that.consume_on,_that.reserve_rules,_that.unreserve_rules,_that.consume_rules,_that.missing_bucket_policy,_that.allow_backorder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OrderStatus> reserve_on,  List<OrderStatus> unreserve_on,  List<OrderStatus> consume_on,  List<InventoryLifecycleRule> reserve_rules,  List<InventoryLifecycleRule> unreserve_rules,  List<InventoryLifecycleRule> consume_rules,  MissingInventoryBucketPolicy missing_bucket_policy,  bool allow_backorder)  $default,) {final _that = this;
switch (_that) {
case _InventoryIntegration():
return $default(_that.reserve_on,_that.unreserve_on,_that.consume_on,_that.reserve_rules,_that.unreserve_rules,_that.consume_rules,_that.missing_bucket_policy,_that.allow_backorder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OrderStatus> reserve_on,  List<OrderStatus> unreserve_on,  List<OrderStatus> consume_on,  List<InventoryLifecycleRule> reserve_rules,  List<InventoryLifecycleRule> unreserve_rules,  List<InventoryLifecycleRule> consume_rules,  MissingInventoryBucketPolicy missing_bucket_policy,  bool allow_backorder)?  $default,) {final _that = this;
switch (_that) {
case _InventoryIntegration() when $default != null:
return $default(_that.reserve_on,_that.unreserve_on,_that.consume_on,_that.reserve_rules,_that.unreserve_rules,_that.consume_rules,_that.missing_bucket_policy,_that.allow_backorder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryIntegration implements InventoryIntegration {
  const _InventoryIntegration({final  List<OrderStatus> reserve_on = const [], final  List<OrderStatus> unreserve_on = const [], final  List<OrderStatus> consume_on = const [], final  List<InventoryLifecycleRule> reserve_rules = const [], final  List<InventoryLifecycleRule> unreserve_rules = const [], final  List<InventoryLifecycleRule> consume_rules = const [], this.missing_bucket_policy = MissingInventoryBucketPolicy.ignore, this.allow_backorder = false}): _reserve_on = reserve_on,_unreserve_on = unreserve_on,_consume_on = consume_on,_reserve_rules = reserve_rules,_unreserve_rules = unreserve_rules,_consume_rules = consume_rules;
  factory _InventoryIntegration.fromJson(Map<String, dynamic> json) => _$InventoryIntegrationFromJson(json);

 final  List<OrderStatus> _reserve_on;
@override@JsonKey() List<OrderStatus> get reserve_on {
  if (_reserve_on is EqualUnmodifiableListView) return _reserve_on;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reserve_on);
}

 final  List<OrderStatus> _unreserve_on;
@override@JsonKey() List<OrderStatus> get unreserve_on {
  if (_unreserve_on is EqualUnmodifiableListView) return _unreserve_on;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_unreserve_on);
}

 final  List<OrderStatus> _consume_on;
@override@JsonKey() List<OrderStatus> get consume_on {
  if (_consume_on is EqualUnmodifiableListView) return _consume_on;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_consume_on);
}

 final  List<InventoryLifecycleRule> _reserve_rules;
@override@JsonKey() List<InventoryLifecycleRule> get reserve_rules {
  if (_reserve_rules is EqualUnmodifiableListView) return _reserve_rules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reserve_rules);
}

 final  List<InventoryLifecycleRule> _unreserve_rules;
@override@JsonKey() List<InventoryLifecycleRule> get unreserve_rules {
  if (_unreserve_rules is EqualUnmodifiableListView) return _unreserve_rules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_unreserve_rules);
}

 final  List<InventoryLifecycleRule> _consume_rules;
@override@JsonKey() List<InventoryLifecycleRule> get consume_rules {
  if (_consume_rules is EqualUnmodifiableListView) return _consume_rules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_consume_rules);
}

@override@JsonKey() final  MissingInventoryBucketPolicy missing_bucket_policy;
@override@JsonKey() final  bool allow_backorder;

/// Create a copy of InventoryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryIntegrationCopyWith<_InventoryIntegration> get copyWith => __$InventoryIntegrationCopyWithImpl<_InventoryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryIntegration&&const DeepCollectionEquality().equals(other._reserve_on, _reserve_on)&&const DeepCollectionEquality().equals(other._unreserve_on, _unreserve_on)&&const DeepCollectionEquality().equals(other._consume_on, _consume_on)&&const DeepCollectionEquality().equals(other._reserve_rules, _reserve_rules)&&const DeepCollectionEquality().equals(other._unreserve_rules, _unreserve_rules)&&const DeepCollectionEquality().equals(other._consume_rules, _consume_rules)&&(identical(other.missing_bucket_policy, missing_bucket_policy) || other.missing_bucket_policy == missing_bucket_policy)&&(identical(other.allow_backorder, allow_backorder) || other.allow_backorder == allow_backorder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reserve_on),const DeepCollectionEquality().hash(_unreserve_on),const DeepCollectionEquality().hash(_consume_on),const DeepCollectionEquality().hash(_reserve_rules),const DeepCollectionEquality().hash(_unreserve_rules),const DeepCollectionEquality().hash(_consume_rules),missing_bucket_policy,allow_backorder);

@override
String toString() {
  return 'InventoryIntegration(reserve_on: $reserve_on, unreserve_on: $unreserve_on, consume_on: $consume_on, reserve_rules: $reserve_rules, unreserve_rules: $unreserve_rules, consume_rules: $consume_rules, missing_bucket_policy: $missing_bucket_policy, allow_backorder: $allow_backorder)';
}


}

/// @nodoc
abstract mixin class _$InventoryIntegrationCopyWith<$Res> implements $InventoryIntegrationCopyWith<$Res> {
  factory _$InventoryIntegrationCopyWith(_InventoryIntegration value, $Res Function(_InventoryIntegration) _then) = __$InventoryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 List<OrderStatus> reserve_on, List<OrderStatus> unreserve_on, List<OrderStatus> consume_on, List<InventoryLifecycleRule> reserve_rules, List<InventoryLifecycleRule> unreserve_rules, List<InventoryLifecycleRule> consume_rules, MissingInventoryBucketPolicy missing_bucket_policy, bool allow_backorder
});




}
/// @nodoc
class __$InventoryIntegrationCopyWithImpl<$Res>
    implements _$InventoryIntegrationCopyWith<$Res> {
  __$InventoryIntegrationCopyWithImpl(this._self, this._then);

  final _InventoryIntegration _self;
  final $Res Function(_InventoryIntegration) _then;

/// Create a copy of InventoryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reserve_on = null,Object? unreserve_on = null,Object? consume_on = null,Object? reserve_rules = null,Object? unreserve_rules = null,Object? consume_rules = null,Object? missing_bucket_policy = null,Object? allow_backorder = null,}) {
  return _then(_InventoryIntegration(
reserve_on: null == reserve_on ? _self._reserve_on : reserve_on // ignore: cast_nullable_to_non_nullable
as List<OrderStatus>,unreserve_on: null == unreserve_on ? _self._unreserve_on : unreserve_on // ignore: cast_nullable_to_non_nullable
as List<OrderStatus>,consume_on: null == consume_on ? _self._consume_on : consume_on // ignore: cast_nullable_to_non_nullable
as List<OrderStatus>,reserve_rules: null == reserve_rules ? _self._reserve_rules : reserve_rules // ignore: cast_nullable_to_non_nullable
as List<InventoryLifecycleRule>,unreserve_rules: null == unreserve_rules ? _self._unreserve_rules : unreserve_rules // ignore: cast_nullable_to_non_nullable
as List<InventoryLifecycleRule>,consume_rules: null == consume_rules ? _self._consume_rules : consume_rules // ignore: cast_nullable_to_non_nullable
as List<InventoryLifecycleRule>,missing_bucket_policy: null == missing_bucket_policy ? _self.missing_bucket_policy : missing_bucket_policy // ignore: cast_nullable_to_non_nullable
as MissingInventoryBucketPolicy,allow_backorder: null == allow_backorder ? _self.allow_backorder : allow_backorder // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$FinancePdfSettings {

 FinancePdfPaperSize get paperSize; bool get showQrCode; bool get showLogo; bool get showStoreContact; bool get showSupplierDetails; bool get showDocumentId; bool get showFooter; bool get showStatusBadge; bool get showSignatureLines; bool get showPaymentHistory; String get footerNote;
/// Create a copy of FinancePdfSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancePdfSettingsCopyWith<FinancePdfSettings> get copyWith => _$FinancePdfSettingsCopyWithImpl<FinancePdfSettings>(this as FinancePdfSettings, _$identity);

  /// Serializes this FinancePdfSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancePdfSettings&&(identical(other.paperSize, paperSize) || other.paperSize == paperSize)&&(identical(other.showQrCode, showQrCode) || other.showQrCode == showQrCode)&&(identical(other.showLogo, showLogo) || other.showLogo == showLogo)&&(identical(other.showStoreContact, showStoreContact) || other.showStoreContact == showStoreContact)&&(identical(other.showSupplierDetails, showSupplierDetails) || other.showSupplierDetails == showSupplierDetails)&&(identical(other.showDocumentId, showDocumentId) || other.showDocumentId == showDocumentId)&&(identical(other.showFooter, showFooter) || other.showFooter == showFooter)&&(identical(other.showStatusBadge, showStatusBadge) || other.showStatusBadge == showStatusBadge)&&(identical(other.showSignatureLines, showSignatureLines) || other.showSignatureLines == showSignatureLines)&&(identical(other.showPaymentHistory, showPaymentHistory) || other.showPaymentHistory == showPaymentHistory)&&(identical(other.footerNote, footerNote) || other.footerNote == footerNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paperSize,showQrCode,showLogo,showStoreContact,showSupplierDetails,showDocumentId,showFooter,showStatusBadge,showSignatureLines,showPaymentHistory,footerNote);

@override
String toString() {
  return 'FinancePdfSettings(paperSize: $paperSize, showQrCode: $showQrCode, showLogo: $showLogo, showStoreContact: $showStoreContact, showSupplierDetails: $showSupplierDetails, showDocumentId: $showDocumentId, showFooter: $showFooter, showStatusBadge: $showStatusBadge, showSignatureLines: $showSignatureLines, showPaymentHistory: $showPaymentHistory, footerNote: $footerNote)';
}


}

/// @nodoc
abstract mixin class $FinancePdfSettingsCopyWith<$Res>  {
  factory $FinancePdfSettingsCopyWith(FinancePdfSettings value, $Res Function(FinancePdfSettings) _then) = _$FinancePdfSettingsCopyWithImpl;
@useResult
$Res call({
 FinancePdfPaperSize paperSize, bool showQrCode, bool showLogo, bool showStoreContact, bool showSupplierDetails, bool showDocumentId, bool showFooter, bool showStatusBadge, bool showSignatureLines, bool showPaymentHistory, String footerNote
});




}
/// @nodoc
class _$FinancePdfSettingsCopyWithImpl<$Res>
    implements $FinancePdfSettingsCopyWith<$Res> {
  _$FinancePdfSettingsCopyWithImpl(this._self, this._then);

  final FinancePdfSettings _self;
  final $Res Function(FinancePdfSettings) _then;

/// Create a copy of FinancePdfSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paperSize = null,Object? showQrCode = null,Object? showLogo = null,Object? showStoreContact = null,Object? showSupplierDetails = null,Object? showDocumentId = null,Object? showFooter = null,Object? showStatusBadge = null,Object? showSignatureLines = null,Object? showPaymentHistory = null,Object? footerNote = null,}) {
  return _then(_self.copyWith(
paperSize: null == paperSize ? _self.paperSize : paperSize // ignore: cast_nullable_to_non_nullable
as FinancePdfPaperSize,showQrCode: null == showQrCode ? _self.showQrCode : showQrCode // ignore: cast_nullable_to_non_nullable
as bool,showLogo: null == showLogo ? _self.showLogo : showLogo // ignore: cast_nullable_to_non_nullable
as bool,showStoreContact: null == showStoreContact ? _self.showStoreContact : showStoreContact // ignore: cast_nullable_to_non_nullable
as bool,showSupplierDetails: null == showSupplierDetails ? _self.showSupplierDetails : showSupplierDetails // ignore: cast_nullable_to_non_nullable
as bool,showDocumentId: null == showDocumentId ? _self.showDocumentId : showDocumentId // ignore: cast_nullable_to_non_nullable
as bool,showFooter: null == showFooter ? _self.showFooter : showFooter // ignore: cast_nullable_to_non_nullable
as bool,showStatusBadge: null == showStatusBadge ? _self.showStatusBadge : showStatusBadge // ignore: cast_nullable_to_non_nullable
as bool,showSignatureLines: null == showSignatureLines ? _self.showSignatureLines : showSignatureLines // ignore: cast_nullable_to_non_nullable
as bool,showPaymentHistory: null == showPaymentHistory ? _self.showPaymentHistory : showPaymentHistory // ignore: cast_nullable_to_non_nullable
as bool,footerNote: null == footerNote ? _self.footerNote : footerNote // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FinancePdfSettings].
extension FinancePdfSettingsPatterns on FinancePdfSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancePdfSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancePdfSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancePdfSettings value)  $default,){
final _that = this;
switch (_that) {
case _FinancePdfSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancePdfSettings value)?  $default,){
final _that = this;
switch (_that) {
case _FinancePdfSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FinancePdfPaperSize paperSize,  bool showQrCode,  bool showLogo,  bool showStoreContact,  bool showSupplierDetails,  bool showDocumentId,  bool showFooter,  bool showStatusBadge,  bool showSignatureLines,  bool showPaymentHistory,  String footerNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancePdfSettings() when $default != null:
return $default(_that.paperSize,_that.showQrCode,_that.showLogo,_that.showStoreContact,_that.showSupplierDetails,_that.showDocumentId,_that.showFooter,_that.showStatusBadge,_that.showSignatureLines,_that.showPaymentHistory,_that.footerNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FinancePdfPaperSize paperSize,  bool showQrCode,  bool showLogo,  bool showStoreContact,  bool showSupplierDetails,  bool showDocumentId,  bool showFooter,  bool showStatusBadge,  bool showSignatureLines,  bool showPaymentHistory,  String footerNote)  $default,) {final _that = this;
switch (_that) {
case _FinancePdfSettings():
return $default(_that.paperSize,_that.showQrCode,_that.showLogo,_that.showStoreContact,_that.showSupplierDetails,_that.showDocumentId,_that.showFooter,_that.showStatusBadge,_that.showSignatureLines,_that.showPaymentHistory,_that.footerNote);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FinancePdfPaperSize paperSize,  bool showQrCode,  bool showLogo,  bool showStoreContact,  bool showSupplierDetails,  bool showDocumentId,  bool showFooter,  bool showStatusBadge,  bool showSignatureLines,  bool showPaymentHistory,  String footerNote)?  $default,) {final _that = this;
switch (_that) {
case _FinancePdfSettings() when $default != null:
return $default(_that.paperSize,_that.showQrCode,_that.showLogo,_that.showStoreContact,_that.showSupplierDetails,_that.showDocumentId,_that.showFooter,_that.showStatusBadge,_that.showSignatureLines,_that.showPaymentHistory,_that.footerNote);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancePdfSettings implements FinancePdfSettings {
  const _FinancePdfSettings({this.paperSize = FinancePdfPaperSize.a4, this.showQrCode = true, this.showLogo = true, this.showStoreContact = true, this.showSupplierDetails = true, this.showDocumentId = true, this.showFooter = true, this.showStatusBadge = true, this.showSignatureLines = false, this.showPaymentHistory = true, this.footerNote = ''});
  factory _FinancePdfSettings.fromJson(Map<String, dynamic> json) => _$FinancePdfSettingsFromJson(json);

@override@JsonKey() final  FinancePdfPaperSize paperSize;
@override@JsonKey() final  bool showQrCode;
@override@JsonKey() final  bool showLogo;
@override@JsonKey() final  bool showStoreContact;
@override@JsonKey() final  bool showSupplierDetails;
@override@JsonKey() final  bool showDocumentId;
@override@JsonKey() final  bool showFooter;
@override@JsonKey() final  bool showStatusBadge;
@override@JsonKey() final  bool showSignatureLines;
@override@JsonKey() final  bool showPaymentHistory;
@override@JsonKey() final  String footerNote;

/// Create a copy of FinancePdfSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancePdfSettingsCopyWith<_FinancePdfSettings> get copyWith => __$FinancePdfSettingsCopyWithImpl<_FinancePdfSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancePdfSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancePdfSettings&&(identical(other.paperSize, paperSize) || other.paperSize == paperSize)&&(identical(other.showQrCode, showQrCode) || other.showQrCode == showQrCode)&&(identical(other.showLogo, showLogo) || other.showLogo == showLogo)&&(identical(other.showStoreContact, showStoreContact) || other.showStoreContact == showStoreContact)&&(identical(other.showSupplierDetails, showSupplierDetails) || other.showSupplierDetails == showSupplierDetails)&&(identical(other.showDocumentId, showDocumentId) || other.showDocumentId == showDocumentId)&&(identical(other.showFooter, showFooter) || other.showFooter == showFooter)&&(identical(other.showStatusBadge, showStatusBadge) || other.showStatusBadge == showStatusBadge)&&(identical(other.showSignatureLines, showSignatureLines) || other.showSignatureLines == showSignatureLines)&&(identical(other.showPaymentHistory, showPaymentHistory) || other.showPaymentHistory == showPaymentHistory)&&(identical(other.footerNote, footerNote) || other.footerNote == footerNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paperSize,showQrCode,showLogo,showStoreContact,showSupplierDetails,showDocumentId,showFooter,showStatusBadge,showSignatureLines,showPaymentHistory,footerNote);

@override
String toString() {
  return 'FinancePdfSettings(paperSize: $paperSize, showQrCode: $showQrCode, showLogo: $showLogo, showStoreContact: $showStoreContact, showSupplierDetails: $showSupplierDetails, showDocumentId: $showDocumentId, showFooter: $showFooter, showStatusBadge: $showStatusBadge, showSignatureLines: $showSignatureLines, showPaymentHistory: $showPaymentHistory, footerNote: $footerNote)';
}


}

/// @nodoc
abstract mixin class _$FinancePdfSettingsCopyWith<$Res> implements $FinancePdfSettingsCopyWith<$Res> {
  factory _$FinancePdfSettingsCopyWith(_FinancePdfSettings value, $Res Function(_FinancePdfSettings) _then) = __$FinancePdfSettingsCopyWithImpl;
@override @useResult
$Res call({
 FinancePdfPaperSize paperSize, bool showQrCode, bool showLogo, bool showStoreContact, bool showSupplierDetails, bool showDocumentId, bool showFooter, bool showStatusBadge, bool showSignatureLines, bool showPaymentHistory, String footerNote
});




}
/// @nodoc
class __$FinancePdfSettingsCopyWithImpl<$Res>
    implements _$FinancePdfSettingsCopyWith<$Res> {
  __$FinancePdfSettingsCopyWithImpl(this._self, this._then);

  final _FinancePdfSettings _self;
  final $Res Function(_FinancePdfSettings) _then;

/// Create a copy of FinancePdfSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paperSize = null,Object? showQrCode = null,Object? showLogo = null,Object? showStoreContact = null,Object? showSupplierDetails = null,Object? showDocumentId = null,Object? showFooter = null,Object? showStatusBadge = null,Object? showSignatureLines = null,Object? showPaymentHistory = null,Object? footerNote = null,}) {
  return _then(_FinancePdfSettings(
paperSize: null == paperSize ? _self.paperSize : paperSize // ignore: cast_nullable_to_non_nullable
as FinancePdfPaperSize,showQrCode: null == showQrCode ? _self.showQrCode : showQrCode // ignore: cast_nullable_to_non_nullable
as bool,showLogo: null == showLogo ? _self.showLogo : showLogo // ignore: cast_nullable_to_non_nullable
as bool,showStoreContact: null == showStoreContact ? _self.showStoreContact : showStoreContact // ignore: cast_nullable_to_non_nullable
as bool,showSupplierDetails: null == showSupplierDetails ? _self.showSupplierDetails : showSupplierDetails // ignore: cast_nullable_to_non_nullable
as bool,showDocumentId: null == showDocumentId ? _self.showDocumentId : showDocumentId // ignore: cast_nullable_to_non_nullable
as bool,showFooter: null == showFooter ? _self.showFooter : showFooter // ignore: cast_nullable_to_non_nullable
as bool,showStatusBadge: null == showStatusBadge ? _self.showStatusBadge : showStatusBadge // ignore: cast_nullable_to_non_nullable
as bool,showSignatureLines: null == showSignatureLines ? _self.showSignatureLines : showSignatureLines // ignore: cast_nullable_to_non_nullable
as bool,showPaymentHistory: null == showPaymentHistory ? _self.showPaymentHistory : showPaymentHistory // ignore: cast_nullable_to_non_nullable
as bool,footerNote: null == footerNote ? _self.footerNote : footerNote // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FinanceIntegration {

 List<OrderStatus> get recognize_on; FinancePdfSettings get pdf;/// Cash-basis metrics ignore payments/expenses before this UTC timestamp.
 String? get activated_at;
/// Create a copy of FinanceIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceIntegrationCopyWith<FinanceIntegration> get copyWith => _$FinanceIntegrationCopyWithImpl<FinanceIntegration>(this as FinanceIntegration, _$identity);

  /// Serializes this FinanceIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceIntegration&&const DeepCollectionEquality().equals(other.recognize_on, recognize_on)&&(identical(other.pdf, pdf) || other.pdf == pdf)&&(identical(other.activated_at, activated_at) || other.activated_at == activated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(recognize_on),pdf,activated_at);

@override
String toString() {
  return 'FinanceIntegration(recognize_on: $recognize_on, pdf: $pdf, activated_at: $activated_at)';
}


}

/// @nodoc
abstract mixin class $FinanceIntegrationCopyWith<$Res>  {
  factory $FinanceIntegrationCopyWith(FinanceIntegration value, $Res Function(FinanceIntegration) _then) = _$FinanceIntegrationCopyWithImpl;
@useResult
$Res call({
 List<OrderStatus> recognize_on, FinancePdfSettings pdf, String? activated_at
});


$FinancePdfSettingsCopyWith<$Res> get pdf;

}
/// @nodoc
class _$FinanceIntegrationCopyWithImpl<$Res>
    implements $FinanceIntegrationCopyWith<$Res> {
  _$FinanceIntegrationCopyWithImpl(this._self, this._then);

  final FinanceIntegration _self;
  final $Res Function(FinanceIntegration) _then;

/// Create a copy of FinanceIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recognize_on = null,Object? pdf = null,Object? activated_at = freezed,}) {
  return _then(_self.copyWith(
recognize_on: null == recognize_on ? _self.recognize_on : recognize_on // ignore: cast_nullable_to_non_nullable
as List<OrderStatus>,pdf: null == pdf ? _self.pdf : pdf // ignore: cast_nullable_to_non_nullable
as FinancePdfSettings,activated_at: freezed == activated_at ? _self.activated_at : activated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FinanceIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancePdfSettingsCopyWith<$Res> get pdf {
  
  return $FinancePdfSettingsCopyWith<$Res>(_self.pdf, (value) {
    return _then(_self.copyWith(pdf: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinanceIntegration].
extension FinanceIntegrationPatterns on FinanceIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinanceIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinanceIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinanceIntegration value)  $default,){
final _that = this;
switch (_that) {
case _FinanceIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinanceIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _FinanceIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OrderStatus> recognize_on,  FinancePdfSettings pdf,  String? activated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinanceIntegration() when $default != null:
return $default(_that.recognize_on,_that.pdf,_that.activated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OrderStatus> recognize_on,  FinancePdfSettings pdf,  String? activated_at)  $default,) {final _that = this;
switch (_that) {
case _FinanceIntegration():
return $default(_that.recognize_on,_that.pdf,_that.activated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OrderStatus> recognize_on,  FinancePdfSettings pdf,  String? activated_at)?  $default,) {final _that = this;
switch (_that) {
case _FinanceIntegration() when $default != null:
return $default(_that.recognize_on,_that.pdf,_that.activated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinanceIntegration implements FinanceIntegration {
  const _FinanceIntegration({final  List<OrderStatus> recognize_on = const [], this.pdf = const FinancePdfSettings(), this.activated_at}): _recognize_on = recognize_on;
  factory _FinanceIntegration.fromJson(Map<String, dynamic> json) => _$FinanceIntegrationFromJson(json);

 final  List<OrderStatus> _recognize_on;
@override@JsonKey() List<OrderStatus> get recognize_on {
  if (_recognize_on is EqualUnmodifiableListView) return _recognize_on;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recognize_on);
}

@override@JsonKey() final  FinancePdfSettings pdf;
/// Cash-basis metrics ignore payments/expenses before this UTC timestamp.
@override final  String? activated_at;

/// Create a copy of FinanceIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceIntegrationCopyWith<_FinanceIntegration> get copyWith => __$FinanceIntegrationCopyWithImpl<_FinanceIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinanceIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceIntegration&&const DeepCollectionEquality().equals(other._recognize_on, _recognize_on)&&(identical(other.pdf, pdf) || other.pdf == pdf)&&(identical(other.activated_at, activated_at) || other.activated_at == activated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_recognize_on),pdf,activated_at);

@override
String toString() {
  return 'FinanceIntegration(recognize_on: $recognize_on, pdf: $pdf, activated_at: $activated_at)';
}


}

/// @nodoc
abstract mixin class _$FinanceIntegrationCopyWith<$Res> implements $FinanceIntegrationCopyWith<$Res> {
  factory _$FinanceIntegrationCopyWith(_FinanceIntegration value, $Res Function(_FinanceIntegration) _then) = __$FinanceIntegrationCopyWithImpl;
@override @useResult
$Res call({
 List<OrderStatus> recognize_on, FinancePdfSettings pdf, String? activated_at
});


@override $FinancePdfSettingsCopyWith<$Res> get pdf;

}
/// @nodoc
class __$FinanceIntegrationCopyWithImpl<$Res>
    implements _$FinanceIntegrationCopyWith<$Res> {
  __$FinanceIntegrationCopyWithImpl(this._self, this._then);

  final _FinanceIntegration _self;
  final $Res Function(_FinanceIntegration) _then;

/// Create a copy of FinanceIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recognize_on = null,Object? pdf = null,Object? activated_at = freezed,}) {
  return _then(_FinanceIntegration(
recognize_on: null == recognize_on ? _self._recognize_on : recognize_on // ignore: cast_nullable_to_non_nullable
as List<OrderStatus>,pdf: null == pdf ? _self.pdf : pdf // ignore: cast_nullable_to_non_nullable
as FinancePdfSettings,activated_at: freezed == activated_at ? _self.activated_at : activated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FinanceIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancePdfSettingsCopyWith<$Res> get pdf {
  
  return $FinancePdfSettingsCopyWith<$Res>(_self.pdf, (value) {
    return _then(_self.copyWith(pdf: value));
  });
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
 PaymentStatus? get paymentStatus;/// Other mappings to suggest as the next step (`code` when set, otherwise `name`).
 List<String> get next;
/// Create a copy of CustomStatusMapping
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomStatusMappingCopyWith<CustomStatusMapping> get copyWith => _$CustomStatusMappingCopyWithImpl<CustomStatusMapping>(this as CustomStatusMapping, _$identity);

  /// Serializes this CustomStatusMapping to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomStatusMapping&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.color, color) || other.color == color)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.status, status) || other.status == status)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&const DeepCollectionEquality().equals(other.next, next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,color,enabled,status,deliveryStatus,paymentStatus,const DeepCollectionEquality().hash(next));

@override
String toString() {
  return 'CustomStatusMapping(name: $name, code: $code, color: $color, enabled: $enabled, status: $status, deliveryStatus: $deliveryStatus, paymentStatus: $paymentStatus, next: $next)';
}


}

/// @nodoc
abstract mixin class $CustomStatusMappingCopyWith<$Res>  {
  factory $CustomStatusMappingCopyWith(CustomStatusMapping value, $Res Function(CustomStatusMapping) _then) = _$CustomStatusMappingCopyWithImpl;
@useResult
$Res call({
 String name, String? code, int? color, bool enabled, OrderStatus? status, DeliveryStatus? deliveryStatus, PaymentStatus? paymentStatus, List<String> next
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? code = freezed,Object? color = freezed,Object? enabled = null,Object? status = freezed,Object? deliveryStatus = freezed,Object? paymentStatus = freezed,Object? next = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int?,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus?,deliveryStatus: freezed == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,next: null == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as List<String>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? code,  int? color,  bool enabled,  OrderStatus? status,  DeliveryStatus? deliveryStatus,  PaymentStatus? paymentStatus,  List<String> next)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomStatusMapping() when $default != null:
return $default(_that.name,_that.code,_that.color,_that.enabled,_that.status,_that.deliveryStatus,_that.paymentStatus,_that.next);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? code,  int? color,  bool enabled,  OrderStatus? status,  DeliveryStatus? deliveryStatus,  PaymentStatus? paymentStatus,  List<String> next)  $default,) {final _that = this;
switch (_that) {
case _CustomStatusMapping():
return $default(_that.name,_that.code,_that.color,_that.enabled,_that.status,_that.deliveryStatus,_that.paymentStatus,_that.next);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? code,  int? color,  bool enabled,  OrderStatus? status,  DeliveryStatus? deliveryStatus,  PaymentStatus? paymentStatus,  List<String> next)?  $default,) {final _that = this;
switch (_that) {
case _CustomStatusMapping() when $default != null:
return $default(_that.name,_that.code,_that.color,_that.enabled,_that.status,_that.deliveryStatus,_that.paymentStatus,_that.next);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomStatusMapping implements CustomStatusMapping {
  const _CustomStatusMapping({required this.name, this.code, this.color, this.enabled = true, this.status, this.deliveryStatus, this.paymentStatus, final  List<String> next = const []}): _next = next;
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
/// Other mappings to suggest as the next step (`code` when set, otherwise `name`).
 final  List<String> _next;
/// Other mappings to suggest as the next step (`code` when set, otherwise `name`).
@override@JsonKey() List<String> get next {
  if (_next is EqualUnmodifiableListView) return _next;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_next);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomStatusMapping&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.color, color) || other.color == color)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.status, status) || other.status == status)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&const DeepCollectionEquality().equals(other._next, _next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,color,enabled,status,deliveryStatus,paymentStatus,const DeepCollectionEquality().hash(_next));

@override
String toString() {
  return 'CustomStatusMapping(name: $name, code: $code, color: $color, enabled: $enabled, status: $status, deliveryStatus: $deliveryStatus, paymentStatus: $paymentStatus, next: $next)';
}


}

/// @nodoc
abstract mixin class _$CustomStatusMappingCopyWith<$Res> implements $CustomStatusMappingCopyWith<$Res> {
  factory _$CustomStatusMappingCopyWith(_CustomStatusMapping value, $Res Function(_CustomStatusMapping) _then) = __$CustomStatusMappingCopyWithImpl;
@override @useResult
$Res call({
 String name, String? code, int? color, bool enabled, OrderStatus? status, DeliveryStatus? deliveryStatus, PaymentStatus? paymentStatus, List<String> next
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = freezed,Object? color = freezed,Object? enabled = null,Object? status = freezed,Object? deliveryStatus = freezed,Object? paymentStatus = freezed,Object? next = null,}) {
  return _then(_CustomStatusMapping(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int?,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus?,deliveryStatus: freezed == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,next: null == next ? _self._next : next // ignore: cast_nullable_to_non_nullable
as List<String>,
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
