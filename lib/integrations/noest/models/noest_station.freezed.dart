// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'noest_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoestStation {

/// Station code (e.g. "1A")
 String get code;/// Station name (e.g. "Adrar")
 String get name;/// Station address
 String get address;/// Google Maps link
 String? get map;/// List of phone numbers
 List<String> get phones;/// Station email
 String get email;
/// Create a copy of NoestStation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoestStationCopyWith<NoestStation> get copyWith => _$NoestStationCopyWithImpl<NoestStation>(this as NoestStation, _$identity);

  /// Serializes this NoestStation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoestStation&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.map, map) || other.map == map)&&const DeepCollectionEquality().equals(other.phones, phones)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,address,map,const DeepCollectionEquality().hash(phones),email);

@override
String toString() {
  return 'NoestStation(code: $code, name: $name, address: $address, map: $map, phones: $phones, email: $email)';
}


}

/// @nodoc
abstract mixin class $NoestStationCopyWith<$Res>  {
  factory $NoestStationCopyWith(NoestStation value, $Res Function(NoestStation) _then) = _$NoestStationCopyWithImpl;
@useResult
$Res call({
 String code, String name, String address, String? map, List<String> phones, String email
});




}
/// @nodoc
class _$NoestStationCopyWithImpl<$Res>
    implements $NoestStationCopyWith<$Res> {
  _$NoestStationCopyWithImpl(this._self, this._then);

  final NoestStation _self;
  final $Res Function(NoestStation) _then;

/// Create a copy of NoestStation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? address = null,Object? map = freezed,Object? phones = null,Object? email = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,map: freezed == map ? _self.map : map // ignore: cast_nullable_to_non_nullable
as String?,phones: null == phones ? _self.phones : phones // ignore: cast_nullable_to_non_nullable
as List<String>,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NoestStation].
extension NoestStationPatterns on NoestStation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoestStation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoestStation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoestStation value)  $default,){
final _that = this;
switch (_that) {
case _NoestStation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoestStation value)?  $default,){
final _that = this;
switch (_that) {
case _NoestStation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String address,  String? map,  List<String> phones,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoestStation() when $default != null:
return $default(_that.code,_that.name,_that.address,_that.map,_that.phones,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String address,  String? map,  List<String> phones,  String email)  $default,) {final _that = this;
switch (_that) {
case _NoestStation():
return $default(_that.code,_that.name,_that.address,_that.map,_that.phones,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String address,  String? map,  List<String> phones,  String email)?  $default,) {final _that = this;
switch (_that) {
case _NoestStation() when $default != null:
return $default(_that.code,_that.name,_that.address,_that.map,_that.phones,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NoestStation implements NoestStation {
   _NoestStation({required this.code, required this.name, required this.address, this.map, required final  List<String> phones, required this.email}): _phones = phones;
  factory _NoestStation.fromJson(Map<String, dynamic> json) => _$NoestStationFromJson(json);

/// Station code (e.g. "1A")
@override final  String code;
/// Station name (e.g. "Adrar")
@override final  String name;
/// Station address
@override final  String address;
/// Google Maps link
@override final  String? map;
/// List of phone numbers
 final  List<String> _phones;
/// List of phone numbers
@override List<String> get phones {
  if (_phones is EqualUnmodifiableListView) return _phones;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_phones);
}

/// Station email
@override final  String email;

/// Create a copy of NoestStation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoestStationCopyWith<_NoestStation> get copyWith => __$NoestStationCopyWithImpl<_NoestStation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoestStationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoestStation&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.map, map) || other.map == map)&&const DeepCollectionEquality().equals(other._phones, _phones)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,address,map,const DeepCollectionEquality().hash(_phones),email);

@override
String toString() {
  return 'NoestStation(code: $code, name: $name, address: $address, map: $map, phones: $phones, email: $email)';
}


}

/// @nodoc
abstract mixin class _$NoestStationCopyWith<$Res> implements $NoestStationCopyWith<$Res> {
  factory _$NoestStationCopyWith(_NoestStation value, $Res Function(_NoestStation) _then) = __$NoestStationCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String address, String? map, List<String> phones, String email
});




}
/// @nodoc
class __$NoestStationCopyWithImpl<$Res>
    implements _$NoestStationCopyWith<$Res> {
  __$NoestStationCopyWithImpl(this._self, this._then);

  final _NoestStation _self;
  final $Res Function(_NoestStation) _then;

/// Create a copy of NoestStation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? address = null,Object? map = freezed,Object? phones = null,Object? email = null,}) {
  return _then(_NoestStation(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,map: freezed == map ? _self.map : map // ignore: cast_nullable_to_non_nullable
as String?,phones: null == phones ? _self._phones : phones // ignore: cast_nullable_to_non_nullable
as List<String>,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
