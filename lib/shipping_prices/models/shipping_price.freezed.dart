// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShippingPrice {

 String get id; DateTime get createdAt; DateTime get updatedAt; Map<String, dynamic> get metadata; String get name; String? get logoUrl; String get storeId;// ignore: invalid_annotation_target
@JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) Map<String, Map<String, ShippingStateRates>> get prices; ShippingPriceStatus get status;
/// Create a copy of ShippingPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingPriceCopyWith<ShippingPrice> get copyWith => _$ShippingPriceCopyWithImpl<ShippingPrice>(this as ShippingPrice, _$identity);

  /// Serializes this ShippingPrice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingPrice&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other.prices, prices)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,const DeepCollectionEquality().hash(metadata),name,logoUrl,storeId,const DeepCollectionEquality().hash(prices),status);

@override
String toString() {
  return 'ShippingPrice(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata, name: $name, logoUrl: $logoUrl, storeId: $storeId, prices: $prices, status: $status)';
}


}

/// @nodoc
abstract mixin class $ShippingPriceCopyWith<$Res>  {
  factory $ShippingPriceCopyWith(ShippingPrice value, $Res Function(ShippingPrice) _then) = _$ShippingPriceCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, Map<String, dynamic> metadata, String name, String? logoUrl, String storeId,@JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) Map<String, Map<String, ShippingStateRates>> prices, ShippingPriceStatus status
});




}
/// @nodoc
class _$ShippingPriceCopyWithImpl<$Res>
    implements $ShippingPriceCopyWith<$Res> {
  _$ShippingPriceCopyWithImpl(this._self, this._then);

  final ShippingPrice _self;
  final $Res Function(ShippingPrice) _then;

/// Create a copy of ShippingPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? metadata = null,Object? name = null,Object? logoUrl = freezed,Object? storeId = null,Object? prices = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,prices: null == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, ShippingStateRates>>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShippingPriceStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [ShippingPrice].
extension ShippingPricePatterns on ShippingPrice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShippingPrice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShippingPrice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShippingPrice value)  $default,){
final _that = this;
switch (_that) {
case _ShippingPrice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShippingPrice value)?  $default,){
final _that = this;
switch (_that) {
case _ShippingPrice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  Map<String, dynamic> metadata,  String name,  String? logoUrl,  String storeId, @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson)  Map<String, Map<String, ShippingStateRates>> prices,  ShippingPriceStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShippingPrice() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.metadata,_that.name,_that.logoUrl,_that.storeId,_that.prices,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  Map<String, dynamic> metadata,  String name,  String? logoUrl,  String storeId, @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson)  Map<String, Map<String, ShippingStateRates>> prices,  ShippingPriceStatus status)  $default,) {final _that = this;
switch (_that) {
case _ShippingPrice():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.metadata,_that.name,_that.logoUrl,_that.storeId,_that.prices,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  Map<String, dynamic> metadata,  String name,  String? logoUrl,  String storeId, @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson)  Map<String, Map<String, ShippingStateRates>> prices,  ShippingPriceStatus status)?  $default,) {final _that = this;
switch (_that) {
case _ShippingPrice() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.metadata,_that.name,_that.logoUrl,_that.storeId,_that.prices,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShippingPrice extends ShippingPrice {
   _ShippingPrice({required this.id, required this.createdAt, required this.updatedAt, final  Map<String, dynamic> metadata = const {}, required this.name, this.logoUrl, required this.storeId, @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) required final  Map<String, Map<String, ShippingStateRates>> prices, this.status = ShippingPriceStatus.draft}): _metadata = metadata,_prices = prices,super._();
  factory _ShippingPrice.fromJson(Map<String, dynamic> json) => _$ShippingPriceFromJson(json);

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
@override final  String? logoUrl;
@override final  String storeId;
// ignore: invalid_annotation_target
 final  Map<String, Map<String, ShippingStateRates>> _prices;
// ignore: invalid_annotation_target
@override@JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) Map<String, Map<String, ShippingStateRates>> get prices {
  if (_prices is EqualUnmodifiableMapView) return _prices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_prices);
}

@override@JsonKey() final  ShippingPriceStatus status;

/// Create a copy of ShippingPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingPriceCopyWith<_ShippingPrice> get copyWith => __$ShippingPriceCopyWithImpl<_ShippingPrice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingPriceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingPrice&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other._prices, _prices)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,const DeepCollectionEquality().hash(_metadata),name,logoUrl,storeId,const DeepCollectionEquality().hash(_prices),status);

@override
String toString() {
  return 'ShippingPrice(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata, name: $name, logoUrl: $logoUrl, storeId: $storeId, prices: $prices, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ShippingPriceCopyWith<$Res> implements $ShippingPriceCopyWith<$Res> {
  factory _$ShippingPriceCopyWith(_ShippingPrice value, $Res Function(_ShippingPrice) _then) = __$ShippingPriceCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, Map<String, dynamic> metadata, String name, String? logoUrl, String storeId,@JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) Map<String, Map<String, ShippingStateRates>> prices, ShippingPriceStatus status
});




}
/// @nodoc
class __$ShippingPriceCopyWithImpl<$Res>
    implements _$ShippingPriceCopyWith<$Res> {
  __$ShippingPriceCopyWithImpl(this._self, this._then);

  final _ShippingPrice _self;
  final $Res Function(_ShippingPrice) _then;

/// Create a copy of ShippingPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? metadata = null,Object? name = null,Object? logoUrl = freezed,Object? storeId = null,Object? prices = null,Object? status = null,}) {
  return _then(_ShippingPrice(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,prices: null == prices ? _self._prices : prices // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, ShippingStateRates>>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShippingPriceStatus,
  ));
}


}


/// @nodoc
mixin _$ShippingPriceCreate {

 String? get id; Map<String, dynamic> get metadata; String get name; String? get logoUrl; String get storeId;// ignore: invalid_annotation_target
@JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) Map<String, Map<String, ShippingStateRates>> get prices; ShippingPriceStatus get status;
/// Create a copy of ShippingPriceCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingPriceCreateCopyWith<ShippingPriceCreate> get copyWith => _$ShippingPriceCreateCopyWithImpl<ShippingPriceCreate>(this as ShippingPriceCreate, _$identity);

  /// Serializes this ShippingPriceCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingPriceCreate&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other.prices, prices)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(metadata),name,logoUrl,storeId,const DeepCollectionEquality().hash(prices),status);

@override
String toString() {
  return 'ShippingPriceCreate(id: $id, metadata: $metadata, name: $name, logoUrl: $logoUrl, storeId: $storeId, prices: $prices, status: $status)';
}


}

/// @nodoc
abstract mixin class $ShippingPriceCreateCopyWith<$Res>  {
  factory $ShippingPriceCreateCopyWith(ShippingPriceCreate value, $Res Function(ShippingPriceCreate) _then) = _$ShippingPriceCreateCopyWithImpl;
@useResult
$Res call({
 String? id, Map<String, dynamic> metadata, String name, String? logoUrl, String storeId,@JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) Map<String, Map<String, ShippingStateRates>> prices, ShippingPriceStatus status
});




}
/// @nodoc
class _$ShippingPriceCreateCopyWithImpl<$Res>
    implements $ShippingPriceCreateCopyWith<$Res> {
  _$ShippingPriceCreateCopyWithImpl(this._self, this._then);

  final ShippingPriceCreate _self;
  final $Res Function(ShippingPriceCreate) _then;

/// Create a copy of ShippingPriceCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? metadata = null,Object? name = null,Object? logoUrl = freezed,Object? storeId = null,Object? prices = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,prices: null == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, ShippingStateRates>>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShippingPriceStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [ShippingPriceCreate].
extension ShippingPriceCreatePatterns on ShippingPriceCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShippingPriceCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShippingPriceCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShippingPriceCreate value)  $default,){
final _that = this;
switch (_that) {
case _ShippingPriceCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShippingPriceCreate value)?  $default,){
final _that = this;
switch (_that) {
case _ShippingPriceCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  Map<String, dynamic> metadata,  String name,  String? logoUrl,  String storeId, @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson)  Map<String, Map<String, ShippingStateRates>> prices,  ShippingPriceStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShippingPriceCreate() when $default != null:
return $default(_that.id,_that.metadata,_that.name,_that.logoUrl,_that.storeId,_that.prices,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  Map<String, dynamic> metadata,  String name,  String? logoUrl,  String storeId, @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson)  Map<String, Map<String, ShippingStateRates>> prices,  ShippingPriceStatus status)  $default,) {final _that = this;
switch (_that) {
case _ShippingPriceCreate():
return $default(_that.id,_that.metadata,_that.name,_that.logoUrl,_that.storeId,_that.prices,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  Map<String, dynamic> metadata,  String name,  String? logoUrl,  String storeId, @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson)  Map<String, Map<String, ShippingStateRates>> prices,  ShippingPriceStatus status)?  $default,) {final _that = this;
switch (_that) {
case _ShippingPriceCreate() when $default != null:
return $default(_that.id,_that.metadata,_that.name,_that.logoUrl,_that.storeId,_that.prices,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShippingPriceCreate implements ShippingPriceCreate {
  const _ShippingPriceCreate({this.id, final  Map<String, dynamic> metadata = const {}, required this.name, this.logoUrl, required this.storeId, @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) final  Map<String, Map<String, ShippingStateRates>> prices = const {}, this.status = ShippingPriceStatus.draft}): _metadata = metadata,_prices = prices;
  factory _ShippingPriceCreate.fromJson(Map<String, dynamic> json) => _$ShippingPriceCreateFromJson(json);

@override final  String? id;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override final  String name;
@override final  String? logoUrl;
@override final  String storeId;
// ignore: invalid_annotation_target
 final  Map<String, Map<String, ShippingStateRates>> _prices;
// ignore: invalid_annotation_target
@override@JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) Map<String, Map<String, ShippingStateRates>> get prices {
  if (_prices is EqualUnmodifiableMapView) return _prices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_prices);
}

@override@JsonKey() final  ShippingPriceStatus status;

/// Create a copy of ShippingPriceCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingPriceCreateCopyWith<_ShippingPriceCreate> get copyWith => __$ShippingPriceCreateCopyWithImpl<_ShippingPriceCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingPriceCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingPriceCreate&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other._prices, _prices)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_metadata),name,logoUrl,storeId,const DeepCollectionEquality().hash(_prices),status);

@override
String toString() {
  return 'ShippingPriceCreate(id: $id, metadata: $metadata, name: $name, logoUrl: $logoUrl, storeId: $storeId, prices: $prices, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ShippingPriceCreateCopyWith<$Res> implements $ShippingPriceCreateCopyWith<$Res> {
  factory _$ShippingPriceCreateCopyWith(_ShippingPriceCreate value, $Res Function(_ShippingPriceCreate) _then) = __$ShippingPriceCreateCopyWithImpl;
@override @useResult
$Res call({
 String? id, Map<String, dynamic> metadata, String name, String? logoUrl, String storeId,@JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) Map<String, Map<String, ShippingStateRates>> prices, ShippingPriceStatus status
});




}
/// @nodoc
class __$ShippingPriceCreateCopyWithImpl<$Res>
    implements _$ShippingPriceCreateCopyWith<$Res> {
  __$ShippingPriceCreateCopyWithImpl(this._self, this._then);

  final _ShippingPriceCreate _self;
  final $Res Function(_ShippingPriceCreate) _then;

/// Create a copy of ShippingPriceCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? metadata = null,Object? name = null,Object? logoUrl = freezed,Object? storeId = null,Object? prices = null,Object? status = null,}) {
  return _then(_ShippingPriceCreate(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,prices: null == prices ? _self._prices : prices // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, ShippingStateRates>>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShippingPriceStatus,
  ));
}


}


/// @nodoc
mixin _$ShippingPriceUpdate {

 Map<String, dynamic>? get metadata; String? get name; String? get logoUrl; String? get storeId;// ignore: invalid_annotation_target
@JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) Map<String, Map<String, ShippingStateRates>>? get prices; ShippingPriceStatus? get status;// ignore: invalid_annotation_target
@JsonKey(includeFromJson: false) List<String> get setToNull;
/// Create a copy of ShippingPriceUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingPriceUpdateCopyWith<ShippingPriceUpdate> get copyWith => _$ShippingPriceUpdateCopyWithImpl<ShippingPriceUpdate>(this as ShippingPriceUpdate, _$identity);

  /// Serializes this ShippingPriceUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingPriceUpdate&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other.prices, prices)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(metadata),name,logoUrl,storeId,const DeepCollectionEquality().hash(prices),status,const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'ShippingPriceUpdate(metadata: $metadata, name: $name, logoUrl: $logoUrl, storeId: $storeId, prices: $prices, status: $status, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $ShippingPriceUpdateCopyWith<$Res>  {
  factory $ShippingPriceUpdateCopyWith(ShippingPriceUpdate value, $Res Function(ShippingPriceUpdate) _then) = _$ShippingPriceUpdateCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? metadata, String? name, String? logoUrl, String? storeId,@JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) Map<String, Map<String, ShippingStateRates>>? prices, ShippingPriceStatus? status,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class _$ShippingPriceUpdateCopyWithImpl<$Res>
    implements $ShippingPriceUpdateCopyWith<$Res> {
  _$ShippingPriceUpdateCopyWithImpl(this._self, this._then);

  final ShippingPriceUpdate _self;
  final $Res Function(ShippingPriceUpdate) _then;

/// Create a copy of ShippingPriceUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = freezed,Object? name = freezed,Object? logoUrl = freezed,Object? storeId = freezed,Object? prices = freezed,Object? status = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,prices: freezed == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, ShippingStateRates>>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShippingPriceStatus?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ShippingPriceUpdate].
extension ShippingPriceUpdatePatterns on ShippingPriceUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShippingPriceUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShippingPriceUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShippingPriceUpdate value)  $default,){
final _that = this;
switch (_that) {
case _ShippingPriceUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShippingPriceUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _ShippingPriceUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic>? metadata,  String? name,  String? logoUrl,  String? storeId, @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson)  Map<String, Map<String, ShippingStateRates>>? prices,  ShippingPriceStatus? status, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShippingPriceUpdate() when $default != null:
return $default(_that.metadata,_that.name,_that.logoUrl,_that.storeId,_that.prices,_that.status,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic>? metadata,  String? name,  String? logoUrl,  String? storeId, @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson)  Map<String, Map<String, ShippingStateRates>>? prices,  ShippingPriceStatus? status, @JsonKey(includeFromJson: false)  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _ShippingPriceUpdate():
return $default(_that.metadata,_that.name,_that.logoUrl,_that.storeId,_that.prices,_that.status,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic>? metadata,  String? name,  String? logoUrl,  String? storeId, @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson)  Map<String, Map<String, ShippingStateRates>>? prices,  ShippingPriceStatus? status, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _ShippingPriceUpdate() when $default != null:
return $default(_that.metadata,_that.name,_that.logoUrl,_that.storeId,_that.prices,_that.status,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShippingPriceUpdate implements ShippingPriceUpdate {
  const _ShippingPriceUpdate({final  Map<String, dynamic>? metadata, this.name, this.logoUrl, this.storeId, @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) final  Map<String, Map<String, ShippingStateRates>>? prices, this.status, @JsonKey(includeFromJson: false) final  List<String> setToNull = const []}): _metadata = metadata,_prices = prices,_setToNull = setToNull;
  factory _ShippingPriceUpdate.fromJson(Map<String, dynamic> json) => _$ShippingPriceUpdateFromJson(json);

 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? name;
@override final  String? logoUrl;
@override final  String? storeId;
// ignore: invalid_annotation_target
 final  Map<String, Map<String, ShippingStateRates>>? _prices;
// ignore: invalid_annotation_target
@override@JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) Map<String, Map<String, ShippingStateRates>>? get prices {
  final value = _prices;
  if (value == null) return null;
  if (_prices is EqualUnmodifiableMapView) return _prices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  ShippingPriceStatus? status;
// ignore: invalid_annotation_target
 final  List<String> _setToNull;
// ignore: invalid_annotation_target
@override@JsonKey(includeFromJson: false) List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of ShippingPriceUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingPriceUpdateCopyWith<_ShippingPriceUpdate> get copyWith => __$ShippingPriceUpdateCopyWithImpl<_ShippingPriceUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingPriceUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingPriceUpdate&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other._prices, _prices)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_metadata),name,logoUrl,storeId,const DeepCollectionEquality().hash(_prices),status,const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'ShippingPriceUpdate(metadata: $metadata, name: $name, logoUrl: $logoUrl, storeId: $storeId, prices: $prices, status: $status, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$ShippingPriceUpdateCopyWith<$Res> implements $ShippingPriceUpdateCopyWith<$Res> {
  factory _$ShippingPriceUpdateCopyWith(_ShippingPriceUpdate value, $Res Function(_ShippingPriceUpdate) _then) = __$ShippingPriceUpdateCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic>? metadata, String? name, String? logoUrl, String? storeId,@JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson) Map<String, Map<String, ShippingStateRates>>? prices, ShippingPriceStatus? status,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class __$ShippingPriceUpdateCopyWithImpl<$Res>
    implements _$ShippingPriceUpdateCopyWith<$Res> {
  __$ShippingPriceUpdateCopyWithImpl(this._self, this._then);

  final _ShippingPriceUpdate _self;
  final $Res Function(_ShippingPriceUpdate) _then;

/// Create a copy of ShippingPriceUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = freezed,Object? name = freezed,Object? logoUrl = freezed,Object? storeId = freezed,Object? prices = freezed,Object? status = freezed,Object? setToNull = null,}) {
  return _then(_ShippingPriceUpdate(
metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,prices: freezed == prices ? _self._prices : prices // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, ShippingStateRates>>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShippingPriceStatus?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
