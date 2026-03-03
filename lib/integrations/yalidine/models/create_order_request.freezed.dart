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
mixin _$YalidineOrderCreateRequest {

@JsonKey(name: 'order_id') String get orderId;@JsonKey(name: 'from_wilaya_name') String get fromWilayaName;@JsonKey(name: 'firstname') String get firstName;@JsonKey(name: 'familyname') String get familyName;@JsonKey(name: 'contact_phone') String get contactPhone;@JsonKey(name: 'address') String get address;@JsonKey(name: 'to_commune_name') String get toCommuneName;@JsonKey(name: 'to_wilaya_name') String get toWilayaName;@JsonKey(name: 'product_list') String get productList;@JsonKey(name: 'price') int get price;@JsonKey(name: 'do_insurance') bool get doInsurance;@JsonKey(name: 'declared_value') int get declaredValue;@JsonKey(name: 'height') int get height;@JsonKey(name: 'width') int get width;@JsonKey(name: 'length') int get length;@JsonKey(name: 'weight') int get weight;@JsonKey(name: 'freeshipping') bool get freeShipping;@JsonKey(name: 'is_stopdesk') bool get isStopDesk;@JsonKey(name: 'stopdesk_id') String? get stopDeskId;@JsonKey(name: 'has_exchange') bool get hasExchange;@JsonKey(name: 'product_to_collect') String? get productToCollect;/// State code for backend territory resolution (e.g., "09" for Blida)
/// This is used by the backend to resolve the actual wilaya/commune names
@JsonKey(name: 'state_code') String? get stateCode;/// City code for backend territory resolution
/// This is used by the backend to resolve the actual commune name
@JsonKey(name: 'city_code') String? get cityCode;
/// Create a copy of YalidineOrderCreateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YalidineOrderCreateRequestCopyWith<YalidineOrderCreateRequest> get copyWith => _$YalidineOrderCreateRequestCopyWithImpl<YalidineOrderCreateRequest>(this as YalidineOrderCreateRequest, _$identity);

  /// Serializes this YalidineOrderCreateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YalidineOrderCreateRequest&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.fromWilayaName, fromWilayaName) || other.fromWilayaName == fromWilayaName)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.familyName, familyName) || other.familyName == familyName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.address, address) || other.address == address)&&(identical(other.toCommuneName, toCommuneName) || other.toCommuneName == toCommuneName)&&(identical(other.toWilayaName, toWilayaName) || other.toWilayaName == toWilayaName)&&(identical(other.productList, productList) || other.productList == productList)&&(identical(other.price, price) || other.price == price)&&(identical(other.doInsurance, doInsurance) || other.doInsurance == doInsurance)&&(identical(other.declaredValue, declaredValue) || other.declaredValue == declaredValue)&&(identical(other.height, height) || other.height == height)&&(identical(other.width, width) || other.width == width)&&(identical(other.length, length) || other.length == length)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.freeShipping, freeShipping) || other.freeShipping == freeShipping)&&(identical(other.isStopDesk, isStopDesk) || other.isStopDesk == isStopDesk)&&(identical(other.stopDeskId, stopDeskId) || other.stopDeskId == stopDeskId)&&(identical(other.hasExchange, hasExchange) || other.hasExchange == hasExchange)&&(identical(other.productToCollect, productToCollect) || other.productToCollect == productToCollect)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.cityCode, cityCode) || other.cityCode == cityCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,orderId,fromWilayaName,firstName,familyName,contactPhone,address,toCommuneName,toWilayaName,productList,price,doInsurance,declaredValue,height,width,length,weight,freeShipping,isStopDesk,stopDeskId,hasExchange,productToCollect,stateCode,cityCode]);

@override
String toString() {
  return 'YalidineOrderCreateRequest(orderId: $orderId, fromWilayaName: $fromWilayaName, firstName: $firstName, familyName: $familyName, contactPhone: $contactPhone, address: $address, toCommuneName: $toCommuneName, toWilayaName: $toWilayaName, productList: $productList, price: $price, doInsurance: $doInsurance, declaredValue: $declaredValue, height: $height, width: $width, length: $length, weight: $weight, freeShipping: $freeShipping, isStopDesk: $isStopDesk, stopDeskId: $stopDeskId, hasExchange: $hasExchange, productToCollect: $productToCollect, stateCode: $stateCode, cityCode: $cityCode)';
}


}

/// @nodoc
abstract mixin class $YalidineOrderCreateRequestCopyWith<$Res>  {
  factory $YalidineOrderCreateRequestCopyWith(YalidineOrderCreateRequest value, $Res Function(YalidineOrderCreateRequest) _then) = _$YalidineOrderCreateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'from_wilaya_name') String fromWilayaName,@JsonKey(name: 'firstname') String firstName,@JsonKey(name: 'familyname') String familyName,@JsonKey(name: 'contact_phone') String contactPhone,@JsonKey(name: 'address') String address,@JsonKey(name: 'to_commune_name') String toCommuneName,@JsonKey(name: 'to_wilaya_name') String toWilayaName,@JsonKey(name: 'product_list') String productList,@JsonKey(name: 'price') int price,@JsonKey(name: 'do_insurance') bool doInsurance,@JsonKey(name: 'declared_value') int declaredValue,@JsonKey(name: 'height') int height,@JsonKey(name: 'width') int width,@JsonKey(name: 'length') int length,@JsonKey(name: 'weight') int weight,@JsonKey(name: 'freeshipping') bool freeShipping,@JsonKey(name: 'is_stopdesk') bool isStopDesk,@JsonKey(name: 'stopdesk_id') String? stopDeskId,@JsonKey(name: 'has_exchange') bool hasExchange,@JsonKey(name: 'product_to_collect') String? productToCollect,@JsonKey(name: 'state_code') String? stateCode,@JsonKey(name: 'city_code') String? cityCode
});




}
/// @nodoc
class _$YalidineOrderCreateRequestCopyWithImpl<$Res>
    implements $YalidineOrderCreateRequestCopyWith<$Res> {
  _$YalidineOrderCreateRequestCopyWithImpl(this._self, this._then);

  final YalidineOrderCreateRequest _self;
  final $Res Function(YalidineOrderCreateRequest) _then;

/// Create a copy of YalidineOrderCreateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? fromWilayaName = null,Object? firstName = null,Object? familyName = null,Object? contactPhone = null,Object? address = null,Object? toCommuneName = null,Object? toWilayaName = null,Object? productList = null,Object? price = null,Object? doInsurance = null,Object? declaredValue = null,Object? height = null,Object? width = null,Object? length = null,Object? weight = null,Object? freeShipping = null,Object? isStopDesk = null,Object? stopDeskId = freezed,Object? hasExchange = null,Object? productToCollect = freezed,Object? stateCode = freezed,Object? cityCode = freezed,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,fromWilayaName: null == fromWilayaName ? _self.fromWilayaName : fromWilayaName // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,familyName: null == familyName ? _self.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String,contactPhone: null == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,toCommuneName: null == toCommuneName ? _self.toCommuneName : toCommuneName // ignore: cast_nullable_to_non_nullable
as String,toWilayaName: null == toWilayaName ? _self.toWilayaName : toWilayaName // ignore: cast_nullable_to_non_nullable
as String,productList: null == productList ? _self.productList : productList // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,doInsurance: null == doInsurance ? _self.doInsurance : doInsurance // ignore: cast_nullable_to_non_nullable
as bool,declaredValue: null == declaredValue ? _self.declaredValue : declaredValue // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,freeShipping: null == freeShipping ? _self.freeShipping : freeShipping // ignore: cast_nullable_to_non_nullable
as bool,isStopDesk: null == isStopDesk ? _self.isStopDesk : isStopDesk // ignore: cast_nullable_to_non_nullable
as bool,stopDeskId: freezed == stopDeskId ? _self.stopDeskId : stopDeskId // ignore: cast_nullable_to_non_nullable
as String?,hasExchange: null == hasExchange ? _self.hasExchange : hasExchange // ignore: cast_nullable_to_non_nullable
as bool,productToCollect: freezed == productToCollect ? _self.productToCollect : productToCollect // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,cityCode: freezed == cityCode ? _self.cityCode : cityCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [YalidineOrderCreateRequest].
extension YalidineOrderCreateRequestPatterns on YalidineOrderCreateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YalidineOrderCreateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YalidineOrderCreateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YalidineOrderCreateRequest value)  $default,){
final _that = this;
switch (_that) {
case _YalidineOrderCreateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YalidineOrderCreateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _YalidineOrderCreateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'from_wilaya_name')  String fromWilayaName, @JsonKey(name: 'firstname')  String firstName, @JsonKey(name: 'familyname')  String familyName, @JsonKey(name: 'contact_phone')  String contactPhone, @JsonKey(name: 'address')  String address, @JsonKey(name: 'to_commune_name')  String toCommuneName, @JsonKey(name: 'to_wilaya_name')  String toWilayaName, @JsonKey(name: 'product_list')  String productList, @JsonKey(name: 'price')  int price, @JsonKey(name: 'do_insurance')  bool doInsurance, @JsonKey(name: 'declared_value')  int declaredValue, @JsonKey(name: 'height')  int height, @JsonKey(name: 'width')  int width, @JsonKey(name: 'length')  int length, @JsonKey(name: 'weight')  int weight, @JsonKey(name: 'freeshipping')  bool freeShipping, @JsonKey(name: 'is_stopdesk')  bool isStopDesk, @JsonKey(name: 'stopdesk_id')  String? stopDeskId, @JsonKey(name: 'has_exchange')  bool hasExchange, @JsonKey(name: 'product_to_collect')  String? productToCollect, @JsonKey(name: 'state_code')  String? stateCode, @JsonKey(name: 'city_code')  String? cityCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YalidineOrderCreateRequest() when $default != null:
return $default(_that.orderId,_that.fromWilayaName,_that.firstName,_that.familyName,_that.contactPhone,_that.address,_that.toCommuneName,_that.toWilayaName,_that.productList,_that.price,_that.doInsurance,_that.declaredValue,_that.height,_that.width,_that.length,_that.weight,_that.freeShipping,_that.isStopDesk,_that.stopDeskId,_that.hasExchange,_that.productToCollect,_that.stateCode,_that.cityCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'from_wilaya_name')  String fromWilayaName, @JsonKey(name: 'firstname')  String firstName, @JsonKey(name: 'familyname')  String familyName, @JsonKey(name: 'contact_phone')  String contactPhone, @JsonKey(name: 'address')  String address, @JsonKey(name: 'to_commune_name')  String toCommuneName, @JsonKey(name: 'to_wilaya_name')  String toWilayaName, @JsonKey(name: 'product_list')  String productList, @JsonKey(name: 'price')  int price, @JsonKey(name: 'do_insurance')  bool doInsurance, @JsonKey(name: 'declared_value')  int declaredValue, @JsonKey(name: 'height')  int height, @JsonKey(name: 'width')  int width, @JsonKey(name: 'length')  int length, @JsonKey(name: 'weight')  int weight, @JsonKey(name: 'freeshipping')  bool freeShipping, @JsonKey(name: 'is_stopdesk')  bool isStopDesk, @JsonKey(name: 'stopdesk_id')  String? stopDeskId, @JsonKey(name: 'has_exchange')  bool hasExchange, @JsonKey(name: 'product_to_collect')  String? productToCollect, @JsonKey(name: 'state_code')  String? stateCode, @JsonKey(name: 'city_code')  String? cityCode)  $default,) {final _that = this;
switch (_that) {
case _YalidineOrderCreateRequest():
return $default(_that.orderId,_that.fromWilayaName,_that.firstName,_that.familyName,_that.contactPhone,_that.address,_that.toCommuneName,_that.toWilayaName,_that.productList,_that.price,_that.doInsurance,_that.declaredValue,_that.height,_that.width,_that.length,_that.weight,_that.freeShipping,_that.isStopDesk,_that.stopDeskId,_that.hasExchange,_that.productToCollect,_that.stateCode,_that.cityCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'from_wilaya_name')  String fromWilayaName, @JsonKey(name: 'firstname')  String firstName, @JsonKey(name: 'familyname')  String familyName, @JsonKey(name: 'contact_phone')  String contactPhone, @JsonKey(name: 'address')  String address, @JsonKey(name: 'to_commune_name')  String toCommuneName, @JsonKey(name: 'to_wilaya_name')  String toWilayaName, @JsonKey(name: 'product_list')  String productList, @JsonKey(name: 'price')  int price, @JsonKey(name: 'do_insurance')  bool doInsurance, @JsonKey(name: 'declared_value')  int declaredValue, @JsonKey(name: 'height')  int height, @JsonKey(name: 'width')  int width, @JsonKey(name: 'length')  int length, @JsonKey(name: 'weight')  int weight, @JsonKey(name: 'freeshipping')  bool freeShipping, @JsonKey(name: 'is_stopdesk')  bool isStopDesk, @JsonKey(name: 'stopdesk_id')  String? stopDeskId, @JsonKey(name: 'has_exchange')  bool hasExchange, @JsonKey(name: 'product_to_collect')  String? productToCollect, @JsonKey(name: 'state_code')  String? stateCode, @JsonKey(name: 'city_code')  String? cityCode)?  $default,) {final _that = this;
switch (_that) {
case _YalidineOrderCreateRequest() when $default != null:
return $default(_that.orderId,_that.fromWilayaName,_that.firstName,_that.familyName,_that.contactPhone,_that.address,_that.toCommuneName,_that.toWilayaName,_that.productList,_that.price,_that.doInsurance,_that.declaredValue,_that.height,_that.width,_that.length,_that.weight,_that.freeShipping,_that.isStopDesk,_that.stopDeskId,_that.hasExchange,_that.productToCollect,_that.stateCode,_that.cityCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _YalidineOrderCreateRequest implements YalidineOrderCreateRequest {
   _YalidineOrderCreateRequest({@JsonKey(name: 'order_id') required this.orderId, @JsonKey(name: 'from_wilaya_name') required this.fromWilayaName, @JsonKey(name: 'firstname') required this.firstName, @JsonKey(name: 'familyname') required this.familyName, @JsonKey(name: 'contact_phone') required this.contactPhone, @JsonKey(name: 'address') required this.address, @JsonKey(name: 'to_commune_name') required this.toCommuneName, @JsonKey(name: 'to_wilaya_name') required this.toWilayaName, @JsonKey(name: 'product_list') required this.productList, @JsonKey(name: 'price') required this.price, @JsonKey(name: 'do_insurance') required this.doInsurance, @JsonKey(name: 'declared_value') required this.declaredValue, @JsonKey(name: 'height') required this.height, @JsonKey(name: 'width') required this.width, @JsonKey(name: 'length') required this.length, @JsonKey(name: 'weight') required this.weight, @JsonKey(name: 'freeshipping') required this.freeShipping, @JsonKey(name: 'is_stopdesk') required this.isStopDesk, @JsonKey(name: 'stopdesk_id') this.stopDeskId, @JsonKey(name: 'has_exchange') required this.hasExchange, @JsonKey(name: 'product_to_collect') this.productToCollect, @JsonKey(name: 'state_code') this.stateCode, @JsonKey(name: 'city_code') this.cityCode});
  factory _YalidineOrderCreateRequest.fromJson(Map<String, dynamic> json) => _$YalidineOrderCreateRequestFromJson(json);

@override@JsonKey(name: 'order_id') final  String orderId;
@override@JsonKey(name: 'from_wilaya_name') final  String fromWilayaName;
@override@JsonKey(name: 'firstname') final  String firstName;
@override@JsonKey(name: 'familyname') final  String familyName;
@override@JsonKey(name: 'contact_phone') final  String contactPhone;
@override@JsonKey(name: 'address') final  String address;
@override@JsonKey(name: 'to_commune_name') final  String toCommuneName;
@override@JsonKey(name: 'to_wilaya_name') final  String toWilayaName;
@override@JsonKey(name: 'product_list') final  String productList;
@override@JsonKey(name: 'price') final  int price;
@override@JsonKey(name: 'do_insurance') final  bool doInsurance;
@override@JsonKey(name: 'declared_value') final  int declaredValue;
@override@JsonKey(name: 'height') final  int height;
@override@JsonKey(name: 'width') final  int width;
@override@JsonKey(name: 'length') final  int length;
@override@JsonKey(name: 'weight') final  int weight;
@override@JsonKey(name: 'freeshipping') final  bool freeShipping;
@override@JsonKey(name: 'is_stopdesk') final  bool isStopDesk;
@override@JsonKey(name: 'stopdesk_id') final  String? stopDeskId;
@override@JsonKey(name: 'has_exchange') final  bool hasExchange;
@override@JsonKey(name: 'product_to_collect') final  String? productToCollect;
/// State code for backend territory resolution (e.g., "09" for Blida)
/// This is used by the backend to resolve the actual wilaya/commune names
@override@JsonKey(name: 'state_code') final  String? stateCode;
/// City code for backend territory resolution
/// This is used by the backend to resolve the actual commune name
@override@JsonKey(name: 'city_code') final  String? cityCode;

/// Create a copy of YalidineOrderCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YalidineOrderCreateRequestCopyWith<_YalidineOrderCreateRequest> get copyWith => __$YalidineOrderCreateRequestCopyWithImpl<_YalidineOrderCreateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YalidineOrderCreateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YalidineOrderCreateRequest&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.fromWilayaName, fromWilayaName) || other.fromWilayaName == fromWilayaName)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.familyName, familyName) || other.familyName == familyName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.address, address) || other.address == address)&&(identical(other.toCommuneName, toCommuneName) || other.toCommuneName == toCommuneName)&&(identical(other.toWilayaName, toWilayaName) || other.toWilayaName == toWilayaName)&&(identical(other.productList, productList) || other.productList == productList)&&(identical(other.price, price) || other.price == price)&&(identical(other.doInsurance, doInsurance) || other.doInsurance == doInsurance)&&(identical(other.declaredValue, declaredValue) || other.declaredValue == declaredValue)&&(identical(other.height, height) || other.height == height)&&(identical(other.width, width) || other.width == width)&&(identical(other.length, length) || other.length == length)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.freeShipping, freeShipping) || other.freeShipping == freeShipping)&&(identical(other.isStopDesk, isStopDesk) || other.isStopDesk == isStopDesk)&&(identical(other.stopDeskId, stopDeskId) || other.stopDeskId == stopDeskId)&&(identical(other.hasExchange, hasExchange) || other.hasExchange == hasExchange)&&(identical(other.productToCollect, productToCollect) || other.productToCollect == productToCollect)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.cityCode, cityCode) || other.cityCode == cityCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,orderId,fromWilayaName,firstName,familyName,contactPhone,address,toCommuneName,toWilayaName,productList,price,doInsurance,declaredValue,height,width,length,weight,freeShipping,isStopDesk,stopDeskId,hasExchange,productToCollect,stateCode,cityCode]);

@override
String toString() {
  return 'YalidineOrderCreateRequest(orderId: $orderId, fromWilayaName: $fromWilayaName, firstName: $firstName, familyName: $familyName, contactPhone: $contactPhone, address: $address, toCommuneName: $toCommuneName, toWilayaName: $toWilayaName, productList: $productList, price: $price, doInsurance: $doInsurance, declaredValue: $declaredValue, height: $height, width: $width, length: $length, weight: $weight, freeShipping: $freeShipping, isStopDesk: $isStopDesk, stopDeskId: $stopDeskId, hasExchange: $hasExchange, productToCollect: $productToCollect, stateCode: $stateCode, cityCode: $cityCode)';
}


}

/// @nodoc
abstract mixin class _$YalidineOrderCreateRequestCopyWith<$Res> implements $YalidineOrderCreateRequestCopyWith<$Res> {
  factory _$YalidineOrderCreateRequestCopyWith(_YalidineOrderCreateRequest value, $Res Function(_YalidineOrderCreateRequest) _then) = __$YalidineOrderCreateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'from_wilaya_name') String fromWilayaName,@JsonKey(name: 'firstname') String firstName,@JsonKey(name: 'familyname') String familyName,@JsonKey(name: 'contact_phone') String contactPhone,@JsonKey(name: 'address') String address,@JsonKey(name: 'to_commune_name') String toCommuneName,@JsonKey(name: 'to_wilaya_name') String toWilayaName,@JsonKey(name: 'product_list') String productList,@JsonKey(name: 'price') int price,@JsonKey(name: 'do_insurance') bool doInsurance,@JsonKey(name: 'declared_value') int declaredValue,@JsonKey(name: 'height') int height,@JsonKey(name: 'width') int width,@JsonKey(name: 'length') int length,@JsonKey(name: 'weight') int weight,@JsonKey(name: 'freeshipping') bool freeShipping,@JsonKey(name: 'is_stopdesk') bool isStopDesk,@JsonKey(name: 'stopdesk_id') String? stopDeskId,@JsonKey(name: 'has_exchange') bool hasExchange,@JsonKey(name: 'product_to_collect') String? productToCollect,@JsonKey(name: 'state_code') String? stateCode,@JsonKey(name: 'city_code') String? cityCode
});




}
/// @nodoc
class __$YalidineOrderCreateRequestCopyWithImpl<$Res>
    implements _$YalidineOrderCreateRequestCopyWith<$Res> {
  __$YalidineOrderCreateRequestCopyWithImpl(this._self, this._then);

  final _YalidineOrderCreateRequest _self;
  final $Res Function(_YalidineOrderCreateRequest) _then;

/// Create a copy of YalidineOrderCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? fromWilayaName = null,Object? firstName = null,Object? familyName = null,Object? contactPhone = null,Object? address = null,Object? toCommuneName = null,Object? toWilayaName = null,Object? productList = null,Object? price = null,Object? doInsurance = null,Object? declaredValue = null,Object? height = null,Object? width = null,Object? length = null,Object? weight = null,Object? freeShipping = null,Object? isStopDesk = null,Object? stopDeskId = freezed,Object? hasExchange = null,Object? productToCollect = freezed,Object? stateCode = freezed,Object? cityCode = freezed,}) {
  return _then(_YalidineOrderCreateRequest(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,fromWilayaName: null == fromWilayaName ? _self.fromWilayaName : fromWilayaName // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,familyName: null == familyName ? _self.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String,contactPhone: null == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,toCommuneName: null == toCommuneName ? _self.toCommuneName : toCommuneName // ignore: cast_nullable_to_non_nullable
as String,toWilayaName: null == toWilayaName ? _self.toWilayaName : toWilayaName // ignore: cast_nullable_to_non_nullable
as String,productList: null == productList ? _self.productList : productList // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,doInsurance: null == doInsurance ? _self.doInsurance : doInsurance // ignore: cast_nullable_to_non_nullable
as bool,declaredValue: null == declaredValue ? _self.declaredValue : declaredValue // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,freeShipping: null == freeShipping ? _self.freeShipping : freeShipping // ignore: cast_nullable_to_non_nullable
as bool,isStopDesk: null == isStopDesk ? _self.isStopDesk : isStopDesk // ignore: cast_nullable_to_non_nullable
as bool,stopDeskId: freezed == stopDeskId ? _self.stopDeskId : stopDeskId // ignore: cast_nullable_to_non_nullable
as String?,hasExchange: null == hasExchange ? _self.hasExchange : hasExchange // ignore: cast_nullable_to_non_nullable
as bool,productToCollect: freezed == productToCollect ? _self.productToCollect : productToCollect // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,cityCode: freezed == cityCode ? _self.cityCode : cityCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
