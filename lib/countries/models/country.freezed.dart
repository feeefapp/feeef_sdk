// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Country {

/// ISO 3166-1 alpha-2 country code (e.g., US, DZ, SA)
 String get code;/// Country name (e.g., United States, Algeria, Saudi Arabia)
 String get name;/// Phone country code without + (e.g., 1, 213, 966)
 String get phone;/// Additional metadata as key-value pairs
 Map<String, dynamic> get metadata;/// Localized names by locale code (e.g. {'ar': 'الجزائر', 'en': 'Algeria'}). From API locales jsonb.
 Map<String, String>? get locales;/// Creation timestamp
 DateTime get createdAt;
/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryCopyWith<Country> get copyWith => _$CountryCopyWithImpl<Country>(this as Country, _$identity);

  /// Serializes this Country to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Country&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.locales, locales)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,phone,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(locales),createdAt);

@override
String toString() {
  return 'Country(code: $code, name: $name, phone: $phone, metadata: $metadata, locales: $locales, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CountryCopyWith<$Res>  {
  factory $CountryCopyWith(Country value, $Res Function(Country) _then) = _$CountryCopyWithImpl;
@useResult
$Res call({
 String code, String name, String phone, Map<String, dynamic> metadata, Map<String, String>? locales, DateTime createdAt
});




}
/// @nodoc
class _$CountryCopyWithImpl<$Res>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._self, this._then);

  final Country _self;
  final $Res Function(Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? phone = null,Object? metadata = null,Object? locales = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,locales: freezed == locales ? _self.locales : locales // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Country].
extension CountryPatterns on Country {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Country value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Country() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Country value)  $default,){
final _that = this;
switch (_that) {
case _Country():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Country value)?  $default,){
final _that = this;
switch (_that) {
case _Country() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String phone,  Map<String, dynamic> metadata,  Map<String, String>? locales,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that.code,_that.name,_that.phone,_that.metadata,_that.locales,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String phone,  Map<String, dynamic> metadata,  Map<String, String>? locales,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Country():
return $default(_that.code,_that.name,_that.phone,_that.metadata,_that.locales,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String phone,  Map<String, dynamic> metadata,  Map<String, String>? locales,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that.code,_that.name,_that.phone,_that.metadata,_that.locales,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Country extends Country {
   _Country({required this.code, required this.name, required this.phone, final  Map<String, dynamic> metadata = const {}, final  Map<String, String>? locales, required this.createdAt}): _metadata = metadata,_locales = locales,super._();
  factory _Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

/// ISO 3166-1 alpha-2 country code (e.g., US, DZ, SA)
@override final  String code;
/// Country name (e.g., United States, Algeria, Saudi Arabia)
@override final  String name;
/// Phone country code without + (e.g., 1, 213, 966)
@override final  String phone;
/// Additional metadata as key-value pairs
 final  Map<String, dynamic> _metadata;
/// Additional metadata as key-value pairs
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

/// Localized names by locale code (e.g. {'ar': 'الجزائر', 'en': 'Algeria'}). From API locales jsonb.
 final  Map<String, String>? _locales;
/// Localized names by locale code (e.g. {'ar': 'الجزائر', 'en': 'Algeria'}). From API locales jsonb.
@override Map<String, String>? get locales {
  final value = _locales;
  if (value == null) return null;
  if (_locales is EqualUnmodifiableMapView) return _locales;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Creation timestamp
@override final  DateTime createdAt;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryCopyWith<_Country> get copyWith => __$CountryCopyWithImpl<_Country>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Country&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._locales, _locales)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,phone,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_locales),createdAt);

@override
String toString() {
  return 'Country(code: $code, name: $name, phone: $phone, metadata: $metadata, locales: $locales, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) _then) = __$CountryCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String phone, Map<String, dynamic> metadata, Map<String, String>? locales, DateTime createdAt
});




}
/// @nodoc
class __$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(this._self, this._then);

  final _Country _self;
  final $Res Function(_Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? phone = null,Object? metadata = null,Object? locales = freezed,Object? createdAt = null,}) {
  return _then(_Country(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,locales: freezed == locales ? _self._locales : locales // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$CountryCreate {

/// ISO 3166-1 alpha-2 country code (e.g., US, DZ, SA)
 String get code;/// Country name (e.g., United States, Algeria, Saudi Arabia)
 String get name;/// Phone country code without + (e.g., 1, 213, 966)
 String get phone;/// Additional metadata as key-value pairs
 Map<String, dynamic> get metadata;
/// Create a copy of CountryCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryCreateCopyWith<CountryCreate> get copyWith => _$CountryCreateCopyWithImpl<CountryCreate>(this as CountryCreate, _$identity);

  /// Serializes this CountryCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryCreate&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,phone,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'CountryCreate(code: $code, name: $name, phone: $phone, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $CountryCreateCopyWith<$Res>  {
  factory $CountryCreateCopyWith(CountryCreate value, $Res Function(CountryCreate) _then) = _$CountryCreateCopyWithImpl;
@useResult
$Res call({
 String code, String name, String phone, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$CountryCreateCopyWithImpl<$Res>
    implements $CountryCreateCopyWith<$Res> {
  _$CountryCreateCopyWithImpl(this._self, this._then);

  final CountryCreate _self;
  final $Res Function(CountryCreate) _then;

/// Create a copy of CountryCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? phone = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryCreate].
extension CountryCreatePatterns on CountryCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryCreate value)  $default,){
final _that = this;
switch (_that) {
case _CountryCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryCreate value)?  $default,){
final _that = this;
switch (_that) {
case _CountryCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String phone,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryCreate() when $default != null:
return $default(_that.code,_that.name,_that.phone,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String phone,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _CountryCreate():
return $default(_that.code,_that.name,_that.phone,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String phone,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _CountryCreate() when $default != null:
return $default(_that.code,_that.name,_that.phone,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryCreate implements CountryCreate {
  const _CountryCreate({required this.code, required this.name, required this.phone, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _CountryCreate.fromJson(Map<String, dynamic> json) => _$CountryCreateFromJson(json);

/// ISO 3166-1 alpha-2 country code (e.g., US, DZ, SA)
@override final  String code;
/// Country name (e.g., United States, Algeria, Saudi Arabia)
@override final  String name;
/// Phone country code without + (e.g., 1, 213, 966)
@override final  String phone;
/// Additional metadata as key-value pairs
 final  Map<String, dynamic> _metadata;
/// Additional metadata as key-value pairs
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of CountryCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryCreateCopyWith<_CountryCreate> get copyWith => __$CountryCreateCopyWithImpl<_CountryCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryCreate&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,phone,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'CountryCreate(code: $code, name: $name, phone: $phone, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$CountryCreateCopyWith<$Res> implements $CountryCreateCopyWith<$Res> {
  factory _$CountryCreateCopyWith(_CountryCreate value, $Res Function(_CountryCreate) _then) = __$CountryCreateCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String phone, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$CountryCreateCopyWithImpl<$Res>
    implements _$CountryCreateCopyWith<$Res> {
  __$CountryCreateCopyWithImpl(this._self, this._then);

  final _CountryCreate _self;
  final $Res Function(_CountryCreate) _then;

/// Create a copy of CountryCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? phone = null,Object? metadata = null,}) {
  return _then(_CountryCreate(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$CountryUpdate {

/// Country name (e.g., United States, Algeria, Saudi Arabia)
 String? get name;/// Phone country code without + (e.g., 1, 213, 966)
 String? get phone;/// Additional metadata as key-value pairs
 Map<String, dynamic>? get metadata; List<String> get setToNull;
/// Create a copy of CountryUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryUpdateCopyWith<CountryUpdate> get copyWith => _$CountryUpdateCopyWithImpl<CountryUpdate>(this as CountryUpdate, _$identity);

  /// Serializes this CountryUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,phone,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'CountryUpdate(name: $name, phone: $phone, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $CountryUpdateCopyWith<$Res>  {
  factory $CountryUpdateCopyWith(CountryUpdate value, $Res Function(CountryUpdate) _then) = _$CountryUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? phone, Map<String, dynamic>? metadata, List<String> setToNull
});




}
/// @nodoc
class _$CountryUpdateCopyWithImpl<$Res>
    implements $CountryUpdateCopyWith<$Res> {
  _$CountryUpdateCopyWithImpl(this._self, this._then);

  final CountryUpdate _self;
  final $Res Function(CountryUpdate) _then;

/// Create a copy of CountryUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? phone = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryUpdate].
extension CountryUpdatePatterns on CountryUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryUpdate value)  $default,){
final _that = this;
switch (_that) {
case _CountryUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _CountryUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? phone,  Map<String, dynamic>? metadata,  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryUpdate() when $default != null:
return $default(_that.name,_that.phone,_that.metadata,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? phone,  Map<String, dynamic>? metadata,  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _CountryUpdate():
return $default(_that.name,_that.phone,_that.metadata,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? phone,  Map<String, dynamic>? metadata,  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _CountryUpdate() when $default != null:
return $default(_that.name,_that.phone,_that.metadata,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryUpdate implements CountryUpdate {
  const _CountryUpdate({this.name, this.phone, final  Map<String, dynamic>? metadata, final  List<String> setToNull = const []}): _metadata = metadata,_setToNull = setToNull;
  factory _CountryUpdate.fromJson(Map<String, dynamic> json) => _$CountryUpdateFromJson(json);

/// Country name (e.g., United States, Algeria, Saudi Arabia)
@override final  String? name;
/// Phone country code without + (e.g., 1, 213, 966)
@override final  String? phone;
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


/// Create a copy of CountryUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryUpdateCopyWith<_CountryUpdate> get copyWith => __$CountryUpdateCopyWithImpl<_CountryUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,phone,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'CountryUpdate(name: $name, phone: $phone, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$CountryUpdateCopyWith<$Res> implements $CountryUpdateCopyWith<$Res> {
  factory _$CountryUpdateCopyWith(_CountryUpdate value, $Res Function(_CountryUpdate) _then) = __$CountryUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? phone, Map<String, dynamic>? metadata, List<String> setToNull
});




}
/// @nodoc
class __$CountryUpdateCopyWithImpl<$Res>
    implements _$CountryUpdateCopyWith<$Res> {
  __$CountryUpdateCopyWithImpl(this._self, this._then);

  final _CountryUpdate _self;
  final $Res Function(_CountryUpdate) _then;

/// Create a copy of CountryUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? phone = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_CountryUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
