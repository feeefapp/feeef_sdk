// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_package_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ZimouPackageCreateRequest {

 String get type;// 'ecommerce', 'dropship', or 'warehouse'
 int? get warehouseId; String get name; String get clientLastName; String get clientFirstName; String get clientPhone; String? get clientPhone2; String get address; String get orderId; String get price; bool get freeDelivery; int? get quantityItems; String get deliveryType; String get wilaya; String get commune; int? get officeId; bool get canBeOpened; String? get observation; String? get returnedProduct; double? get weight;
/// Create a copy of ZimouPackageCreateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZimouPackageCreateRequestCopyWith<ZimouPackageCreateRequest> get copyWith => _$ZimouPackageCreateRequestCopyWithImpl<ZimouPackageCreateRequest>(this as ZimouPackageCreateRequest, _$identity);

  /// Serializes this ZimouPackageCreateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZimouPackageCreateRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.name, name) || other.name == name)&&(identical(other.clientLastName, clientLastName) || other.clientLastName == clientLastName)&&(identical(other.clientFirstName, clientFirstName) || other.clientFirstName == clientFirstName)&&(identical(other.clientPhone, clientPhone) || other.clientPhone == clientPhone)&&(identical(other.clientPhone2, clientPhone2) || other.clientPhone2 == clientPhone2)&&(identical(other.address, address) || other.address == address)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.price, price) || other.price == price)&&(identical(other.freeDelivery, freeDelivery) || other.freeDelivery == freeDelivery)&&(identical(other.quantityItems, quantityItems) || other.quantityItems == quantityItems)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&(identical(other.wilaya, wilaya) || other.wilaya == wilaya)&&(identical(other.commune, commune) || other.commune == commune)&&(identical(other.officeId, officeId) || other.officeId == officeId)&&(identical(other.canBeOpened, canBeOpened) || other.canBeOpened == canBeOpened)&&(identical(other.observation, observation) || other.observation == observation)&&(identical(other.returnedProduct, returnedProduct) || other.returnedProduct == returnedProduct)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,type,warehouseId,name,clientLastName,clientFirstName,clientPhone,clientPhone2,address,orderId,price,freeDelivery,quantityItems,deliveryType,wilaya,commune,officeId,canBeOpened,observation,returnedProduct,weight]);

@override
String toString() {
  return 'ZimouPackageCreateRequest(type: $type, warehouseId: $warehouseId, name: $name, clientLastName: $clientLastName, clientFirstName: $clientFirstName, clientPhone: $clientPhone, clientPhone2: $clientPhone2, address: $address, orderId: $orderId, price: $price, freeDelivery: $freeDelivery, quantityItems: $quantityItems, deliveryType: $deliveryType, wilaya: $wilaya, commune: $commune, officeId: $officeId, canBeOpened: $canBeOpened, observation: $observation, returnedProduct: $returnedProduct, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $ZimouPackageCreateRequestCopyWith<$Res>  {
  factory $ZimouPackageCreateRequestCopyWith(ZimouPackageCreateRequest value, $Res Function(ZimouPackageCreateRequest) _then) = _$ZimouPackageCreateRequestCopyWithImpl;
@useResult
$Res call({
 String type, int? warehouseId, String name, String clientLastName, String clientFirstName, String clientPhone, String? clientPhone2, String address, String orderId, String price, bool freeDelivery, int? quantityItems, String deliveryType, String wilaya, String commune, int? officeId, bool canBeOpened, String? observation, String? returnedProduct, double? weight
});




}
/// @nodoc
class _$ZimouPackageCreateRequestCopyWithImpl<$Res>
    implements $ZimouPackageCreateRequestCopyWith<$Res> {
  _$ZimouPackageCreateRequestCopyWithImpl(this._self, this._then);

  final ZimouPackageCreateRequest _self;
  final $Res Function(ZimouPackageCreateRequest) _then;

/// Create a copy of ZimouPackageCreateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? warehouseId = freezed,Object? name = null,Object? clientLastName = null,Object? clientFirstName = null,Object? clientPhone = null,Object? clientPhone2 = freezed,Object? address = null,Object? orderId = null,Object? price = null,Object? freeDelivery = null,Object? quantityItems = freezed,Object? deliveryType = null,Object? wilaya = null,Object? commune = null,Object? officeId = freezed,Object? canBeOpened = null,Object? observation = freezed,Object? returnedProduct = freezed,Object? weight = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,warehouseId: freezed == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,clientLastName: null == clientLastName ? _self.clientLastName : clientLastName // ignore: cast_nullable_to_non_nullable
as String,clientFirstName: null == clientFirstName ? _self.clientFirstName : clientFirstName // ignore: cast_nullable_to_non_nullable
as String,clientPhone: null == clientPhone ? _self.clientPhone : clientPhone // ignore: cast_nullable_to_non_nullable
as String,clientPhone2: freezed == clientPhone2 ? _self.clientPhone2 : clientPhone2 // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,freeDelivery: null == freeDelivery ? _self.freeDelivery : freeDelivery // ignore: cast_nullable_to_non_nullable
as bool,quantityItems: freezed == quantityItems ? _self.quantityItems : quantityItems // ignore: cast_nullable_to_non_nullable
as int?,deliveryType: null == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as String,wilaya: null == wilaya ? _self.wilaya : wilaya // ignore: cast_nullable_to_non_nullable
as String,commune: null == commune ? _self.commune : commune // ignore: cast_nullable_to_non_nullable
as String,officeId: freezed == officeId ? _self.officeId : officeId // ignore: cast_nullable_to_non_nullable
as int?,canBeOpened: null == canBeOpened ? _self.canBeOpened : canBeOpened // ignore: cast_nullable_to_non_nullable
as bool,observation: freezed == observation ? _self.observation : observation // ignore: cast_nullable_to_non_nullable
as String?,returnedProduct: freezed == returnedProduct ? _self.returnedProduct : returnedProduct // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ZimouPackageCreateRequest].
extension ZimouPackageCreateRequestPatterns on ZimouPackageCreateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZimouPackageCreateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZimouPackageCreateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZimouPackageCreateRequest value)  $default,){
final _that = this;
switch (_that) {
case _ZimouPackageCreateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZimouPackageCreateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ZimouPackageCreateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  int? warehouseId,  String name,  String clientLastName,  String clientFirstName,  String clientPhone,  String? clientPhone2,  String address,  String orderId,  String price,  bool freeDelivery,  int? quantityItems,  String deliveryType,  String wilaya,  String commune,  int? officeId,  bool canBeOpened,  String? observation,  String? returnedProduct,  double? weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZimouPackageCreateRequest() when $default != null:
return $default(_that.type,_that.warehouseId,_that.name,_that.clientLastName,_that.clientFirstName,_that.clientPhone,_that.clientPhone2,_that.address,_that.orderId,_that.price,_that.freeDelivery,_that.quantityItems,_that.deliveryType,_that.wilaya,_that.commune,_that.officeId,_that.canBeOpened,_that.observation,_that.returnedProduct,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  int? warehouseId,  String name,  String clientLastName,  String clientFirstName,  String clientPhone,  String? clientPhone2,  String address,  String orderId,  String price,  bool freeDelivery,  int? quantityItems,  String deliveryType,  String wilaya,  String commune,  int? officeId,  bool canBeOpened,  String? observation,  String? returnedProduct,  double? weight)  $default,) {final _that = this;
switch (_that) {
case _ZimouPackageCreateRequest():
return $default(_that.type,_that.warehouseId,_that.name,_that.clientLastName,_that.clientFirstName,_that.clientPhone,_that.clientPhone2,_that.address,_that.orderId,_that.price,_that.freeDelivery,_that.quantityItems,_that.deliveryType,_that.wilaya,_that.commune,_that.officeId,_that.canBeOpened,_that.observation,_that.returnedProduct,_that.weight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  int? warehouseId,  String name,  String clientLastName,  String clientFirstName,  String clientPhone,  String? clientPhone2,  String address,  String orderId,  String price,  bool freeDelivery,  int? quantityItems,  String deliveryType,  String wilaya,  String commune,  int? officeId,  bool canBeOpened,  String? observation,  String? returnedProduct,  double? weight)?  $default,) {final _that = this;
switch (_that) {
case _ZimouPackageCreateRequest() when $default != null:
return $default(_that.type,_that.warehouseId,_that.name,_that.clientLastName,_that.clientFirstName,_that.clientPhone,_that.clientPhone2,_that.address,_that.orderId,_that.price,_that.freeDelivery,_that.quantityItems,_that.deliveryType,_that.wilaya,_that.commune,_that.officeId,_that.canBeOpened,_that.observation,_that.returnedProduct,_that.weight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZimouPackageCreateRequest implements ZimouPackageCreateRequest {
  const _ZimouPackageCreateRequest({required this.type, this.warehouseId, required this.name, required this.clientLastName, required this.clientFirstName, required this.clientPhone, this.clientPhone2, required this.address, required this.orderId, required this.price, required this.freeDelivery, this.quantityItems, required this.deliveryType, required this.wilaya, required this.commune, this.officeId, required this.canBeOpened, this.observation, this.returnedProduct, this.weight});
  factory _ZimouPackageCreateRequest.fromJson(Map<String, dynamic> json) => _$ZimouPackageCreateRequestFromJson(json);

@override final  String type;
// 'ecommerce', 'dropship', or 'warehouse'
@override final  int? warehouseId;
@override final  String name;
@override final  String clientLastName;
@override final  String clientFirstName;
@override final  String clientPhone;
@override final  String? clientPhone2;
@override final  String address;
@override final  String orderId;
@override final  String price;
@override final  bool freeDelivery;
@override final  int? quantityItems;
@override final  String deliveryType;
@override final  String wilaya;
@override final  String commune;
@override final  int? officeId;
@override final  bool canBeOpened;
@override final  String? observation;
@override final  String? returnedProduct;
@override final  double? weight;

/// Create a copy of ZimouPackageCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZimouPackageCreateRequestCopyWith<_ZimouPackageCreateRequest> get copyWith => __$ZimouPackageCreateRequestCopyWithImpl<_ZimouPackageCreateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZimouPackageCreateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZimouPackageCreateRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.name, name) || other.name == name)&&(identical(other.clientLastName, clientLastName) || other.clientLastName == clientLastName)&&(identical(other.clientFirstName, clientFirstName) || other.clientFirstName == clientFirstName)&&(identical(other.clientPhone, clientPhone) || other.clientPhone == clientPhone)&&(identical(other.clientPhone2, clientPhone2) || other.clientPhone2 == clientPhone2)&&(identical(other.address, address) || other.address == address)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.price, price) || other.price == price)&&(identical(other.freeDelivery, freeDelivery) || other.freeDelivery == freeDelivery)&&(identical(other.quantityItems, quantityItems) || other.quantityItems == quantityItems)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&(identical(other.wilaya, wilaya) || other.wilaya == wilaya)&&(identical(other.commune, commune) || other.commune == commune)&&(identical(other.officeId, officeId) || other.officeId == officeId)&&(identical(other.canBeOpened, canBeOpened) || other.canBeOpened == canBeOpened)&&(identical(other.observation, observation) || other.observation == observation)&&(identical(other.returnedProduct, returnedProduct) || other.returnedProduct == returnedProduct)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,type,warehouseId,name,clientLastName,clientFirstName,clientPhone,clientPhone2,address,orderId,price,freeDelivery,quantityItems,deliveryType,wilaya,commune,officeId,canBeOpened,observation,returnedProduct,weight]);

@override
String toString() {
  return 'ZimouPackageCreateRequest(type: $type, warehouseId: $warehouseId, name: $name, clientLastName: $clientLastName, clientFirstName: $clientFirstName, clientPhone: $clientPhone, clientPhone2: $clientPhone2, address: $address, orderId: $orderId, price: $price, freeDelivery: $freeDelivery, quantityItems: $quantityItems, deliveryType: $deliveryType, wilaya: $wilaya, commune: $commune, officeId: $officeId, canBeOpened: $canBeOpened, observation: $observation, returnedProduct: $returnedProduct, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$ZimouPackageCreateRequestCopyWith<$Res> implements $ZimouPackageCreateRequestCopyWith<$Res> {
  factory _$ZimouPackageCreateRequestCopyWith(_ZimouPackageCreateRequest value, $Res Function(_ZimouPackageCreateRequest) _then) = __$ZimouPackageCreateRequestCopyWithImpl;
@override @useResult
$Res call({
 String type, int? warehouseId, String name, String clientLastName, String clientFirstName, String clientPhone, String? clientPhone2, String address, String orderId, String price, bool freeDelivery, int? quantityItems, String deliveryType, String wilaya, String commune, int? officeId, bool canBeOpened, String? observation, String? returnedProduct, double? weight
});




}
/// @nodoc
class __$ZimouPackageCreateRequestCopyWithImpl<$Res>
    implements _$ZimouPackageCreateRequestCopyWith<$Res> {
  __$ZimouPackageCreateRequestCopyWithImpl(this._self, this._then);

  final _ZimouPackageCreateRequest _self;
  final $Res Function(_ZimouPackageCreateRequest) _then;

/// Create a copy of ZimouPackageCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? warehouseId = freezed,Object? name = null,Object? clientLastName = null,Object? clientFirstName = null,Object? clientPhone = null,Object? clientPhone2 = freezed,Object? address = null,Object? orderId = null,Object? price = null,Object? freeDelivery = null,Object? quantityItems = freezed,Object? deliveryType = null,Object? wilaya = null,Object? commune = null,Object? officeId = freezed,Object? canBeOpened = null,Object? observation = freezed,Object? returnedProduct = freezed,Object? weight = freezed,}) {
  return _then(_ZimouPackageCreateRequest(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,warehouseId: freezed == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,clientLastName: null == clientLastName ? _self.clientLastName : clientLastName // ignore: cast_nullable_to_non_nullable
as String,clientFirstName: null == clientFirstName ? _self.clientFirstName : clientFirstName // ignore: cast_nullable_to_non_nullable
as String,clientPhone: null == clientPhone ? _self.clientPhone : clientPhone // ignore: cast_nullable_to_non_nullable
as String,clientPhone2: freezed == clientPhone2 ? _self.clientPhone2 : clientPhone2 // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,freeDelivery: null == freeDelivery ? _self.freeDelivery : freeDelivery // ignore: cast_nullable_to_non_nullable
as bool,quantityItems: freezed == quantityItems ? _self.quantityItems : quantityItems // ignore: cast_nullable_to_non_nullable
as int?,deliveryType: null == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as String,wilaya: null == wilaya ? _self.wilaya : wilaya // ignore: cast_nullable_to_non_nullable
as String,commune: null == commune ? _self.commune : commune // ignore: cast_nullable_to_non_nullable
as String,officeId: freezed == officeId ? _self.officeId : officeId // ignore: cast_nullable_to_non_nullable
as int?,canBeOpened: null == canBeOpened ? _self.canBeOpened : canBeOpened // ignore: cast_nullable_to_non_nullable
as bool,observation: freezed == observation ? _self.observation : observation // ignore: cast_nullable_to_non_nullable
as String?,returnedProduct: freezed == returnedProduct ? _self.returnedProduct : returnedProduct // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
