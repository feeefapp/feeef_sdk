// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$City {

/// Country code (part of composite primary key)
 String get countryCode;/// State code (part of composite primary key)
 String get stateCode;/// City name (part of composite primary key)
 String get name;/// Additional metadata as key-value pairs
 Map<String, dynamic> get metadata;/// Localized names by locale code (e.g. {'ar': 'المدينة', 'en': 'City'}). From API locales jsonb.
 Map<String, String>? get locales;/// Creation timestamp
 DateTime get createdAt;
/// Create a copy of City
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityCopyWith<City> get copyWith => _$CityCopyWithImpl<City>(this as City, _$identity);

  /// Serializes this City to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is City&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.locales, locales)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,stateCode,name,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(locales),createdAt);

@override
String toString() {
  return 'City(countryCode: $countryCode, stateCode: $stateCode, name: $name, metadata: $metadata, locales: $locales, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CityCopyWith<$Res>  {
  factory $CityCopyWith(City value, $Res Function(City) _then) = _$CityCopyWithImpl;
@useResult
$Res call({
 String countryCode, String stateCode, String name, Map<String, dynamic> metadata, Map<String, String>? locales, DateTime createdAt
});




}
/// @nodoc
class _$CityCopyWithImpl<$Res>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._self, this._then);

  final City _self;
  final $Res Function(City) _then;

/// Create a copy of City
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = null,Object? stateCode = null,Object? name = null,Object? metadata = null,Object? locales = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,stateCode: null == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,locales: freezed == locales ? _self.locales : locales // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [City].
extension CityPatterns on City {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _City value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _City() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _City value)  $default,){
final _that = this;
switch (_that) {
case _City():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _City value)?  $default,){
final _that = this;
switch (_that) {
case _City() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String countryCode,  String stateCode,  String name,  Map<String, dynamic> metadata,  Map<String, String>? locales,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _City() when $default != null:
return $default(_that.countryCode,_that.stateCode,_that.name,_that.metadata,_that.locales,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String countryCode,  String stateCode,  String name,  Map<String, dynamic> metadata,  Map<String, String>? locales,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _City():
return $default(_that.countryCode,_that.stateCode,_that.name,_that.metadata,_that.locales,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String countryCode,  String stateCode,  String name,  Map<String, dynamic> metadata,  Map<String, String>? locales,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _City() when $default != null:
return $default(_that.countryCode,_that.stateCode,_that.name,_that.metadata,_that.locales,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _City extends City {
   _City({required this.countryCode, required this.stateCode, required this.name, final  Map<String, dynamic> metadata = const {}, final  Map<String, String>? locales, required this.createdAt}): _metadata = metadata,_locales = locales,super._();
  factory _City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

/// Country code (part of composite primary key)
@override final  String countryCode;
/// State code (part of composite primary key)
@override final  String stateCode;
/// City name (part of composite primary key)
@override final  String name;
/// Additional metadata as key-value pairs
 final  Map<String, dynamic> _metadata;
/// Additional metadata as key-value pairs
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

/// Localized names by locale code (e.g. {'ar': 'المدينة', 'en': 'City'}). From API locales jsonb.
 final  Map<String, String>? _locales;
/// Localized names by locale code (e.g. {'ar': 'المدينة', 'en': 'City'}). From API locales jsonb.
@override Map<String, String>? get locales {
  final value = _locales;
  if (value == null) return null;
  if (_locales is EqualUnmodifiableMapView) return _locales;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Creation timestamp
@override final  DateTime createdAt;

/// Create a copy of City
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityCopyWith<_City> get copyWith => __$CityCopyWithImpl<_City>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _City&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._locales, _locales)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,stateCode,name,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_locales),createdAt);

@override
String toString() {
  return 'City(countryCode: $countryCode, stateCode: $stateCode, name: $name, metadata: $metadata, locales: $locales, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$CityCopyWith(_City value, $Res Function(_City) _then) = __$CityCopyWithImpl;
@override @useResult
$Res call({
 String countryCode, String stateCode, String name, Map<String, dynamic> metadata, Map<String, String>? locales, DateTime createdAt
});




}
/// @nodoc
class __$CityCopyWithImpl<$Res>
    implements _$CityCopyWith<$Res> {
  __$CityCopyWithImpl(this._self, this._then);

  final _City _self;
  final $Res Function(_City) _then;

/// Create a copy of City
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCode = null,Object? stateCode = null,Object? name = null,Object? metadata = null,Object? locales = freezed,Object? createdAt = null,}) {
  return _then(_City(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,stateCode: null == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,locales: freezed == locales ? _self._locales : locales // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$CityCreate {

/// Country code (required to identify the parent country)
 String get countryCode;/// State code (required to identify the parent state)
 String get stateCode;/// City name
 String get name;/// Additional metadata as key-value pairs
 Map<String, dynamic> get metadata;
/// Create a copy of CityCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityCreateCopyWith<CityCreate> get copyWith => _$CityCreateCopyWithImpl<CityCreate>(this as CityCreate, _$identity);

  /// Serializes this CityCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityCreate&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,stateCode,name,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'CityCreate(countryCode: $countryCode, stateCode: $stateCode, name: $name, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $CityCreateCopyWith<$Res>  {
  factory $CityCreateCopyWith(CityCreate value, $Res Function(CityCreate) _then) = _$CityCreateCopyWithImpl;
@useResult
$Res call({
 String countryCode, String stateCode, String name, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$CityCreateCopyWithImpl<$Res>
    implements $CityCreateCopyWith<$Res> {
  _$CityCreateCopyWithImpl(this._self, this._then);

  final CityCreate _self;
  final $Res Function(CityCreate) _then;

/// Create a copy of CityCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = null,Object? stateCode = null,Object? name = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,stateCode: null == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CityCreate].
extension CityCreatePatterns on CityCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityCreate value)  $default,){
final _that = this;
switch (_that) {
case _CityCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityCreate value)?  $default,){
final _that = this;
switch (_that) {
case _CityCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String countryCode,  String stateCode,  String name,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityCreate() when $default != null:
return $default(_that.countryCode,_that.stateCode,_that.name,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String countryCode,  String stateCode,  String name,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _CityCreate():
return $default(_that.countryCode,_that.stateCode,_that.name,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String countryCode,  String stateCode,  String name,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _CityCreate() when $default != null:
return $default(_that.countryCode,_that.stateCode,_that.name,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityCreate implements CityCreate {
  const _CityCreate({required this.countryCode, required this.stateCode, required this.name, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _CityCreate.fromJson(Map<String, dynamic> json) => _$CityCreateFromJson(json);

/// Country code (required to identify the parent country)
@override final  String countryCode;
/// State code (required to identify the parent state)
@override final  String stateCode;
/// City name
@override final  String name;
/// Additional metadata as key-value pairs
 final  Map<String, dynamic> _metadata;
/// Additional metadata as key-value pairs
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of CityCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityCreateCopyWith<_CityCreate> get copyWith => __$CityCreateCopyWithImpl<_CityCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityCreate&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,stateCode,name,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'CityCreate(countryCode: $countryCode, stateCode: $stateCode, name: $name, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$CityCreateCopyWith<$Res> implements $CityCreateCopyWith<$Res> {
  factory _$CityCreateCopyWith(_CityCreate value, $Res Function(_CityCreate) _then) = __$CityCreateCopyWithImpl;
@override @useResult
$Res call({
 String countryCode, String stateCode, String name, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$CityCreateCopyWithImpl<$Res>
    implements _$CityCreateCopyWith<$Res> {
  __$CityCreateCopyWithImpl(this._self, this._then);

  final _CityCreate _self;
  final $Res Function(_CityCreate) _then;

/// Create a copy of CityCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCode = null,Object? stateCode = null,Object? name = null,Object? metadata = null,}) {
  return _then(_CityCreate(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,stateCode: null == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$CityUpdate {

/// City name
 String? get name;/// Additional metadata as key-value pairs
 Map<String, dynamic>? get metadata; List<String> get setToNull;
/// Create a copy of CityUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityUpdateCopyWith<CityUpdate> get copyWith => _$CityUpdateCopyWithImpl<CityUpdate>(this as CityUpdate, _$identity);

  /// Serializes this CityUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityUpdate&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'CityUpdate(name: $name, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $CityUpdateCopyWith<$Res>  {
  factory $CityUpdateCopyWith(CityUpdate value, $Res Function(CityUpdate) _then) = _$CityUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, Map<String, dynamic>? metadata, List<String> setToNull
});




}
/// @nodoc
class _$CityUpdateCopyWithImpl<$Res>
    implements $CityUpdateCopyWith<$Res> {
  _$CityUpdateCopyWithImpl(this._self, this._then);

  final CityUpdate _self;
  final $Res Function(CityUpdate) _then;

/// Create a copy of CityUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CityUpdate].
extension CityUpdatePatterns on CityUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityUpdate value)  $default,){
final _that = this;
switch (_that) {
case _CityUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _CityUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  Map<String, dynamic>? metadata,  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityUpdate() when $default != null:
return $default(_that.name,_that.metadata,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  Map<String, dynamic>? metadata,  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _CityUpdate():
return $default(_that.name,_that.metadata,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  Map<String, dynamic>? metadata,  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _CityUpdate() when $default != null:
return $default(_that.name,_that.metadata,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityUpdate implements CityUpdate {
  const _CityUpdate({this.name, final  Map<String, dynamic>? metadata, final  List<String> setToNull = const []}): _metadata = metadata,_setToNull = setToNull;
  factory _CityUpdate.fromJson(Map<String, dynamic> json) => _$CityUpdateFromJson(json);

/// City name
@override final  String? name;
/// Additional metadata as key-value pairs
 final  Map<String, dynamic>? _metadata;
/// Additional metadata as key-value pairs
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String> _setToNull;
@override@JsonKey() List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of CityUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityUpdateCopyWith<_CityUpdate> get copyWith => __$CityUpdateCopyWithImpl<_CityUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityUpdate&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'CityUpdate(name: $name, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$CityUpdateCopyWith<$Res> implements $CityUpdateCopyWith<$Res> {
  factory _$CityUpdateCopyWith(_CityUpdate value, $Res Function(_CityUpdate) _then) = __$CityUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, Map<String, dynamic>? metadata, List<String> setToNull
});




}
/// @nodoc
class __$CityUpdateCopyWithImpl<$Res>
    implements _$CityUpdateCopyWith<$Res> {
  __$CityUpdateCopyWithImpl(this._self, this._then);

  final _CityUpdate _self;
  final $Res Function(_CityUpdate) _then;

/// Create a copy of CityUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_CityUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
