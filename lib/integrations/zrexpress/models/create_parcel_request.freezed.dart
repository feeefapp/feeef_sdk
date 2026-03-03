// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_parcel_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ZrexpressCustomer {

/// Optional unique identifier for the customer
 String? get customerId;/// Customer's full name
 String get name;/// Customer phone numbers
 ZrexpressPhone get phone;
/// Create a copy of ZrexpressCustomer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressCustomerCopyWith<ZrexpressCustomer> get copyWith => _$ZrexpressCustomerCopyWithImpl<ZrexpressCustomer>(this as ZrexpressCustomer, _$identity);

  /// Serializes this ZrexpressCustomer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressCustomer&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,name,phone);

@override
String toString() {
  return 'ZrexpressCustomer(customerId: $customerId, name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $ZrexpressCustomerCopyWith<$Res>  {
  factory $ZrexpressCustomerCopyWith(ZrexpressCustomer value, $Res Function(ZrexpressCustomer) _then) = _$ZrexpressCustomerCopyWithImpl;
@useResult
$Res call({
 String? customerId, String name, ZrexpressPhone phone
});


$ZrexpressPhoneCopyWith<$Res> get phone;

}
/// @nodoc
class _$ZrexpressCustomerCopyWithImpl<$Res>
    implements $ZrexpressCustomerCopyWith<$Res> {
  _$ZrexpressCustomerCopyWithImpl(this._self, this._then);

  final ZrexpressCustomer _self;
  final $Res Function(ZrexpressCustomer) _then;

/// Create a copy of ZrexpressCustomer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = freezed,Object? name = null,Object? phone = null,}) {
  return _then(_self.copyWith(
customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as ZrexpressPhone,
  ));
}
/// Create a copy of ZrexpressCustomer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZrexpressPhoneCopyWith<$Res> get phone {
  
  return $ZrexpressPhoneCopyWith<$Res>(_self.phone, (value) {
    return _then(_self.copyWith(phone: value));
  });
}
}


/// Adds pattern-matching-related methods to [ZrexpressCustomer].
extension ZrexpressCustomerPatterns on ZrexpressCustomer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressCustomer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressCustomer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressCustomer value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressCustomer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressCustomer value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressCustomer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? customerId,  String name,  ZrexpressPhone phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZrexpressCustomer() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? customerId,  String name,  ZrexpressPhone phone)  $default,) {final _that = this;
switch (_that) {
case _ZrexpressCustomer():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? customerId,  String name,  ZrexpressPhone phone)?  $default,) {final _that = this;
switch (_that) {
case _ZrexpressCustomer() when $default != null:
return $default(_that.customerId,_that.name,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressCustomer extends ZrexpressCustomer {
  const _ZrexpressCustomer({this.customerId, required this.name, required this.phone}): super._();
  factory _ZrexpressCustomer.fromJson(Map<String, dynamic> json) => _$ZrexpressCustomerFromJson(json);

/// Optional unique identifier for the customer
@override final  String? customerId;
/// Customer's full name
@override final  String name;
/// Customer phone numbers
@override final  ZrexpressPhone phone;

/// Create a copy of ZrexpressCustomer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressCustomerCopyWith<_ZrexpressCustomer> get copyWith => __$ZrexpressCustomerCopyWithImpl<_ZrexpressCustomer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressCustomerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressCustomer&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,name,phone);

@override
String toString() {
  return 'ZrexpressCustomer(customerId: $customerId, name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressCustomerCopyWith<$Res> implements $ZrexpressCustomerCopyWith<$Res> {
  factory _$ZrexpressCustomerCopyWith(_ZrexpressCustomer value, $Res Function(_ZrexpressCustomer) _then) = __$ZrexpressCustomerCopyWithImpl;
@override @useResult
$Res call({
 String? customerId, String name, ZrexpressPhone phone
});


@override $ZrexpressPhoneCopyWith<$Res> get phone;

}
/// @nodoc
class __$ZrexpressCustomerCopyWithImpl<$Res>
    implements _$ZrexpressCustomerCopyWith<$Res> {
  __$ZrexpressCustomerCopyWithImpl(this._self, this._then);

  final _ZrexpressCustomer _self;
  final $Res Function(_ZrexpressCustomer) _then;

/// Create a copy of ZrexpressCustomer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = freezed,Object? name = null,Object? phone = null,}) {
  return _then(_ZrexpressCustomer(
customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as ZrexpressPhone,
  ));
}

/// Create a copy of ZrexpressCustomer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZrexpressPhoneCopyWith<$Res> get phone {
  
  return $ZrexpressPhoneCopyWith<$Res>(_self.phone, (value) {
    return _then(_self.copyWith(phone: value));
  });
}
}


/// @nodoc
mixin _$ZrexpressPhone {

/// Primary phone number (format: +213XXXXXXXXX)
 String get number1;/// Secondary phone number (optional)
 String? get number2;
/// Create a copy of ZrexpressPhone
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressPhoneCopyWith<ZrexpressPhone> get copyWith => _$ZrexpressPhoneCopyWithImpl<ZrexpressPhone>(this as ZrexpressPhone, _$identity);

  /// Serializes this ZrexpressPhone to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressPhone&&(identical(other.number1, number1) || other.number1 == number1)&&(identical(other.number2, number2) || other.number2 == number2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number1,number2);

@override
String toString() {
  return 'ZrexpressPhone(number1: $number1, number2: $number2)';
}


}

/// @nodoc
abstract mixin class $ZrexpressPhoneCopyWith<$Res>  {
  factory $ZrexpressPhoneCopyWith(ZrexpressPhone value, $Res Function(ZrexpressPhone) _then) = _$ZrexpressPhoneCopyWithImpl;
@useResult
$Res call({
 String number1, String? number2
});




}
/// @nodoc
class _$ZrexpressPhoneCopyWithImpl<$Res>
    implements $ZrexpressPhoneCopyWith<$Res> {
  _$ZrexpressPhoneCopyWithImpl(this._self, this._then);

  final ZrexpressPhone _self;
  final $Res Function(ZrexpressPhone) _then;

/// Create a copy of ZrexpressPhone
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number1 = null,Object? number2 = freezed,}) {
  return _then(_self.copyWith(
number1: null == number1 ? _self.number1 : number1 // ignore: cast_nullable_to_non_nullable
as String,number2: freezed == number2 ? _self.number2 : number2 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ZrexpressPhone].
extension ZrexpressPhonePatterns on ZrexpressPhone {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressPhone value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressPhone() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressPhone value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressPhone():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressPhone value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressPhone() when $default != null:
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
case _ZrexpressPhone() when $default != null:
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
case _ZrexpressPhone():
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
case _ZrexpressPhone() when $default != null:
return $default(_that.number1,_that.number2);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressPhone extends ZrexpressPhone {
  const _ZrexpressPhone({required this.number1, this.number2}): super._();
  factory _ZrexpressPhone.fromJson(Map<String, dynamic> json) => _$ZrexpressPhoneFromJson(json);

/// Primary phone number (format: +213XXXXXXXXX)
@override final  String number1;
/// Secondary phone number (optional)
@override final  String? number2;

/// Create a copy of ZrexpressPhone
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressPhoneCopyWith<_ZrexpressPhone> get copyWith => __$ZrexpressPhoneCopyWithImpl<_ZrexpressPhone>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressPhoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressPhone&&(identical(other.number1, number1) || other.number1 == number1)&&(identical(other.number2, number2) || other.number2 == number2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number1,number2);

@override
String toString() {
  return 'ZrexpressPhone(number1: $number1, number2: $number2)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressPhoneCopyWith<$Res> implements $ZrexpressPhoneCopyWith<$Res> {
  factory _$ZrexpressPhoneCopyWith(_ZrexpressPhone value, $Res Function(_ZrexpressPhone) _then) = __$ZrexpressPhoneCopyWithImpl;
@override @useResult
$Res call({
 String number1, String? number2
});




}
/// @nodoc
class __$ZrexpressPhoneCopyWithImpl<$Res>
    implements _$ZrexpressPhoneCopyWith<$Res> {
  __$ZrexpressPhoneCopyWithImpl(this._self, this._then);

  final _ZrexpressPhone _self;
  final $Res Function(_ZrexpressPhone) _then;

/// Create a copy of ZrexpressPhone
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number1 = null,Object? number2 = freezed,}) {
  return _then(_ZrexpressPhone(
number1: null == number1 ? _self.number1 : number1 // ignore: cast_nullable_to_non_nullable
as String,number2: freezed == number2 ? _self.number2 : number2 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ZrexpressDeliveryAddress {

/// Street address
 String get street;/// City/Wilaya name
 String get city;/// District/Commune name
 String get district;/// Postal code (e.g., 05000)
 String get postalCode;/// Country code (default: algeria)
 String get country;/// ZR Express territory ID for the city (fetched from city metadata)
 String? get cityTerritoryId;/// ZR Express territory ID for the district (fetched from city metadata)
 String? get districtTerritoryId;
/// Create a copy of ZrexpressDeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressDeliveryAddressCopyWith<ZrexpressDeliveryAddress> get copyWith => _$ZrexpressDeliveryAddressCopyWithImpl<ZrexpressDeliveryAddress>(this as ZrexpressDeliveryAddress, _$identity);

  /// Serializes this ZrexpressDeliveryAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressDeliveryAddress&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.cityTerritoryId, cityTerritoryId) || other.cityTerritoryId == cityTerritoryId)&&(identical(other.districtTerritoryId, districtTerritoryId) || other.districtTerritoryId == districtTerritoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,city,district,postalCode,country,cityTerritoryId,districtTerritoryId);

@override
String toString() {
  return 'ZrexpressDeliveryAddress(street: $street, city: $city, district: $district, postalCode: $postalCode, country: $country, cityTerritoryId: $cityTerritoryId, districtTerritoryId: $districtTerritoryId)';
}


}

/// @nodoc
abstract mixin class $ZrexpressDeliveryAddressCopyWith<$Res>  {
  factory $ZrexpressDeliveryAddressCopyWith(ZrexpressDeliveryAddress value, $Res Function(ZrexpressDeliveryAddress) _then) = _$ZrexpressDeliveryAddressCopyWithImpl;
@useResult
$Res call({
 String street, String city, String district, String postalCode, String country, String? cityTerritoryId, String? districtTerritoryId
});




}
/// @nodoc
class _$ZrexpressDeliveryAddressCopyWithImpl<$Res>
    implements $ZrexpressDeliveryAddressCopyWith<$Res> {
  _$ZrexpressDeliveryAddressCopyWithImpl(this._self, this._then);

  final ZrexpressDeliveryAddress _self;
  final $Res Function(ZrexpressDeliveryAddress) _then;

/// Create a copy of ZrexpressDeliveryAddress
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


/// Adds pattern-matching-related methods to [ZrexpressDeliveryAddress].
extension ZrexpressDeliveryAddressPatterns on ZrexpressDeliveryAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressDeliveryAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressDeliveryAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressDeliveryAddress value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressDeliveryAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressDeliveryAddress value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressDeliveryAddress() when $default != null:
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
case _ZrexpressDeliveryAddress() when $default != null:
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
case _ZrexpressDeliveryAddress():
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
case _ZrexpressDeliveryAddress() when $default != null:
return $default(_that.street,_that.city,_that.district,_that.postalCode,_that.country,_that.cityTerritoryId,_that.districtTerritoryId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressDeliveryAddress extends ZrexpressDeliveryAddress {
  const _ZrexpressDeliveryAddress({required this.street, required this.city, required this.district, required this.postalCode, this.country = 'algeria', this.cityTerritoryId, this.districtTerritoryId}): super._();
  factory _ZrexpressDeliveryAddress.fromJson(Map<String, dynamic> json) => _$ZrexpressDeliveryAddressFromJson(json);

/// Street address
@override final  String street;
/// City/Wilaya name
@override final  String city;
/// District/Commune name
@override final  String district;
/// Postal code (e.g., 05000)
@override final  String postalCode;
/// Country code (default: algeria)
@override@JsonKey() final  String country;
/// ZR Express territory ID for the city (fetched from city metadata)
@override final  String? cityTerritoryId;
/// ZR Express territory ID for the district (fetched from city metadata)
@override final  String? districtTerritoryId;

/// Create a copy of ZrexpressDeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressDeliveryAddressCopyWith<_ZrexpressDeliveryAddress> get copyWith => __$ZrexpressDeliveryAddressCopyWithImpl<_ZrexpressDeliveryAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressDeliveryAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressDeliveryAddress&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.cityTerritoryId, cityTerritoryId) || other.cityTerritoryId == cityTerritoryId)&&(identical(other.districtTerritoryId, districtTerritoryId) || other.districtTerritoryId == districtTerritoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,city,district,postalCode,country,cityTerritoryId,districtTerritoryId);

@override
String toString() {
  return 'ZrexpressDeliveryAddress(street: $street, city: $city, district: $district, postalCode: $postalCode, country: $country, cityTerritoryId: $cityTerritoryId, districtTerritoryId: $districtTerritoryId)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressDeliveryAddressCopyWith<$Res> implements $ZrexpressDeliveryAddressCopyWith<$Res> {
  factory _$ZrexpressDeliveryAddressCopyWith(_ZrexpressDeliveryAddress value, $Res Function(_ZrexpressDeliveryAddress) _then) = __$ZrexpressDeliveryAddressCopyWithImpl;
@override @useResult
$Res call({
 String street, String city, String district, String postalCode, String country, String? cityTerritoryId, String? districtTerritoryId
});




}
/// @nodoc
class __$ZrexpressDeliveryAddressCopyWithImpl<$Res>
    implements _$ZrexpressDeliveryAddressCopyWith<$Res> {
  __$ZrexpressDeliveryAddressCopyWithImpl(this._self, this._then);

  final _ZrexpressDeliveryAddress _self;
  final $Res Function(_ZrexpressDeliveryAddress) _then;

/// Create a copy of ZrexpressDeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? street = null,Object? city = null,Object? district = null,Object? postalCode = null,Object? country = null,Object? cityTerritoryId = freezed,Object? districtTerritoryId = freezed,}) {
  return _then(_ZrexpressDeliveryAddress(
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
mixin _$ZrexpressOrderedProduct {

/// Name of the product
 String get productName;/// Quantity ordered
 int get quantity;/// Price per unit in DZD
 double get unitPrice;/// Stock type (use 'none' for external stock)
 String get stockType;/// Stock Keeping Unit - unique internal code for inventory tracking
 String? get productSku;
/// Create a copy of ZrexpressOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressOrderedProductCopyWith<ZrexpressOrderedProduct> get copyWith => _$ZrexpressOrderedProductCopyWithImpl<ZrexpressOrderedProduct>(this as ZrexpressOrderedProduct, _$identity);

  /// Serializes this ZrexpressOrderedProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressOrderedProduct&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.stockType, stockType) || other.stockType == stockType)&&(identical(other.productSku, productSku) || other.productSku == productSku));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,quantity,unitPrice,stockType,productSku);

@override
String toString() {
  return 'ZrexpressOrderedProduct(productName: $productName, quantity: $quantity, unitPrice: $unitPrice, stockType: $stockType, productSku: $productSku)';
}


}

/// @nodoc
abstract mixin class $ZrexpressOrderedProductCopyWith<$Res>  {
  factory $ZrexpressOrderedProductCopyWith(ZrexpressOrderedProduct value, $Res Function(ZrexpressOrderedProduct) _then) = _$ZrexpressOrderedProductCopyWithImpl;
@useResult
$Res call({
 String productName, int quantity, double unitPrice, String stockType, String? productSku
});




}
/// @nodoc
class _$ZrexpressOrderedProductCopyWithImpl<$Res>
    implements $ZrexpressOrderedProductCopyWith<$Res> {
  _$ZrexpressOrderedProductCopyWithImpl(this._self, this._then);

  final ZrexpressOrderedProduct _self;
  final $Res Function(ZrexpressOrderedProduct) _then;

/// Create a copy of ZrexpressOrderedProduct
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


/// Adds pattern-matching-related methods to [ZrexpressOrderedProduct].
extension ZrexpressOrderedProductPatterns on ZrexpressOrderedProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressOrderedProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressOrderedProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressOrderedProduct value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressOrderedProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressOrderedProduct value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressOrderedProduct() when $default != null:
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
case _ZrexpressOrderedProduct() when $default != null:
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
case _ZrexpressOrderedProduct():
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
case _ZrexpressOrderedProduct() when $default != null:
return $default(_that.productName,_that.quantity,_that.unitPrice,_that.stockType,_that.productSku);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressOrderedProduct extends ZrexpressOrderedProduct {
  const _ZrexpressOrderedProduct({required this.productName, required this.quantity, required this.unitPrice, this.stockType = 'none', this.productSku}): super._();
  factory _ZrexpressOrderedProduct.fromJson(Map<String, dynamic> json) => _$ZrexpressOrderedProductFromJson(json);

/// Name of the product
@override final  String productName;
/// Quantity ordered
@override final  int quantity;
/// Price per unit in DZD
@override final  double unitPrice;
/// Stock type (use 'none' for external stock)
@override@JsonKey() final  String stockType;
/// Stock Keeping Unit - unique internal code for inventory tracking
@override final  String? productSku;

/// Create a copy of ZrexpressOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressOrderedProductCopyWith<_ZrexpressOrderedProduct> get copyWith => __$ZrexpressOrderedProductCopyWithImpl<_ZrexpressOrderedProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressOrderedProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressOrderedProduct&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.stockType, stockType) || other.stockType == stockType)&&(identical(other.productSku, productSku) || other.productSku == productSku));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,quantity,unitPrice,stockType,productSku);

@override
String toString() {
  return 'ZrexpressOrderedProduct(productName: $productName, quantity: $quantity, unitPrice: $unitPrice, stockType: $stockType, productSku: $productSku)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressOrderedProductCopyWith<$Res> implements $ZrexpressOrderedProductCopyWith<$Res> {
  factory _$ZrexpressOrderedProductCopyWith(_ZrexpressOrderedProduct value, $Res Function(_ZrexpressOrderedProduct) _then) = __$ZrexpressOrderedProductCopyWithImpl;
@override @useResult
$Res call({
 String productName, int quantity, double unitPrice, String stockType, String? productSku
});




}
/// @nodoc
class __$ZrexpressOrderedProductCopyWithImpl<$Res>
    implements _$ZrexpressOrderedProductCopyWith<$Res> {
  __$ZrexpressOrderedProductCopyWithImpl(this._self, this._then);

  final _ZrexpressOrderedProduct _self;
  final $Res Function(_ZrexpressOrderedProduct) _then;

/// Create a copy of ZrexpressOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productName = null,Object? quantity = null,Object? unitPrice = null,Object? stockType = null,Object? productSku = freezed,}) {
  return _then(_ZrexpressOrderedProduct(
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
mixin _$ZrexpressParcelCreateRequest {

/// External reference ID (order ID)
 String? get externalId;/// Customer information
 ZrexpressCustomer get customer;/// Delivery address
 ZrexpressDeliveryAddress get deliveryAddress;/// List of ordered products
 List<ZrexpressOrderedProduct> get orderedProducts;/// Total amount (COD) in DZD
 double get amount;/// Delivery type: home or pickup-point
 ZrexpressDeliveryType get deliveryType;/// Hub ID for pickup-point delivery (required for pickup-point)
 String? get hubId;/// Description/notes (e.g., Fragile)
 String? get description;/// State code for territory lookup (internal use)
 String? get stateCode;/// City code for territory lookup (internal use)
 String? get cityCode;
/// Create a copy of ZrexpressParcelCreateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressParcelCreateRequestCopyWith<ZrexpressParcelCreateRequest> get copyWith => _$ZrexpressParcelCreateRequestCopyWithImpl<ZrexpressParcelCreateRequest>(this as ZrexpressParcelCreateRequest, _$identity);

  /// Serializes this ZrexpressParcelCreateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressParcelCreateRequest&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&const DeepCollectionEquality().equals(other.orderedProducts, orderedProducts)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&(identical(other.hubId, hubId) || other.hubId == hubId)&&(identical(other.description, description) || other.description == description)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.cityCode, cityCode) || other.cityCode == cityCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,externalId,customer,deliveryAddress,const DeepCollectionEquality().hash(orderedProducts),amount,deliveryType,hubId,description,stateCode,cityCode);

@override
String toString() {
  return 'ZrexpressParcelCreateRequest(externalId: $externalId, customer: $customer, deliveryAddress: $deliveryAddress, orderedProducts: $orderedProducts, amount: $amount, deliveryType: $deliveryType, hubId: $hubId, description: $description, stateCode: $stateCode, cityCode: $cityCode)';
}


}

/// @nodoc
abstract mixin class $ZrexpressParcelCreateRequestCopyWith<$Res>  {
  factory $ZrexpressParcelCreateRequestCopyWith(ZrexpressParcelCreateRequest value, $Res Function(ZrexpressParcelCreateRequest) _then) = _$ZrexpressParcelCreateRequestCopyWithImpl;
@useResult
$Res call({
 String? externalId, ZrexpressCustomer customer, ZrexpressDeliveryAddress deliveryAddress, List<ZrexpressOrderedProduct> orderedProducts, double amount, ZrexpressDeliveryType deliveryType, String? hubId, String? description, String? stateCode, String? cityCode
});


$ZrexpressCustomerCopyWith<$Res> get customer;$ZrexpressDeliveryAddressCopyWith<$Res> get deliveryAddress;

}
/// @nodoc
class _$ZrexpressParcelCreateRequestCopyWithImpl<$Res>
    implements $ZrexpressParcelCreateRequestCopyWith<$Res> {
  _$ZrexpressParcelCreateRequestCopyWithImpl(this._self, this._then);

  final ZrexpressParcelCreateRequest _self;
  final $Res Function(ZrexpressParcelCreateRequest) _then;

/// Create a copy of ZrexpressParcelCreateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? externalId = freezed,Object? customer = null,Object? deliveryAddress = null,Object? orderedProducts = null,Object? amount = null,Object? deliveryType = null,Object? hubId = freezed,Object? description = freezed,Object? stateCode = freezed,Object? cityCode = freezed,}) {
  return _then(_self.copyWith(
externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as ZrexpressCustomer,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as ZrexpressDeliveryAddress,orderedProducts: null == orderedProducts ? _self.orderedProducts : orderedProducts // ignore: cast_nullable_to_non_nullable
as List<ZrexpressOrderedProduct>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,deliveryType: null == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as ZrexpressDeliveryType,hubId: freezed == hubId ? _self.hubId : hubId // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,cityCode: freezed == cityCode ? _self.cityCode : cityCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ZrexpressParcelCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZrexpressCustomerCopyWith<$Res> get customer {
  
  return $ZrexpressCustomerCopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of ZrexpressParcelCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZrexpressDeliveryAddressCopyWith<$Res> get deliveryAddress {
  
  return $ZrexpressDeliveryAddressCopyWith<$Res>(_self.deliveryAddress, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [ZrexpressParcelCreateRequest].
extension ZrexpressParcelCreateRequestPatterns on ZrexpressParcelCreateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressParcelCreateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressParcelCreateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressParcelCreateRequest value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressParcelCreateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressParcelCreateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressParcelCreateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? externalId,  ZrexpressCustomer customer,  ZrexpressDeliveryAddress deliveryAddress,  List<ZrexpressOrderedProduct> orderedProducts,  double amount,  ZrexpressDeliveryType deliveryType,  String? hubId,  String? description,  String? stateCode,  String? cityCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZrexpressParcelCreateRequest() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? externalId,  ZrexpressCustomer customer,  ZrexpressDeliveryAddress deliveryAddress,  List<ZrexpressOrderedProduct> orderedProducts,  double amount,  ZrexpressDeliveryType deliveryType,  String? hubId,  String? description,  String? stateCode,  String? cityCode)  $default,) {final _that = this;
switch (_that) {
case _ZrexpressParcelCreateRequest():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? externalId,  ZrexpressCustomer customer,  ZrexpressDeliveryAddress deliveryAddress,  List<ZrexpressOrderedProduct> orderedProducts,  double amount,  ZrexpressDeliveryType deliveryType,  String? hubId,  String? description,  String? stateCode,  String? cityCode)?  $default,) {final _that = this;
switch (_that) {
case _ZrexpressParcelCreateRequest() when $default != null:
return $default(_that.externalId,_that.customer,_that.deliveryAddress,_that.orderedProducts,_that.amount,_that.deliveryType,_that.hubId,_that.description,_that.stateCode,_that.cityCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressParcelCreateRequest extends ZrexpressParcelCreateRequest {
  const _ZrexpressParcelCreateRequest({this.externalId, required this.customer, required this.deliveryAddress, required final  List<ZrexpressOrderedProduct> orderedProducts, required this.amount, required this.deliveryType, this.hubId, this.description, this.stateCode, this.cityCode}): _orderedProducts = orderedProducts,super._();
  factory _ZrexpressParcelCreateRequest.fromJson(Map<String, dynamic> json) => _$ZrexpressParcelCreateRequestFromJson(json);

/// External reference ID (order ID)
@override final  String? externalId;
/// Customer information
@override final  ZrexpressCustomer customer;
/// Delivery address
@override final  ZrexpressDeliveryAddress deliveryAddress;
/// List of ordered products
 final  List<ZrexpressOrderedProduct> _orderedProducts;
/// List of ordered products
@override List<ZrexpressOrderedProduct> get orderedProducts {
  if (_orderedProducts is EqualUnmodifiableListView) return _orderedProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orderedProducts);
}

/// Total amount (COD) in DZD
@override final  double amount;
/// Delivery type: home or pickup-point
@override final  ZrexpressDeliveryType deliveryType;
/// Hub ID for pickup-point delivery (required for pickup-point)
@override final  String? hubId;
/// Description/notes (e.g., Fragile)
@override final  String? description;
/// State code for territory lookup (internal use)
@override final  String? stateCode;
/// City code for territory lookup (internal use)
@override final  String? cityCode;

/// Create a copy of ZrexpressParcelCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressParcelCreateRequestCopyWith<_ZrexpressParcelCreateRequest> get copyWith => __$ZrexpressParcelCreateRequestCopyWithImpl<_ZrexpressParcelCreateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressParcelCreateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressParcelCreateRequest&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&const DeepCollectionEquality().equals(other._orderedProducts, _orderedProducts)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&(identical(other.hubId, hubId) || other.hubId == hubId)&&(identical(other.description, description) || other.description == description)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.cityCode, cityCode) || other.cityCode == cityCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,externalId,customer,deliveryAddress,const DeepCollectionEquality().hash(_orderedProducts),amount,deliveryType,hubId,description,stateCode,cityCode);

@override
String toString() {
  return 'ZrexpressParcelCreateRequest(externalId: $externalId, customer: $customer, deliveryAddress: $deliveryAddress, orderedProducts: $orderedProducts, amount: $amount, deliveryType: $deliveryType, hubId: $hubId, description: $description, stateCode: $stateCode, cityCode: $cityCode)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressParcelCreateRequestCopyWith<$Res> implements $ZrexpressParcelCreateRequestCopyWith<$Res> {
  factory _$ZrexpressParcelCreateRequestCopyWith(_ZrexpressParcelCreateRequest value, $Res Function(_ZrexpressParcelCreateRequest) _then) = __$ZrexpressParcelCreateRequestCopyWithImpl;
@override @useResult
$Res call({
 String? externalId, ZrexpressCustomer customer, ZrexpressDeliveryAddress deliveryAddress, List<ZrexpressOrderedProduct> orderedProducts, double amount, ZrexpressDeliveryType deliveryType, String? hubId, String? description, String? stateCode, String? cityCode
});


@override $ZrexpressCustomerCopyWith<$Res> get customer;@override $ZrexpressDeliveryAddressCopyWith<$Res> get deliveryAddress;

}
/// @nodoc
class __$ZrexpressParcelCreateRequestCopyWithImpl<$Res>
    implements _$ZrexpressParcelCreateRequestCopyWith<$Res> {
  __$ZrexpressParcelCreateRequestCopyWithImpl(this._self, this._then);

  final _ZrexpressParcelCreateRequest _self;
  final $Res Function(_ZrexpressParcelCreateRequest) _then;

/// Create a copy of ZrexpressParcelCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? externalId = freezed,Object? customer = null,Object? deliveryAddress = null,Object? orderedProducts = null,Object? amount = null,Object? deliveryType = null,Object? hubId = freezed,Object? description = freezed,Object? stateCode = freezed,Object? cityCode = freezed,}) {
  return _then(_ZrexpressParcelCreateRequest(
externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as ZrexpressCustomer,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as ZrexpressDeliveryAddress,orderedProducts: null == orderedProducts ? _self._orderedProducts : orderedProducts // ignore: cast_nullable_to_non_nullable
as List<ZrexpressOrderedProduct>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,deliveryType: null == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as ZrexpressDeliveryType,hubId: freezed == hubId ? _self.hubId : hubId // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,cityCode: freezed == cityCode ? _self.cityCode : cityCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ZrexpressParcelCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZrexpressCustomerCopyWith<$Res> get customer {
  
  return $ZrexpressCustomerCopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of ZrexpressParcelCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZrexpressDeliveryAddressCopyWith<$Res> get deliveryAddress {
  
  return $ZrexpressDeliveryAddressCopyWith<$Res>(_self.deliveryAddress, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}
}


/// @nodoc
mixin _$ZrexpressParcelCreateResponse {

/// UUID of the created parcel
 String get parcelId;/// Tracking number (e.g., 05-ATOV3BR-ZR) - only available in bulk response
 String? get trackingNumber;/// External reference ID
 String? get externalId;/// Whether creation was successful
 bool get success;
/// Create a copy of ZrexpressParcelCreateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressParcelCreateResponseCopyWith<ZrexpressParcelCreateResponse> get copyWith => _$ZrexpressParcelCreateResponseCopyWithImpl<ZrexpressParcelCreateResponse>(this as ZrexpressParcelCreateResponse, _$identity);

  /// Serializes this ZrexpressParcelCreateResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressParcelCreateResponse&&(identical(other.parcelId, parcelId) || other.parcelId == parcelId)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parcelId,trackingNumber,externalId,success);

@override
String toString() {
  return 'ZrexpressParcelCreateResponse(parcelId: $parcelId, trackingNumber: $trackingNumber, externalId: $externalId, success: $success)';
}


}

/// @nodoc
abstract mixin class $ZrexpressParcelCreateResponseCopyWith<$Res>  {
  factory $ZrexpressParcelCreateResponseCopyWith(ZrexpressParcelCreateResponse value, $Res Function(ZrexpressParcelCreateResponse) _then) = _$ZrexpressParcelCreateResponseCopyWithImpl;
@useResult
$Res call({
 String parcelId, String? trackingNumber, String? externalId, bool success
});




}
/// @nodoc
class _$ZrexpressParcelCreateResponseCopyWithImpl<$Res>
    implements $ZrexpressParcelCreateResponseCopyWith<$Res> {
  _$ZrexpressParcelCreateResponseCopyWithImpl(this._self, this._then);

  final ZrexpressParcelCreateResponse _self;
  final $Res Function(ZrexpressParcelCreateResponse) _then;

/// Create a copy of ZrexpressParcelCreateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parcelId = null,Object? trackingNumber = freezed,Object? externalId = freezed,Object? success = null,}) {
  return _then(_self.copyWith(
parcelId: null == parcelId ? _self.parcelId : parcelId // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ZrexpressParcelCreateResponse].
extension ZrexpressParcelCreateResponsePatterns on ZrexpressParcelCreateResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressParcelCreateResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressParcelCreateResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressParcelCreateResponse value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressParcelCreateResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressParcelCreateResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressParcelCreateResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String parcelId,  String? trackingNumber,  String? externalId,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZrexpressParcelCreateResponse() when $default != null:
return $default(_that.parcelId,_that.trackingNumber,_that.externalId,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String parcelId,  String? trackingNumber,  String? externalId,  bool success)  $default,) {final _that = this;
switch (_that) {
case _ZrexpressParcelCreateResponse():
return $default(_that.parcelId,_that.trackingNumber,_that.externalId,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String parcelId,  String? trackingNumber,  String? externalId,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _ZrexpressParcelCreateResponse() when $default != null:
return $default(_that.parcelId,_that.trackingNumber,_that.externalId,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressParcelCreateResponse extends ZrexpressParcelCreateResponse {
  const _ZrexpressParcelCreateResponse({required this.parcelId, this.trackingNumber, this.externalId, this.success = true}): super._();
  factory _ZrexpressParcelCreateResponse.fromJson(Map<String, dynamic> json) => _$ZrexpressParcelCreateResponseFromJson(json);

/// UUID of the created parcel
@override final  String parcelId;
/// Tracking number (e.g., 05-ATOV3BR-ZR) - only available in bulk response
@override final  String? trackingNumber;
/// External reference ID
@override final  String? externalId;
/// Whether creation was successful
@override@JsonKey() final  bool success;

/// Create a copy of ZrexpressParcelCreateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressParcelCreateResponseCopyWith<_ZrexpressParcelCreateResponse> get copyWith => __$ZrexpressParcelCreateResponseCopyWithImpl<_ZrexpressParcelCreateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressParcelCreateResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressParcelCreateResponse&&(identical(other.parcelId, parcelId) || other.parcelId == parcelId)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parcelId,trackingNumber,externalId,success);

@override
String toString() {
  return 'ZrexpressParcelCreateResponse(parcelId: $parcelId, trackingNumber: $trackingNumber, externalId: $externalId, success: $success)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressParcelCreateResponseCopyWith<$Res> implements $ZrexpressParcelCreateResponseCopyWith<$Res> {
  factory _$ZrexpressParcelCreateResponseCopyWith(_ZrexpressParcelCreateResponse value, $Res Function(_ZrexpressParcelCreateResponse) _then) = __$ZrexpressParcelCreateResponseCopyWithImpl;
@override @useResult
$Res call({
 String parcelId, String? trackingNumber, String? externalId, bool success
});




}
/// @nodoc
class __$ZrexpressParcelCreateResponseCopyWithImpl<$Res>
    implements _$ZrexpressParcelCreateResponseCopyWith<$Res> {
  __$ZrexpressParcelCreateResponseCopyWithImpl(this._self, this._then);

  final _ZrexpressParcelCreateResponse _self;
  final $Res Function(_ZrexpressParcelCreateResponse) _then;

/// Create a copy of ZrexpressParcelCreateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parcelId = null,Object? trackingNumber = freezed,Object? externalId = freezed,Object? success = null,}) {
  return _then(_ZrexpressParcelCreateResponse(
parcelId: null == parcelId ? _self.parcelId : parcelId // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ZrexpressBulkResponse {

/// Total number of parcels requested
 int get totalRequested;/// Number of successfully created parcels
 int get successCount;/// Number of failed parcel creations
 int get failureCount;/// List of successfully created parcels
 List<ZrexpressBulkSuccess> get successes;/// List of failed parcel creations
 List<ZrexpressBulkFailure> get failures;
/// Create a copy of ZrexpressBulkResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressBulkResponseCopyWith<ZrexpressBulkResponse> get copyWith => _$ZrexpressBulkResponseCopyWithImpl<ZrexpressBulkResponse>(this as ZrexpressBulkResponse, _$identity);

  /// Serializes this ZrexpressBulkResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressBulkResponse&&(identical(other.totalRequested, totalRequested) || other.totalRequested == totalRequested)&&(identical(other.successCount, successCount) || other.successCount == successCount)&&(identical(other.failureCount, failureCount) || other.failureCount == failureCount)&&const DeepCollectionEquality().equals(other.successes, successes)&&const DeepCollectionEquality().equals(other.failures, failures));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRequested,successCount,failureCount,const DeepCollectionEquality().hash(successes),const DeepCollectionEquality().hash(failures));

@override
String toString() {
  return 'ZrexpressBulkResponse(totalRequested: $totalRequested, successCount: $successCount, failureCount: $failureCount, successes: $successes, failures: $failures)';
}


}

/// @nodoc
abstract mixin class $ZrexpressBulkResponseCopyWith<$Res>  {
  factory $ZrexpressBulkResponseCopyWith(ZrexpressBulkResponse value, $Res Function(ZrexpressBulkResponse) _then) = _$ZrexpressBulkResponseCopyWithImpl;
@useResult
$Res call({
 int totalRequested, int successCount, int failureCount, List<ZrexpressBulkSuccess> successes, List<ZrexpressBulkFailure> failures
});




}
/// @nodoc
class _$ZrexpressBulkResponseCopyWithImpl<$Res>
    implements $ZrexpressBulkResponseCopyWith<$Res> {
  _$ZrexpressBulkResponseCopyWithImpl(this._self, this._then);

  final ZrexpressBulkResponse _self;
  final $Res Function(ZrexpressBulkResponse) _then;

/// Create a copy of ZrexpressBulkResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalRequested = null,Object? successCount = null,Object? failureCount = null,Object? successes = null,Object? failures = null,}) {
  return _then(_self.copyWith(
totalRequested: null == totalRequested ? _self.totalRequested : totalRequested // ignore: cast_nullable_to_non_nullable
as int,successCount: null == successCount ? _self.successCount : successCount // ignore: cast_nullable_to_non_nullable
as int,failureCount: null == failureCount ? _self.failureCount : failureCount // ignore: cast_nullable_to_non_nullable
as int,successes: null == successes ? _self.successes : successes // ignore: cast_nullable_to_non_nullable
as List<ZrexpressBulkSuccess>,failures: null == failures ? _self.failures : failures // ignore: cast_nullable_to_non_nullable
as List<ZrexpressBulkFailure>,
  ));
}

}


/// Adds pattern-matching-related methods to [ZrexpressBulkResponse].
extension ZrexpressBulkResponsePatterns on ZrexpressBulkResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressBulkResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressBulkResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressBulkResponse value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressBulkResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressBulkResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressBulkResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalRequested,  int successCount,  int failureCount,  List<ZrexpressBulkSuccess> successes,  List<ZrexpressBulkFailure> failures)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZrexpressBulkResponse() when $default != null:
return $default(_that.totalRequested,_that.successCount,_that.failureCount,_that.successes,_that.failures);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalRequested,  int successCount,  int failureCount,  List<ZrexpressBulkSuccess> successes,  List<ZrexpressBulkFailure> failures)  $default,) {final _that = this;
switch (_that) {
case _ZrexpressBulkResponse():
return $default(_that.totalRequested,_that.successCount,_that.failureCount,_that.successes,_that.failures);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalRequested,  int successCount,  int failureCount,  List<ZrexpressBulkSuccess> successes,  List<ZrexpressBulkFailure> failures)?  $default,) {final _that = this;
switch (_that) {
case _ZrexpressBulkResponse() when $default != null:
return $default(_that.totalRequested,_that.successCount,_that.failureCount,_that.successes,_that.failures);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressBulkResponse extends ZrexpressBulkResponse {
  const _ZrexpressBulkResponse({required this.totalRequested, required this.successCount, required this.failureCount, final  List<ZrexpressBulkSuccess> successes = const [], final  List<ZrexpressBulkFailure> failures = const []}): _successes = successes,_failures = failures,super._();
  factory _ZrexpressBulkResponse.fromJson(Map<String, dynamic> json) => _$ZrexpressBulkResponseFromJson(json);

/// Total number of parcels requested
@override final  int totalRequested;
/// Number of successfully created parcels
@override final  int successCount;
/// Number of failed parcel creations
@override final  int failureCount;
/// List of successfully created parcels
 final  List<ZrexpressBulkSuccess> _successes;
/// List of successfully created parcels
@override@JsonKey() List<ZrexpressBulkSuccess> get successes {
  if (_successes is EqualUnmodifiableListView) return _successes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_successes);
}

/// List of failed parcel creations
 final  List<ZrexpressBulkFailure> _failures;
/// List of failed parcel creations
@override@JsonKey() List<ZrexpressBulkFailure> get failures {
  if (_failures is EqualUnmodifiableListView) return _failures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_failures);
}


/// Create a copy of ZrexpressBulkResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressBulkResponseCopyWith<_ZrexpressBulkResponse> get copyWith => __$ZrexpressBulkResponseCopyWithImpl<_ZrexpressBulkResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressBulkResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressBulkResponse&&(identical(other.totalRequested, totalRequested) || other.totalRequested == totalRequested)&&(identical(other.successCount, successCount) || other.successCount == successCount)&&(identical(other.failureCount, failureCount) || other.failureCount == failureCount)&&const DeepCollectionEquality().equals(other._successes, _successes)&&const DeepCollectionEquality().equals(other._failures, _failures));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRequested,successCount,failureCount,const DeepCollectionEquality().hash(_successes),const DeepCollectionEquality().hash(_failures));

@override
String toString() {
  return 'ZrexpressBulkResponse(totalRequested: $totalRequested, successCount: $successCount, failureCount: $failureCount, successes: $successes, failures: $failures)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressBulkResponseCopyWith<$Res> implements $ZrexpressBulkResponseCopyWith<$Res> {
  factory _$ZrexpressBulkResponseCopyWith(_ZrexpressBulkResponse value, $Res Function(_ZrexpressBulkResponse) _then) = __$ZrexpressBulkResponseCopyWithImpl;
@override @useResult
$Res call({
 int totalRequested, int successCount, int failureCount, List<ZrexpressBulkSuccess> successes, List<ZrexpressBulkFailure> failures
});




}
/// @nodoc
class __$ZrexpressBulkResponseCopyWithImpl<$Res>
    implements _$ZrexpressBulkResponseCopyWith<$Res> {
  __$ZrexpressBulkResponseCopyWithImpl(this._self, this._then);

  final _ZrexpressBulkResponse _self;
  final $Res Function(_ZrexpressBulkResponse) _then;

/// Create a copy of ZrexpressBulkResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalRequested = null,Object? successCount = null,Object? failureCount = null,Object? successes = null,Object? failures = null,}) {
  return _then(_ZrexpressBulkResponse(
totalRequested: null == totalRequested ? _self.totalRequested : totalRequested // ignore: cast_nullable_to_non_nullable
as int,successCount: null == successCount ? _self.successCount : successCount // ignore: cast_nullable_to_non_nullable
as int,failureCount: null == failureCount ? _self.failureCount : failureCount // ignore: cast_nullable_to_non_nullable
as int,successes: null == successes ? _self._successes : successes // ignore: cast_nullable_to_non_nullable
as List<ZrexpressBulkSuccess>,failures: null == failures ? _self._failures : failures // ignore: cast_nullable_to_non_nullable
as List<ZrexpressBulkFailure>,
  ));
}


}


/// @nodoc
mixin _$ZrexpressBulkSuccess {

/// Index of the parcel in the request array
 int? get index;/// UUID of the created parcel
 String get parcelId;/// Tracking number (e.g., 05-ATOV3BR-ZR)
 String get trackingNumber;/// External reference ID
 String? get externalId;
/// Create a copy of ZrexpressBulkSuccess
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressBulkSuccessCopyWith<ZrexpressBulkSuccess> get copyWith => _$ZrexpressBulkSuccessCopyWithImpl<ZrexpressBulkSuccess>(this as ZrexpressBulkSuccess, _$identity);

  /// Serializes this ZrexpressBulkSuccess to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressBulkSuccess&&(identical(other.index, index) || other.index == index)&&(identical(other.parcelId, parcelId) || other.parcelId == parcelId)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.externalId, externalId) || other.externalId == externalId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,parcelId,trackingNumber,externalId);

@override
String toString() {
  return 'ZrexpressBulkSuccess(index: $index, parcelId: $parcelId, trackingNumber: $trackingNumber, externalId: $externalId)';
}


}

/// @nodoc
abstract mixin class $ZrexpressBulkSuccessCopyWith<$Res>  {
  factory $ZrexpressBulkSuccessCopyWith(ZrexpressBulkSuccess value, $Res Function(ZrexpressBulkSuccess) _then) = _$ZrexpressBulkSuccessCopyWithImpl;
@useResult
$Res call({
 int? index, String parcelId, String trackingNumber, String? externalId
});




}
/// @nodoc
class _$ZrexpressBulkSuccessCopyWithImpl<$Res>
    implements $ZrexpressBulkSuccessCopyWith<$Res> {
  _$ZrexpressBulkSuccessCopyWithImpl(this._self, this._then);

  final ZrexpressBulkSuccess _self;
  final $Res Function(ZrexpressBulkSuccess) _then;

/// Create a copy of ZrexpressBulkSuccess
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = freezed,Object? parcelId = null,Object? trackingNumber = null,Object? externalId = freezed,}) {
  return _then(_self.copyWith(
index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,parcelId: null == parcelId ? _self.parcelId : parcelId // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ZrexpressBulkSuccess].
extension ZrexpressBulkSuccessPatterns on ZrexpressBulkSuccess {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressBulkSuccess value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressBulkSuccess() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressBulkSuccess value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressBulkSuccess():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressBulkSuccess value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressBulkSuccess() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? index,  String parcelId,  String trackingNumber,  String? externalId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZrexpressBulkSuccess() when $default != null:
return $default(_that.index,_that.parcelId,_that.trackingNumber,_that.externalId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? index,  String parcelId,  String trackingNumber,  String? externalId)  $default,) {final _that = this;
switch (_that) {
case _ZrexpressBulkSuccess():
return $default(_that.index,_that.parcelId,_that.trackingNumber,_that.externalId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? index,  String parcelId,  String trackingNumber,  String? externalId)?  $default,) {final _that = this;
switch (_that) {
case _ZrexpressBulkSuccess() when $default != null:
return $default(_that.index,_that.parcelId,_that.trackingNumber,_that.externalId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressBulkSuccess extends ZrexpressBulkSuccess {
  const _ZrexpressBulkSuccess({this.index, required this.parcelId, required this.trackingNumber, this.externalId}): super._();
  factory _ZrexpressBulkSuccess.fromJson(Map<String, dynamic> json) => _$ZrexpressBulkSuccessFromJson(json);

/// Index of the parcel in the request array
@override final  int? index;
/// UUID of the created parcel
@override final  String parcelId;
/// Tracking number (e.g., 05-ATOV3BR-ZR)
@override final  String trackingNumber;
/// External reference ID
@override final  String? externalId;

/// Create a copy of ZrexpressBulkSuccess
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressBulkSuccessCopyWith<_ZrexpressBulkSuccess> get copyWith => __$ZrexpressBulkSuccessCopyWithImpl<_ZrexpressBulkSuccess>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressBulkSuccessToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressBulkSuccess&&(identical(other.index, index) || other.index == index)&&(identical(other.parcelId, parcelId) || other.parcelId == parcelId)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.externalId, externalId) || other.externalId == externalId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,parcelId,trackingNumber,externalId);

@override
String toString() {
  return 'ZrexpressBulkSuccess(index: $index, parcelId: $parcelId, trackingNumber: $trackingNumber, externalId: $externalId)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressBulkSuccessCopyWith<$Res> implements $ZrexpressBulkSuccessCopyWith<$Res> {
  factory _$ZrexpressBulkSuccessCopyWith(_ZrexpressBulkSuccess value, $Res Function(_ZrexpressBulkSuccess) _then) = __$ZrexpressBulkSuccessCopyWithImpl;
@override @useResult
$Res call({
 int? index, String parcelId, String trackingNumber, String? externalId
});




}
/// @nodoc
class __$ZrexpressBulkSuccessCopyWithImpl<$Res>
    implements _$ZrexpressBulkSuccessCopyWith<$Res> {
  __$ZrexpressBulkSuccessCopyWithImpl(this._self, this._then);

  final _ZrexpressBulkSuccess _self;
  final $Res Function(_ZrexpressBulkSuccess) _then;

/// Create a copy of ZrexpressBulkSuccess
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = freezed,Object? parcelId = null,Object? trackingNumber = null,Object? externalId = freezed,}) {
  return _then(_ZrexpressBulkSuccess(
index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,parcelId: null == parcelId ? _self.parcelId : parcelId // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ZrexpressBulkFailure {

/// Index of the parcel in the request array
 int? get index;/// External reference ID
 String? get externalId;/// Error message
 String? get error;/// Additional error details
 Map<String, dynamic>? get details;
/// Create a copy of ZrexpressBulkFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressBulkFailureCopyWith<ZrexpressBulkFailure> get copyWith => _$ZrexpressBulkFailureCopyWithImpl<ZrexpressBulkFailure>(this as ZrexpressBulkFailure, _$identity);

  /// Serializes this ZrexpressBulkFailure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressBulkFailure&&(identical(other.index, index) || other.index == index)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.details, details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,externalId,error,const DeepCollectionEquality().hash(details));

@override
String toString() {
  return 'ZrexpressBulkFailure(index: $index, externalId: $externalId, error: $error, details: $details)';
}


}

/// @nodoc
abstract mixin class $ZrexpressBulkFailureCopyWith<$Res>  {
  factory $ZrexpressBulkFailureCopyWith(ZrexpressBulkFailure value, $Res Function(ZrexpressBulkFailure) _then) = _$ZrexpressBulkFailureCopyWithImpl;
@useResult
$Res call({
 int? index, String? externalId, String? error, Map<String, dynamic>? details
});




}
/// @nodoc
class _$ZrexpressBulkFailureCopyWithImpl<$Res>
    implements $ZrexpressBulkFailureCopyWith<$Res> {
  _$ZrexpressBulkFailureCopyWithImpl(this._self, this._then);

  final ZrexpressBulkFailure _self;
  final $Res Function(ZrexpressBulkFailure) _then;

/// Create a copy of ZrexpressBulkFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = freezed,Object? externalId = freezed,Object? error = freezed,Object? details = freezed,}) {
  return _then(_self.copyWith(
index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ZrexpressBulkFailure].
extension ZrexpressBulkFailurePatterns on ZrexpressBulkFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressBulkFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressBulkFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressBulkFailure value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressBulkFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressBulkFailure value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressBulkFailure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? index,  String? externalId,  String? error,  Map<String, dynamic>? details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZrexpressBulkFailure() when $default != null:
return $default(_that.index,_that.externalId,_that.error,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? index,  String? externalId,  String? error,  Map<String, dynamic>? details)  $default,) {final _that = this;
switch (_that) {
case _ZrexpressBulkFailure():
return $default(_that.index,_that.externalId,_that.error,_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? index,  String? externalId,  String? error,  Map<String, dynamic>? details)?  $default,) {final _that = this;
switch (_that) {
case _ZrexpressBulkFailure() when $default != null:
return $default(_that.index,_that.externalId,_that.error,_that.details);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressBulkFailure extends ZrexpressBulkFailure {
  const _ZrexpressBulkFailure({this.index, this.externalId, this.error, final  Map<String, dynamic>? details}): _details = details,super._();
  factory _ZrexpressBulkFailure.fromJson(Map<String, dynamic> json) => _$ZrexpressBulkFailureFromJson(json);

/// Index of the parcel in the request array
@override final  int? index;
/// External reference ID
@override final  String? externalId;
/// Error message
@override final  String? error;
/// Additional error details
 final  Map<String, dynamic>? _details;
/// Additional error details
@override Map<String, dynamic>? get details {
  final value = _details;
  if (value == null) return null;
  if (_details is EqualUnmodifiableMapView) return _details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ZrexpressBulkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressBulkFailureCopyWith<_ZrexpressBulkFailure> get copyWith => __$ZrexpressBulkFailureCopyWithImpl<_ZrexpressBulkFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressBulkFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressBulkFailure&&(identical(other.index, index) || other.index == index)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._details, _details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,externalId,error,const DeepCollectionEquality().hash(_details));

@override
String toString() {
  return 'ZrexpressBulkFailure(index: $index, externalId: $externalId, error: $error, details: $details)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressBulkFailureCopyWith<$Res> implements $ZrexpressBulkFailureCopyWith<$Res> {
  factory _$ZrexpressBulkFailureCopyWith(_ZrexpressBulkFailure value, $Res Function(_ZrexpressBulkFailure) _then) = __$ZrexpressBulkFailureCopyWithImpl;
@override @useResult
$Res call({
 int? index, String? externalId, String? error, Map<String, dynamic>? details
});




}
/// @nodoc
class __$ZrexpressBulkFailureCopyWithImpl<$Res>
    implements _$ZrexpressBulkFailureCopyWith<$Res> {
  __$ZrexpressBulkFailureCopyWithImpl(this._self, this._then);

  final _ZrexpressBulkFailure _self;
  final $Res Function(_ZrexpressBulkFailure) _then;

/// Create a copy of ZrexpressBulkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = freezed,Object? externalId = freezed,Object? error = freezed,Object? details = freezed,}) {
  return _then(_ZrexpressBulkFailure(
index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$ZrexpressLabelsResponse {

/// URL to download the merged PDF
 String get fileUrl;/// Tracking numbers that failed to generate labels
 List<String> get failedTrackingNumbers;
/// Create a copy of ZrexpressLabelsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressLabelsResponseCopyWith<ZrexpressLabelsResponse> get copyWith => _$ZrexpressLabelsResponseCopyWithImpl<ZrexpressLabelsResponse>(this as ZrexpressLabelsResponse, _$identity);

  /// Serializes this ZrexpressLabelsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressLabelsResponse&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&const DeepCollectionEquality().equals(other.failedTrackingNumbers, failedTrackingNumbers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fileUrl,const DeepCollectionEquality().hash(failedTrackingNumbers));

@override
String toString() {
  return 'ZrexpressLabelsResponse(fileUrl: $fileUrl, failedTrackingNumbers: $failedTrackingNumbers)';
}


}

/// @nodoc
abstract mixin class $ZrexpressLabelsResponseCopyWith<$Res>  {
  factory $ZrexpressLabelsResponseCopyWith(ZrexpressLabelsResponse value, $Res Function(ZrexpressLabelsResponse) _then) = _$ZrexpressLabelsResponseCopyWithImpl;
@useResult
$Res call({
 String fileUrl, List<String> failedTrackingNumbers
});




}
/// @nodoc
class _$ZrexpressLabelsResponseCopyWithImpl<$Res>
    implements $ZrexpressLabelsResponseCopyWith<$Res> {
  _$ZrexpressLabelsResponseCopyWithImpl(this._self, this._then);

  final ZrexpressLabelsResponse _self;
  final $Res Function(ZrexpressLabelsResponse) _then;

/// Create a copy of ZrexpressLabelsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fileUrl = null,Object? failedTrackingNumbers = null,}) {
  return _then(_self.copyWith(
fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,failedTrackingNumbers: null == failedTrackingNumbers ? _self.failedTrackingNumbers : failedTrackingNumbers // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ZrexpressLabelsResponse].
extension ZrexpressLabelsResponsePatterns on ZrexpressLabelsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressLabelsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressLabelsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressLabelsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressLabelsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressLabelsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressLabelsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fileUrl,  List<String> failedTrackingNumbers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZrexpressLabelsResponse() when $default != null:
return $default(_that.fileUrl,_that.failedTrackingNumbers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fileUrl,  List<String> failedTrackingNumbers)  $default,) {final _that = this;
switch (_that) {
case _ZrexpressLabelsResponse():
return $default(_that.fileUrl,_that.failedTrackingNumbers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fileUrl,  List<String> failedTrackingNumbers)?  $default,) {final _that = this;
switch (_that) {
case _ZrexpressLabelsResponse() when $default != null:
return $default(_that.fileUrl,_that.failedTrackingNumbers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressLabelsResponse extends ZrexpressLabelsResponse {
  const _ZrexpressLabelsResponse({required this.fileUrl, final  List<String> failedTrackingNumbers = const []}): _failedTrackingNumbers = failedTrackingNumbers,super._();
  factory _ZrexpressLabelsResponse.fromJson(Map<String, dynamic> json) => _$ZrexpressLabelsResponseFromJson(json);

/// URL to download the merged PDF
@override final  String fileUrl;
/// Tracking numbers that failed to generate labels
 final  List<String> _failedTrackingNumbers;
/// Tracking numbers that failed to generate labels
@override@JsonKey() List<String> get failedTrackingNumbers {
  if (_failedTrackingNumbers is EqualUnmodifiableListView) return _failedTrackingNumbers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_failedTrackingNumbers);
}


/// Create a copy of ZrexpressLabelsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressLabelsResponseCopyWith<_ZrexpressLabelsResponse> get copyWith => __$ZrexpressLabelsResponseCopyWithImpl<_ZrexpressLabelsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressLabelsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressLabelsResponse&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&const DeepCollectionEquality().equals(other._failedTrackingNumbers, _failedTrackingNumbers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fileUrl,const DeepCollectionEquality().hash(_failedTrackingNumbers));

@override
String toString() {
  return 'ZrexpressLabelsResponse(fileUrl: $fileUrl, failedTrackingNumbers: $failedTrackingNumbers)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressLabelsResponseCopyWith<$Res> implements $ZrexpressLabelsResponseCopyWith<$Res> {
  factory _$ZrexpressLabelsResponseCopyWith(_ZrexpressLabelsResponse value, $Res Function(_ZrexpressLabelsResponse) _then) = __$ZrexpressLabelsResponseCopyWithImpl;
@override @useResult
$Res call({
 String fileUrl, List<String> failedTrackingNumbers
});




}
/// @nodoc
class __$ZrexpressLabelsResponseCopyWithImpl<$Res>
    implements _$ZrexpressLabelsResponseCopyWith<$Res> {
  __$ZrexpressLabelsResponseCopyWithImpl(this._self, this._then);

  final _ZrexpressLabelsResponse _self;
  final $Res Function(_ZrexpressLabelsResponse) _then;

/// Create a copy of ZrexpressLabelsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fileUrl = null,Object? failedTrackingNumbers = null,}) {
  return _then(_ZrexpressLabelsResponse(
fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,failedTrackingNumbers: null == failedTrackingNumbers ? _self._failedTrackingNumbers : failedTrackingNumbers // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$ZrexpressIndividualLabel {

/// Tracking number
 String get trackingNumber;/// URL to download the individual PDF
 String get fileUrl;
/// Create a copy of ZrexpressIndividualLabel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressIndividualLabelCopyWith<ZrexpressIndividualLabel> get copyWith => _$ZrexpressIndividualLabelCopyWithImpl<ZrexpressIndividualLabel>(this as ZrexpressIndividualLabel, _$identity);

  /// Serializes this ZrexpressIndividualLabel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressIndividualLabel&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trackingNumber,fileUrl);

@override
String toString() {
  return 'ZrexpressIndividualLabel(trackingNumber: $trackingNumber, fileUrl: $fileUrl)';
}


}

/// @nodoc
abstract mixin class $ZrexpressIndividualLabelCopyWith<$Res>  {
  factory $ZrexpressIndividualLabelCopyWith(ZrexpressIndividualLabel value, $Res Function(ZrexpressIndividualLabel) _then) = _$ZrexpressIndividualLabelCopyWithImpl;
@useResult
$Res call({
 String trackingNumber, String fileUrl
});




}
/// @nodoc
class _$ZrexpressIndividualLabelCopyWithImpl<$Res>
    implements $ZrexpressIndividualLabelCopyWith<$Res> {
  _$ZrexpressIndividualLabelCopyWithImpl(this._self, this._then);

  final ZrexpressIndividualLabel _self;
  final $Res Function(ZrexpressIndividualLabel) _then;

/// Create a copy of ZrexpressIndividualLabel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trackingNumber = null,Object? fileUrl = null,}) {
  return _then(_self.copyWith(
trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ZrexpressIndividualLabel].
extension ZrexpressIndividualLabelPatterns on ZrexpressIndividualLabel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressIndividualLabel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressIndividualLabel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressIndividualLabel value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressIndividualLabel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressIndividualLabel value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressIndividualLabel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String trackingNumber,  String fileUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZrexpressIndividualLabel() when $default != null:
return $default(_that.trackingNumber,_that.fileUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String trackingNumber,  String fileUrl)  $default,) {final _that = this;
switch (_that) {
case _ZrexpressIndividualLabel():
return $default(_that.trackingNumber,_that.fileUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String trackingNumber,  String fileUrl)?  $default,) {final _that = this;
switch (_that) {
case _ZrexpressIndividualLabel() when $default != null:
return $default(_that.trackingNumber,_that.fileUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressIndividualLabel extends ZrexpressIndividualLabel {
  const _ZrexpressIndividualLabel({required this.trackingNumber, required this.fileUrl}): super._();
  factory _ZrexpressIndividualLabel.fromJson(Map<String, dynamic> json) => _$ZrexpressIndividualLabelFromJson(json);

/// Tracking number
@override final  String trackingNumber;
/// URL to download the individual PDF
@override final  String fileUrl;

/// Create a copy of ZrexpressIndividualLabel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressIndividualLabelCopyWith<_ZrexpressIndividualLabel> get copyWith => __$ZrexpressIndividualLabelCopyWithImpl<_ZrexpressIndividualLabel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressIndividualLabelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressIndividualLabel&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trackingNumber,fileUrl);

@override
String toString() {
  return 'ZrexpressIndividualLabel(trackingNumber: $trackingNumber, fileUrl: $fileUrl)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressIndividualLabelCopyWith<$Res> implements $ZrexpressIndividualLabelCopyWith<$Res> {
  factory _$ZrexpressIndividualLabelCopyWith(_ZrexpressIndividualLabel value, $Res Function(_ZrexpressIndividualLabel) _then) = __$ZrexpressIndividualLabelCopyWithImpl;
@override @useResult
$Res call({
 String trackingNumber, String fileUrl
});




}
/// @nodoc
class __$ZrexpressIndividualLabelCopyWithImpl<$Res>
    implements _$ZrexpressIndividualLabelCopyWith<$Res> {
  __$ZrexpressIndividualLabelCopyWithImpl(this._self, this._then);

  final _ZrexpressIndividualLabel _self;
  final $Res Function(_ZrexpressIndividualLabel) _then;

/// Create a copy of ZrexpressIndividualLabel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trackingNumber = null,Object? fileUrl = null,}) {
  return _then(_ZrexpressIndividualLabel(
trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ZrexpressIndividualLabelsResponse {

/// List of individual label files
 List<ZrexpressIndividualLabel> get parcelLabelFiles;/// Tracking numbers that failed to generate labels
 List<String> get failedTrackingNumbers;
/// Create a copy of ZrexpressIndividualLabelsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressIndividualLabelsResponseCopyWith<ZrexpressIndividualLabelsResponse> get copyWith => _$ZrexpressIndividualLabelsResponseCopyWithImpl<ZrexpressIndividualLabelsResponse>(this as ZrexpressIndividualLabelsResponse, _$identity);

  /// Serializes this ZrexpressIndividualLabelsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressIndividualLabelsResponse&&const DeepCollectionEquality().equals(other.parcelLabelFiles, parcelLabelFiles)&&const DeepCollectionEquality().equals(other.failedTrackingNumbers, failedTrackingNumbers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(parcelLabelFiles),const DeepCollectionEquality().hash(failedTrackingNumbers));

@override
String toString() {
  return 'ZrexpressIndividualLabelsResponse(parcelLabelFiles: $parcelLabelFiles, failedTrackingNumbers: $failedTrackingNumbers)';
}


}

/// @nodoc
abstract mixin class $ZrexpressIndividualLabelsResponseCopyWith<$Res>  {
  factory $ZrexpressIndividualLabelsResponseCopyWith(ZrexpressIndividualLabelsResponse value, $Res Function(ZrexpressIndividualLabelsResponse) _then) = _$ZrexpressIndividualLabelsResponseCopyWithImpl;
@useResult
$Res call({
 List<ZrexpressIndividualLabel> parcelLabelFiles, List<String> failedTrackingNumbers
});




}
/// @nodoc
class _$ZrexpressIndividualLabelsResponseCopyWithImpl<$Res>
    implements $ZrexpressIndividualLabelsResponseCopyWith<$Res> {
  _$ZrexpressIndividualLabelsResponseCopyWithImpl(this._self, this._then);

  final ZrexpressIndividualLabelsResponse _self;
  final $Res Function(ZrexpressIndividualLabelsResponse) _then;

/// Create a copy of ZrexpressIndividualLabelsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parcelLabelFiles = null,Object? failedTrackingNumbers = null,}) {
  return _then(_self.copyWith(
parcelLabelFiles: null == parcelLabelFiles ? _self.parcelLabelFiles : parcelLabelFiles // ignore: cast_nullable_to_non_nullable
as List<ZrexpressIndividualLabel>,failedTrackingNumbers: null == failedTrackingNumbers ? _self.failedTrackingNumbers : failedTrackingNumbers // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ZrexpressIndividualLabelsResponse].
extension ZrexpressIndividualLabelsResponsePatterns on ZrexpressIndividualLabelsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressIndividualLabelsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressIndividualLabelsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressIndividualLabelsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressIndividualLabelsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressIndividualLabelsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressIndividualLabelsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ZrexpressIndividualLabel> parcelLabelFiles,  List<String> failedTrackingNumbers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZrexpressIndividualLabelsResponse() when $default != null:
return $default(_that.parcelLabelFiles,_that.failedTrackingNumbers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ZrexpressIndividualLabel> parcelLabelFiles,  List<String> failedTrackingNumbers)  $default,) {final _that = this;
switch (_that) {
case _ZrexpressIndividualLabelsResponse():
return $default(_that.parcelLabelFiles,_that.failedTrackingNumbers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ZrexpressIndividualLabel> parcelLabelFiles,  List<String> failedTrackingNumbers)?  $default,) {final _that = this;
switch (_that) {
case _ZrexpressIndividualLabelsResponse() when $default != null:
return $default(_that.parcelLabelFiles,_that.failedTrackingNumbers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressIndividualLabelsResponse extends ZrexpressIndividualLabelsResponse {
  const _ZrexpressIndividualLabelsResponse({final  List<ZrexpressIndividualLabel> parcelLabelFiles = const [], final  List<String> failedTrackingNumbers = const []}): _parcelLabelFiles = parcelLabelFiles,_failedTrackingNumbers = failedTrackingNumbers,super._();
  factory _ZrexpressIndividualLabelsResponse.fromJson(Map<String, dynamic> json) => _$ZrexpressIndividualLabelsResponseFromJson(json);

/// List of individual label files
 final  List<ZrexpressIndividualLabel> _parcelLabelFiles;
/// List of individual label files
@override@JsonKey() List<ZrexpressIndividualLabel> get parcelLabelFiles {
  if (_parcelLabelFiles is EqualUnmodifiableListView) return _parcelLabelFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parcelLabelFiles);
}

/// Tracking numbers that failed to generate labels
 final  List<String> _failedTrackingNumbers;
/// Tracking numbers that failed to generate labels
@override@JsonKey() List<String> get failedTrackingNumbers {
  if (_failedTrackingNumbers is EqualUnmodifiableListView) return _failedTrackingNumbers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_failedTrackingNumbers);
}


/// Create a copy of ZrexpressIndividualLabelsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressIndividualLabelsResponseCopyWith<_ZrexpressIndividualLabelsResponse> get copyWith => __$ZrexpressIndividualLabelsResponseCopyWithImpl<_ZrexpressIndividualLabelsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressIndividualLabelsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressIndividualLabelsResponse&&const DeepCollectionEquality().equals(other._parcelLabelFiles, _parcelLabelFiles)&&const DeepCollectionEquality().equals(other._failedTrackingNumbers, _failedTrackingNumbers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_parcelLabelFiles),const DeepCollectionEquality().hash(_failedTrackingNumbers));

@override
String toString() {
  return 'ZrexpressIndividualLabelsResponse(parcelLabelFiles: $parcelLabelFiles, failedTrackingNumbers: $failedTrackingNumbers)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressIndividualLabelsResponseCopyWith<$Res> implements $ZrexpressIndividualLabelsResponseCopyWith<$Res> {
  factory _$ZrexpressIndividualLabelsResponseCopyWith(_ZrexpressIndividualLabelsResponse value, $Res Function(_ZrexpressIndividualLabelsResponse) _then) = __$ZrexpressIndividualLabelsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ZrexpressIndividualLabel> parcelLabelFiles, List<String> failedTrackingNumbers
});




}
/// @nodoc
class __$ZrexpressIndividualLabelsResponseCopyWithImpl<$Res>
    implements _$ZrexpressIndividualLabelsResponseCopyWith<$Res> {
  __$ZrexpressIndividualLabelsResponseCopyWithImpl(this._self, this._then);

  final _ZrexpressIndividualLabelsResponse _self;
  final $Res Function(_ZrexpressIndividualLabelsResponse) _then;

/// Create a copy of ZrexpressIndividualLabelsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parcelLabelFiles = null,Object? failedTrackingNumbers = null,}) {
  return _then(_ZrexpressIndividualLabelsResponse(
parcelLabelFiles: null == parcelLabelFiles ? _self._parcelLabelFiles : parcelLabelFiles // ignore: cast_nullable_to_non_nullable
as List<ZrexpressIndividualLabel>,failedTrackingNumbers: null == failedTrackingNumbers ? _self._failedTrackingNumbers : failedTrackingNumbers // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
