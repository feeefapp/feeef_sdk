// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$App {

 String get id; String get name; String get clientId; List<String> get redirectUris; List<String> get scopes; bool get active; DateTime? get lastUsedAt; DateTime get createdAt; DateTime? get updatedAt;/// Only set when returned from create or regenerateSecret; store securely.
 String? get clientSecret;
/// Create a copy of App
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppCopyWith<App> get copyWith => _$AppCopyWithImpl<App>(this as App, _$identity);

  /// Serializes this App to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is App&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&const DeepCollectionEquality().equals(other.redirectUris, redirectUris)&&const DeepCollectionEquality().equals(other.scopes, scopes)&&(identical(other.active, active) || other.active == active)&&(identical(other.lastUsedAt, lastUsedAt) || other.lastUsedAt == lastUsedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.clientSecret, clientSecret) || other.clientSecret == clientSecret));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,clientId,const DeepCollectionEquality().hash(redirectUris),const DeepCollectionEquality().hash(scopes),active,lastUsedAt,createdAt,updatedAt,clientSecret);

@override
String toString() {
  return 'App(id: $id, name: $name, clientId: $clientId, redirectUris: $redirectUris, scopes: $scopes, active: $active, lastUsedAt: $lastUsedAt, createdAt: $createdAt, updatedAt: $updatedAt, clientSecret: $clientSecret)';
}


}

/// @nodoc
abstract mixin class $AppCopyWith<$Res>  {
  factory $AppCopyWith(App value, $Res Function(App) _then) = _$AppCopyWithImpl;
@useResult
$Res call({
 String id, String name, String clientId, List<String> redirectUris, List<String> scopes, bool active, DateTime? lastUsedAt, DateTime createdAt, DateTime? updatedAt, String? clientSecret
});




}
/// @nodoc
class _$AppCopyWithImpl<$Res>
    implements $AppCopyWith<$Res> {
  _$AppCopyWithImpl(this._self, this._then);

  final App _self;
  final $Res Function(App) _then;

/// Create a copy of App
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? clientId = null,Object? redirectUris = null,Object? scopes = null,Object? active = null,Object? lastUsedAt = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? clientSecret = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String,redirectUris: null == redirectUris ? _self.redirectUris : redirectUris // ignore: cast_nullable_to_non_nullable
as List<String>,scopes: null == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,lastUsedAt: freezed == lastUsedAt ? _self.lastUsedAt : lastUsedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,clientSecret: freezed == clientSecret ? _self.clientSecret : clientSecret // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [App].
extension AppPatterns on App {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _App value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _App() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _App value)  $default,){
final _that = this;
switch (_that) {
case _App():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _App value)?  $default,){
final _that = this;
switch (_that) {
case _App() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String clientId,  List<String> redirectUris,  List<String> scopes,  bool active,  DateTime? lastUsedAt,  DateTime createdAt,  DateTime? updatedAt,  String? clientSecret)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _App() when $default != null:
return $default(_that.id,_that.name,_that.clientId,_that.redirectUris,_that.scopes,_that.active,_that.lastUsedAt,_that.createdAt,_that.updatedAt,_that.clientSecret);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String clientId,  List<String> redirectUris,  List<String> scopes,  bool active,  DateTime? lastUsedAt,  DateTime createdAt,  DateTime? updatedAt,  String? clientSecret)  $default,) {final _that = this;
switch (_that) {
case _App():
return $default(_that.id,_that.name,_that.clientId,_that.redirectUris,_that.scopes,_that.active,_that.lastUsedAt,_that.createdAt,_that.updatedAt,_that.clientSecret);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String clientId,  List<String> redirectUris,  List<String> scopes,  bool active,  DateTime? lastUsedAt,  DateTime createdAt,  DateTime? updatedAt,  String? clientSecret)?  $default,) {final _that = this;
switch (_that) {
case _App() when $default != null:
return $default(_that.id,_that.name,_that.clientId,_that.redirectUris,_that.scopes,_that.active,_that.lastUsedAt,_that.createdAt,_that.updatedAt,_that.clientSecret);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _App implements App {
  const _App({required this.id, required this.name, required this.clientId, final  List<String> redirectUris = const [], final  List<String> scopes = const [], this.active = true, this.lastUsedAt, required this.createdAt, this.updatedAt, this.clientSecret}): _redirectUris = redirectUris,_scopes = scopes;
  factory _App.fromJson(Map<String, dynamic> json) => _$AppFromJson(json);

@override final  String id;
@override final  String name;
@override final  String clientId;
 final  List<String> _redirectUris;
@override@JsonKey() List<String> get redirectUris {
  if (_redirectUris is EqualUnmodifiableListView) return _redirectUris;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_redirectUris);
}

 final  List<String> _scopes;
@override@JsonKey() List<String> get scopes {
  if (_scopes is EqualUnmodifiableListView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scopes);
}

@override@JsonKey() final  bool active;
@override final  DateTime? lastUsedAt;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;
/// Only set when returned from create or regenerateSecret; store securely.
@override final  String? clientSecret;

/// Create a copy of App
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppCopyWith<_App> get copyWith => __$AppCopyWithImpl<_App>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _App&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&const DeepCollectionEquality().equals(other._redirectUris, _redirectUris)&&const DeepCollectionEquality().equals(other._scopes, _scopes)&&(identical(other.active, active) || other.active == active)&&(identical(other.lastUsedAt, lastUsedAt) || other.lastUsedAt == lastUsedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.clientSecret, clientSecret) || other.clientSecret == clientSecret));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,clientId,const DeepCollectionEquality().hash(_redirectUris),const DeepCollectionEquality().hash(_scopes),active,lastUsedAt,createdAt,updatedAt,clientSecret);

@override
String toString() {
  return 'App(id: $id, name: $name, clientId: $clientId, redirectUris: $redirectUris, scopes: $scopes, active: $active, lastUsedAt: $lastUsedAt, createdAt: $createdAt, updatedAt: $updatedAt, clientSecret: $clientSecret)';
}


}

/// @nodoc
abstract mixin class _$AppCopyWith<$Res> implements $AppCopyWith<$Res> {
  factory _$AppCopyWith(_App value, $Res Function(_App) _then) = __$AppCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String clientId, List<String> redirectUris, List<String> scopes, bool active, DateTime? lastUsedAt, DateTime createdAt, DateTime? updatedAt, String? clientSecret
});




}
/// @nodoc
class __$AppCopyWithImpl<$Res>
    implements _$AppCopyWith<$Res> {
  __$AppCopyWithImpl(this._self, this._then);

  final _App _self;
  final $Res Function(_App) _then;

/// Create a copy of App
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? clientId = null,Object? redirectUris = null,Object? scopes = null,Object? active = null,Object? lastUsedAt = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? clientSecret = freezed,}) {
  return _then(_App(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String,redirectUris: null == redirectUris ? _self._redirectUris : redirectUris // ignore: cast_nullable_to_non_nullable
as List<String>,scopes: null == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,lastUsedAt: freezed == lastUsedAt ? _self.lastUsedAt : lastUsedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,clientSecret: freezed == clientSecret ? _self.clientSecret : clientSecret // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AppCreate {

 String get name; List<String> get redirectUris; List<String> get scopes;
/// Create a copy of AppCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppCreateCopyWith<AppCreate> get copyWith => _$AppCreateCopyWithImpl<AppCreate>(this as AppCreate, _$identity);

  /// Serializes this AppCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppCreate&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.redirectUris, redirectUris)&&const DeepCollectionEquality().equals(other.scopes, scopes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(redirectUris),const DeepCollectionEquality().hash(scopes));

@override
String toString() {
  return 'AppCreate(name: $name, redirectUris: $redirectUris, scopes: $scopes)';
}


}

/// @nodoc
abstract mixin class $AppCreateCopyWith<$Res>  {
  factory $AppCreateCopyWith(AppCreate value, $Res Function(AppCreate) _then) = _$AppCreateCopyWithImpl;
@useResult
$Res call({
 String name, List<String> redirectUris, List<String> scopes
});




}
/// @nodoc
class _$AppCreateCopyWithImpl<$Res>
    implements $AppCreateCopyWith<$Res> {
  _$AppCreateCopyWithImpl(this._self, this._then);

  final AppCreate _self;
  final $Res Function(AppCreate) _then;

/// Create a copy of AppCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? redirectUris = null,Object? scopes = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,redirectUris: null == redirectUris ? _self.redirectUris : redirectUris // ignore: cast_nullable_to_non_nullable
as List<String>,scopes: null == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AppCreate].
extension AppCreatePatterns on AppCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppCreate value)  $default,){
final _that = this;
switch (_that) {
case _AppCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppCreate value)?  $default,){
final _that = this;
switch (_that) {
case _AppCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<String> redirectUris,  List<String> scopes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppCreate() when $default != null:
return $default(_that.name,_that.redirectUris,_that.scopes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<String> redirectUris,  List<String> scopes)  $default,) {final _that = this;
switch (_that) {
case _AppCreate():
return $default(_that.name,_that.redirectUris,_that.scopes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<String> redirectUris,  List<String> scopes)?  $default,) {final _that = this;
switch (_that) {
case _AppCreate() when $default != null:
return $default(_that.name,_that.redirectUris,_that.scopes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppCreate implements AppCreate {
  const _AppCreate({required this.name, required final  List<String> redirectUris, required final  List<String> scopes}): _redirectUris = redirectUris,_scopes = scopes;
  factory _AppCreate.fromJson(Map<String, dynamic> json) => _$AppCreateFromJson(json);

@override final  String name;
 final  List<String> _redirectUris;
@override List<String> get redirectUris {
  if (_redirectUris is EqualUnmodifiableListView) return _redirectUris;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_redirectUris);
}

 final  List<String> _scopes;
@override List<String> get scopes {
  if (_scopes is EqualUnmodifiableListView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scopes);
}


/// Create a copy of AppCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppCreateCopyWith<_AppCreate> get copyWith => __$AppCreateCopyWithImpl<_AppCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppCreate&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._redirectUris, _redirectUris)&&const DeepCollectionEquality().equals(other._scopes, _scopes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_redirectUris),const DeepCollectionEquality().hash(_scopes));

@override
String toString() {
  return 'AppCreate(name: $name, redirectUris: $redirectUris, scopes: $scopes)';
}


}

/// @nodoc
abstract mixin class _$AppCreateCopyWith<$Res> implements $AppCreateCopyWith<$Res> {
  factory _$AppCreateCopyWith(_AppCreate value, $Res Function(_AppCreate) _then) = __$AppCreateCopyWithImpl;
@override @useResult
$Res call({
 String name, List<String> redirectUris, List<String> scopes
});




}
/// @nodoc
class __$AppCreateCopyWithImpl<$Res>
    implements _$AppCreateCopyWith<$Res> {
  __$AppCreateCopyWithImpl(this._self, this._then);

  final _AppCreate _self;
  final $Res Function(_AppCreate) _then;

/// Create a copy of AppCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? redirectUris = null,Object? scopes = null,}) {
  return _then(_AppCreate(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,redirectUris: null == redirectUris ? _self._redirectUris : redirectUris // ignore: cast_nullable_to_non_nullable
as List<String>,scopes: null == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$AppUpdate {

 String? get name; List<String>? get redirectUris; List<String>? get scopes; bool? get active;@JsonKey(includeFromJson: false) List<String> get setToNull;
/// Create a copy of AppUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppUpdateCopyWith<AppUpdate> get copyWith => _$AppUpdateCopyWithImpl<AppUpdate>(this as AppUpdate, _$identity);

  /// Serializes this AppUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUpdate&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.redirectUris, redirectUris)&&const DeepCollectionEquality().equals(other.scopes, scopes)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(redirectUris),const DeepCollectionEquality().hash(scopes),active,const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'AppUpdate(name: $name, redirectUris: $redirectUris, scopes: $scopes, active: $active, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $AppUpdateCopyWith<$Res>  {
  factory $AppUpdateCopyWith(AppUpdate value, $Res Function(AppUpdate) _then) = _$AppUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, List<String>? redirectUris, List<String>? scopes, bool? active,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class _$AppUpdateCopyWithImpl<$Res>
    implements $AppUpdateCopyWith<$Res> {
  _$AppUpdateCopyWithImpl(this._self, this._then);

  final AppUpdate _self;
  final $Res Function(AppUpdate) _then;

/// Create a copy of AppUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? redirectUris = freezed,Object? scopes = freezed,Object? active = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,redirectUris: freezed == redirectUris ? _self.redirectUris : redirectUris // ignore: cast_nullable_to_non_nullable
as List<String>?,scopes: freezed == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AppUpdate].
extension AppUpdatePatterns on AppUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppUpdate value)  $default,){
final _that = this;
switch (_that) {
case _AppUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _AppUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  List<String>? redirectUris,  List<String>? scopes,  bool? active, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppUpdate() when $default != null:
return $default(_that.name,_that.redirectUris,_that.scopes,_that.active,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  List<String>? redirectUris,  List<String>? scopes,  bool? active, @JsonKey(includeFromJson: false)  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _AppUpdate():
return $default(_that.name,_that.redirectUris,_that.scopes,_that.active,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  List<String>? redirectUris,  List<String>? scopes,  bool? active, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _AppUpdate() when $default != null:
return $default(_that.name,_that.redirectUris,_that.scopes,_that.active,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppUpdate implements AppUpdate {
  const _AppUpdate({this.name, final  List<String>? redirectUris, final  List<String>? scopes, this.active, @JsonKey(includeFromJson: false) final  List<String> setToNull = const []}): _redirectUris = redirectUris,_scopes = scopes,_setToNull = setToNull;
  factory _AppUpdate.fromJson(Map<String, dynamic> json) => _$AppUpdateFromJson(json);

@override final  String? name;
 final  List<String>? _redirectUris;
@override List<String>? get redirectUris {
  final value = _redirectUris;
  if (value == null) return null;
  if (_redirectUris is EqualUnmodifiableListView) return _redirectUris;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _scopes;
@override List<String>? get scopes {
  final value = _scopes;
  if (value == null) return null;
  if (_scopes is EqualUnmodifiableListView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? active;
 final  List<String> _setToNull;
@override@JsonKey(includeFromJson: false) List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of AppUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppUpdateCopyWith<_AppUpdate> get copyWith => __$AppUpdateCopyWithImpl<_AppUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppUpdate&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._redirectUris, _redirectUris)&&const DeepCollectionEquality().equals(other._scopes, _scopes)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_redirectUris),const DeepCollectionEquality().hash(_scopes),active,const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'AppUpdate(name: $name, redirectUris: $redirectUris, scopes: $scopes, active: $active, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$AppUpdateCopyWith<$Res> implements $AppUpdateCopyWith<$Res> {
  factory _$AppUpdateCopyWith(_AppUpdate value, $Res Function(_AppUpdate) _then) = __$AppUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, List<String>? redirectUris, List<String>? scopes, bool? active,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class __$AppUpdateCopyWithImpl<$Res>
    implements _$AppUpdateCopyWith<$Res> {
  __$AppUpdateCopyWithImpl(this._self, this._then);

  final _AppUpdate _self;
  final $Res Function(_AppUpdate) _then;

/// Create a copy of AppUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? redirectUris = freezed,Object? scopes = freezed,Object? active = freezed,Object? setToNull = null,}) {
  return _then(_AppUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,redirectUris: freezed == redirectUris ? _self._redirectUris : redirectUris // ignore: cast_nullable_to_non_nullable
as List<String>?,scopes: freezed == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
