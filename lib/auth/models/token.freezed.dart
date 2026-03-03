// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthToken {

 String get type; String? get name; String? get token; List<String> get abilities; DateTime? get lastUsedAt; DateTime? get expiresAt;
/// Create a copy of AuthToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthTokenCopyWith<AuthToken> get copyWith => _$AuthTokenCopyWithImpl<AuthToken>(this as AuthToken, _$identity);

  /// Serializes this AuthToken to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthToken&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&(identical(other.lastUsedAt, lastUsedAt) || other.lastUsedAt == lastUsedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,token,const DeepCollectionEquality().hash(abilities),lastUsedAt,expiresAt);

@override
String toString() {
  return 'AuthToken(type: $type, name: $name, token: $token, abilities: $abilities, lastUsedAt: $lastUsedAt, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $AuthTokenCopyWith<$Res>  {
  factory $AuthTokenCopyWith(AuthToken value, $Res Function(AuthToken) _then) = _$AuthTokenCopyWithImpl;
@useResult
$Res call({
 String type, String? name, String? token, List<String> abilities, DateTime? lastUsedAt, DateTime? expiresAt
});




}
/// @nodoc
class _$AuthTokenCopyWithImpl<$Res>
    implements $AuthTokenCopyWith<$Res> {
  _$AuthTokenCopyWithImpl(this._self, this._then);

  final AuthToken _self;
  final $Res Function(AuthToken) _then;

/// Create a copy of AuthToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = freezed,Object? token = freezed,Object? abilities = null,Object? lastUsedAt = freezed,Object? expiresAt = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,abilities: null == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<String>,lastUsedAt: freezed == lastUsedAt ? _self.lastUsedAt : lastUsedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthToken].
extension AuthTokenPatterns on AuthToken {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthToken value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthToken() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthToken value)  $default,){
final _that = this;
switch (_that) {
case _AuthToken():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthToken value)?  $default,){
final _that = this;
switch (_that) {
case _AuthToken() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String? name,  String? token,  List<String> abilities,  DateTime? lastUsedAt,  DateTime? expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthToken() when $default != null:
return $default(_that.type,_that.name,_that.token,_that.abilities,_that.lastUsedAt,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String? name,  String? token,  List<String> abilities,  DateTime? lastUsedAt,  DateTime? expiresAt)  $default,) {final _that = this;
switch (_that) {
case _AuthToken():
return $default(_that.type,_that.name,_that.token,_that.abilities,_that.lastUsedAt,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String? name,  String? token,  List<String> abilities,  DateTime? lastUsedAt,  DateTime? expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _AuthToken() when $default != null:
return $default(_that.type,_that.name,_that.token,_that.abilities,_that.lastUsedAt,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthToken implements AuthToken {
   _AuthToken({required this.type, required this.name, this.token, required final  List<String> abilities, required this.lastUsedAt, required this.expiresAt}): _abilities = abilities;
  factory _AuthToken.fromJson(Map<String, dynamic> json) => _$AuthTokenFromJson(json);

@override final  String type;
@override final  String? name;
@override final  String? token;
 final  List<String> _abilities;
@override List<String> get abilities {
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abilities);
}

@override final  DateTime? lastUsedAt;
@override final  DateTime? expiresAt;

/// Create a copy of AuthToken
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthTokenCopyWith<_AuthToken> get copyWith => __$AuthTokenCopyWithImpl<_AuthToken>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthTokenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthToken&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&(identical(other.lastUsedAt, lastUsedAt) || other.lastUsedAt == lastUsedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,token,const DeepCollectionEquality().hash(_abilities),lastUsedAt,expiresAt);

@override
String toString() {
  return 'AuthToken(type: $type, name: $name, token: $token, abilities: $abilities, lastUsedAt: $lastUsedAt, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$AuthTokenCopyWith<$Res> implements $AuthTokenCopyWith<$Res> {
  factory _$AuthTokenCopyWith(_AuthToken value, $Res Function(_AuthToken) _then) = __$AuthTokenCopyWithImpl;
@override @useResult
$Res call({
 String type, String? name, String? token, List<String> abilities, DateTime? lastUsedAt, DateTime? expiresAt
});




}
/// @nodoc
class __$AuthTokenCopyWithImpl<$Res>
    implements _$AuthTokenCopyWith<$Res> {
  __$AuthTokenCopyWithImpl(this._self, this._then);

  final _AuthToken _self;
  final $Res Function(_AuthToken) _then;

/// Create a copy of AuthToken
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = freezed,Object? token = freezed,Object? abilities = null,Object? lastUsedAt = freezed,Object? expiresAt = freezed,}) {
  return _then(_AuthToken(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,abilities: null == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<String>,lastUsedAt: freezed == lastUsedAt ? _self.lastUsedAt : lastUsedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$AccessToken {

// identifier: string | number | BigInt;
 dynamic get identifier;// tokenableId
 dynamic get tokenableId;// value?: Secret<string>;
 dynamic get value;// name: string | null;
 String? get name;// type: string;
 String get type;// abilities: string[];
 List<String> get abilities;// hash: string;
 String get hash;// createdAt
 DateTime get createdAt;// updatedAt
 DateTime get updatedAt;// expiresAt
 DateTime? get expiresAt;// lastUsedAt
 DateTime? get lastUsedAt;
/// Create a copy of AccessToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessTokenCopyWith<AccessToken> get copyWith => _$AccessTokenCopyWithImpl<AccessToken>(this as AccessToken, _$identity);

  /// Serializes this AccessToken to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessToken&&const DeepCollectionEquality().equals(other.identifier, identifier)&&const DeepCollectionEquality().equals(other.tokenableId, tokenableId)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.lastUsedAt, lastUsedAt) || other.lastUsedAt == lastUsedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(identifier),const DeepCollectionEquality().hash(tokenableId),const DeepCollectionEquality().hash(value),name,type,const DeepCollectionEquality().hash(abilities),hash,createdAt,updatedAt,expiresAt,lastUsedAt);

@override
String toString() {
  return 'AccessToken(identifier: $identifier, tokenableId: $tokenableId, value: $value, name: $name, type: $type, abilities: $abilities, hash: $hash, createdAt: $createdAt, updatedAt: $updatedAt, expiresAt: $expiresAt, lastUsedAt: $lastUsedAt)';
}


}

/// @nodoc
abstract mixin class $AccessTokenCopyWith<$Res>  {
  factory $AccessTokenCopyWith(AccessToken value, $Res Function(AccessToken) _then) = _$AccessTokenCopyWithImpl;
@useResult
$Res call({
 dynamic identifier, dynamic tokenableId, dynamic value, String? name, String type, List<String> abilities, String hash, DateTime createdAt, DateTime updatedAt, DateTime? expiresAt, DateTime? lastUsedAt
});




}
/// @nodoc
class _$AccessTokenCopyWithImpl<$Res>
    implements $AccessTokenCopyWith<$Res> {
  _$AccessTokenCopyWithImpl(this._self, this._then);

  final AccessToken _self;
  final $Res Function(AccessToken) _then;

/// Create a copy of AccessToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? identifier = freezed,Object? tokenableId = freezed,Object? value = freezed,Object? name = freezed,Object? type = null,Object? abilities = null,Object? hash = null,Object? createdAt = null,Object? updatedAt = null,Object? expiresAt = freezed,Object? lastUsedAt = freezed,}) {
  return _then(_self.copyWith(
identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as dynamic,tokenableId: freezed == tokenableId ? _self.tokenableId : tokenableId // ignore: cast_nullable_to_non_nullable
as dynamic,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,abilities: null == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<String>,hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastUsedAt: freezed == lastUsedAt ? _self.lastUsedAt : lastUsedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AccessToken].
extension AccessTokenPatterns on AccessToken {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccessToken value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccessToken() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccessToken value)  $default,){
final _that = this;
switch (_that) {
case _AccessToken():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccessToken value)?  $default,){
final _that = this;
switch (_that) {
case _AccessToken() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic identifier,  dynamic tokenableId,  dynamic value,  String? name,  String type,  List<String> abilities,  String hash,  DateTime createdAt,  DateTime updatedAt,  DateTime? expiresAt,  DateTime? lastUsedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccessToken() when $default != null:
return $default(_that.identifier,_that.tokenableId,_that.value,_that.name,_that.type,_that.abilities,_that.hash,_that.createdAt,_that.updatedAt,_that.expiresAt,_that.lastUsedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic identifier,  dynamic tokenableId,  dynamic value,  String? name,  String type,  List<String> abilities,  String hash,  DateTime createdAt,  DateTime updatedAt,  DateTime? expiresAt,  DateTime? lastUsedAt)  $default,) {final _that = this;
switch (_that) {
case _AccessToken():
return $default(_that.identifier,_that.tokenableId,_that.value,_that.name,_that.type,_that.abilities,_that.hash,_that.createdAt,_that.updatedAt,_that.expiresAt,_that.lastUsedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic identifier,  dynamic tokenableId,  dynamic value,  String? name,  String type,  List<String> abilities,  String hash,  DateTime createdAt,  DateTime updatedAt,  DateTime? expiresAt,  DateTime? lastUsedAt)?  $default,) {final _that = this;
switch (_that) {
case _AccessToken() when $default != null:
return $default(_that.identifier,_that.tokenableId,_that.value,_that.name,_that.type,_that.abilities,_that.hash,_that.createdAt,_that.updatedAt,_that.expiresAt,_that.lastUsedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccessToken implements AccessToken {
   _AccessToken({required this.identifier, required this.tokenableId, this.value, this.name, required this.type, required final  List<String> abilities, required this.hash, required this.createdAt, required this.updatedAt, this.expiresAt, this.lastUsedAt}): _abilities = abilities;
  factory _AccessToken.fromJson(Map<String, dynamic> json) => _$AccessTokenFromJson(json);

// identifier: string | number | BigInt;
@override final  dynamic identifier;
// tokenableId
@override final  dynamic tokenableId;
// value?: Secret<string>;
@override final  dynamic value;
// name: string | null;
@override final  String? name;
// type: string;
@override final  String type;
// abilities: string[];
 final  List<String> _abilities;
// abilities: string[];
@override List<String> get abilities {
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abilities);
}

// hash: string;
@override final  String hash;
// createdAt
@override final  DateTime createdAt;
// updatedAt
@override final  DateTime updatedAt;
// expiresAt
@override final  DateTime? expiresAt;
// lastUsedAt
@override final  DateTime? lastUsedAt;

/// Create a copy of AccessToken
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessTokenCopyWith<_AccessToken> get copyWith => __$AccessTokenCopyWithImpl<_AccessToken>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessTokenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessToken&&const DeepCollectionEquality().equals(other.identifier, identifier)&&const DeepCollectionEquality().equals(other.tokenableId, tokenableId)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.lastUsedAt, lastUsedAt) || other.lastUsedAt == lastUsedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(identifier),const DeepCollectionEquality().hash(tokenableId),const DeepCollectionEquality().hash(value),name,type,const DeepCollectionEquality().hash(_abilities),hash,createdAt,updatedAt,expiresAt,lastUsedAt);

@override
String toString() {
  return 'AccessToken(identifier: $identifier, tokenableId: $tokenableId, value: $value, name: $name, type: $type, abilities: $abilities, hash: $hash, createdAt: $createdAt, updatedAt: $updatedAt, expiresAt: $expiresAt, lastUsedAt: $lastUsedAt)';
}


}

/// @nodoc
abstract mixin class _$AccessTokenCopyWith<$Res> implements $AccessTokenCopyWith<$Res> {
  factory _$AccessTokenCopyWith(_AccessToken value, $Res Function(_AccessToken) _then) = __$AccessTokenCopyWithImpl;
@override @useResult
$Res call({
 dynamic identifier, dynamic tokenableId, dynamic value, String? name, String type, List<String> abilities, String hash, DateTime createdAt, DateTime updatedAt, DateTime? expiresAt, DateTime? lastUsedAt
});




}
/// @nodoc
class __$AccessTokenCopyWithImpl<$Res>
    implements _$AccessTokenCopyWith<$Res> {
  __$AccessTokenCopyWithImpl(this._self, this._then);

  final _AccessToken _self;
  final $Res Function(_AccessToken) _then;

/// Create a copy of AccessToken
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? identifier = freezed,Object? tokenableId = freezed,Object? value = freezed,Object? name = freezed,Object? type = null,Object? abilities = null,Object? hash = null,Object? createdAt = null,Object? updatedAt = null,Object? expiresAt = freezed,Object? lastUsedAt = freezed,}) {
  return _then(_AccessToken(
identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as dynamic,tokenableId: freezed == tokenableId ? _self.tokenableId : tokenableId // ignore: cast_nullable_to_non_nullable
as dynamic,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,abilities: null == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<String>,hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastUsedAt: freezed == lastUsedAt ? _self.lastUsedAt : lastUsedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
