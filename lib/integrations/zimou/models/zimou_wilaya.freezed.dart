// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zimou_wilaya.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ZimouWilaya {

 int get id; String get name; Map<String, dynamic> get metadata;
/// Create a copy of ZimouWilaya
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZimouWilayaCopyWith<ZimouWilaya> get copyWith => _$ZimouWilayaCopyWithImpl<ZimouWilaya>(this as ZimouWilaya, _$identity);

  /// Serializes this ZimouWilaya to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZimouWilaya&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ZimouWilaya(id: $id, name: $name, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ZimouWilayaCopyWith<$Res>  {
  factory $ZimouWilayaCopyWith(ZimouWilaya value, $Res Function(ZimouWilaya) _then) = _$ZimouWilayaCopyWithImpl;
@useResult
$Res call({
 int id, String name, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$ZimouWilayaCopyWithImpl<$Res>
    implements $ZimouWilayaCopyWith<$Res> {
  _$ZimouWilayaCopyWithImpl(this._self, this._then);

  final ZimouWilaya _self;
  final $Res Function(ZimouWilaya) _then;

/// Create a copy of ZimouWilaya
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ZimouWilaya].
extension ZimouWilayaPatterns on ZimouWilaya {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZimouWilaya value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZimouWilaya() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZimouWilaya value)  $default,){
final _that = this;
switch (_that) {
case _ZimouWilaya():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZimouWilaya value)?  $default,){
final _that = this;
switch (_that) {
case _ZimouWilaya() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZimouWilaya() when $default != null:
return $default(_that.id,_that.name,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _ZimouWilaya():
return $default(_that.id,_that.name,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _ZimouWilaya() when $default != null:
return $default(_that.id,_that.name,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZimouWilaya implements ZimouWilaya {
  const _ZimouWilaya({required this.id, required this.name, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _ZimouWilaya.fromJson(Map<String, dynamic> json) => _$ZimouWilayaFromJson(json);

@override final  int id;
@override final  String name;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of ZimouWilaya
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZimouWilayaCopyWith<_ZimouWilaya> get copyWith => __$ZimouWilayaCopyWithImpl<_ZimouWilaya>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZimouWilayaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZimouWilaya&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ZimouWilaya(id: $id, name: $name, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ZimouWilayaCopyWith<$Res> implements $ZimouWilayaCopyWith<$Res> {
  factory _$ZimouWilayaCopyWith(_ZimouWilaya value, $Res Function(_ZimouWilaya) _then) = __$ZimouWilayaCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$ZimouWilayaCopyWithImpl<$Res>
    implements _$ZimouWilayaCopyWith<$Res> {
  __$ZimouWilayaCopyWithImpl(this._self, this._then);

  final _ZimouWilaya _self;
  final $Res Function(_ZimouWilaya) _then;

/// Create a copy of ZimouWilaya
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? metadata = null,}) {
  return _then(_ZimouWilaya(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
