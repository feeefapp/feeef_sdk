// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_send_api_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParcelSendCustomer {

 String? get customerId; String get name; ParcelSendPhone get phone;
/// Create a copy of ParcelSendCustomer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelSendCustomerCopyWith<ParcelSendCustomer> get copyWith => _$ParcelSendCustomerCopyWithImpl<ParcelSendCustomer>(this as ParcelSendCustomer, _$identity);

  /// Serializes this ParcelSendCustomer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelSendCustomer&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,name,phone);

@override
String toString() {
  return 'ParcelSendCustomer(customerId: $customerId, name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $ParcelSendCustomerCopyWith<$Res>  {
  factory $ParcelSendCustomerCopyWith(ParcelSendCustomer value, $Res Function(ParcelSendCustomer) _then) = _$ParcelSendCustomerCopyWithImpl;
@useResult
$Res call({
 String? customerId, String name, ParcelSendPhone phone
});


$ParcelSendPhoneCopyWith<$Res> get phone;

}
/// @nodoc
class _$ParcelSendCustomerCopyWithImpl<$Res>
    implements $ParcelSendCustomerCopyWith<$Res> {
  _$ParcelSendCustomerCopyWithImpl(this._self, this._then);

  final ParcelSendCustomer _self;
  final $Res Function(ParcelSendCustomer) _then;

/// Create a copy of ParcelSendCustomer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = freezed,Object? name = null,Object? phone = null,}) {
  return _then(_self.copyWith(
customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as ParcelSendPhone,
  ));
}
/// Create a copy of ParcelSendCustomer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParcelSendPhoneCopyWith<$Res> get phone {
  
  return $ParcelSendPhoneCopyWith<$Res>(_self.phone, (value) {
    return _then(_self.copyWith(phone: value));
  });
}
}


/// Adds pattern-matching-related methods to [ParcelSendCustomer].
extension ParcelSendCustomerPatterns on ParcelSendCustomer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelSendCustomer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelSendCustomer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelSendCustomer value)  $default,){
final _that = this;
switch (_that) {
case _ParcelSendCustomer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelSendCustomer value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelSendCustomer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? customerId,  String name,  ParcelSendPhone phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelSendCustomer() when $default != null:
return $default(_that.customerId,_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? customerId,  String name,  ParcelSendPhone phone)  $default,) {final _that = this;
switch (_that) {
case _ParcelSendCustomer():
return $default(_that.customerId,_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? customerId,  String name,  ParcelSendPhone phone)?  $default,) {final _that = this;
switch (_that) {
case _ParcelSendCustomer() when $default != null:
return $default(_that.customerId,_that.name,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelSendCustomer extends ParcelSendCustomer {
  const _ParcelSendCustomer({this.customerId, required this.name, required this.phone}): super._();
  factory _ParcelSendCustomer.fromJson(Map<String, dynamic> json) => _$ParcelSendCustomerFromJson(json);

@override final  String? customerId;
@override final  String name;
@override final  ParcelSendPhone phone;

/// Create a copy of ParcelSendCustomer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelSendCustomerCopyWith<_ParcelSendCustomer> get copyWith => __$ParcelSendCustomerCopyWithImpl<_ParcelSendCustomer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelSendCustomerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelSendCustomer&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,name,phone);

@override
String toString() {
  return 'ParcelSendCustomer(customerId: $customerId, name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$ParcelSendCustomerCopyWith<$Res> implements $ParcelSendCustomerCopyWith<$Res> {
  factory _$ParcelSendCustomerCopyWith(_ParcelSendCustomer value, $Res Function(_ParcelSendCustomer) _then) = __$ParcelSendCustomerCopyWithImpl;
@override @useResult
$Res call({
 String? customerId, String name, ParcelSendPhone phone
});


@override $ParcelSendPhoneCopyWith<$Res> get phone;

}
/// @nodoc
class __$ParcelSendCustomerCopyWithImpl<$Res>
    implements _$ParcelSendCustomerCopyWith<$Res> {
  __$ParcelSendCustomerCopyWithImpl(this._self, this._then);

  final _ParcelSendCustomer _self;
  final $Res Function(_ParcelSendCustomer) _then;

/// Create a copy of ParcelSendCustomer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = freezed,Object? name = null,Object? phone = null,}) {
  return _then(_ParcelSendCustomer(
customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as ParcelSendPhone,
  ));
}

/// Create a copy of ParcelSendCustomer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParcelSendPhoneCopyWith<$Res> get phone {
  
  return $ParcelSendPhoneCopyWith<$Res>(_self.phone, (value) {
    return _then(_self.copyWith(phone: value));
  });
}
}


/// @nodoc
mixin _$ParcelSendPhone {

 String get number1; String? get number2;
/// Create a copy of ParcelSendPhone
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelSendPhoneCopyWith<ParcelSendPhone> get copyWith => _$ParcelSendPhoneCopyWithImpl<ParcelSendPhone>(this as ParcelSendPhone, _$identity);

  /// Serializes this ParcelSendPhone to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelSendPhone&&(identical(other.number1, number1) || other.number1 == number1)&&(identical(other.number2, number2) || other.number2 == number2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number1,number2);

@override
String toString() {
  return 'ParcelSendPhone(number1: $number1, number2: $number2)';
}


}

/// @nodoc
abstract mixin class $ParcelSendPhoneCopyWith<$Res>  {
  factory $ParcelSendPhoneCopyWith(ParcelSendPhone value, $Res Function(ParcelSendPhone) _then) = _$ParcelSendPhoneCopyWithImpl;
@useResult
$Res call({
 String number1, String? number2
});




}
/// @nodoc
class _$ParcelSendPhoneCopyWithImpl<$Res>
    implements $ParcelSendPhoneCopyWith<$Res> {
  _$ParcelSendPhoneCopyWithImpl(this._self, this._then);

  final ParcelSendPhone _self;
  final $Res Function(ParcelSendPhone) _then;

/// Create a copy of ParcelSendPhone
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number1 = null,Object? number2 = freezed,}) {
  return _then(_self.copyWith(
number1: null == number1 ? _self.number1 : number1 // ignore: cast_nullable_to_non_nullable
as String,number2: freezed == number2 ? _self.number2 : number2 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelSendPhone].
extension ParcelSendPhonePatterns on ParcelSendPhone {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelSendPhone value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelSendPhone() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelSendPhone value)  $default,){
final _that = this;
switch (_that) {
case _ParcelSendPhone():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelSendPhone value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelSendPhone() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number1,  String? number2)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelSendPhone() when $default != null:
return $default(_that.number1,_that.number2);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number1,  String? number2)  $default,) {final _that = this;
switch (_that) {
case _ParcelSendPhone():
return $default(_that.number1,_that.number2);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number1,  String? number2)?  $default,) {final _that = this;
switch (_that) {
case _ParcelSendPhone() when $default != null:
return $default(_that.number1,_that.number2);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelSendPhone extends ParcelSendPhone {
  const _ParcelSendPhone({required this.number1, this.number2}): super._();
  factory _ParcelSendPhone.fromJson(Map<String, dynamic> json) => _$ParcelSendPhoneFromJson(json);

@override final  String number1;
@override final  String? number2;

/// Create a copy of ParcelSendPhone
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelSendPhoneCopyWith<_ParcelSendPhone> get copyWith => __$ParcelSendPhoneCopyWithImpl<_ParcelSendPhone>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelSendPhoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelSendPhone&&(identical(other.number1, number1) || other.number1 == number1)&&(identical(other.number2, number2) || other.number2 == number2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number1,number2);

@override
String toString() {
  return 'ParcelSendPhone(number1: $number1, number2: $number2)';
}


}

/// @nodoc
abstract mixin class _$ParcelSendPhoneCopyWith<$Res> implements $ParcelSendPhoneCopyWith<$Res> {
  factory _$ParcelSendPhoneCopyWith(_ParcelSendPhone value, $Res Function(_ParcelSendPhone) _then) = __$ParcelSendPhoneCopyWithImpl;
@override @useResult
$Res call({
 String number1, String? number2
});




}
/// @nodoc
class __$ParcelSendPhoneCopyWithImpl<$Res>
    implements _$ParcelSendPhoneCopyWith<$Res> {
  __$ParcelSendPhoneCopyWithImpl(this._self, this._then);

  final _ParcelSendPhone _self;
  final $Res Function(_ParcelSendPhone) _then;

/// Create a copy of ParcelSendPhone
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number1 = null,Object? number2 = freezed,}) {
  return _then(_ParcelSendPhone(
number1: null == number1 ? _self.number1 : number1 // ignore: cast_nullable_to_non_nullable
as String,number2: freezed == number2 ? _self.number2 : number2 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ParcelSendDeliveryAddress {

 String get street; String get city; String get district; String get postalCode; String get country;/// Territory id for the city (from Feeef geo metadata; meaning depends on carrier).
 String? get cityTerritoryId;/// Optional territory id for the district.
 String? get districtTerritoryId;
/// Create a copy of ParcelSendDeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelSendDeliveryAddressCopyWith<ParcelSendDeliveryAddress> get copyWith => _$ParcelSendDeliveryAddressCopyWithImpl<ParcelSendDeliveryAddress>(this as ParcelSendDeliveryAddress, _$identity);

  /// Serializes this ParcelSendDeliveryAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelSendDeliveryAddress&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.cityTerritoryId, cityTerritoryId) || other.cityTerritoryId == cityTerritoryId)&&(identical(other.districtTerritoryId, districtTerritoryId) || other.districtTerritoryId == districtTerritoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,city,district,postalCode,country,cityTerritoryId,districtTerritoryId);

@override
String toString() {
  return 'ParcelSendDeliveryAddress(street: $street, city: $city, district: $district, postalCode: $postalCode, country: $country, cityTerritoryId: $cityTerritoryId, districtTerritoryId: $districtTerritoryId)';
}


}

/// @nodoc
abstract mixin class $ParcelSendDeliveryAddressCopyWith<$Res>  {
  factory $ParcelSendDeliveryAddressCopyWith(ParcelSendDeliveryAddress value, $Res Function(ParcelSendDeliveryAddress) _then) = _$ParcelSendDeliveryAddressCopyWithImpl;
@useResult
$Res call({
 String street, String city, String district, String postalCode, String country, String? cityTerritoryId, String? districtTerritoryId
});




}
/// @nodoc
class _$ParcelSendDeliveryAddressCopyWithImpl<$Res>
    implements $ParcelSendDeliveryAddressCopyWith<$Res> {
  _$ParcelSendDeliveryAddressCopyWithImpl(this._self, this._then);

  final ParcelSendDeliveryAddress _self;
  final $Res Function(ParcelSendDeliveryAddress) _then;

/// Create a copy of ParcelSendDeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? street = null,Object? city = null,Object? district = null,Object? postalCode = null,Object? country = null,Object? cityTerritoryId = freezed,Object? districtTerritoryId = freezed,}) {
  return _then(_self.copyWith(
street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,cityTerritoryId: freezed == cityTerritoryId ? _self.cityTerritoryId : cityTerritoryId // ignore: cast_nullable_to_non_nullable
as String?,districtTerritoryId: freezed == districtTerritoryId ? _self.districtTerritoryId : districtTerritoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelSendDeliveryAddress].
extension ParcelSendDeliveryAddressPatterns on ParcelSendDeliveryAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelSendDeliveryAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelSendDeliveryAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelSendDeliveryAddress value)  $default,){
final _that = this;
switch (_that) {
case _ParcelSendDeliveryAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelSendDeliveryAddress value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelSendDeliveryAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String street,  String city,  String district,  String postalCode,  String country,  String? cityTerritoryId,  String? districtTerritoryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelSendDeliveryAddress() when $default != null:
return $default(_that.street,_that.city,_that.district,_that.postalCode,_that.country,_that.cityTerritoryId,_that.districtTerritoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String street,  String city,  String district,  String postalCode,  String country,  String? cityTerritoryId,  String? districtTerritoryId)  $default,) {final _that = this;
switch (_that) {
case _ParcelSendDeliveryAddress():
return $default(_that.street,_that.city,_that.district,_that.postalCode,_that.country,_that.cityTerritoryId,_that.districtTerritoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String street,  String city,  String district,  String postalCode,  String country,  String? cityTerritoryId,  String? districtTerritoryId)?  $default,) {final _that = this;
switch (_that) {
case _ParcelSendDeliveryAddress() when $default != null:
return $default(_that.street,_that.city,_that.district,_that.postalCode,_that.country,_that.cityTerritoryId,_that.districtTerritoryId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelSendDeliveryAddress extends ParcelSendDeliveryAddress {
  const _ParcelSendDeliveryAddress({required this.street, required this.city, required this.district, required this.postalCode, this.country = 'algeria', this.cityTerritoryId, this.districtTerritoryId}): super._();
  factory _ParcelSendDeliveryAddress.fromJson(Map<String, dynamic> json) => _$ParcelSendDeliveryAddressFromJson(json);

@override final  String street;
@override final  String city;
@override final  String district;
@override final  String postalCode;
@override@JsonKey() final  String country;
/// Territory id for the city (from Feeef geo metadata; meaning depends on carrier).
@override final  String? cityTerritoryId;
/// Optional territory id for the district.
@override final  String? districtTerritoryId;

/// Create a copy of ParcelSendDeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelSendDeliveryAddressCopyWith<_ParcelSendDeliveryAddress> get copyWith => __$ParcelSendDeliveryAddressCopyWithImpl<_ParcelSendDeliveryAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelSendDeliveryAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelSendDeliveryAddress&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.cityTerritoryId, cityTerritoryId) || other.cityTerritoryId == cityTerritoryId)&&(identical(other.districtTerritoryId, districtTerritoryId) || other.districtTerritoryId == districtTerritoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,city,district,postalCode,country,cityTerritoryId,districtTerritoryId);

@override
String toString() {
  return 'ParcelSendDeliveryAddress(street: $street, city: $city, district: $district, postalCode: $postalCode, country: $country, cityTerritoryId: $cityTerritoryId, districtTerritoryId: $districtTerritoryId)';
}


}

/// @nodoc
abstract mixin class _$ParcelSendDeliveryAddressCopyWith<$Res> implements $ParcelSendDeliveryAddressCopyWith<$Res> {
  factory _$ParcelSendDeliveryAddressCopyWith(_ParcelSendDeliveryAddress value, $Res Function(_ParcelSendDeliveryAddress) _then) = __$ParcelSendDeliveryAddressCopyWithImpl;
@override @useResult
$Res call({
 String street, String city, String district, String postalCode, String country, String? cityTerritoryId, String? districtTerritoryId
});




}
/// @nodoc
class __$ParcelSendDeliveryAddressCopyWithImpl<$Res>
    implements _$ParcelSendDeliveryAddressCopyWith<$Res> {
  __$ParcelSendDeliveryAddressCopyWithImpl(this._self, this._then);

  final _ParcelSendDeliveryAddress _self;
  final $Res Function(_ParcelSendDeliveryAddress) _then;

/// Create a copy of ParcelSendDeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? street = null,Object? city = null,Object? district = null,Object? postalCode = null,Object? country = null,Object? cityTerritoryId = freezed,Object? districtTerritoryId = freezed,}) {
  return _then(_ParcelSendDeliveryAddress(
street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,cityTerritoryId: freezed == cityTerritoryId ? _self.cityTerritoryId : cityTerritoryId // ignore: cast_nullable_to_non_nullable
as String?,districtTerritoryId: freezed == districtTerritoryId ? _self.districtTerritoryId : districtTerritoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ParcelSendOrderedProduct {

 String get productName; int get quantity; double get unitPrice; String get stockType; String? get productSku;
/// Create a copy of ParcelSendOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelSendOrderedProductCopyWith<ParcelSendOrderedProduct> get copyWith => _$ParcelSendOrderedProductCopyWithImpl<ParcelSendOrderedProduct>(this as ParcelSendOrderedProduct, _$identity);

  /// Serializes this ParcelSendOrderedProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelSendOrderedProduct&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.stockType, stockType) || other.stockType == stockType)&&(identical(other.productSku, productSku) || other.productSku == productSku));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,quantity,unitPrice,stockType,productSku);

@override
String toString() {
  return 'ParcelSendOrderedProduct(productName: $productName, quantity: $quantity, unitPrice: $unitPrice, stockType: $stockType, productSku: $productSku)';
}


}

/// @nodoc
abstract mixin class $ParcelSendOrderedProductCopyWith<$Res>  {
  factory $ParcelSendOrderedProductCopyWith(ParcelSendOrderedProduct value, $Res Function(ParcelSendOrderedProduct) _then) = _$ParcelSendOrderedProductCopyWithImpl;
@useResult
$Res call({
 String productName, int quantity, double unitPrice, String stockType, String? productSku
});




}
/// @nodoc
class _$ParcelSendOrderedProductCopyWithImpl<$Res>
    implements $ParcelSendOrderedProductCopyWith<$Res> {
  _$ParcelSendOrderedProductCopyWithImpl(this._self, this._then);

  final ParcelSendOrderedProduct _self;
  final $Res Function(ParcelSendOrderedProduct) _then;

/// Create a copy of ParcelSendOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productName = null,Object? quantity = null,Object? unitPrice = null,Object? stockType = null,Object? productSku = freezed,}) {
  return _then(_self.copyWith(
productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,stockType: null == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as String,productSku: freezed == productSku ? _self.productSku : productSku // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelSendOrderedProduct].
extension ParcelSendOrderedProductPatterns on ParcelSendOrderedProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelSendOrderedProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelSendOrderedProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelSendOrderedProduct value)  $default,){
final _that = this;
switch (_that) {
case _ParcelSendOrderedProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelSendOrderedProduct value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelSendOrderedProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productName,  int quantity,  double unitPrice,  String stockType,  String? productSku)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelSendOrderedProduct() when $default != null:
return $default(_that.productName,_that.quantity,_that.unitPrice,_that.stockType,_that.productSku);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productName,  int quantity,  double unitPrice,  String stockType,  String? productSku)  $default,) {final _that = this;
switch (_that) {
case _ParcelSendOrderedProduct():
return $default(_that.productName,_that.quantity,_that.unitPrice,_that.stockType,_that.productSku);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productName,  int quantity,  double unitPrice,  String stockType,  String? productSku)?  $default,) {final _that = this;
switch (_that) {
case _ParcelSendOrderedProduct() when $default != null:
return $default(_that.productName,_that.quantity,_that.unitPrice,_that.stockType,_that.productSku);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelSendOrderedProduct extends ParcelSendOrderedProduct {
  const _ParcelSendOrderedProduct({required this.productName, required this.quantity, required this.unitPrice, this.stockType = 'none', this.productSku}): super._();
  factory _ParcelSendOrderedProduct.fromJson(Map<String, dynamic> json) => _$ParcelSendOrderedProductFromJson(json);

@override final  String productName;
@override final  int quantity;
@override final  double unitPrice;
@override@JsonKey() final  String stockType;
@override final  String? productSku;

/// Create a copy of ParcelSendOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelSendOrderedProductCopyWith<_ParcelSendOrderedProduct> get copyWith => __$ParcelSendOrderedProductCopyWithImpl<_ParcelSendOrderedProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelSendOrderedProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelSendOrderedProduct&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.stockType, stockType) || other.stockType == stockType)&&(identical(other.productSku, productSku) || other.productSku == productSku));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,quantity,unitPrice,stockType,productSku);

@override
String toString() {
  return 'ParcelSendOrderedProduct(productName: $productName, quantity: $quantity, unitPrice: $unitPrice, stockType: $stockType, productSku: $productSku)';
}


}

/// @nodoc
abstract mixin class _$ParcelSendOrderedProductCopyWith<$Res> implements $ParcelSendOrderedProductCopyWith<$Res> {
  factory _$ParcelSendOrderedProductCopyWith(_ParcelSendOrderedProduct value, $Res Function(_ParcelSendOrderedProduct) _then) = __$ParcelSendOrderedProductCopyWithImpl;
@override @useResult
$Res call({
 String productName, int quantity, double unitPrice, String stockType, String? productSku
});




}
/// @nodoc
class __$ParcelSendOrderedProductCopyWithImpl<$Res>
    implements _$ParcelSendOrderedProductCopyWith<$Res> {
  __$ParcelSendOrderedProductCopyWithImpl(this._self, this._then);

  final _ParcelSendOrderedProduct _self;
  final $Res Function(_ParcelSendOrderedProduct) _then;

/// Create a copy of ParcelSendOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productName = null,Object? quantity = null,Object? unitPrice = null,Object? stockType = null,Object? productSku = freezed,}) {
  return _then(_ParcelSendOrderedProduct(
productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,stockType: null == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as String,productSku: freezed == productSku ? _self.productSku : productSku // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ParcelSendRequest {

 String? get externalId; ParcelSendCustomer get customer; ParcelSendDeliveryAddress get deliveryAddress; List<ParcelSendOrderedProduct> get orderedProducts; double get amount; ParcelSendDeliveryType get deliveryType; String? get hubId; String? get description; String? get stateCode; String? get cityCode;
/// Create a copy of ParcelSendRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelSendRequestCopyWith<ParcelSendRequest> get copyWith => _$ParcelSendRequestCopyWithImpl<ParcelSendRequest>(this as ParcelSendRequest, _$identity);

  /// Serializes this ParcelSendRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelSendRequest&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&const DeepCollectionEquality().equals(other.orderedProducts, orderedProducts)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&(identical(other.hubId, hubId) || other.hubId == hubId)&&(identical(other.description, description) || other.description == description)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.cityCode, cityCode) || other.cityCode == cityCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,externalId,customer,deliveryAddress,const DeepCollectionEquality().hash(orderedProducts),amount,deliveryType,hubId,description,stateCode,cityCode);

@override
String toString() {
  return 'ParcelSendRequest(externalId: $externalId, customer: $customer, deliveryAddress: $deliveryAddress, orderedProducts: $orderedProducts, amount: $amount, deliveryType: $deliveryType, hubId: $hubId, description: $description, stateCode: $stateCode, cityCode: $cityCode)';
}


}

/// @nodoc
abstract mixin class $ParcelSendRequestCopyWith<$Res>  {
  factory $ParcelSendRequestCopyWith(ParcelSendRequest value, $Res Function(ParcelSendRequest) _then) = _$ParcelSendRequestCopyWithImpl;
@useResult
$Res call({
 String? externalId, ParcelSendCustomer customer, ParcelSendDeliveryAddress deliveryAddress, List<ParcelSendOrderedProduct> orderedProducts, double amount, ParcelSendDeliveryType deliveryType, String? hubId, String? description, String? stateCode, String? cityCode
});


$ParcelSendCustomerCopyWith<$Res> get customer;$ParcelSendDeliveryAddressCopyWith<$Res> get deliveryAddress;

}
/// @nodoc
class _$ParcelSendRequestCopyWithImpl<$Res>
    implements $ParcelSendRequestCopyWith<$Res> {
  _$ParcelSendRequestCopyWithImpl(this._self, this._then);

  final ParcelSendRequest _self;
  final $Res Function(ParcelSendRequest) _then;

/// Create a copy of ParcelSendRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? externalId = freezed,Object? customer = null,Object? deliveryAddress = null,Object? orderedProducts = null,Object? amount = null,Object? deliveryType = null,Object? hubId = freezed,Object? description = freezed,Object? stateCode = freezed,Object? cityCode = freezed,}) {
  return _then(_self.copyWith(
externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as ParcelSendCustomer,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as ParcelSendDeliveryAddress,orderedProducts: null == orderedProducts ? _self.orderedProducts : orderedProducts // ignore: cast_nullable_to_non_nullable
as List<ParcelSendOrderedProduct>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,deliveryType: null == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as ParcelSendDeliveryType,hubId: freezed == hubId ? _self.hubId : hubId // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,cityCode: freezed == cityCode ? _self.cityCode : cityCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ParcelSendRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParcelSendCustomerCopyWith<$Res> get customer {
  
  return $ParcelSendCustomerCopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of ParcelSendRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParcelSendDeliveryAddressCopyWith<$Res> get deliveryAddress {
  
  return $ParcelSendDeliveryAddressCopyWith<$Res>(_self.deliveryAddress, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [ParcelSendRequest].
extension ParcelSendRequestPatterns on ParcelSendRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelSendRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelSendRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelSendRequest value)  $default,){
final _that = this;
switch (_that) {
case _ParcelSendRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelSendRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelSendRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? externalId,  ParcelSendCustomer customer,  ParcelSendDeliveryAddress deliveryAddress,  List<ParcelSendOrderedProduct> orderedProducts,  double amount,  ParcelSendDeliveryType deliveryType,  String? hubId,  String? description,  String? stateCode,  String? cityCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelSendRequest() when $default != null:
return $default(_that.externalId,_that.customer,_that.deliveryAddress,_that.orderedProducts,_that.amount,_that.deliveryType,_that.hubId,_that.description,_that.stateCode,_that.cityCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? externalId,  ParcelSendCustomer customer,  ParcelSendDeliveryAddress deliveryAddress,  List<ParcelSendOrderedProduct> orderedProducts,  double amount,  ParcelSendDeliveryType deliveryType,  String? hubId,  String? description,  String? stateCode,  String? cityCode)  $default,) {final _that = this;
switch (_that) {
case _ParcelSendRequest():
return $default(_that.externalId,_that.customer,_that.deliveryAddress,_that.orderedProducts,_that.amount,_that.deliveryType,_that.hubId,_that.description,_that.stateCode,_that.cityCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? externalId,  ParcelSendCustomer customer,  ParcelSendDeliveryAddress deliveryAddress,  List<ParcelSendOrderedProduct> orderedProducts,  double amount,  ParcelSendDeliveryType deliveryType,  String? hubId,  String? description,  String? stateCode,  String? cityCode)?  $default,) {final _that = this;
switch (_that) {
case _ParcelSendRequest() when $default != null:
return $default(_that.externalId,_that.customer,_that.deliveryAddress,_that.orderedProducts,_that.amount,_that.deliveryType,_that.hubId,_that.description,_that.stateCode,_that.cityCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelSendRequest extends ParcelSendRequest {
  const _ParcelSendRequest({this.externalId, required this.customer, required this.deliveryAddress, required final  List<ParcelSendOrderedProduct> orderedProducts, required this.amount, required this.deliveryType, this.hubId, this.description, this.stateCode, this.cityCode}): _orderedProducts = orderedProducts,super._();
  factory _ParcelSendRequest.fromJson(Map<String, dynamic> json) => _$ParcelSendRequestFromJson(json);

@override final  String? externalId;
@override final  ParcelSendCustomer customer;
@override final  ParcelSendDeliveryAddress deliveryAddress;
 final  List<ParcelSendOrderedProduct> _orderedProducts;
@override List<ParcelSendOrderedProduct> get orderedProducts {
  if (_orderedProducts is EqualUnmodifiableListView) return _orderedProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orderedProducts);
}

@override final  double amount;
@override final  ParcelSendDeliveryType deliveryType;
@override final  String? hubId;
@override final  String? description;
@override final  String? stateCode;
@override final  String? cityCode;

/// Create a copy of ParcelSendRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelSendRequestCopyWith<_ParcelSendRequest> get copyWith => __$ParcelSendRequestCopyWithImpl<_ParcelSendRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelSendRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelSendRequest&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&const DeepCollectionEquality().equals(other._orderedProducts, _orderedProducts)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&(identical(other.hubId, hubId) || other.hubId == hubId)&&(identical(other.description, description) || other.description == description)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.cityCode, cityCode) || other.cityCode == cityCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,externalId,customer,deliveryAddress,const DeepCollectionEquality().hash(_orderedProducts),amount,deliveryType,hubId,description,stateCode,cityCode);

@override
String toString() {
  return 'ParcelSendRequest(externalId: $externalId, customer: $customer, deliveryAddress: $deliveryAddress, orderedProducts: $orderedProducts, amount: $amount, deliveryType: $deliveryType, hubId: $hubId, description: $description, stateCode: $stateCode, cityCode: $cityCode)';
}


}

/// @nodoc
abstract mixin class _$ParcelSendRequestCopyWith<$Res> implements $ParcelSendRequestCopyWith<$Res> {
  factory _$ParcelSendRequestCopyWith(_ParcelSendRequest value, $Res Function(_ParcelSendRequest) _then) = __$ParcelSendRequestCopyWithImpl;
@override @useResult
$Res call({
 String? externalId, ParcelSendCustomer customer, ParcelSendDeliveryAddress deliveryAddress, List<ParcelSendOrderedProduct> orderedProducts, double amount, ParcelSendDeliveryType deliveryType, String? hubId, String? description, String? stateCode, String? cityCode
});


@override $ParcelSendCustomerCopyWith<$Res> get customer;@override $ParcelSendDeliveryAddressCopyWith<$Res> get deliveryAddress;

}
/// @nodoc
class __$ParcelSendRequestCopyWithImpl<$Res>
    implements _$ParcelSendRequestCopyWith<$Res> {
  __$ParcelSendRequestCopyWithImpl(this._self, this._then);

  final _ParcelSendRequest _self;
  final $Res Function(_ParcelSendRequest) _then;

/// Create a copy of ParcelSendRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? externalId = freezed,Object? customer = null,Object? deliveryAddress = null,Object? orderedProducts = null,Object? amount = null,Object? deliveryType = null,Object? hubId = freezed,Object? description = freezed,Object? stateCode = freezed,Object? cityCode = freezed,}) {
  return _then(_ParcelSendRequest(
externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as ParcelSendCustomer,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as ParcelSendDeliveryAddress,orderedProducts: null == orderedProducts ? _self._orderedProducts : orderedProducts // ignore: cast_nullable_to_non_nullable
as List<ParcelSendOrderedProduct>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,deliveryType: null == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as ParcelSendDeliveryType,hubId: freezed == hubId ? _self.hubId : hubId // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,cityCode: freezed == cityCode ? _self.cityCode : cityCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ParcelSendRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParcelSendCustomerCopyWith<$Res> get customer {
  
  return $ParcelSendCustomerCopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of ParcelSendRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParcelSendDeliveryAddressCopyWith<$Res> get deliveryAddress {
  
  return $ParcelSendDeliveryAddressCopyWith<$Res>(_self.deliveryAddress, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}
}

// dart format on
