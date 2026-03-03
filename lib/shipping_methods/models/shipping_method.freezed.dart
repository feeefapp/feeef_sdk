// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShippingMethod {

 String get id; DateTime get createdAt; DateTime get updatedAt; Map<String, dynamic> get metadata; String get name; String? get description; String? get logoUrl; String? get ondarkLogoUrl; num get price; num get forks; String? get sourceId; String get storeId; List<List<num?>?> get rates; ShippingMethodStatus get status; ShippingMethodPolicy get policy; DateTime? get verifiedAt;
/// Create a copy of ShippingMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingMethodCopyWith<ShippingMethod> get copyWith => _$ShippingMethodCopyWithImpl<ShippingMethod>(this as ShippingMethod, _$identity);

  /// Serializes this ShippingMethod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingMethod&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.forks, forks) || other.forks == forks)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other.rates, rates)&&(identical(other.status, status) || other.status == status)&&(identical(other.policy, policy) || other.policy == policy)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,const DeepCollectionEquality().hash(metadata),name,description,logoUrl,ondarkLogoUrl,price,forks,sourceId,storeId,const DeepCollectionEquality().hash(rates),status,policy,verifiedAt);

@override
String toString() {
  return 'ShippingMethod(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata, name: $name, description: $description, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, price: $price, forks: $forks, sourceId: $sourceId, storeId: $storeId, rates: $rates, status: $status, policy: $policy, verifiedAt: $verifiedAt)';
}


}

/// @nodoc
abstract mixin class $ShippingMethodCopyWith<$Res>  {
  factory $ShippingMethodCopyWith(ShippingMethod value, $Res Function(ShippingMethod) _then) = _$ShippingMethodCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, Map<String, dynamic> metadata, String name, String? description, String? logoUrl, String? ondarkLogoUrl, num price, num forks, String? sourceId, String storeId, List<List<num?>?> rates, ShippingMethodStatus status, ShippingMethodPolicy policy, DateTime? verifiedAt
});




}
/// @nodoc
class _$ShippingMethodCopyWithImpl<$Res>
    implements $ShippingMethodCopyWith<$Res> {
  _$ShippingMethodCopyWithImpl(this._self, this._then);

  final ShippingMethod _self;
  final $Res Function(ShippingMethod) _then;

/// Create a copy of ShippingMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? metadata = null,Object? name = null,Object? description = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? price = null,Object? forks = null,Object? sourceId = freezed,Object? storeId = null,Object? rates = null,Object? status = null,Object? policy = null,Object? verifiedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkLogoUrl: freezed == ondarkLogoUrl ? _self.ondarkLogoUrl : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,forks: null == forks ? _self.forks : forks // ignore: cast_nullable_to_non_nullable
as num,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,rates: null == rates ? _self.rates : rates // ignore: cast_nullable_to_non_nullable
as List<List<num?>?>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShippingMethodStatus,policy: null == policy ? _self.policy : policy // ignore: cast_nullable_to_non_nullable
as ShippingMethodPolicy,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShippingMethod].
extension ShippingMethodPatterns on ShippingMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShippingMethod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShippingMethod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShippingMethod value)  $default,){
final _that = this;
switch (_that) {
case _ShippingMethod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShippingMethod value)?  $default,){
final _that = this;
switch (_that) {
case _ShippingMethod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  Map<String, dynamic> metadata,  String name,  String? description,  String? logoUrl,  String? ondarkLogoUrl,  num price,  num forks,  String? sourceId,  String storeId,  List<List<num?>?> rates,  ShippingMethodStatus status,  ShippingMethodPolicy policy,  DateTime? verifiedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShippingMethod() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.metadata,_that.name,_that.description,_that.logoUrl,_that.ondarkLogoUrl,_that.price,_that.forks,_that.sourceId,_that.storeId,_that.rates,_that.status,_that.policy,_that.verifiedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  Map<String, dynamic> metadata,  String name,  String? description,  String? logoUrl,  String? ondarkLogoUrl,  num price,  num forks,  String? sourceId,  String storeId,  List<List<num?>?> rates,  ShippingMethodStatus status,  ShippingMethodPolicy policy,  DateTime? verifiedAt)  $default,) {final _that = this;
switch (_that) {
case _ShippingMethod():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.metadata,_that.name,_that.description,_that.logoUrl,_that.ondarkLogoUrl,_that.price,_that.forks,_that.sourceId,_that.storeId,_that.rates,_that.status,_that.policy,_that.verifiedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  Map<String, dynamic> metadata,  String name,  String? description,  String? logoUrl,  String? ondarkLogoUrl,  num price,  num forks,  String? sourceId,  String storeId,  List<List<num?>?> rates,  ShippingMethodStatus status,  ShippingMethodPolicy policy,  DateTime? verifiedAt)?  $default,) {final _that = this;
switch (_that) {
case _ShippingMethod() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.metadata,_that.name,_that.description,_that.logoUrl,_that.ondarkLogoUrl,_that.price,_that.forks,_that.sourceId,_that.storeId,_that.rates,_that.status,_that.policy,_that.verifiedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShippingMethod extends ShippingMethod {
   _ShippingMethod({required this.id, required this.createdAt, required this.updatedAt, final  Map<String, dynamic> metadata = const {}, required this.name, this.description, this.logoUrl, this.ondarkLogoUrl, this.price = 0, this.forks = 0, this.sourceId, required this.storeId, final  List<List<num?>?> rates = const [], required this.status, required this.policy, this.verifiedAt}): _metadata = metadata,_rates = rates,super._();
  factory _ShippingMethod.fromJson(Map<String, dynamic> json) => _$ShippingMethodFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override final  String name;
@override final  String? description;
@override final  String? logoUrl;
@override final  String? ondarkLogoUrl;
@override@JsonKey() final  num price;
@override@JsonKey() final  num forks;
@override final  String? sourceId;
@override final  String storeId;
 final  List<List<num?>?> _rates;
@override@JsonKey() List<List<num?>?> get rates {
  if (_rates is EqualUnmodifiableListView) return _rates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rates);
}

@override final  ShippingMethodStatus status;
@override final  ShippingMethodPolicy policy;
@override final  DateTime? verifiedAt;

/// Create a copy of ShippingMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingMethodCopyWith<_ShippingMethod> get copyWith => __$ShippingMethodCopyWithImpl<_ShippingMethod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingMethodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingMethod&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.forks, forks) || other.forks == forks)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other._rates, _rates)&&(identical(other.status, status) || other.status == status)&&(identical(other.policy, policy) || other.policy == policy)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,const DeepCollectionEquality().hash(_metadata),name,description,logoUrl,ondarkLogoUrl,price,forks,sourceId,storeId,const DeepCollectionEquality().hash(_rates),status,policy,verifiedAt);

@override
String toString() {
  return 'ShippingMethod(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata, name: $name, description: $description, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, price: $price, forks: $forks, sourceId: $sourceId, storeId: $storeId, rates: $rates, status: $status, policy: $policy, verifiedAt: $verifiedAt)';
}


}

/// @nodoc
abstract mixin class _$ShippingMethodCopyWith<$Res> implements $ShippingMethodCopyWith<$Res> {
  factory _$ShippingMethodCopyWith(_ShippingMethod value, $Res Function(_ShippingMethod) _then) = __$ShippingMethodCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, Map<String, dynamic> metadata, String name, String? description, String? logoUrl, String? ondarkLogoUrl, num price, num forks, String? sourceId, String storeId, List<List<num?>?> rates, ShippingMethodStatus status, ShippingMethodPolicy policy, DateTime? verifiedAt
});




}
/// @nodoc
class __$ShippingMethodCopyWithImpl<$Res>
    implements _$ShippingMethodCopyWith<$Res> {
  __$ShippingMethodCopyWithImpl(this._self, this._then);

  final _ShippingMethod _self;
  final $Res Function(_ShippingMethod) _then;

/// Create a copy of ShippingMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? metadata = null,Object? name = null,Object? description = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? price = null,Object? forks = null,Object? sourceId = freezed,Object? storeId = null,Object? rates = null,Object? status = null,Object? policy = null,Object? verifiedAt = freezed,}) {
  return _then(_ShippingMethod(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkLogoUrl: freezed == ondarkLogoUrl ? _self.ondarkLogoUrl : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,forks: null == forks ? _self.forks : forks // ignore: cast_nullable_to_non_nullable
as num,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,rates: null == rates ? _self._rates : rates // ignore: cast_nullable_to_non_nullable
as List<List<num?>?>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShippingMethodStatus,policy: null == policy ? _self.policy : policy // ignore: cast_nullable_to_non_nullable
as ShippingMethodPolicy,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$ShippingMethodCreate {

 String? get id; Map<String, dynamic> get metadata; String get name; String? get description; String? get logoUrl; String? get ondarkLogoUrl; num get price; num get forks; String? get sourceId; String get storeId; List<List<num?>?> get rates; ShippingMethodStatus get status; ShippingMethodPolicy get policy; DateTime? get verifiedAt;
/// Create a copy of ShippingMethodCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingMethodCreateCopyWith<ShippingMethodCreate> get copyWith => _$ShippingMethodCreateCopyWithImpl<ShippingMethodCreate>(this as ShippingMethodCreate, _$identity);

  /// Serializes this ShippingMethodCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingMethodCreate&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.forks, forks) || other.forks == forks)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other.rates, rates)&&(identical(other.status, status) || other.status == status)&&(identical(other.policy, policy) || other.policy == policy)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(metadata),name,description,logoUrl,ondarkLogoUrl,price,forks,sourceId,storeId,const DeepCollectionEquality().hash(rates),status,policy,verifiedAt);

@override
String toString() {
  return 'ShippingMethodCreate(id: $id, metadata: $metadata, name: $name, description: $description, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, price: $price, forks: $forks, sourceId: $sourceId, storeId: $storeId, rates: $rates, status: $status, policy: $policy, verifiedAt: $verifiedAt)';
}


}

/// @nodoc
abstract mixin class $ShippingMethodCreateCopyWith<$Res>  {
  factory $ShippingMethodCreateCopyWith(ShippingMethodCreate value, $Res Function(ShippingMethodCreate) _then) = _$ShippingMethodCreateCopyWithImpl;
@useResult
$Res call({
 String? id, Map<String, dynamic> metadata, String name, String? description, String? logoUrl, String? ondarkLogoUrl, num price, num forks, String? sourceId, String storeId, List<List<num?>?> rates, ShippingMethodStatus status, ShippingMethodPolicy policy, DateTime? verifiedAt
});




}
/// @nodoc
class _$ShippingMethodCreateCopyWithImpl<$Res>
    implements $ShippingMethodCreateCopyWith<$Res> {
  _$ShippingMethodCreateCopyWithImpl(this._self, this._then);

  final ShippingMethodCreate _self;
  final $Res Function(ShippingMethodCreate) _then;

/// Create a copy of ShippingMethodCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? metadata = null,Object? name = null,Object? description = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? price = null,Object? forks = null,Object? sourceId = freezed,Object? storeId = null,Object? rates = null,Object? status = null,Object? policy = null,Object? verifiedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkLogoUrl: freezed == ondarkLogoUrl ? _self.ondarkLogoUrl : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,forks: null == forks ? _self.forks : forks // ignore: cast_nullable_to_non_nullable
as num,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,rates: null == rates ? _self.rates : rates // ignore: cast_nullable_to_non_nullable
as List<List<num?>?>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShippingMethodStatus,policy: null == policy ? _self.policy : policy // ignore: cast_nullable_to_non_nullable
as ShippingMethodPolicy,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShippingMethodCreate].
extension ShippingMethodCreatePatterns on ShippingMethodCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShippingMethodCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShippingMethodCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShippingMethodCreate value)  $default,){
final _that = this;
switch (_that) {
case _ShippingMethodCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShippingMethodCreate value)?  $default,){
final _that = this;
switch (_that) {
case _ShippingMethodCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  Map<String, dynamic> metadata,  String name,  String? description,  String? logoUrl,  String? ondarkLogoUrl,  num price,  num forks,  String? sourceId,  String storeId,  List<List<num?>?> rates,  ShippingMethodStatus status,  ShippingMethodPolicy policy,  DateTime? verifiedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShippingMethodCreate() when $default != null:
return $default(_that.id,_that.metadata,_that.name,_that.description,_that.logoUrl,_that.ondarkLogoUrl,_that.price,_that.forks,_that.sourceId,_that.storeId,_that.rates,_that.status,_that.policy,_that.verifiedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  Map<String, dynamic> metadata,  String name,  String? description,  String? logoUrl,  String? ondarkLogoUrl,  num price,  num forks,  String? sourceId,  String storeId,  List<List<num?>?> rates,  ShippingMethodStatus status,  ShippingMethodPolicy policy,  DateTime? verifiedAt)  $default,) {final _that = this;
switch (_that) {
case _ShippingMethodCreate():
return $default(_that.id,_that.metadata,_that.name,_that.description,_that.logoUrl,_that.ondarkLogoUrl,_that.price,_that.forks,_that.sourceId,_that.storeId,_that.rates,_that.status,_that.policy,_that.verifiedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  Map<String, dynamic> metadata,  String name,  String? description,  String? logoUrl,  String? ondarkLogoUrl,  num price,  num forks,  String? sourceId,  String storeId,  List<List<num?>?> rates,  ShippingMethodStatus status,  ShippingMethodPolicy policy,  DateTime? verifiedAt)?  $default,) {final _that = this;
switch (_that) {
case _ShippingMethodCreate() when $default != null:
return $default(_that.id,_that.metadata,_that.name,_that.description,_that.logoUrl,_that.ondarkLogoUrl,_that.price,_that.forks,_that.sourceId,_that.storeId,_that.rates,_that.status,_that.policy,_that.verifiedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShippingMethodCreate implements ShippingMethodCreate {
  const _ShippingMethodCreate({this.id, final  Map<String, dynamic> metadata = const {}, required this.name, this.description, this.logoUrl, this.ondarkLogoUrl, this.price = 0, this.forks = 0, this.sourceId, required this.storeId, final  List<List<num?>?> rates = const [], required this.status, required this.policy, this.verifiedAt}): _metadata = metadata,_rates = rates;
  factory _ShippingMethodCreate.fromJson(Map<String, dynamic> json) => _$ShippingMethodCreateFromJson(json);

@override final  String? id;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override final  String name;
@override final  String? description;
@override final  String? logoUrl;
@override final  String? ondarkLogoUrl;
@override@JsonKey() final  num price;
@override@JsonKey() final  num forks;
@override final  String? sourceId;
@override final  String storeId;
 final  List<List<num?>?> _rates;
@override@JsonKey() List<List<num?>?> get rates {
  if (_rates is EqualUnmodifiableListView) return _rates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rates);
}

@override final  ShippingMethodStatus status;
@override final  ShippingMethodPolicy policy;
@override final  DateTime? verifiedAt;

/// Create a copy of ShippingMethodCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingMethodCreateCopyWith<_ShippingMethodCreate> get copyWith => __$ShippingMethodCreateCopyWithImpl<_ShippingMethodCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingMethodCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingMethodCreate&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.forks, forks) || other.forks == forks)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other._rates, _rates)&&(identical(other.status, status) || other.status == status)&&(identical(other.policy, policy) || other.policy == policy)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_metadata),name,description,logoUrl,ondarkLogoUrl,price,forks,sourceId,storeId,const DeepCollectionEquality().hash(_rates),status,policy,verifiedAt);

@override
String toString() {
  return 'ShippingMethodCreate(id: $id, metadata: $metadata, name: $name, description: $description, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, price: $price, forks: $forks, sourceId: $sourceId, storeId: $storeId, rates: $rates, status: $status, policy: $policy, verifiedAt: $verifiedAt)';
}


}

/// @nodoc
abstract mixin class _$ShippingMethodCreateCopyWith<$Res> implements $ShippingMethodCreateCopyWith<$Res> {
  factory _$ShippingMethodCreateCopyWith(_ShippingMethodCreate value, $Res Function(_ShippingMethodCreate) _then) = __$ShippingMethodCreateCopyWithImpl;
@override @useResult
$Res call({
 String? id, Map<String, dynamic> metadata, String name, String? description, String? logoUrl, String? ondarkLogoUrl, num price, num forks, String? sourceId, String storeId, List<List<num?>?> rates, ShippingMethodStatus status, ShippingMethodPolicy policy, DateTime? verifiedAt
});




}
/// @nodoc
class __$ShippingMethodCreateCopyWithImpl<$Res>
    implements _$ShippingMethodCreateCopyWith<$Res> {
  __$ShippingMethodCreateCopyWithImpl(this._self, this._then);

  final _ShippingMethodCreate _self;
  final $Res Function(_ShippingMethodCreate) _then;

/// Create a copy of ShippingMethodCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? metadata = null,Object? name = null,Object? description = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? price = null,Object? forks = null,Object? sourceId = freezed,Object? storeId = null,Object? rates = null,Object? status = null,Object? policy = null,Object? verifiedAt = freezed,}) {
  return _then(_ShippingMethodCreate(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkLogoUrl: freezed == ondarkLogoUrl ? _self.ondarkLogoUrl : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,forks: null == forks ? _self.forks : forks // ignore: cast_nullable_to_non_nullable
as num,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,rates: null == rates ? _self._rates : rates // ignore: cast_nullable_to_non_nullable
as List<List<num?>?>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShippingMethodStatus,policy: null == policy ? _self.policy : policy // ignore: cast_nullable_to_non_nullable
as ShippingMethodPolicy,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$ShippingMethodUpdate {

 Map<String, dynamic>? get metadata; String? get name; String? get description; String? get logoUrl; String? get ondarkLogoUrl; num? get price;// String? sourceId,
 String? get storeId; List<List<num?>?>? get rates; ShippingMethodStatus? get status; ShippingMethodPolicy? get policy;@JsonKey(includeFromJson: false) List<String> get setToNull;
/// Create a copy of ShippingMethodUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingMethodUpdateCopyWith<ShippingMethodUpdate> get copyWith => _$ShippingMethodUpdateCopyWithImpl<ShippingMethodUpdate>(this as ShippingMethodUpdate, _$identity);

  /// Serializes this ShippingMethodUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingMethodUpdate&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other.rates, rates)&&(identical(other.status, status) || other.status == status)&&(identical(other.policy, policy) || other.policy == policy)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(metadata),name,description,logoUrl,ondarkLogoUrl,price,storeId,const DeepCollectionEquality().hash(rates),status,policy,const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'ShippingMethodUpdate(metadata: $metadata, name: $name, description: $description, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, price: $price, storeId: $storeId, rates: $rates, status: $status, policy: $policy, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $ShippingMethodUpdateCopyWith<$Res>  {
  factory $ShippingMethodUpdateCopyWith(ShippingMethodUpdate value, $Res Function(ShippingMethodUpdate) _then) = _$ShippingMethodUpdateCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? metadata, String? name, String? description, String? logoUrl, String? ondarkLogoUrl, num? price, String? storeId, List<List<num?>?>? rates, ShippingMethodStatus? status, ShippingMethodPolicy? policy,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class _$ShippingMethodUpdateCopyWithImpl<$Res>
    implements $ShippingMethodUpdateCopyWith<$Res> {
  _$ShippingMethodUpdateCopyWithImpl(this._self, this._then);

  final ShippingMethodUpdate _self;
  final $Res Function(ShippingMethodUpdate) _then;

/// Create a copy of ShippingMethodUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = freezed,Object? name = freezed,Object? description = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? price = freezed,Object? storeId = freezed,Object? rates = freezed,Object? status = freezed,Object? policy = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkLogoUrl: freezed == ondarkLogoUrl ? _self.ondarkLogoUrl : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,rates: freezed == rates ? _self.rates : rates // ignore: cast_nullable_to_non_nullable
as List<List<num?>?>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShippingMethodStatus?,policy: freezed == policy ? _self.policy : policy // ignore: cast_nullable_to_non_nullable
as ShippingMethodPolicy?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ShippingMethodUpdate].
extension ShippingMethodUpdatePatterns on ShippingMethodUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShippingMethodUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShippingMethodUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShippingMethodUpdate value)  $default,){
final _that = this;
switch (_that) {
case _ShippingMethodUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShippingMethodUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _ShippingMethodUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic>? metadata,  String? name,  String? description,  String? logoUrl,  String? ondarkLogoUrl,  num? price,  String? storeId,  List<List<num?>?>? rates,  ShippingMethodStatus? status,  ShippingMethodPolicy? policy, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShippingMethodUpdate() when $default != null:
return $default(_that.metadata,_that.name,_that.description,_that.logoUrl,_that.ondarkLogoUrl,_that.price,_that.storeId,_that.rates,_that.status,_that.policy,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic>? metadata,  String? name,  String? description,  String? logoUrl,  String? ondarkLogoUrl,  num? price,  String? storeId,  List<List<num?>?>? rates,  ShippingMethodStatus? status,  ShippingMethodPolicy? policy, @JsonKey(includeFromJson: false)  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _ShippingMethodUpdate():
return $default(_that.metadata,_that.name,_that.description,_that.logoUrl,_that.ondarkLogoUrl,_that.price,_that.storeId,_that.rates,_that.status,_that.policy,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic>? metadata,  String? name,  String? description,  String? logoUrl,  String? ondarkLogoUrl,  num? price,  String? storeId,  List<List<num?>?>? rates,  ShippingMethodStatus? status,  ShippingMethodPolicy? policy, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _ShippingMethodUpdate() when $default != null:
return $default(_that.metadata,_that.name,_that.description,_that.logoUrl,_that.ondarkLogoUrl,_that.price,_that.storeId,_that.rates,_that.status,_that.policy,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShippingMethodUpdate implements ShippingMethodUpdate {
  const _ShippingMethodUpdate({final  Map<String, dynamic>? metadata, this.name, this.description, this.logoUrl, this.ondarkLogoUrl, this.price, this.storeId, final  List<List<num?>?>? rates, this.status, this.policy, @JsonKey(includeFromJson: false) final  List<String> setToNull = const []}): _metadata = metadata,_rates = rates,_setToNull = setToNull;
  factory _ShippingMethodUpdate.fromJson(Map<String, dynamic> json) => _$ShippingMethodUpdateFromJson(json);

 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? name;
@override final  String? description;
@override final  String? logoUrl;
@override final  String? ondarkLogoUrl;
@override final  num? price;
// String? sourceId,
@override final  String? storeId;
 final  List<List<num?>?>? _rates;
@override List<List<num?>?>? get rates {
  final value = _rates;
  if (value == null) return null;
  if (_rates is EqualUnmodifiableListView) return _rates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ShippingMethodStatus? status;
@override final  ShippingMethodPolicy? policy;
 final  List<String> _setToNull;
@override@JsonKey(includeFromJson: false) List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of ShippingMethodUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingMethodUpdateCopyWith<_ShippingMethodUpdate> get copyWith => __$ShippingMethodUpdateCopyWithImpl<_ShippingMethodUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingMethodUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingMethodUpdate&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.ondarkLogoUrl, ondarkLogoUrl) || other.ondarkLogoUrl == ondarkLogoUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other._rates, _rates)&&(identical(other.status, status) || other.status == status)&&(identical(other.policy, policy) || other.policy == policy)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_metadata),name,description,logoUrl,ondarkLogoUrl,price,storeId,const DeepCollectionEquality().hash(_rates),status,policy,const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'ShippingMethodUpdate(metadata: $metadata, name: $name, description: $description, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, price: $price, storeId: $storeId, rates: $rates, status: $status, policy: $policy, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$ShippingMethodUpdateCopyWith<$Res> implements $ShippingMethodUpdateCopyWith<$Res> {
  factory _$ShippingMethodUpdateCopyWith(_ShippingMethodUpdate value, $Res Function(_ShippingMethodUpdate) _then) = __$ShippingMethodUpdateCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic>? metadata, String? name, String? description, String? logoUrl, String? ondarkLogoUrl, num? price, String? storeId, List<List<num?>?>? rates, ShippingMethodStatus? status, ShippingMethodPolicy? policy,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class __$ShippingMethodUpdateCopyWithImpl<$Res>
    implements _$ShippingMethodUpdateCopyWith<$Res> {
  __$ShippingMethodUpdateCopyWithImpl(this._self, this._then);

  final _ShippingMethodUpdate _self;
  final $Res Function(_ShippingMethodUpdate) _then;

/// Create a copy of ShippingMethodUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = freezed,Object? name = freezed,Object? description = freezed,Object? logoUrl = freezed,Object? ondarkLogoUrl = freezed,Object? price = freezed,Object? storeId = freezed,Object? rates = freezed,Object? status = freezed,Object? policy = freezed,Object? setToNull = null,}) {
  return _then(_ShippingMethodUpdate(
metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkLogoUrl: freezed == ondarkLogoUrl ? _self.ondarkLogoUrl : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,rates: freezed == rates ? _self._rates : rates // ignore: cast_nullable_to_non_nullable
as List<List<num?>?>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShippingMethodStatus?,policy: freezed == policy ? _self.policy : policy // ignore: cast_nullable_to_non_nullable
as ShippingMethodPolicy?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
