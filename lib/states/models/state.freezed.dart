// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$State {

/// Country code (part of composite primary key)
 String get countryCode;/// State/province code (part of composite primary key)
 String get code;/// State/province name
 String get name;/// Additional metadata as key-value pairs
 Map<String, dynamic> get metadata;/// Creation timestamp
 DateTime get createdAt;
/// Create a copy of State
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StateCopyWith<State> get copyWith => _$StateCopyWithImpl<State>(this as State, _$identity);

  /// Serializes this State to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is State&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,code,name,const DeepCollectionEquality().hash(metadata),createdAt);

@override
String toString() {
  return 'State(countryCode: $countryCode, code: $code, name: $name, metadata: $metadata, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $StateCopyWith<$Res>  {
  factory $StateCopyWith(State value, $Res Function(State) _then) = _$StateCopyWithImpl;
@useResult
$Res call({
 String countryCode, String code, String name, Map<String, dynamic> metadata, DateTime createdAt
});




}
/// @nodoc
class _$StateCopyWithImpl<$Res>
    implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(this._self, this._then);

  final State _self;
  final $Res Function(State) _then;

/// Create a copy of State
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = null,Object? code = null,Object? name = null,Object? metadata = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [State].
extension StatePatterns on State {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _State value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _State() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _State value)  $default,){
final _that = this;
switch (_that) {
case _State():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _State value)?  $default,){
final _that = this;
switch (_that) {
case _State() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String countryCode,  String code,  String name,  Map<String, dynamic> metadata,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _State() when $default != null:
return $default(_that.countryCode,_that.code,_that.name,_that.metadata,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String countryCode,  String code,  String name,  Map<String, dynamic> metadata,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _State():
return $default(_that.countryCode,_that.code,_that.name,_that.metadata,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String countryCode,  String code,  String name,  Map<String, dynamic> metadata,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _State() when $default != null:
return $default(_that.countryCode,_that.code,_that.name,_that.metadata,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _State extends State {
   _State({required this.countryCode, required this.code, required this.name, final  Map<String, dynamic> metadata = const {}, required this.createdAt}): _metadata = metadata,super._();
  factory _State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);

/// Country code (part of composite primary key)
@override final  String countryCode;
/// State/province code (part of composite primary key)
@override final  String code;
/// State/province name
@override final  String name;
/// Additional metadata as key-value pairs
 final  Map<String, dynamic> _metadata;
/// Additional metadata as key-value pairs
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

/// Creation timestamp
@override final  DateTime createdAt;

/// Create a copy of State
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateCopyWith<_State> get copyWith => __$StateCopyWithImpl<_State>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _State&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,code,name,const DeepCollectionEquality().hash(_metadata),createdAt);

@override
String toString() {
  return 'State(countryCode: $countryCode, code: $code, name: $name, metadata: $metadata, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$StateCopyWith<$Res> implements $StateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) _then) = __$StateCopyWithImpl;
@override @useResult
$Res call({
 String countryCode, String code, String name, Map<String, dynamic> metadata, DateTime createdAt
});




}
/// @nodoc
class __$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(this._self, this._then);

  final _State _self;
  final $Res Function(_State) _then;

/// Create a copy of State
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCode = null,Object? code = null,Object? name = null,Object? metadata = null,Object? createdAt = null,}) {
  return _then(_State(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$StateCreate {

/// Country code (required to identify the parent country)
 String get countryCode;/// State/province code
 String get code;/// State/province name
 String get name;/// Additional metadata as key-value pairs
 Map<String, dynamic> get metadata;
/// Create a copy of StateCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StateCreateCopyWith<StateCreate> get copyWith => _$StateCreateCopyWithImpl<StateCreate>(this as StateCreate, _$identity);

  /// Serializes this StateCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StateCreate&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,code,name,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'StateCreate(countryCode: $countryCode, code: $code, name: $name, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $StateCreateCopyWith<$Res>  {
  factory $StateCreateCopyWith(StateCreate value, $Res Function(StateCreate) _then) = _$StateCreateCopyWithImpl;
@useResult
$Res call({
 String countryCode, String code, String name, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$StateCreateCopyWithImpl<$Res>
    implements $StateCreateCopyWith<$Res> {
  _$StateCreateCopyWithImpl(this._self, this._then);

  final StateCreate _self;
  final $Res Function(StateCreate) _then;

/// Create a copy of StateCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = null,Object? code = null,Object? name = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [StateCreate].
extension StateCreatePatterns on StateCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StateCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StateCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StateCreate value)  $default,){
final _that = this;
switch (_that) {
case _StateCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StateCreate value)?  $default,){
final _that = this;
switch (_that) {
case _StateCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String countryCode,  String code,  String name,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StateCreate() when $default != null:
return $default(_that.countryCode,_that.code,_that.name,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String countryCode,  String code,  String name,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _StateCreate():
return $default(_that.countryCode,_that.code,_that.name,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String countryCode,  String code,  String name,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _StateCreate() when $default != null:
return $default(_that.countryCode,_that.code,_that.name,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StateCreate implements StateCreate {
  const _StateCreate({required this.countryCode, required this.code, required this.name, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _StateCreate.fromJson(Map<String, dynamic> json) => _$StateCreateFromJson(json);

/// Country code (required to identify the parent country)
@override final  String countryCode;
/// State/province code
@override final  String code;
/// State/province name
@override final  String name;
/// Additional metadata as key-value pairs
 final  Map<String, dynamic> _metadata;
/// Additional metadata as key-value pairs
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of StateCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateCreateCopyWith<_StateCreate> get copyWith => __$StateCreateCopyWithImpl<_StateCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StateCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StateCreate&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,code,name,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'StateCreate(countryCode: $countryCode, code: $code, name: $name, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$StateCreateCopyWith<$Res> implements $StateCreateCopyWith<$Res> {
  factory _$StateCreateCopyWith(_StateCreate value, $Res Function(_StateCreate) _then) = __$StateCreateCopyWithImpl;
@override @useResult
$Res call({
 String countryCode, String code, String name, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$StateCreateCopyWithImpl<$Res>
    implements _$StateCreateCopyWith<$Res> {
  __$StateCreateCopyWithImpl(this._self, this._then);

  final _StateCreate _self;
  final $Res Function(_StateCreate) _then;

/// Create a copy of StateCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCode = null,Object? code = null,Object? name = null,Object? metadata = null,}) {
  return _then(_StateCreate(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$StateUpdate {

/// State/province name
 String? get name;/// Additional metadata as key-value pairs
 Map<String, dynamic>? get metadata;// setToNull
 List<String> get setToNull;
/// Create a copy of StateUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StateUpdateCopyWith<StateUpdate> get copyWith => _$StateUpdateCopyWithImpl<StateUpdate>(this as StateUpdate, _$identity);

  /// Serializes this StateUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StateUpdate&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'StateUpdate(name: $name, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $StateUpdateCopyWith<$Res>  {
  factory $StateUpdateCopyWith(StateUpdate value, $Res Function(StateUpdate) _then) = _$StateUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, Map<String, dynamic>? metadata, List<String> setToNull
});




}
/// @nodoc
class _$StateUpdateCopyWithImpl<$Res>
    implements $StateUpdateCopyWith<$Res> {
  _$StateUpdateCopyWithImpl(this._self, this._then);

  final StateUpdate _self;
  final $Res Function(StateUpdate) _then;

/// Create a copy of StateUpdate
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


/// Adds pattern-matching-related methods to [StateUpdate].
extension StateUpdatePatterns on StateUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StateUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StateUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StateUpdate value)  $default,){
final _that = this;
switch (_that) {
case _StateUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StateUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _StateUpdate() when $default != null:
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
case _StateUpdate() when $default != null:
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
case _StateUpdate():
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
case _StateUpdate() when $default != null:
return $default(_that.name,_that.metadata,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StateUpdate implements StateUpdate {
  const _StateUpdate({this.name, final  Map<String, dynamic>? metadata, final  List<String> setToNull = const []}): _metadata = metadata,_setToNull = setToNull;
  factory _StateUpdate.fromJson(Map<String, dynamic> json) => _$StateUpdateFromJson(json);

/// State/province name
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

// setToNull
 final  List<String> _setToNull;
// setToNull
@override@JsonKey() List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of StateUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateUpdateCopyWith<_StateUpdate> get copyWith => __$StateUpdateCopyWithImpl<_StateUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StateUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StateUpdate&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'StateUpdate(name: $name, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$StateUpdateCopyWith<$Res> implements $StateUpdateCopyWith<$Res> {
  factory _$StateUpdateCopyWith(_StateUpdate value, $Res Function(_StateUpdate) _then) = __$StateUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, Map<String, dynamic>? metadata, List<String> setToNull
});




}
/// @nodoc
class __$StateUpdateCopyWithImpl<$Res>
    implements _$StateUpdateCopyWith<$Res> {
  __$StateUpdateCopyWithImpl(this._self, this._then);

  final _StateUpdate _self;
  final $Res Function(_StateUpdate) _then;

/// Create a copy of StateUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_StateUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
