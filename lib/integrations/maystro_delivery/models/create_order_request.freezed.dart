// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MaystroCustomer {

 String get name; String get phone;
/// Create a copy of MaystroCustomer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaystroCustomerCopyWith<MaystroCustomer> get copyWith => _$MaystroCustomerCopyWithImpl<MaystroCustomer>(this as MaystroCustomer, _$identity);

  /// Serializes this MaystroCustomer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaystroCustomer&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,phone);

@override
String toString() {
  return 'MaystroCustomer(name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $MaystroCustomerCopyWith<$Res>  {
  factory $MaystroCustomerCopyWith(MaystroCustomer value, $Res Function(MaystroCustomer) _then) = _$MaystroCustomerCopyWithImpl;
@useResult
$Res call({
 String name, String phone
});




}
/// @nodoc
class _$MaystroCustomerCopyWithImpl<$Res>
    implements $MaystroCustomerCopyWith<$Res> {
  _$MaystroCustomerCopyWithImpl(this._self, this._then);

  final MaystroCustomer _self;
  final $Res Function(MaystroCustomer) _then;

/// Create a copy of MaystroCustomer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? phone = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MaystroCustomer].
extension MaystroCustomerPatterns on MaystroCustomer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaystroCustomer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaystroCustomer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaystroCustomer value)  $default,){
final _that = this;
switch (_that) {
case _MaystroCustomer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaystroCustomer value)?  $default,){
final _that = this;
switch (_that) {
case _MaystroCustomer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaystroCustomer() when $default != null:
return $default(_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String phone)  $default,) {final _that = this;
switch (_that) {
case _MaystroCustomer():
return $default(_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String phone)?  $default,) {final _that = this;
switch (_that) {
case _MaystroCustomer() when $default != null:
return $default(_that.name,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaystroCustomer extends MaystroCustomer {
  const _MaystroCustomer({required this.name, required this.phone}): super._();
  factory _MaystroCustomer.fromJson(Map<String, dynamic> json) => _$MaystroCustomerFromJson(json);

@override final  String name;
@override final  String phone;

/// Create a copy of MaystroCustomer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaystroCustomerCopyWith<_MaystroCustomer> get copyWith => __$MaystroCustomerCopyWithImpl<_MaystroCustomer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaystroCustomerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaystroCustomer&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,phone);

@override
String toString() {
  return 'MaystroCustomer(name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$MaystroCustomerCopyWith<$Res> implements $MaystroCustomerCopyWith<$Res> {
  factory _$MaystroCustomerCopyWith(_MaystroCustomer value, $Res Function(_MaystroCustomer) _then) = __$MaystroCustomerCopyWithImpl;
@override @useResult
$Res call({
 String name, String phone
});




}
/// @nodoc
class __$MaystroCustomerCopyWithImpl<$Res>
    implements _$MaystroCustomerCopyWith<$Res> {
  __$MaystroCustomerCopyWithImpl(this._self, this._then);

  final _MaystroCustomer _self;
  final $Res Function(_MaystroCustomer) _then;

/// Create a copy of MaystroCustomer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = null,}) {
  return _then(_MaystroCustomer(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MaystroDeliveryAddress {

 String get street; String get city; String get district; String get postalCode; String get country; String? get communeId; String? get wilayaId;
/// Create a copy of MaystroDeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaystroDeliveryAddressCopyWith<MaystroDeliveryAddress> get copyWith => _$MaystroDeliveryAddressCopyWithImpl<MaystroDeliveryAddress>(this as MaystroDeliveryAddress, _$identity);

  /// Serializes this MaystroDeliveryAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaystroDeliveryAddress&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.communeId, communeId) || other.communeId == communeId)&&(identical(other.wilayaId, wilayaId) || other.wilayaId == wilayaId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,city,district,postalCode,country,communeId,wilayaId);

@override
String toString() {
  return 'MaystroDeliveryAddress(street: $street, city: $city, district: $district, postalCode: $postalCode, country: $country, communeId: $communeId, wilayaId: $wilayaId)';
}


}

/// @nodoc
abstract mixin class $MaystroDeliveryAddressCopyWith<$Res>  {
  factory $MaystroDeliveryAddressCopyWith(MaystroDeliveryAddress value, $Res Function(MaystroDeliveryAddress) _then) = _$MaystroDeliveryAddressCopyWithImpl;
@useResult
$Res call({
 String street, String city, String district, String postalCode, String country, String? communeId, String? wilayaId
});




}
/// @nodoc
class _$MaystroDeliveryAddressCopyWithImpl<$Res>
    implements $MaystroDeliveryAddressCopyWith<$Res> {
  _$MaystroDeliveryAddressCopyWithImpl(this._self, this._then);

  final MaystroDeliveryAddress _self;
  final $Res Function(MaystroDeliveryAddress) _then;

/// Create a copy of MaystroDeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? street = null,Object? city = null,Object? district = null,Object? postalCode = null,Object? country = null,Object? communeId = freezed,Object? wilayaId = freezed,}) {
  return _then(_self.copyWith(
street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,communeId: freezed == communeId ? _self.communeId : communeId // ignore: cast_nullable_to_non_nullable
as String?,wilayaId: freezed == wilayaId ? _self.wilayaId : wilayaId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MaystroDeliveryAddress].
extension MaystroDeliveryAddressPatterns on MaystroDeliveryAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaystroDeliveryAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaystroDeliveryAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaystroDeliveryAddress value)  $default,){
final _that = this;
switch (_that) {
case _MaystroDeliveryAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaystroDeliveryAddress value)?  $default,){
final _that = this;
switch (_that) {
case _MaystroDeliveryAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String street,  String city,  String district,  String postalCode,  String country,  String? communeId,  String? wilayaId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaystroDeliveryAddress() when $default != null:
return $default(_that.street,_that.city,_that.district,_that.postalCode,_that.country,_that.communeId,_that.wilayaId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String street,  String city,  String district,  String postalCode,  String country,  String? communeId,  String? wilayaId)  $default,) {final _that = this;
switch (_that) {
case _MaystroDeliveryAddress():
return $default(_that.street,_that.city,_that.district,_that.postalCode,_that.country,_that.communeId,_that.wilayaId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String street,  String city,  String district,  String postalCode,  String country,  String? communeId,  String? wilayaId)?  $default,) {final _that = this;
switch (_that) {
case _MaystroDeliveryAddress() when $default != null:
return $default(_that.street,_that.city,_that.district,_that.postalCode,_that.country,_that.communeId,_that.wilayaId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaystroDeliveryAddress extends MaystroDeliveryAddress {
  const _MaystroDeliveryAddress({required this.street, this.city = '', this.district = '', this.postalCode = '', this.country = 'algeria', this.communeId, this.wilayaId}): super._();
  factory _MaystroDeliveryAddress.fromJson(Map<String, dynamic> json) => _$MaystroDeliveryAddressFromJson(json);

@override final  String street;
@override@JsonKey() final  String city;
@override@JsonKey() final  String district;
@override@JsonKey() final  String postalCode;
@override@JsonKey() final  String country;
@override final  String? communeId;
@override final  String? wilayaId;

/// Create a copy of MaystroDeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaystroDeliveryAddressCopyWith<_MaystroDeliveryAddress> get copyWith => __$MaystroDeliveryAddressCopyWithImpl<_MaystroDeliveryAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaystroDeliveryAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaystroDeliveryAddress&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.communeId, communeId) || other.communeId == communeId)&&(identical(other.wilayaId, wilayaId) || other.wilayaId == wilayaId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,city,district,postalCode,country,communeId,wilayaId);

@override
String toString() {
  return 'MaystroDeliveryAddress(street: $street, city: $city, district: $district, postalCode: $postalCode, country: $country, communeId: $communeId, wilayaId: $wilayaId)';
}


}

/// @nodoc
abstract mixin class _$MaystroDeliveryAddressCopyWith<$Res> implements $MaystroDeliveryAddressCopyWith<$Res> {
  factory _$MaystroDeliveryAddressCopyWith(_MaystroDeliveryAddress value, $Res Function(_MaystroDeliveryAddress) _then) = __$MaystroDeliveryAddressCopyWithImpl;
@override @useResult
$Res call({
 String street, String city, String district, String postalCode, String country, String? communeId, String? wilayaId
});




}
/// @nodoc
class __$MaystroDeliveryAddressCopyWithImpl<$Res>
    implements _$MaystroDeliveryAddressCopyWith<$Res> {
  __$MaystroDeliveryAddressCopyWithImpl(this._self, this._then);

  final _MaystroDeliveryAddress _self;
  final $Res Function(_MaystroDeliveryAddress) _then;

/// Create a copy of MaystroDeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? street = null,Object? city = null,Object? district = null,Object? postalCode = null,Object? country = null,Object? communeId = freezed,Object? wilayaId = freezed,}) {
  return _then(_MaystroDeliveryAddress(
street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,communeId: freezed == communeId ? _self.communeId : communeId // ignore: cast_nullable_to_non_nullable
as String?,wilayaId: freezed == wilayaId ? _self.wilayaId : wilayaId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MaystroOrderedProduct {

 String get productName; int get quantity; double get unitPrice; String? get productSku;
/// Create a copy of MaystroOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaystroOrderedProductCopyWith<MaystroOrderedProduct> get copyWith => _$MaystroOrderedProductCopyWithImpl<MaystroOrderedProduct>(this as MaystroOrderedProduct, _$identity);

  /// Serializes this MaystroOrderedProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaystroOrderedProduct&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.productSku, productSku) || other.productSku == productSku));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,quantity,unitPrice,productSku);

@override
String toString() {
  return 'MaystroOrderedProduct(productName: $productName, quantity: $quantity, unitPrice: $unitPrice, productSku: $productSku)';
}


}

/// @nodoc
abstract mixin class $MaystroOrderedProductCopyWith<$Res>  {
  factory $MaystroOrderedProductCopyWith(MaystroOrderedProduct value, $Res Function(MaystroOrderedProduct) _then) = _$MaystroOrderedProductCopyWithImpl;
@useResult
$Res call({
 String productName, int quantity, double unitPrice, String? productSku
});




}
/// @nodoc
class _$MaystroOrderedProductCopyWithImpl<$Res>
    implements $MaystroOrderedProductCopyWith<$Res> {
  _$MaystroOrderedProductCopyWithImpl(this._self, this._then);

  final MaystroOrderedProduct _self;
  final $Res Function(MaystroOrderedProduct) _then;

/// Create a copy of MaystroOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productName = null,Object? quantity = null,Object? unitPrice = null,Object? productSku = freezed,}) {
  return _then(_self.copyWith(
productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,productSku: freezed == productSku ? _self.productSku : productSku // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MaystroOrderedProduct].
extension MaystroOrderedProductPatterns on MaystroOrderedProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaystroOrderedProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaystroOrderedProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaystroOrderedProduct value)  $default,){
final _that = this;
switch (_that) {
case _MaystroOrderedProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaystroOrderedProduct value)?  $default,){
final _that = this;
switch (_that) {
case _MaystroOrderedProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productName,  int quantity,  double unitPrice,  String? productSku)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaystroOrderedProduct() when $default != null:
return $default(_that.productName,_that.quantity,_that.unitPrice,_that.productSku);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productName,  int quantity,  double unitPrice,  String? productSku)  $default,) {final _that = this;
switch (_that) {
case _MaystroOrderedProduct():
return $default(_that.productName,_that.quantity,_that.unitPrice,_that.productSku);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productName,  int quantity,  double unitPrice,  String? productSku)?  $default,) {final _that = this;
switch (_that) {
case _MaystroOrderedProduct() when $default != null:
return $default(_that.productName,_that.quantity,_that.unitPrice,_that.productSku);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaystroOrderedProduct extends MaystroOrderedProduct {
  const _MaystroOrderedProduct({required this.productName, required this.quantity, required this.unitPrice, this.productSku}): super._();
  factory _MaystroOrderedProduct.fromJson(Map<String, dynamic> json) => _$MaystroOrderedProductFromJson(json);

@override final  String productName;
@override final  int quantity;
@override final  double unitPrice;
@override final  String? productSku;

/// Create a copy of MaystroOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaystroOrderedProductCopyWith<_MaystroOrderedProduct> get copyWith => __$MaystroOrderedProductCopyWithImpl<_MaystroOrderedProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaystroOrderedProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaystroOrderedProduct&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.productSku, productSku) || other.productSku == productSku));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,quantity,unitPrice,productSku);

@override
String toString() {
  return 'MaystroOrderedProduct(productName: $productName, quantity: $quantity, unitPrice: $unitPrice, productSku: $productSku)';
}


}

/// @nodoc
abstract mixin class _$MaystroOrderedProductCopyWith<$Res> implements $MaystroOrderedProductCopyWith<$Res> {
  factory _$MaystroOrderedProductCopyWith(_MaystroOrderedProduct value, $Res Function(_MaystroOrderedProduct) _then) = __$MaystroOrderedProductCopyWithImpl;
@override @useResult
$Res call({
 String productName, int quantity, double unitPrice, String? productSku
});




}
/// @nodoc
class __$MaystroOrderedProductCopyWithImpl<$Res>
    implements _$MaystroOrderedProductCopyWith<$Res> {
  __$MaystroOrderedProductCopyWithImpl(this._self, this._then);

  final _MaystroOrderedProduct _self;
  final $Res Function(_MaystroOrderedProduct) _then;

/// Create a copy of MaystroOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productName = null,Object? quantity = null,Object? unitPrice = null,Object? productSku = freezed,}) {
  return _then(_MaystroOrderedProduct(
productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,productSku: freezed == productSku ? _self.productSku : productSku // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MaystroCreateOrderRequest {

 String? get externalId; MaystroCustomer get customer; MaystroDeliveryAddress get deliveryAddress; List<MaystroOrderedProduct> get orderedProducts; double get amount; String? get description; String? get stateCode; String? get cityCode;
/// Create a copy of MaystroCreateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaystroCreateOrderRequestCopyWith<MaystroCreateOrderRequest> get copyWith => _$MaystroCreateOrderRequestCopyWithImpl<MaystroCreateOrderRequest>(this as MaystroCreateOrderRequest, _$identity);

  /// Serializes this MaystroCreateOrderRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaystroCreateOrderRequest&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&const DeepCollectionEquality().equals(other.orderedProducts, orderedProducts)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.cityCode, cityCode) || other.cityCode == cityCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,externalId,customer,deliveryAddress,const DeepCollectionEquality().hash(orderedProducts),amount,description,stateCode,cityCode);

@override
String toString() {
  return 'MaystroCreateOrderRequest(externalId: $externalId, customer: $customer, deliveryAddress: $deliveryAddress, orderedProducts: $orderedProducts, amount: $amount, description: $description, stateCode: $stateCode, cityCode: $cityCode)';
}


}

/// @nodoc
abstract mixin class $MaystroCreateOrderRequestCopyWith<$Res>  {
  factory $MaystroCreateOrderRequestCopyWith(MaystroCreateOrderRequest value, $Res Function(MaystroCreateOrderRequest) _then) = _$MaystroCreateOrderRequestCopyWithImpl;
@useResult
$Res call({
 String? externalId, MaystroCustomer customer, MaystroDeliveryAddress deliveryAddress, List<MaystroOrderedProduct> orderedProducts, double amount, String? description, String? stateCode, String? cityCode
});


$MaystroCustomerCopyWith<$Res> get customer;$MaystroDeliveryAddressCopyWith<$Res> get deliveryAddress;

}
/// @nodoc
class _$MaystroCreateOrderRequestCopyWithImpl<$Res>
    implements $MaystroCreateOrderRequestCopyWith<$Res> {
  _$MaystroCreateOrderRequestCopyWithImpl(this._self, this._then);

  final MaystroCreateOrderRequest _self;
  final $Res Function(MaystroCreateOrderRequest) _then;

/// Create a copy of MaystroCreateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? externalId = freezed,Object? customer = null,Object? deliveryAddress = null,Object? orderedProducts = null,Object? amount = null,Object? description = freezed,Object? stateCode = freezed,Object? cityCode = freezed,}) {
  return _then(_self.copyWith(
externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as MaystroCustomer,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as MaystroDeliveryAddress,orderedProducts: null == orderedProducts ? _self.orderedProducts : orderedProducts // ignore: cast_nullable_to_non_nullable
as List<MaystroOrderedProduct>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,cityCode: freezed == cityCode ? _self.cityCode : cityCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MaystroCreateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaystroCustomerCopyWith<$Res> get customer {
  
  return $MaystroCustomerCopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of MaystroCreateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaystroDeliveryAddressCopyWith<$Res> get deliveryAddress {
  
  return $MaystroDeliveryAddressCopyWith<$Res>(_self.deliveryAddress, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [MaystroCreateOrderRequest].
extension MaystroCreateOrderRequestPatterns on MaystroCreateOrderRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaystroCreateOrderRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaystroCreateOrderRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaystroCreateOrderRequest value)  $default,){
final _that = this;
switch (_that) {
case _MaystroCreateOrderRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaystroCreateOrderRequest value)?  $default,){
final _that = this;
switch (_that) {
case _MaystroCreateOrderRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? externalId,  MaystroCustomer customer,  MaystroDeliveryAddress deliveryAddress,  List<MaystroOrderedProduct> orderedProducts,  double amount,  String? description,  String? stateCode,  String? cityCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaystroCreateOrderRequest() when $default != null:
return $default(_that.externalId,_that.customer,_that.deliveryAddress,_that.orderedProducts,_that.amount,_that.description,_that.stateCode,_that.cityCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? externalId,  MaystroCustomer customer,  MaystroDeliveryAddress deliveryAddress,  List<MaystroOrderedProduct> orderedProducts,  double amount,  String? description,  String? stateCode,  String? cityCode)  $default,) {final _that = this;
switch (_that) {
case _MaystroCreateOrderRequest():
return $default(_that.externalId,_that.customer,_that.deliveryAddress,_that.orderedProducts,_that.amount,_that.description,_that.stateCode,_that.cityCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? externalId,  MaystroCustomer customer,  MaystroDeliveryAddress deliveryAddress,  List<MaystroOrderedProduct> orderedProducts,  double amount,  String? description,  String? stateCode,  String? cityCode)?  $default,) {final _that = this;
switch (_that) {
case _MaystroCreateOrderRequest() when $default != null:
return $default(_that.externalId,_that.customer,_that.deliveryAddress,_that.orderedProducts,_that.amount,_that.description,_that.stateCode,_that.cityCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaystroCreateOrderRequest extends MaystroCreateOrderRequest {
  const _MaystroCreateOrderRequest({this.externalId, required this.customer, required this.deliveryAddress, required final  List<MaystroOrderedProduct> orderedProducts, required this.amount, this.description, this.stateCode, this.cityCode}): _orderedProducts = orderedProducts,super._();
  factory _MaystroCreateOrderRequest.fromJson(Map<String, dynamic> json) => _$MaystroCreateOrderRequestFromJson(json);

@override final  String? externalId;
@override final  MaystroCustomer customer;
@override final  MaystroDeliveryAddress deliveryAddress;
 final  List<MaystroOrderedProduct> _orderedProducts;
@override List<MaystroOrderedProduct> get orderedProducts {
  if (_orderedProducts is EqualUnmodifiableListView) return _orderedProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orderedProducts);
}

@override final  double amount;
@override final  String? description;
@override final  String? stateCode;
@override final  String? cityCode;

/// Create a copy of MaystroCreateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaystroCreateOrderRequestCopyWith<_MaystroCreateOrderRequest> get copyWith => __$MaystroCreateOrderRequestCopyWithImpl<_MaystroCreateOrderRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaystroCreateOrderRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaystroCreateOrderRequest&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&const DeepCollectionEquality().equals(other._orderedProducts, _orderedProducts)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.cityCode, cityCode) || other.cityCode == cityCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,externalId,customer,deliveryAddress,const DeepCollectionEquality().hash(_orderedProducts),amount,description,stateCode,cityCode);

@override
String toString() {
  return 'MaystroCreateOrderRequest(externalId: $externalId, customer: $customer, deliveryAddress: $deliveryAddress, orderedProducts: $orderedProducts, amount: $amount, description: $description, stateCode: $stateCode, cityCode: $cityCode)';
}


}

/// @nodoc
abstract mixin class _$MaystroCreateOrderRequestCopyWith<$Res> implements $MaystroCreateOrderRequestCopyWith<$Res> {
  factory _$MaystroCreateOrderRequestCopyWith(_MaystroCreateOrderRequest value, $Res Function(_MaystroCreateOrderRequest) _then) = __$MaystroCreateOrderRequestCopyWithImpl;
@override @useResult
$Res call({
 String? externalId, MaystroCustomer customer, MaystroDeliveryAddress deliveryAddress, List<MaystroOrderedProduct> orderedProducts, double amount, String? description, String? stateCode, String? cityCode
});


@override $MaystroCustomerCopyWith<$Res> get customer;@override $MaystroDeliveryAddressCopyWith<$Res> get deliveryAddress;

}
/// @nodoc
class __$MaystroCreateOrderRequestCopyWithImpl<$Res>
    implements _$MaystroCreateOrderRequestCopyWith<$Res> {
  __$MaystroCreateOrderRequestCopyWithImpl(this._self, this._then);

  final _MaystroCreateOrderRequest _self;
  final $Res Function(_MaystroCreateOrderRequest) _then;

/// Create a copy of MaystroCreateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? externalId = freezed,Object? customer = null,Object? deliveryAddress = null,Object? orderedProducts = null,Object? amount = null,Object? description = freezed,Object? stateCode = freezed,Object? cityCode = freezed,}) {
  return _then(_MaystroCreateOrderRequest(
externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as MaystroCustomer,deliveryAddress: null == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as MaystroDeliveryAddress,orderedProducts: null == orderedProducts ? _self._orderedProducts : orderedProducts // ignore: cast_nullable_to_non_nullable
as List<MaystroOrderedProduct>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,cityCode: freezed == cityCode ? _self.cityCode : cityCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MaystroCreateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaystroCustomerCopyWith<$Res> get customer {
  
  return $MaystroCustomerCopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of MaystroCreateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaystroDeliveryAddressCopyWith<$Res> get deliveryAddress {
  
  return $MaystroDeliveryAddressCopyWith<$Res>(_self.deliveryAddress, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}
}


/// @nodoc
mixin _$MaystroCreateOrderResponse {

 String get orderId; String? get trackingNumber; String? get externalId; bool get success;
/// Create a copy of MaystroCreateOrderResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaystroCreateOrderResponseCopyWith<MaystroCreateOrderResponse> get copyWith => _$MaystroCreateOrderResponseCopyWithImpl<MaystroCreateOrderResponse>(this as MaystroCreateOrderResponse, _$identity);

  /// Serializes this MaystroCreateOrderResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaystroCreateOrderResponse&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,trackingNumber,externalId,success);

@override
String toString() {
  return 'MaystroCreateOrderResponse(orderId: $orderId, trackingNumber: $trackingNumber, externalId: $externalId, success: $success)';
}


}

/// @nodoc
abstract mixin class $MaystroCreateOrderResponseCopyWith<$Res>  {
  factory $MaystroCreateOrderResponseCopyWith(MaystroCreateOrderResponse value, $Res Function(MaystroCreateOrderResponse) _then) = _$MaystroCreateOrderResponseCopyWithImpl;
@useResult
$Res call({
 String orderId, String? trackingNumber, String? externalId, bool success
});




}
/// @nodoc
class _$MaystroCreateOrderResponseCopyWithImpl<$Res>
    implements $MaystroCreateOrderResponseCopyWith<$Res> {
  _$MaystroCreateOrderResponseCopyWithImpl(this._self, this._then);

  final MaystroCreateOrderResponse _self;
  final $Res Function(MaystroCreateOrderResponse) _then;

/// Create a copy of MaystroCreateOrderResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? trackingNumber = freezed,Object? externalId = freezed,Object? success = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MaystroCreateOrderResponse].
extension MaystroCreateOrderResponsePatterns on MaystroCreateOrderResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaystroCreateOrderResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaystroCreateOrderResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaystroCreateOrderResponse value)  $default,){
final _that = this;
switch (_that) {
case _MaystroCreateOrderResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaystroCreateOrderResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MaystroCreateOrderResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  String? trackingNumber,  String? externalId,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaystroCreateOrderResponse() when $default != null:
return $default(_that.orderId,_that.trackingNumber,_that.externalId,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  String? trackingNumber,  String? externalId,  bool success)  $default,) {final _that = this;
switch (_that) {
case _MaystroCreateOrderResponse():
return $default(_that.orderId,_that.trackingNumber,_that.externalId,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  String? trackingNumber,  String? externalId,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _MaystroCreateOrderResponse() when $default != null:
return $default(_that.orderId,_that.trackingNumber,_that.externalId,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaystroCreateOrderResponse extends MaystroCreateOrderResponse {
  const _MaystroCreateOrderResponse({required this.orderId, this.trackingNumber, this.externalId, this.success = true}): super._();
  factory _MaystroCreateOrderResponse.fromJson(Map<String, dynamic> json) => _$MaystroCreateOrderResponseFromJson(json);

@override final  String orderId;
@override final  String? trackingNumber;
@override final  String? externalId;
@override@JsonKey() final  bool success;

/// Create a copy of MaystroCreateOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaystroCreateOrderResponseCopyWith<_MaystroCreateOrderResponse> get copyWith => __$MaystroCreateOrderResponseCopyWithImpl<_MaystroCreateOrderResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaystroCreateOrderResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaystroCreateOrderResponse&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,trackingNumber,externalId,success);

@override
String toString() {
  return 'MaystroCreateOrderResponse(orderId: $orderId, trackingNumber: $trackingNumber, externalId: $externalId, success: $success)';
}


}

/// @nodoc
abstract mixin class _$MaystroCreateOrderResponseCopyWith<$Res> implements $MaystroCreateOrderResponseCopyWith<$Res> {
  factory _$MaystroCreateOrderResponseCopyWith(_MaystroCreateOrderResponse value, $Res Function(_MaystroCreateOrderResponse) _then) = __$MaystroCreateOrderResponseCopyWithImpl;
@override @useResult
$Res call({
 String orderId, String? trackingNumber, String? externalId, bool success
});




}
/// @nodoc
class __$MaystroCreateOrderResponseCopyWithImpl<$Res>
    implements _$MaystroCreateOrderResponseCopyWith<$Res> {
  __$MaystroCreateOrderResponseCopyWithImpl(this._self, this._then);

  final _MaystroCreateOrderResponse _self;
  final $Res Function(_MaystroCreateOrderResponse) _then;

/// Create a copy of MaystroCreateOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? trackingNumber = freezed,Object? externalId = freezed,Object? success = null,}) {
  return _then(_MaystroCreateOrderResponse(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$MaystroIndividualLabel {

 String? get trackingNumber; String get fileUrl;
/// Create a copy of MaystroIndividualLabel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaystroIndividualLabelCopyWith<MaystroIndividualLabel> get copyWith => _$MaystroIndividualLabelCopyWithImpl<MaystroIndividualLabel>(this as MaystroIndividualLabel, _$identity);

  /// Serializes this MaystroIndividualLabel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaystroIndividualLabel&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trackingNumber,fileUrl);

@override
String toString() {
  return 'MaystroIndividualLabel(trackingNumber: $trackingNumber, fileUrl: $fileUrl)';
}


}

/// @nodoc
abstract mixin class $MaystroIndividualLabelCopyWith<$Res>  {
  factory $MaystroIndividualLabelCopyWith(MaystroIndividualLabel value, $Res Function(MaystroIndividualLabel) _then) = _$MaystroIndividualLabelCopyWithImpl;
@useResult
$Res call({
 String? trackingNumber, String fileUrl
});




}
/// @nodoc
class _$MaystroIndividualLabelCopyWithImpl<$Res>
    implements $MaystroIndividualLabelCopyWith<$Res> {
  _$MaystroIndividualLabelCopyWithImpl(this._self, this._then);

  final MaystroIndividualLabel _self;
  final $Res Function(MaystroIndividualLabel) _then;

/// Create a copy of MaystroIndividualLabel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trackingNumber = freezed,Object? fileUrl = null,}) {
  return _then(_self.copyWith(
trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MaystroIndividualLabel].
extension MaystroIndividualLabelPatterns on MaystroIndividualLabel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaystroIndividualLabel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaystroIndividualLabel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaystroIndividualLabel value)  $default,){
final _that = this;
switch (_that) {
case _MaystroIndividualLabel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaystroIndividualLabel value)?  $default,){
final _that = this;
switch (_that) {
case _MaystroIndividualLabel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? trackingNumber,  String fileUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaystroIndividualLabel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? trackingNumber,  String fileUrl)  $default,) {final _that = this;
switch (_that) {
case _MaystroIndividualLabel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? trackingNumber,  String fileUrl)?  $default,) {final _that = this;
switch (_that) {
case _MaystroIndividualLabel() when $default != null:
return $default(_that.trackingNumber,_that.fileUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaystroIndividualLabel extends MaystroIndividualLabel {
  const _MaystroIndividualLabel({this.trackingNumber, required this.fileUrl}): super._();
  factory _MaystroIndividualLabel.fromJson(Map<String, dynamic> json) => _$MaystroIndividualLabelFromJson(json);

@override final  String? trackingNumber;
@override final  String fileUrl;

/// Create a copy of MaystroIndividualLabel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaystroIndividualLabelCopyWith<_MaystroIndividualLabel> get copyWith => __$MaystroIndividualLabelCopyWithImpl<_MaystroIndividualLabel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaystroIndividualLabelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaystroIndividualLabel&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trackingNumber,fileUrl);

@override
String toString() {
  return 'MaystroIndividualLabel(trackingNumber: $trackingNumber, fileUrl: $fileUrl)';
}


}

/// @nodoc
abstract mixin class _$MaystroIndividualLabelCopyWith<$Res> implements $MaystroIndividualLabelCopyWith<$Res> {
  factory _$MaystroIndividualLabelCopyWith(_MaystroIndividualLabel value, $Res Function(_MaystroIndividualLabel) _then) = __$MaystroIndividualLabelCopyWithImpl;
@override @useResult
$Res call({
 String? trackingNumber, String fileUrl
});




}
/// @nodoc
class __$MaystroIndividualLabelCopyWithImpl<$Res>
    implements _$MaystroIndividualLabelCopyWith<$Res> {
  __$MaystroIndividualLabelCopyWithImpl(this._self, this._then);

  final _MaystroIndividualLabel _self;
  final $Res Function(_MaystroIndividualLabel) _then;

/// Create a copy of MaystroIndividualLabel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trackingNumber = freezed,Object? fileUrl = null,}) {
  return _then(_MaystroIndividualLabel(
trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MaystroIndividualLabelsResponse {

 List<MaystroIndividualLabel> get parcelLabelFiles; List<String> get failedTrackingNumbers;
/// Create a copy of MaystroIndividualLabelsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaystroIndividualLabelsResponseCopyWith<MaystroIndividualLabelsResponse> get copyWith => _$MaystroIndividualLabelsResponseCopyWithImpl<MaystroIndividualLabelsResponse>(this as MaystroIndividualLabelsResponse, _$identity);

  /// Serializes this MaystroIndividualLabelsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaystroIndividualLabelsResponse&&const DeepCollectionEquality().equals(other.parcelLabelFiles, parcelLabelFiles)&&const DeepCollectionEquality().equals(other.failedTrackingNumbers, failedTrackingNumbers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(parcelLabelFiles),const DeepCollectionEquality().hash(failedTrackingNumbers));

@override
String toString() {
  return 'MaystroIndividualLabelsResponse(parcelLabelFiles: $parcelLabelFiles, failedTrackingNumbers: $failedTrackingNumbers)';
}


}

/// @nodoc
abstract mixin class $MaystroIndividualLabelsResponseCopyWith<$Res>  {
  factory $MaystroIndividualLabelsResponseCopyWith(MaystroIndividualLabelsResponse value, $Res Function(MaystroIndividualLabelsResponse) _then) = _$MaystroIndividualLabelsResponseCopyWithImpl;
@useResult
$Res call({
 List<MaystroIndividualLabel> parcelLabelFiles, List<String> failedTrackingNumbers
});




}
/// @nodoc
class _$MaystroIndividualLabelsResponseCopyWithImpl<$Res>
    implements $MaystroIndividualLabelsResponseCopyWith<$Res> {
  _$MaystroIndividualLabelsResponseCopyWithImpl(this._self, this._then);

  final MaystroIndividualLabelsResponse _self;
  final $Res Function(MaystroIndividualLabelsResponse) _then;

/// Create a copy of MaystroIndividualLabelsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parcelLabelFiles = null,Object? failedTrackingNumbers = null,}) {
  return _then(_self.copyWith(
parcelLabelFiles: null == parcelLabelFiles ? _self.parcelLabelFiles : parcelLabelFiles // ignore: cast_nullable_to_non_nullable
as List<MaystroIndividualLabel>,failedTrackingNumbers: null == failedTrackingNumbers ? _self.failedTrackingNumbers : failedTrackingNumbers // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MaystroIndividualLabelsResponse].
extension MaystroIndividualLabelsResponsePatterns on MaystroIndividualLabelsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaystroIndividualLabelsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaystroIndividualLabelsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaystroIndividualLabelsResponse value)  $default,){
final _that = this;
switch (_that) {
case _MaystroIndividualLabelsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaystroIndividualLabelsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MaystroIndividualLabelsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MaystroIndividualLabel> parcelLabelFiles,  List<String> failedTrackingNumbers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaystroIndividualLabelsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MaystroIndividualLabel> parcelLabelFiles,  List<String> failedTrackingNumbers)  $default,) {final _that = this;
switch (_that) {
case _MaystroIndividualLabelsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MaystroIndividualLabel> parcelLabelFiles,  List<String> failedTrackingNumbers)?  $default,) {final _that = this;
switch (_that) {
case _MaystroIndividualLabelsResponse() when $default != null:
return $default(_that.parcelLabelFiles,_that.failedTrackingNumbers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaystroIndividualLabelsResponse extends MaystroIndividualLabelsResponse {
  const _MaystroIndividualLabelsResponse({final  List<MaystroIndividualLabel> parcelLabelFiles = const [], final  List<String> failedTrackingNumbers = const []}): _parcelLabelFiles = parcelLabelFiles,_failedTrackingNumbers = failedTrackingNumbers,super._();
  factory _MaystroIndividualLabelsResponse.fromJson(Map<String, dynamic> json) => _$MaystroIndividualLabelsResponseFromJson(json);

 final  List<MaystroIndividualLabel> _parcelLabelFiles;
@override@JsonKey() List<MaystroIndividualLabel> get parcelLabelFiles {
  if (_parcelLabelFiles is EqualUnmodifiableListView) return _parcelLabelFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parcelLabelFiles);
}

 final  List<String> _failedTrackingNumbers;
@override@JsonKey() List<String> get failedTrackingNumbers {
  if (_failedTrackingNumbers is EqualUnmodifiableListView) return _failedTrackingNumbers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_failedTrackingNumbers);
}


/// Create a copy of MaystroIndividualLabelsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaystroIndividualLabelsResponseCopyWith<_MaystroIndividualLabelsResponse> get copyWith => __$MaystroIndividualLabelsResponseCopyWithImpl<_MaystroIndividualLabelsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaystroIndividualLabelsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaystroIndividualLabelsResponse&&const DeepCollectionEquality().equals(other._parcelLabelFiles, _parcelLabelFiles)&&const DeepCollectionEquality().equals(other._failedTrackingNumbers, _failedTrackingNumbers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_parcelLabelFiles),const DeepCollectionEquality().hash(_failedTrackingNumbers));

@override
String toString() {
  return 'MaystroIndividualLabelsResponse(parcelLabelFiles: $parcelLabelFiles, failedTrackingNumbers: $failedTrackingNumbers)';
}


}

/// @nodoc
abstract mixin class _$MaystroIndividualLabelsResponseCopyWith<$Res> implements $MaystroIndividualLabelsResponseCopyWith<$Res> {
  factory _$MaystroIndividualLabelsResponseCopyWith(_MaystroIndividualLabelsResponse value, $Res Function(_MaystroIndividualLabelsResponse) _then) = __$MaystroIndividualLabelsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<MaystroIndividualLabel> parcelLabelFiles, List<String> failedTrackingNumbers
});




}
/// @nodoc
class __$MaystroIndividualLabelsResponseCopyWithImpl<$Res>
    implements _$MaystroIndividualLabelsResponseCopyWith<$Res> {
  __$MaystroIndividualLabelsResponseCopyWithImpl(this._self, this._then);

  final _MaystroIndividualLabelsResponse _self;
  final $Res Function(_MaystroIndividualLabelsResponse) _then;

/// Create a copy of MaystroIndividualLabelsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parcelLabelFiles = null,Object? failedTrackingNumbers = null,}) {
  return _then(_MaystroIndividualLabelsResponse(
parcelLabelFiles: null == parcelLabelFiles ? _self._parcelLabelFiles : parcelLabelFiles // ignore: cast_nullable_to_non_nullable
as List<MaystroIndividualLabel>,failedTrackingNumbers: null == failedTrackingNumbers ? _self._failedTrackingNumbers : failedTrackingNumbers // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
