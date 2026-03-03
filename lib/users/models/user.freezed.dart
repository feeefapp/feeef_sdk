// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

 String get id; String? get name; String get email; String? get phone; String? get photoUrl; DateTime? get emailVerifiedAt; DateTime? get phoneVerifiedAt; DateTime? get verifiedAt; DateTime? get blockedAt; DateTime? get partnerApprovedAt; DateTime get createdAt; DateTime get updatedAt; EmbaddedWallet get wallet; Map<String, dynamic> get metadata; Map<String, dynamic> get social; Map<String, dynamic> get claims;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.phoneVerifiedAt, phoneVerifiedAt) || other.phoneVerifiedAt == phoneVerifiedAt)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.blockedAt, blockedAt) || other.blockedAt == blockedAt)&&(identical(other.partnerApprovedAt, partnerApprovedAt) || other.partnerApprovedAt == partnerApprovedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.social, social)&&const DeepCollectionEquality().equals(other.claims, claims));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,photoUrl,emailVerifiedAt,phoneVerifiedAt,verifiedAt,blockedAt,partnerApprovedAt,createdAt,updatedAt,wallet,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(social),const DeepCollectionEquality().hash(claims));

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, phone: $phone, photoUrl: $photoUrl, emailVerifiedAt: $emailVerifiedAt, phoneVerifiedAt: $phoneVerifiedAt, verifiedAt: $verifiedAt, blockedAt: $blockedAt, partnerApprovedAt: $partnerApprovedAt, createdAt: $createdAt, updatedAt: $updatedAt, wallet: $wallet, metadata: $metadata, social: $social, claims: $claims)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String id, String? name, String email, String? phone, String? photoUrl, DateTime? emailVerifiedAt, DateTime? phoneVerifiedAt, DateTime? verifiedAt, DateTime? blockedAt, DateTime? partnerApprovedAt, DateTime createdAt, DateTime updatedAt, EmbaddedWallet wallet, Map<String, dynamic> metadata, Map<String, dynamic> social, Map<String, dynamic> claims
});


$EmbaddedWalletCopyWith<$Res> get wallet;

}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? email = null,Object? phone = freezed,Object? photoUrl = freezed,Object? emailVerifiedAt = freezed,Object? phoneVerifiedAt = freezed,Object? verifiedAt = freezed,Object? blockedAt = freezed,Object? partnerApprovedAt = freezed,Object? createdAt = null,Object? updatedAt = null,Object? wallet = null,Object? metadata = null,Object? social = null,Object? claims = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,phoneVerifiedAt: freezed == phoneVerifiedAt ? _self.phoneVerifiedAt : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,blockedAt: freezed == blockedAt ? _self.blockedAt : blockedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,partnerApprovedAt: freezed == partnerApprovedAt ? _self.partnerApprovedAt : partnerApprovedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as EmbaddedWallet,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,social: null == social ? _self.social : social // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,claims: null == claims ? _self.claims : claims // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedWalletCopyWith<$Res> get wallet {
  
  return $EmbaddedWalletCopyWith<$Res>(_self.wallet, (value) {
    return _then(_self.copyWith(wallet: value));
  });
}
}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name,  String email,  String? phone,  String? photoUrl,  DateTime? emailVerifiedAt,  DateTime? phoneVerifiedAt,  DateTime? verifiedAt,  DateTime? blockedAt,  DateTime? partnerApprovedAt,  DateTime createdAt,  DateTime updatedAt,  EmbaddedWallet wallet,  Map<String, dynamic> metadata,  Map<String, dynamic> social,  Map<String, dynamic> claims)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.photoUrl,_that.emailVerifiedAt,_that.phoneVerifiedAt,_that.verifiedAt,_that.blockedAt,_that.partnerApprovedAt,_that.createdAt,_that.updatedAt,_that.wallet,_that.metadata,_that.social,_that.claims);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name,  String email,  String? phone,  String? photoUrl,  DateTime? emailVerifiedAt,  DateTime? phoneVerifiedAt,  DateTime? verifiedAt,  DateTime? blockedAt,  DateTime? partnerApprovedAt,  DateTime createdAt,  DateTime updatedAt,  EmbaddedWallet wallet,  Map<String, dynamic> metadata,  Map<String, dynamic> social,  Map<String, dynamic> claims)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.photoUrl,_that.emailVerifiedAt,_that.phoneVerifiedAt,_that.verifiedAt,_that.blockedAt,_that.partnerApprovedAt,_that.createdAt,_that.updatedAt,_that.wallet,_that.metadata,_that.social,_that.claims);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name,  String email,  String? phone,  String? photoUrl,  DateTime? emailVerifiedAt,  DateTime? phoneVerifiedAt,  DateTime? verifiedAt,  DateTime? blockedAt,  DateTime? partnerApprovedAt,  DateTime createdAt,  DateTime updatedAt,  EmbaddedWallet wallet,  Map<String, dynamic> metadata,  Map<String, dynamic> social,  Map<String, dynamic> claims)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.photoUrl,_that.emailVerifiedAt,_that.phoneVerifiedAt,_that.verifiedAt,_that.blockedAt,_that.partnerApprovedAt,_that.createdAt,_that.updatedAt,_that.wallet,_that.metadata,_that.social,_that.claims);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User extends User {
   _User({required this.id, required this.name, required this.email, required this.phone, required this.photoUrl, required this.emailVerifiedAt, required this.phoneVerifiedAt, required this.verifiedAt, required this.blockedAt, required this.partnerApprovedAt, required this.createdAt, required this.updatedAt, this.wallet = const EmbaddedWallet(), final  Map<String, dynamic> metadata = const {}, final  Map<String, dynamic> social = const {}, final  Map<String, dynamic> claims = const {}}): _metadata = metadata,_social = social,_claims = claims,super._();
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  String id;
@override final  String? name;
@override final  String email;
@override final  String? phone;
@override final  String? photoUrl;
@override final  DateTime? emailVerifiedAt;
@override final  DateTime? phoneVerifiedAt;
@override final  DateTime? verifiedAt;
@override final  DateTime? blockedAt;
@override final  DateTime? partnerApprovedAt;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey() final  EmbaddedWallet wallet;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

 final  Map<String, dynamic> _social;
@override@JsonKey() Map<String, dynamic> get social {
  if (_social is EqualUnmodifiableMapView) return _social;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_social);
}

 final  Map<String, dynamic> _claims;
@override@JsonKey() Map<String, dynamic> get claims {
  if (_claims is EqualUnmodifiableMapView) return _claims;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_claims);
}


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.phoneVerifiedAt, phoneVerifiedAt) || other.phoneVerifiedAt == phoneVerifiedAt)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.blockedAt, blockedAt) || other.blockedAt == blockedAt)&&(identical(other.partnerApprovedAt, partnerApprovedAt) || other.partnerApprovedAt == partnerApprovedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._social, _social)&&const DeepCollectionEquality().equals(other._claims, _claims));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,photoUrl,emailVerifiedAt,phoneVerifiedAt,verifiedAt,blockedAt,partnerApprovedAt,createdAt,updatedAt,wallet,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_social),const DeepCollectionEquality().hash(_claims));

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, phone: $phone, photoUrl: $photoUrl, emailVerifiedAt: $emailVerifiedAt, phoneVerifiedAt: $phoneVerifiedAt, verifiedAt: $verifiedAt, blockedAt: $blockedAt, partnerApprovedAt: $partnerApprovedAt, createdAt: $createdAt, updatedAt: $updatedAt, wallet: $wallet, metadata: $metadata, social: $social, claims: $claims)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, String email, String? phone, String? photoUrl, DateTime? emailVerifiedAt, DateTime? phoneVerifiedAt, DateTime? verifiedAt, DateTime? blockedAt, DateTime? partnerApprovedAt, DateTime createdAt, DateTime updatedAt, EmbaddedWallet wallet, Map<String, dynamic> metadata, Map<String, dynamic> social, Map<String, dynamic> claims
});


@override $EmbaddedWalletCopyWith<$Res> get wallet;

}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? email = null,Object? phone = freezed,Object? photoUrl = freezed,Object? emailVerifiedAt = freezed,Object? phoneVerifiedAt = freezed,Object? verifiedAt = freezed,Object? blockedAt = freezed,Object? partnerApprovedAt = freezed,Object? createdAt = null,Object? updatedAt = null,Object? wallet = null,Object? metadata = null,Object? social = null,Object? claims = null,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,phoneVerifiedAt: freezed == phoneVerifiedAt ? _self.phoneVerifiedAt : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,blockedAt: freezed == blockedAt ? _self.blockedAt : blockedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,partnerApprovedAt: freezed == partnerApprovedAt ? _self.partnerApprovedAt : partnerApprovedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as EmbaddedWallet,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,social: null == social ? _self._social : social // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,claims: null == claims ? _self._claims : claims // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedWalletCopyWith<$Res> get wallet {
  
  return $EmbaddedWalletCopyWith<$Res>(_self.wallet, (value) {
    return _then(_self.copyWith(wallet: value));
  });
}
}


/// @nodoc
mixin _$UserUpdate {

 String? get name; String? get email; String? get phone; String? get photoUrl; Map<String, dynamic> get metadata;// verification
 DateTime? get emailVerifiedAt; DateTime? get phoneVerifiedAt; DateTime? get verifiedAt;// password
// String? password,
@JsonKey(includeFromJson: false) List<String> get setToNull;
/// Create a copy of UserUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserUpdateCopyWith<UserUpdate> get copyWith => _$UserUpdateCopyWithImpl<UserUpdate>(this as UserUpdate, _$identity);

  /// Serializes this UserUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.phoneVerifiedAt, phoneVerifiedAt) || other.phoneVerifiedAt == phoneVerifiedAt)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,phone,photoUrl,const DeepCollectionEquality().hash(metadata),emailVerifiedAt,phoneVerifiedAt,verifiedAt,const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'UserUpdate(name: $name, email: $email, phone: $phone, photoUrl: $photoUrl, metadata: $metadata, emailVerifiedAt: $emailVerifiedAt, phoneVerifiedAt: $phoneVerifiedAt, verifiedAt: $verifiedAt, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $UserUpdateCopyWith<$Res>  {
  factory $UserUpdateCopyWith(UserUpdate value, $Res Function(UserUpdate) _then) = _$UserUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? email, String? phone, String? photoUrl, Map<String, dynamic> metadata, DateTime? emailVerifiedAt, DateTime? phoneVerifiedAt, DateTime? verifiedAt,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class _$UserUpdateCopyWithImpl<$Res>
    implements $UserUpdateCopyWith<$Res> {
  _$UserUpdateCopyWithImpl(this._self, this._then);

  final UserUpdate _self;
  final $Res Function(UserUpdate) _then;

/// Create a copy of UserUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? photoUrl = freezed,Object? metadata = null,Object? emailVerifiedAt = freezed,Object? phoneVerifiedAt = freezed,Object? verifiedAt = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,phoneVerifiedAt: freezed == phoneVerifiedAt ? _self.phoneVerifiedAt : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserUpdate].
extension UserUpdatePatterns on UserUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserUpdate value)  $default,){
final _that = this;
switch (_that) {
case _UserUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _UserUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? email,  String? phone,  String? photoUrl,  Map<String, dynamic> metadata,  DateTime? emailVerifiedAt,  DateTime? phoneVerifiedAt,  DateTime? verifiedAt, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserUpdate() when $default != null:
return $default(_that.name,_that.email,_that.phone,_that.photoUrl,_that.metadata,_that.emailVerifiedAt,_that.phoneVerifiedAt,_that.verifiedAt,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? email,  String? phone,  String? photoUrl,  Map<String, dynamic> metadata,  DateTime? emailVerifiedAt,  DateTime? phoneVerifiedAt,  DateTime? verifiedAt, @JsonKey(includeFromJson: false)  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _UserUpdate():
return $default(_that.name,_that.email,_that.phone,_that.photoUrl,_that.metadata,_that.emailVerifiedAt,_that.phoneVerifiedAt,_that.verifiedAt,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? email,  String? phone,  String? photoUrl,  Map<String, dynamic> metadata,  DateTime? emailVerifiedAt,  DateTime? phoneVerifiedAt,  DateTime? verifiedAt, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _UserUpdate() when $default != null:
return $default(_that.name,_that.email,_that.phone,_that.photoUrl,_that.metadata,_that.emailVerifiedAt,_that.phoneVerifiedAt,_that.verifiedAt,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserUpdate implements UserUpdate {
  const _UserUpdate({this.name, this.email, this.phone, this.photoUrl, final  Map<String, dynamic> metadata = const {}, this.emailVerifiedAt, this.phoneVerifiedAt, this.verifiedAt, @JsonKey(includeFromJson: false) final  List<String> setToNull = const []}): _metadata = metadata,_setToNull = setToNull;
  factory _UserUpdate.fromJson(Map<String, dynamic> json) => _$UserUpdateFromJson(json);

@override final  String? name;
@override final  String? email;
@override final  String? phone;
@override final  String? photoUrl;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

// verification
@override final  DateTime? emailVerifiedAt;
@override final  DateTime? phoneVerifiedAt;
@override final  DateTime? verifiedAt;
// password
// String? password,
 final  List<String> _setToNull;
// password
// String? password,
@override@JsonKey(includeFromJson: false) List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of UserUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserUpdateCopyWith<_UserUpdate> get copyWith => __$UserUpdateCopyWithImpl<_UserUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.phoneVerifiedAt, phoneVerifiedAt) || other.phoneVerifiedAt == phoneVerifiedAt)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,phone,photoUrl,const DeepCollectionEquality().hash(_metadata),emailVerifiedAt,phoneVerifiedAt,verifiedAt,const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'UserUpdate(name: $name, email: $email, phone: $phone, photoUrl: $photoUrl, metadata: $metadata, emailVerifiedAt: $emailVerifiedAt, phoneVerifiedAt: $phoneVerifiedAt, verifiedAt: $verifiedAt, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$UserUpdateCopyWith<$Res> implements $UserUpdateCopyWith<$Res> {
  factory _$UserUpdateCopyWith(_UserUpdate value, $Res Function(_UserUpdate) _then) = __$UserUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? email, String? phone, String? photoUrl, Map<String, dynamic> metadata, DateTime? emailVerifiedAt, DateTime? phoneVerifiedAt, DateTime? verifiedAt,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class __$UserUpdateCopyWithImpl<$Res>
    implements _$UserUpdateCopyWith<$Res> {
  __$UserUpdateCopyWithImpl(this._self, this._then);

  final _UserUpdate _self;
  final $Res Function(_UserUpdate) _then;

/// Create a copy of UserUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? photoUrl = freezed,Object? metadata = null,Object? emailVerifiedAt = freezed,Object? phoneVerifiedAt = freezed,Object? verifiedAt = freezed,Object? setToNull = null,}) {
  return _then(_UserUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,phoneVerifiedAt: freezed == phoneVerifiedAt ? _self.phoneVerifiedAt : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$UserUpdateMe {

 String? get name; String? get email; String? get phone; String? get photoUrl; Map<String, dynamic> get metadata;// verification
 DateTime? get emailVerifiedAt; DateTime? get phoneVerifiedAt; DateTime? get verifiedAt;// password
 String? get oldPassword; String? get newPassword;@JsonKey(includeFromJson: false) List<String> get setToNull;
/// Create a copy of UserUpdateMe
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserUpdateMeCopyWith<UserUpdateMe> get copyWith => _$UserUpdateMeCopyWithImpl<UserUpdateMe>(this as UserUpdateMe, _$identity);

  /// Serializes this UserUpdateMe to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserUpdateMe&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.phoneVerifiedAt, phoneVerifiedAt) || other.phoneVerifiedAt == phoneVerifiedAt)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,phone,photoUrl,const DeepCollectionEquality().hash(metadata),emailVerifiedAt,phoneVerifiedAt,verifiedAt,oldPassword,newPassword,const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'UserUpdateMe(name: $name, email: $email, phone: $phone, photoUrl: $photoUrl, metadata: $metadata, emailVerifiedAt: $emailVerifiedAt, phoneVerifiedAt: $phoneVerifiedAt, verifiedAt: $verifiedAt, oldPassword: $oldPassword, newPassword: $newPassword, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $UserUpdateMeCopyWith<$Res>  {
  factory $UserUpdateMeCopyWith(UserUpdateMe value, $Res Function(UserUpdateMe) _then) = _$UserUpdateMeCopyWithImpl;
@useResult
$Res call({
 String? name, String? email, String? phone, String? photoUrl, Map<String, dynamic> metadata, DateTime? emailVerifiedAt, DateTime? phoneVerifiedAt, DateTime? verifiedAt, String? oldPassword, String? newPassword,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class _$UserUpdateMeCopyWithImpl<$Res>
    implements $UserUpdateMeCopyWith<$Res> {
  _$UserUpdateMeCopyWithImpl(this._self, this._then);

  final UserUpdateMe _self;
  final $Res Function(UserUpdateMe) _then;

/// Create a copy of UserUpdateMe
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? photoUrl = freezed,Object? metadata = null,Object? emailVerifiedAt = freezed,Object? phoneVerifiedAt = freezed,Object? verifiedAt = freezed,Object? oldPassword = freezed,Object? newPassword = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,phoneVerifiedAt: freezed == phoneVerifiedAt ? _self.phoneVerifiedAt : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,oldPassword: freezed == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String?,newPassword: freezed == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserUpdateMe].
extension UserUpdateMePatterns on UserUpdateMe {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserUpdateMe value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserUpdateMe() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserUpdateMe value)  $default,){
final _that = this;
switch (_that) {
case _UserUpdateMe():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserUpdateMe value)?  $default,){
final _that = this;
switch (_that) {
case _UserUpdateMe() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? email,  String? phone,  String? photoUrl,  Map<String, dynamic> metadata,  DateTime? emailVerifiedAt,  DateTime? phoneVerifiedAt,  DateTime? verifiedAt,  String? oldPassword,  String? newPassword, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserUpdateMe() when $default != null:
return $default(_that.name,_that.email,_that.phone,_that.photoUrl,_that.metadata,_that.emailVerifiedAt,_that.phoneVerifiedAt,_that.verifiedAt,_that.oldPassword,_that.newPassword,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? email,  String? phone,  String? photoUrl,  Map<String, dynamic> metadata,  DateTime? emailVerifiedAt,  DateTime? phoneVerifiedAt,  DateTime? verifiedAt,  String? oldPassword,  String? newPassword, @JsonKey(includeFromJson: false)  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _UserUpdateMe():
return $default(_that.name,_that.email,_that.phone,_that.photoUrl,_that.metadata,_that.emailVerifiedAt,_that.phoneVerifiedAt,_that.verifiedAt,_that.oldPassword,_that.newPassword,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? email,  String? phone,  String? photoUrl,  Map<String, dynamic> metadata,  DateTime? emailVerifiedAt,  DateTime? phoneVerifiedAt,  DateTime? verifiedAt,  String? oldPassword,  String? newPassword, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _UserUpdateMe() when $default != null:
return $default(_that.name,_that.email,_that.phone,_that.photoUrl,_that.metadata,_that.emailVerifiedAt,_that.phoneVerifiedAt,_that.verifiedAt,_that.oldPassword,_that.newPassword,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserUpdateMe implements UserUpdateMe {
  const _UserUpdateMe({this.name, this.email, this.phone, this.photoUrl, final  Map<String, dynamic> metadata = const {}, this.emailVerifiedAt, this.phoneVerifiedAt, this.verifiedAt, this.oldPassword, this.newPassword, @JsonKey(includeFromJson: false) final  List<String> setToNull = const []}): _metadata = metadata,_setToNull = setToNull;
  factory _UserUpdateMe.fromJson(Map<String, dynamic> json) => _$UserUpdateMeFromJson(json);

@override final  String? name;
@override final  String? email;
@override final  String? phone;
@override final  String? photoUrl;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

// verification
@override final  DateTime? emailVerifiedAt;
@override final  DateTime? phoneVerifiedAt;
@override final  DateTime? verifiedAt;
// password
@override final  String? oldPassword;
@override final  String? newPassword;
 final  List<String> _setToNull;
@override@JsonKey(includeFromJson: false) List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of UserUpdateMe
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserUpdateMeCopyWith<_UserUpdateMe> get copyWith => __$UserUpdateMeCopyWithImpl<_UserUpdateMe>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserUpdateMeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserUpdateMe&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.phoneVerifiedAt, phoneVerifiedAt) || other.phoneVerifiedAt == phoneVerifiedAt)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,phone,photoUrl,const DeepCollectionEquality().hash(_metadata),emailVerifiedAt,phoneVerifiedAt,verifiedAt,oldPassword,newPassword,const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'UserUpdateMe(name: $name, email: $email, phone: $phone, photoUrl: $photoUrl, metadata: $metadata, emailVerifiedAt: $emailVerifiedAt, phoneVerifiedAt: $phoneVerifiedAt, verifiedAt: $verifiedAt, oldPassword: $oldPassword, newPassword: $newPassword, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$UserUpdateMeCopyWith<$Res> implements $UserUpdateMeCopyWith<$Res> {
  factory _$UserUpdateMeCopyWith(_UserUpdateMe value, $Res Function(_UserUpdateMe) _then) = __$UserUpdateMeCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? email, String? phone, String? photoUrl, Map<String, dynamic> metadata, DateTime? emailVerifiedAt, DateTime? phoneVerifiedAt, DateTime? verifiedAt, String? oldPassword, String? newPassword,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class __$UserUpdateMeCopyWithImpl<$Res>
    implements _$UserUpdateMeCopyWith<$Res> {
  __$UserUpdateMeCopyWithImpl(this._self, this._then);

  final _UserUpdateMe _self;
  final $Res Function(_UserUpdateMe) _then;

/// Create a copy of UserUpdateMe
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? photoUrl = freezed,Object? metadata = null,Object? emailVerifiedAt = freezed,Object? phoneVerifiedAt = freezed,Object? verifiedAt = freezed,Object? oldPassword = freezed,Object? newPassword = freezed,Object? setToNull = null,}) {
  return _then(_UserUpdateMe(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,phoneVerifiedAt: freezed == phoneVerifiedAt ? _self.phoneVerifiedAt : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,oldPassword: freezed == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String?,newPassword: freezed == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$EmbaddedWallet {

 String get currency; double get balance;
/// Create a copy of EmbaddedWallet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmbaddedWalletCopyWith<EmbaddedWallet> get copyWith => _$EmbaddedWalletCopyWithImpl<EmbaddedWallet>(this as EmbaddedWallet, _$identity);

  /// Serializes this EmbaddedWallet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmbaddedWallet&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currency,balance);

@override
String toString() {
  return 'EmbaddedWallet(currency: $currency, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $EmbaddedWalletCopyWith<$Res>  {
  factory $EmbaddedWalletCopyWith(EmbaddedWallet value, $Res Function(EmbaddedWallet) _then) = _$EmbaddedWalletCopyWithImpl;
@useResult
$Res call({
 String currency, double balance
});




}
/// @nodoc
class _$EmbaddedWalletCopyWithImpl<$Res>
    implements $EmbaddedWalletCopyWith<$Res> {
  _$EmbaddedWalletCopyWithImpl(this._self, this._then);

  final EmbaddedWallet _self;
  final $Res Function(EmbaddedWallet) _then;

/// Create a copy of EmbaddedWallet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currency = null,Object? balance = null,}) {
  return _then(_self.copyWith(
currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [EmbaddedWallet].
extension EmbaddedWalletPatterns on EmbaddedWallet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmbaddedWallet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmbaddedWallet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmbaddedWallet value)  $default,){
final _that = this;
switch (_that) {
case _EmbaddedWallet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmbaddedWallet value)?  $default,){
final _that = this;
switch (_that) {
case _EmbaddedWallet() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String currency,  double balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmbaddedWallet() when $default != null:
return $default(_that.currency,_that.balance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String currency,  double balance)  $default,) {final _that = this;
switch (_that) {
case _EmbaddedWallet():
return $default(_that.currency,_that.balance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String currency,  double balance)?  $default,) {final _that = this;
switch (_that) {
case _EmbaddedWallet() when $default != null:
return $default(_that.currency,_that.balance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmbaddedWallet implements EmbaddedWallet {
  const _EmbaddedWallet({this.currency = "DZD", this.balance = 0});
  factory _EmbaddedWallet.fromJson(Map<String, dynamic> json) => _$EmbaddedWalletFromJson(json);

@override@JsonKey() final  String currency;
@override@JsonKey() final  double balance;

/// Create a copy of EmbaddedWallet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmbaddedWalletCopyWith<_EmbaddedWallet> get copyWith => __$EmbaddedWalletCopyWithImpl<_EmbaddedWallet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmbaddedWalletToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmbaddedWallet&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currency,balance);

@override
String toString() {
  return 'EmbaddedWallet(currency: $currency, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$EmbaddedWalletCopyWith<$Res> implements $EmbaddedWalletCopyWith<$Res> {
  factory _$EmbaddedWalletCopyWith(_EmbaddedWallet value, $Res Function(_EmbaddedWallet) _then) = __$EmbaddedWalletCopyWithImpl;
@override @useResult
$Res call({
 String currency, double balance
});




}
/// @nodoc
class __$EmbaddedWalletCopyWithImpl<$Res>
    implements _$EmbaddedWalletCopyWith<$Res> {
  __$EmbaddedWalletCopyWithImpl(this._self, this._then);

  final _EmbaddedWallet _self;
  final $Res Function(_EmbaddedWallet) _then;

/// Create a copy of EmbaddedWallet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currency = null,Object? balance = null,}) {
  return _then(_EmbaddedWallet(
currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
