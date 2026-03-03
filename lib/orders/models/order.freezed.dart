// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Order {

 String get id; DateTime get createdAt; DateTime get updatedAt; Map<String, dynamic> get metadata; String? get customerName; String? get customerPhone; String? get customerEmail; String? get customerNote; String? get customerIp;// internal
 String? get internalNote;// end internal
 String? get shippingAddress; String? get shippingCity; String? get shippingState; String? get shippingCountry; String? get shippingMethodId; String? get shippingNote; String? get trackingCode; String? get paymentMethodId; ShippingType get shippingType; List<String> get tags; List<OrderItem> get items; num get subtotal; num? get shippingPrice; num get total; num get calculatedTotal; num? get manualTotal; num get discount; String? get coupon; String get storeId; String? get source; String? get confirmerId; OrderStatus get status; PaymentStatus get paymentStatus; DeliveryStatus get deliveryStatus; String? get customStatus; Map<String, dynamic>? get customFields;@JsonKey(fromJson: _storeFromJson, toJson: _storeToJson) Store? get store;@JsonKey(fromJson: _shippingMethodFromJson, toJson: _shippingMethodToJson) ShippingMethod? get shippingMethod;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.customerNote, customerNote) || other.customerNote == customerNote)&&(identical(other.customerIp, customerIp) || other.customerIp == customerIp)&&(identical(other.internalNote, internalNote) || other.internalNote == internalNote)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.shippingCity, shippingCity) || other.shippingCity == shippingCity)&&(identical(other.shippingState, shippingState) || other.shippingState == shippingState)&&(identical(other.shippingCountry, shippingCountry) || other.shippingCountry == shippingCountry)&&(identical(other.shippingMethodId, shippingMethodId) || other.shippingMethodId == shippingMethodId)&&(identical(other.shippingNote, shippingNote) || other.shippingNote == shippingNote)&&(identical(other.trackingCode, trackingCode) || other.trackingCode == trackingCode)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&(identical(other.shippingType, shippingType) || other.shippingType == shippingType)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingPrice, shippingPrice) || other.shippingPrice == shippingPrice)&&(identical(other.total, total) || other.total == total)&&(identical(other.calculatedTotal, calculatedTotal) || other.calculatedTotal == calculatedTotal)&&(identical(other.manualTotal, manualTotal) || other.manualTotal == manualTotal)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.coupon, coupon) || other.coupon == coupon)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.source, source) || other.source == source)&&(identical(other.confirmerId, confirmerId) || other.confirmerId == confirmerId)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.customStatus, customStatus) || other.customStatus == customStatus)&&const DeepCollectionEquality().equals(other.customFields, customFields)&&(identical(other.store, store) || other.store == store)&&(identical(other.shippingMethod, shippingMethod) || other.shippingMethod == shippingMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,const DeepCollectionEquality().hash(metadata),customerName,customerPhone,customerEmail,customerNote,customerIp,internalNote,shippingAddress,shippingCity,shippingState,shippingCountry,shippingMethodId,shippingNote,trackingCode,paymentMethodId,shippingType,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(items),subtotal,shippingPrice,total,calculatedTotal,manualTotal,discount,coupon,storeId,source,confirmerId,status,paymentStatus,deliveryStatus,customStatus,const DeepCollectionEquality().hash(customFields),store,shippingMethod]);

@override
String toString() {
  return 'Order(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata, customerName: $customerName, customerPhone: $customerPhone, customerEmail: $customerEmail, customerNote: $customerNote, customerIp: $customerIp, internalNote: $internalNote, shippingAddress: $shippingAddress, shippingCity: $shippingCity, shippingState: $shippingState, shippingCountry: $shippingCountry, shippingMethodId: $shippingMethodId, shippingNote: $shippingNote, trackingCode: $trackingCode, paymentMethodId: $paymentMethodId, shippingType: $shippingType, tags: $tags, items: $items, subtotal: $subtotal, shippingPrice: $shippingPrice, total: $total, calculatedTotal: $calculatedTotal, manualTotal: $manualTotal, discount: $discount, coupon: $coupon, storeId: $storeId, source: $source, confirmerId: $confirmerId, status: $status, paymentStatus: $paymentStatus, deliveryStatus: $deliveryStatus, customStatus: $customStatus, customFields: $customFields, store: $store, shippingMethod: $shippingMethod)';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, Map<String, dynamic> metadata, String? customerName, String? customerPhone, String? customerEmail, String? customerNote, String? customerIp, String? internalNote, String? shippingAddress, String? shippingCity, String? shippingState, String? shippingCountry, String? shippingMethodId, String? shippingNote, String? trackingCode, String? paymentMethodId, ShippingType shippingType, List<String> tags, List<OrderItem> items, num subtotal, num? shippingPrice, num total, num calculatedTotal, num? manualTotal, num discount, String? coupon, String storeId, String? source, String? confirmerId, OrderStatus status, PaymentStatus paymentStatus, DeliveryStatus deliveryStatus, String? customStatus, Map<String, dynamic>? customFields,@JsonKey(fromJson: _storeFromJson, toJson: _storeToJson) Store? store,@JsonKey(fromJson: _shippingMethodFromJson, toJson: _shippingMethodToJson) ShippingMethod? shippingMethod
});


$StoreCopyWith<$Res>? get store;$ShippingMethodCopyWith<$Res>? get shippingMethod;

}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? metadata = null,Object? customerName = freezed,Object? customerPhone = freezed,Object? customerEmail = freezed,Object? customerNote = freezed,Object? customerIp = freezed,Object? internalNote = freezed,Object? shippingAddress = freezed,Object? shippingCity = freezed,Object? shippingState = freezed,Object? shippingCountry = freezed,Object? shippingMethodId = freezed,Object? shippingNote = freezed,Object? trackingCode = freezed,Object? paymentMethodId = freezed,Object? shippingType = null,Object? tags = null,Object? items = null,Object? subtotal = null,Object? shippingPrice = freezed,Object? total = null,Object? calculatedTotal = null,Object? manualTotal = freezed,Object? discount = null,Object? coupon = freezed,Object? storeId = null,Object? source = freezed,Object? confirmerId = freezed,Object? status = null,Object? paymentStatus = null,Object? deliveryStatus = null,Object? customStatus = freezed,Object? customFields = freezed,Object? store = freezed,Object? shippingMethod = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,customerIp: freezed == customerIp ? _self.customerIp : customerIp // ignore: cast_nullable_to_non_nullable
as String?,internalNote: freezed == internalNote ? _self.internalNote : internalNote // ignore: cast_nullable_to_non_nullable
as String?,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as String?,shippingCity: freezed == shippingCity ? _self.shippingCity : shippingCity // ignore: cast_nullable_to_non_nullable
as String?,shippingState: freezed == shippingState ? _self.shippingState : shippingState // ignore: cast_nullable_to_non_nullable
as String?,shippingCountry: freezed == shippingCountry ? _self.shippingCountry : shippingCountry // ignore: cast_nullable_to_non_nullable
as String?,shippingMethodId: freezed == shippingMethodId ? _self.shippingMethodId : shippingMethodId // ignore: cast_nullable_to_non_nullable
as String?,shippingNote: freezed == shippingNote ? _self.shippingNote : shippingNote // ignore: cast_nullable_to_non_nullable
as String?,trackingCode: freezed == trackingCode ? _self.trackingCode : trackingCode // ignore: cast_nullable_to_non_nullable
as String?,paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,shippingType: null == shippingType ? _self.shippingType : shippingType // ignore: cast_nullable_to_non_nullable
as ShippingType,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as num,shippingPrice: freezed == shippingPrice ? _self.shippingPrice : shippingPrice // ignore: cast_nullable_to_non_nullable
as num?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num,calculatedTotal: null == calculatedTotal ? _self.calculatedTotal : calculatedTotal // ignore: cast_nullable_to_non_nullable
as num,manualTotal: freezed == manualTotal ? _self.manualTotal : manualTotal // ignore: cast_nullable_to_non_nullable
as num?,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num,coupon: freezed == coupon ? _self.coupon : coupon // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,confirmerId: freezed == confirmerId ? _self.confirmerId : confirmerId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,customStatus: freezed == customStatus ? _self.customStatus : customStatus // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,shippingMethod: freezed == shippingMethod ? _self.shippingMethod : shippingMethod // ignore: cast_nullable_to_non_nullable
as ShippingMethod?,
  ));
}
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShippingMethodCopyWith<$Res>? get shippingMethod {
    if (_self.shippingMethod == null) {
    return null;
  }

  return $ShippingMethodCopyWith<$Res>(_self.shippingMethod!, (value) {
    return _then(_self.copyWith(shippingMethod: value));
  });
}
}


/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Order value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Order value)  $default,){
final _that = this;
switch (_that) {
case _Order():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Order value)?  $default,){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  Map<String, dynamic> metadata,  String? customerName,  String? customerPhone,  String? customerEmail,  String? customerNote,  String? customerIp,  String? internalNote,  String? shippingAddress,  String? shippingCity,  String? shippingState,  String? shippingCountry,  String? shippingMethodId,  String? shippingNote,  String? trackingCode,  String? paymentMethodId,  ShippingType shippingType,  List<String> tags,  List<OrderItem> items,  num subtotal,  num? shippingPrice,  num total,  num calculatedTotal,  num? manualTotal,  num discount,  String? coupon,  String storeId,  String? source,  String? confirmerId,  OrderStatus status,  PaymentStatus paymentStatus,  DeliveryStatus deliveryStatus,  String? customStatus,  Map<String, dynamic>? customFields, @JsonKey(fromJson: _storeFromJson, toJson: _storeToJson)  Store? store, @JsonKey(fromJson: _shippingMethodFromJson, toJson: _shippingMethodToJson)  ShippingMethod? shippingMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.metadata,_that.customerName,_that.customerPhone,_that.customerEmail,_that.customerNote,_that.customerIp,_that.internalNote,_that.shippingAddress,_that.shippingCity,_that.shippingState,_that.shippingCountry,_that.shippingMethodId,_that.shippingNote,_that.trackingCode,_that.paymentMethodId,_that.shippingType,_that.tags,_that.items,_that.subtotal,_that.shippingPrice,_that.total,_that.calculatedTotal,_that.manualTotal,_that.discount,_that.coupon,_that.storeId,_that.source,_that.confirmerId,_that.status,_that.paymentStatus,_that.deliveryStatus,_that.customStatus,_that.customFields,_that.store,_that.shippingMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  Map<String, dynamic> metadata,  String? customerName,  String? customerPhone,  String? customerEmail,  String? customerNote,  String? customerIp,  String? internalNote,  String? shippingAddress,  String? shippingCity,  String? shippingState,  String? shippingCountry,  String? shippingMethodId,  String? shippingNote,  String? trackingCode,  String? paymentMethodId,  ShippingType shippingType,  List<String> tags,  List<OrderItem> items,  num subtotal,  num? shippingPrice,  num total,  num calculatedTotal,  num? manualTotal,  num discount,  String? coupon,  String storeId,  String? source,  String? confirmerId,  OrderStatus status,  PaymentStatus paymentStatus,  DeliveryStatus deliveryStatus,  String? customStatus,  Map<String, dynamic>? customFields, @JsonKey(fromJson: _storeFromJson, toJson: _storeToJson)  Store? store, @JsonKey(fromJson: _shippingMethodFromJson, toJson: _shippingMethodToJson)  ShippingMethod? shippingMethod)  $default,) {final _that = this;
switch (_that) {
case _Order():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.metadata,_that.customerName,_that.customerPhone,_that.customerEmail,_that.customerNote,_that.customerIp,_that.internalNote,_that.shippingAddress,_that.shippingCity,_that.shippingState,_that.shippingCountry,_that.shippingMethodId,_that.shippingNote,_that.trackingCode,_that.paymentMethodId,_that.shippingType,_that.tags,_that.items,_that.subtotal,_that.shippingPrice,_that.total,_that.calculatedTotal,_that.manualTotal,_that.discount,_that.coupon,_that.storeId,_that.source,_that.confirmerId,_that.status,_that.paymentStatus,_that.deliveryStatus,_that.customStatus,_that.customFields,_that.store,_that.shippingMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  Map<String, dynamic> metadata,  String? customerName,  String? customerPhone,  String? customerEmail,  String? customerNote,  String? customerIp,  String? internalNote,  String? shippingAddress,  String? shippingCity,  String? shippingState,  String? shippingCountry,  String? shippingMethodId,  String? shippingNote,  String? trackingCode,  String? paymentMethodId,  ShippingType shippingType,  List<String> tags,  List<OrderItem> items,  num subtotal,  num? shippingPrice,  num total,  num calculatedTotal,  num? manualTotal,  num discount,  String? coupon,  String storeId,  String? source,  String? confirmerId,  OrderStatus status,  PaymentStatus paymentStatus,  DeliveryStatus deliveryStatus,  String? customStatus,  Map<String, dynamic>? customFields, @JsonKey(fromJson: _storeFromJson, toJson: _storeToJson)  Store? store, @JsonKey(fromJson: _shippingMethodFromJson, toJson: _shippingMethodToJson)  ShippingMethod? shippingMethod)?  $default,) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.metadata,_that.customerName,_that.customerPhone,_that.customerEmail,_that.customerNote,_that.customerIp,_that.internalNote,_that.shippingAddress,_that.shippingCity,_that.shippingState,_that.shippingCountry,_that.shippingMethodId,_that.shippingNote,_that.trackingCode,_that.paymentMethodId,_that.shippingType,_that.tags,_that.items,_that.subtotal,_that.shippingPrice,_that.total,_that.calculatedTotal,_that.manualTotal,_that.discount,_that.coupon,_that.storeId,_that.source,_that.confirmerId,_that.status,_that.paymentStatus,_that.deliveryStatus,_that.customStatus,_that.customFields,_that.store,_that.shippingMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Order extends Order {
   _Order({required this.id, required this.createdAt, required this.updatedAt, final  Map<String, dynamic> metadata = const {}, this.customerName, this.customerPhone, this.customerEmail, this.customerNote, this.customerIp, this.internalNote, this.shippingAddress, this.shippingCity, this.shippingState, this.shippingCountry, this.shippingMethodId, this.shippingNote, this.trackingCode, this.paymentMethodId, this.shippingType = ShippingType.home, final  List<String> tags = const [], required final  List<OrderItem> items, required this.subtotal, this.shippingPrice, required this.total, required this.calculatedTotal, this.manualTotal, this.discount = 0, this.coupon, required this.storeId, this.source, this.confirmerId, required this.status, this.paymentStatus = PaymentStatus.unpaid, this.deliveryStatus = DeliveryStatus.pending, this.customStatus, final  Map<String, dynamic>? customFields = const {}, @JsonKey(fromJson: _storeFromJson, toJson: _storeToJson) this.store, @JsonKey(fromJson: _shippingMethodFromJson, toJson: _shippingMethodToJson) this.shippingMethod}): _metadata = metadata,_tags = tags,_items = items,_customFields = customFields,super._();
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override final  String? customerName;
@override final  String? customerPhone;
@override final  String? customerEmail;
@override final  String? customerNote;
@override final  String? customerIp;
// internal
@override final  String? internalNote;
// end internal
@override final  String? shippingAddress;
@override final  String? shippingCity;
@override final  String? shippingState;
@override final  String? shippingCountry;
@override final  String? shippingMethodId;
@override final  String? shippingNote;
@override final  String? trackingCode;
@override final  String? paymentMethodId;
@override@JsonKey() final  ShippingType shippingType;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<OrderItem> _items;
@override List<OrderItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  num subtotal;
@override final  num? shippingPrice;
@override final  num total;
@override final  num calculatedTotal;
@override final  num? manualTotal;
@override@JsonKey() final  num discount;
@override final  String? coupon;
@override final  String storeId;
@override final  String? source;
@override final  String? confirmerId;
@override final  OrderStatus status;
@override@JsonKey() final  PaymentStatus paymentStatus;
@override@JsonKey() final  DeliveryStatus deliveryStatus;
@override final  String? customStatus;
 final  Map<String, dynamic>? _customFields;
@override@JsonKey() Map<String, dynamic>? get customFields {
  final value = _customFields;
  if (value == null) return null;
  if (_customFields is EqualUnmodifiableMapView) return _customFields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(fromJson: _storeFromJson, toJson: _storeToJson) final  Store? store;
@override@JsonKey(fromJson: _shippingMethodFromJson, toJson: _shippingMethodToJson) final  ShippingMethod? shippingMethod;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.customerNote, customerNote) || other.customerNote == customerNote)&&(identical(other.customerIp, customerIp) || other.customerIp == customerIp)&&(identical(other.internalNote, internalNote) || other.internalNote == internalNote)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.shippingCity, shippingCity) || other.shippingCity == shippingCity)&&(identical(other.shippingState, shippingState) || other.shippingState == shippingState)&&(identical(other.shippingCountry, shippingCountry) || other.shippingCountry == shippingCountry)&&(identical(other.shippingMethodId, shippingMethodId) || other.shippingMethodId == shippingMethodId)&&(identical(other.shippingNote, shippingNote) || other.shippingNote == shippingNote)&&(identical(other.trackingCode, trackingCode) || other.trackingCode == trackingCode)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&(identical(other.shippingType, shippingType) || other.shippingType == shippingType)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingPrice, shippingPrice) || other.shippingPrice == shippingPrice)&&(identical(other.total, total) || other.total == total)&&(identical(other.calculatedTotal, calculatedTotal) || other.calculatedTotal == calculatedTotal)&&(identical(other.manualTotal, manualTotal) || other.manualTotal == manualTotal)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.coupon, coupon) || other.coupon == coupon)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.source, source) || other.source == source)&&(identical(other.confirmerId, confirmerId) || other.confirmerId == confirmerId)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.customStatus, customStatus) || other.customStatus == customStatus)&&const DeepCollectionEquality().equals(other._customFields, _customFields)&&(identical(other.store, store) || other.store == store)&&(identical(other.shippingMethod, shippingMethod) || other.shippingMethod == shippingMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,const DeepCollectionEquality().hash(_metadata),customerName,customerPhone,customerEmail,customerNote,customerIp,internalNote,shippingAddress,shippingCity,shippingState,shippingCountry,shippingMethodId,shippingNote,trackingCode,paymentMethodId,shippingType,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_items),subtotal,shippingPrice,total,calculatedTotal,manualTotal,discount,coupon,storeId,source,confirmerId,status,paymentStatus,deliveryStatus,customStatus,const DeepCollectionEquality().hash(_customFields),store,shippingMethod]);

@override
String toString() {
  return 'Order(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata, customerName: $customerName, customerPhone: $customerPhone, customerEmail: $customerEmail, customerNote: $customerNote, customerIp: $customerIp, internalNote: $internalNote, shippingAddress: $shippingAddress, shippingCity: $shippingCity, shippingState: $shippingState, shippingCountry: $shippingCountry, shippingMethodId: $shippingMethodId, shippingNote: $shippingNote, trackingCode: $trackingCode, paymentMethodId: $paymentMethodId, shippingType: $shippingType, tags: $tags, items: $items, subtotal: $subtotal, shippingPrice: $shippingPrice, total: $total, calculatedTotal: $calculatedTotal, manualTotal: $manualTotal, discount: $discount, coupon: $coupon, storeId: $storeId, source: $source, confirmerId: $confirmerId, status: $status, paymentStatus: $paymentStatus, deliveryStatus: $deliveryStatus, customStatus: $customStatus, customFields: $customFields, store: $store, shippingMethod: $shippingMethod)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, Map<String, dynamic> metadata, String? customerName, String? customerPhone, String? customerEmail, String? customerNote, String? customerIp, String? internalNote, String? shippingAddress, String? shippingCity, String? shippingState, String? shippingCountry, String? shippingMethodId, String? shippingNote, String? trackingCode, String? paymentMethodId, ShippingType shippingType, List<String> tags, List<OrderItem> items, num subtotal, num? shippingPrice, num total, num calculatedTotal, num? manualTotal, num discount, String? coupon, String storeId, String? source, String? confirmerId, OrderStatus status, PaymentStatus paymentStatus, DeliveryStatus deliveryStatus, String? customStatus, Map<String, dynamic>? customFields,@JsonKey(fromJson: _storeFromJson, toJson: _storeToJson) Store? store,@JsonKey(fromJson: _shippingMethodFromJson, toJson: _shippingMethodToJson) ShippingMethod? shippingMethod
});


@override $StoreCopyWith<$Res>? get store;@override $ShippingMethodCopyWith<$Res>? get shippingMethod;

}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? metadata = null,Object? customerName = freezed,Object? customerPhone = freezed,Object? customerEmail = freezed,Object? customerNote = freezed,Object? customerIp = freezed,Object? internalNote = freezed,Object? shippingAddress = freezed,Object? shippingCity = freezed,Object? shippingState = freezed,Object? shippingCountry = freezed,Object? shippingMethodId = freezed,Object? shippingNote = freezed,Object? trackingCode = freezed,Object? paymentMethodId = freezed,Object? shippingType = null,Object? tags = null,Object? items = null,Object? subtotal = null,Object? shippingPrice = freezed,Object? total = null,Object? calculatedTotal = null,Object? manualTotal = freezed,Object? discount = null,Object? coupon = freezed,Object? storeId = null,Object? source = freezed,Object? confirmerId = freezed,Object? status = null,Object? paymentStatus = null,Object? deliveryStatus = null,Object? customStatus = freezed,Object? customFields = freezed,Object? store = freezed,Object? shippingMethod = freezed,}) {
  return _then(_Order(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,customerIp: freezed == customerIp ? _self.customerIp : customerIp // ignore: cast_nullable_to_non_nullable
as String?,internalNote: freezed == internalNote ? _self.internalNote : internalNote // ignore: cast_nullable_to_non_nullable
as String?,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as String?,shippingCity: freezed == shippingCity ? _self.shippingCity : shippingCity // ignore: cast_nullable_to_non_nullable
as String?,shippingState: freezed == shippingState ? _self.shippingState : shippingState // ignore: cast_nullable_to_non_nullable
as String?,shippingCountry: freezed == shippingCountry ? _self.shippingCountry : shippingCountry // ignore: cast_nullable_to_non_nullable
as String?,shippingMethodId: freezed == shippingMethodId ? _self.shippingMethodId : shippingMethodId // ignore: cast_nullable_to_non_nullable
as String?,shippingNote: freezed == shippingNote ? _self.shippingNote : shippingNote // ignore: cast_nullable_to_non_nullable
as String?,trackingCode: freezed == trackingCode ? _self.trackingCode : trackingCode // ignore: cast_nullable_to_non_nullable
as String?,paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,shippingType: null == shippingType ? _self.shippingType : shippingType // ignore: cast_nullable_to_non_nullable
as ShippingType,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as num,shippingPrice: freezed == shippingPrice ? _self.shippingPrice : shippingPrice // ignore: cast_nullable_to_non_nullable
as num?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num,calculatedTotal: null == calculatedTotal ? _self.calculatedTotal : calculatedTotal // ignore: cast_nullable_to_non_nullable
as num,manualTotal: freezed == manualTotal ? _self.manualTotal : manualTotal // ignore: cast_nullable_to_non_nullable
as num?,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num,coupon: freezed == coupon ? _self.coupon : coupon // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,confirmerId: freezed == confirmerId ? _self.confirmerId : confirmerId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,customStatus: freezed == customStatus ? _self.customStatus : customStatus // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self._customFields : customFields // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,shippingMethod: freezed == shippingMethod ? _self.shippingMethod : shippingMethod // ignore: cast_nullable_to_non_nullable
as ShippingMethod?,
  ));
}

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShippingMethodCopyWith<$Res>? get shippingMethod {
    if (_self.shippingMethod == null) {
    return null;
  }

  return $ShippingMethodCopyWith<$Res>(_self.shippingMethod!, (value) {
    return _then(_self.copyWith(shippingMethod: value));
  });
}
}


/// @nodoc
mixin _$OrderCreate {

 String? get id; String? get customerName; String? get shippingNote; String? get customerPhone; String? get customerEmail; String? get customerNote; String? get customerIp; String? get shippingAddress; String? get shippingCity; String? get shippingState; String? get shippingCountry; ShippingType? get shippingType; String? get shippingMethodId; String? get trackingCode; String? get paymentMethodId; List<OrderItem> get items;// internal
 String? get internalNote;// tags
 List<String>? get tags; num? get subtotal; num? get shippingPrice; num? get total; num? get manualTotal; num? get discount; String? get coupon; String get storeId; String? get source; OrderStatus? get status; PaymentStatus? get paymentStatus; DeliveryStatus? get deliveryStatus; Map<String, dynamic>? get customFields;// metadata
 Map<String, dynamic>? get metadata;
/// Create a copy of OrderCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCreateCopyWith<OrderCreate> get copyWith => _$OrderCreateCopyWithImpl<OrderCreate>(this as OrderCreate, _$identity);

  /// Serializes this OrderCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.shippingNote, shippingNote) || other.shippingNote == shippingNote)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.customerNote, customerNote) || other.customerNote == customerNote)&&(identical(other.customerIp, customerIp) || other.customerIp == customerIp)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.shippingCity, shippingCity) || other.shippingCity == shippingCity)&&(identical(other.shippingState, shippingState) || other.shippingState == shippingState)&&(identical(other.shippingCountry, shippingCountry) || other.shippingCountry == shippingCountry)&&(identical(other.shippingType, shippingType) || other.shippingType == shippingType)&&(identical(other.shippingMethodId, shippingMethodId) || other.shippingMethodId == shippingMethodId)&&(identical(other.trackingCode, trackingCode) || other.trackingCode == trackingCode)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.internalNote, internalNote) || other.internalNote == internalNote)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingPrice, shippingPrice) || other.shippingPrice == shippingPrice)&&(identical(other.total, total) || other.total == total)&&(identical(other.manualTotal, manualTotal) || other.manualTotal == manualTotal)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.coupon, coupon) || other.coupon == coupon)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.source, source) || other.source == source)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&const DeepCollectionEquality().equals(other.customFields, customFields)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customerName,shippingNote,customerPhone,customerEmail,customerNote,customerIp,shippingAddress,shippingCity,shippingState,shippingCountry,shippingType,shippingMethodId,trackingCode,paymentMethodId,const DeepCollectionEquality().hash(items),internalNote,const DeepCollectionEquality().hash(tags),subtotal,shippingPrice,total,manualTotal,discount,coupon,storeId,source,status,paymentStatus,deliveryStatus,const DeepCollectionEquality().hash(customFields),const DeepCollectionEquality().hash(metadata)]);

@override
String toString() {
  return 'OrderCreate(id: $id, customerName: $customerName, shippingNote: $shippingNote, customerPhone: $customerPhone, customerEmail: $customerEmail, customerNote: $customerNote, customerIp: $customerIp, shippingAddress: $shippingAddress, shippingCity: $shippingCity, shippingState: $shippingState, shippingCountry: $shippingCountry, shippingType: $shippingType, shippingMethodId: $shippingMethodId, trackingCode: $trackingCode, paymentMethodId: $paymentMethodId, items: $items, internalNote: $internalNote, tags: $tags, subtotal: $subtotal, shippingPrice: $shippingPrice, total: $total, manualTotal: $manualTotal, discount: $discount, coupon: $coupon, storeId: $storeId, source: $source, status: $status, paymentStatus: $paymentStatus, deliveryStatus: $deliveryStatus, customFields: $customFields, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $OrderCreateCopyWith<$Res>  {
  factory $OrderCreateCopyWith(OrderCreate value, $Res Function(OrderCreate) _then) = _$OrderCreateCopyWithImpl;
@useResult
$Res call({
 String? id, String? customerName, String? shippingNote, String? customerPhone, String? customerEmail, String? customerNote, String? customerIp, String? shippingAddress, String? shippingCity, String? shippingState, String? shippingCountry, ShippingType? shippingType, String? shippingMethodId, String? trackingCode, String? paymentMethodId, List<OrderItem> items, String? internalNote, List<String>? tags, num? subtotal, num? shippingPrice, num? total, num? manualTotal, num? discount, String? coupon, String storeId, String? source, OrderStatus? status, PaymentStatus? paymentStatus, DeliveryStatus? deliveryStatus, Map<String, dynamic>? customFields, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$OrderCreateCopyWithImpl<$Res>
    implements $OrderCreateCopyWith<$Res> {
  _$OrderCreateCopyWithImpl(this._self, this._then);

  final OrderCreate _self;
  final $Res Function(OrderCreate) _then;

/// Create a copy of OrderCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customerName = freezed,Object? shippingNote = freezed,Object? customerPhone = freezed,Object? customerEmail = freezed,Object? customerNote = freezed,Object? customerIp = freezed,Object? shippingAddress = freezed,Object? shippingCity = freezed,Object? shippingState = freezed,Object? shippingCountry = freezed,Object? shippingType = freezed,Object? shippingMethodId = freezed,Object? trackingCode = freezed,Object? paymentMethodId = freezed,Object? items = null,Object? internalNote = freezed,Object? tags = freezed,Object? subtotal = freezed,Object? shippingPrice = freezed,Object? total = freezed,Object? manualTotal = freezed,Object? discount = freezed,Object? coupon = freezed,Object? storeId = null,Object? source = freezed,Object? status = freezed,Object? paymentStatus = freezed,Object? deliveryStatus = freezed,Object? customFields = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,shippingNote: freezed == shippingNote ? _self.shippingNote : shippingNote // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,customerIp: freezed == customerIp ? _self.customerIp : customerIp // ignore: cast_nullable_to_non_nullable
as String?,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as String?,shippingCity: freezed == shippingCity ? _self.shippingCity : shippingCity // ignore: cast_nullable_to_non_nullable
as String?,shippingState: freezed == shippingState ? _self.shippingState : shippingState // ignore: cast_nullable_to_non_nullable
as String?,shippingCountry: freezed == shippingCountry ? _self.shippingCountry : shippingCountry // ignore: cast_nullable_to_non_nullable
as String?,shippingType: freezed == shippingType ? _self.shippingType : shippingType // ignore: cast_nullable_to_non_nullable
as ShippingType?,shippingMethodId: freezed == shippingMethodId ? _self.shippingMethodId : shippingMethodId // ignore: cast_nullable_to_non_nullable
as String?,trackingCode: freezed == trackingCode ? _self.trackingCode : trackingCode // ignore: cast_nullable_to_non_nullable
as String?,paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,internalNote: freezed == internalNote ? _self.internalNote : internalNote // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as num?,shippingPrice: freezed == shippingPrice ? _self.shippingPrice : shippingPrice // ignore: cast_nullable_to_non_nullable
as num?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num?,manualTotal: freezed == manualTotal ? _self.manualTotal : manualTotal // ignore: cast_nullable_to_non_nullable
as num?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num?,coupon: freezed == coupon ? _self.coupon : coupon // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,deliveryStatus: freezed == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderCreate].
extension OrderCreatePatterns on OrderCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderCreate value)  $default,){
final _that = this;
switch (_that) {
case _OrderCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderCreate value)?  $default,){
final _that = this;
switch (_that) {
case _OrderCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? customerName,  String? shippingNote,  String? customerPhone,  String? customerEmail,  String? customerNote,  String? customerIp,  String? shippingAddress,  String? shippingCity,  String? shippingState,  String? shippingCountry,  ShippingType? shippingType,  String? shippingMethodId,  String? trackingCode,  String? paymentMethodId,  List<OrderItem> items,  String? internalNote,  List<String>? tags,  num? subtotal,  num? shippingPrice,  num? total,  num? manualTotal,  num? discount,  String? coupon,  String storeId,  String? source,  OrderStatus? status,  PaymentStatus? paymentStatus,  DeliveryStatus? deliveryStatus,  Map<String, dynamic>? customFields,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderCreate() when $default != null:
return $default(_that.id,_that.customerName,_that.shippingNote,_that.customerPhone,_that.customerEmail,_that.customerNote,_that.customerIp,_that.shippingAddress,_that.shippingCity,_that.shippingState,_that.shippingCountry,_that.shippingType,_that.shippingMethodId,_that.trackingCode,_that.paymentMethodId,_that.items,_that.internalNote,_that.tags,_that.subtotal,_that.shippingPrice,_that.total,_that.manualTotal,_that.discount,_that.coupon,_that.storeId,_that.source,_that.status,_that.paymentStatus,_that.deliveryStatus,_that.customFields,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? customerName,  String? shippingNote,  String? customerPhone,  String? customerEmail,  String? customerNote,  String? customerIp,  String? shippingAddress,  String? shippingCity,  String? shippingState,  String? shippingCountry,  ShippingType? shippingType,  String? shippingMethodId,  String? trackingCode,  String? paymentMethodId,  List<OrderItem> items,  String? internalNote,  List<String>? tags,  num? subtotal,  num? shippingPrice,  num? total,  num? manualTotal,  num? discount,  String? coupon,  String storeId,  String? source,  OrderStatus? status,  PaymentStatus? paymentStatus,  DeliveryStatus? deliveryStatus,  Map<String, dynamic>? customFields,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _OrderCreate():
return $default(_that.id,_that.customerName,_that.shippingNote,_that.customerPhone,_that.customerEmail,_that.customerNote,_that.customerIp,_that.shippingAddress,_that.shippingCity,_that.shippingState,_that.shippingCountry,_that.shippingType,_that.shippingMethodId,_that.trackingCode,_that.paymentMethodId,_that.items,_that.internalNote,_that.tags,_that.subtotal,_that.shippingPrice,_that.total,_that.manualTotal,_that.discount,_that.coupon,_that.storeId,_that.source,_that.status,_that.paymentStatus,_that.deliveryStatus,_that.customFields,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? customerName,  String? shippingNote,  String? customerPhone,  String? customerEmail,  String? customerNote,  String? customerIp,  String? shippingAddress,  String? shippingCity,  String? shippingState,  String? shippingCountry,  ShippingType? shippingType,  String? shippingMethodId,  String? trackingCode,  String? paymentMethodId,  List<OrderItem> items,  String? internalNote,  List<String>? tags,  num? subtotal,  num? shippingPrice,  num? total,  num? manualTotal,  num? discount,  String? coupon,  String storeId,  String? source,  OrderStatus? status,  PaymentStatus? paymentStatus,  DeliveryStatus? deliveryStatus,  Map<String, dynamic>? customFields,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _OrderCreate() when $default != null:
return $default(_that.id,_that.customerName,_that.shippingNote,_that.customerPhone,_that.customerEmail,_that.customerNote,_that.customerIp,_that.shippingAddress,_that.shippingCity,_that.shippingState,_that.shippingCountry,_that.shippingType,_that.shippingMethodId,_that.trackingCode,_that.paymentMethodId,_that.items,_that.internalNote,_that.tags,_that.subtotal,_that.shippingPrice,_that.total,_that.manualTotal,_that.discount,_that.coupon,_that.storeId,_that.source,_that.status,_that.paymentStatus,_that.deliveryStatus,_that.customFields,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderCreate implements OrderCreate {
  const _OrderCreate({this.id, this.customerName, this.shippingNote, this.customerPhone, this.customerEmail, this.customerNote, this.customerIp, this.shippingAddress, this.shippingCity, this.shippingState, this.shippingCountry, this.shippingType, this.shippingMethodId, this.trackingCode, this.paymentMethodId, required final  List<OrderItem> items, this.internalNote, final  List<String>? tags, this.subtotal, this.shippingPrice, this.total, this.manualTotal, this.discount, this.coupon, required this.storeId, this.source, this.status, this.paymentStatus, this.deliveryStatus, final  Map<String, dynamic>? customFields, final  Map<String, dynamic>? metadata}): _items = items,_tags = tags,_customFields = customFields,_metadata = metadata;
  factory _OrderCreate.fromJson(Map<String, dynamic> json) => _$OrderCreateFromJson(json);

@override final  String? id;
@override final  String? customerName;
@override final  String? shippingNote;
@override final  String? customerPhone;
@override final  String? customerEmail;
@override final  String? customerNote;
@override final  String? customerIp;
@override final  String? shippingAddress;
@override final  String? shippingCity;
@override final  String? shippingState;
@override final  String? shippingCountry;
@override final  ShippingType? shippingType;
@override final  String? shippingMethodId;
@override final  String? trackingCode;
@override final  String? paymentMethodId;
 final  List<OrderItem> _items;
@override List<OrderItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

// internal
@override final  String? internalNote;
// tags
 final  List<String>? _tags;
// tags
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  num? subtotal;
@override final  num? shippingPrice;
@override final  num? total;
@override final  num? manualTotal;
@override final  num? discount;
@override final  String? coupon;
@override final  String storeId;
@override final  String? source;
@override final  OrderStatus? status;
@override final  PaymentStatus? paymentStatus;
@override final  DeliveryStatus? deliveryStatus;
 final  Map<String, dynamic>? _customFields;
@override Map<String, dynamic>? get customFields {
  final value = _customFields;
  if (value == null) return null;
  if (_customFields is EqualUnmodifiableMapView) return _customFields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

// metadata
 final  Map<String, dynamic>? _metadata;
// metadata
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of OrderCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCreateCopyWith<_OrderCreate> get copyWith => __$OrderCreateCopyWithImpl<_OrderCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.shippingNote, shippingNote) || other.shippingNote == shippingNote)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.customerNote, customerNote) || other.customerNote == customerNote)&&(identical(other.customerIp, customerIp) || other.customerIp == customerIp)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.shippingCity, shippingCity) || other.shippingCity == shippingCity)&&(identical(other.shippingState, shippingState) || other.shippingState == shippingState)&&(identical(other.shippingCountry, shippingCountry) || other.shippingCountry == shippingCountry)&&(identical(other.shippingType, shippingType) || other.shippingType == shippingType)&&(identical(other.shippingMethodId, shippingMethodId) || other.shippingMethodId == shippingMethodId)&&(identical(other.trackingCode, trackingCode) || other.trackingCode == trackingCode)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.internalNote, internalNote) || other.internalNote == internalNote)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingPrice, shippingPrice) || other.shippingPrice == shippingPrice)&&(identical(other.total, total) || other.total == total)&&(identical(other.manualTotal, manualTotal) || other.manualTotal == manualTotal)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.coupon, coupon) || other.coupon == coupon)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.source, source) || other.source == source)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&const DeepCollectionEquality().equals(other._customFields, _customFields)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customerName,shippingNote,customerPhone,customerEmail,customerNote,customerIp,shippingAddress,shippingCity,shippingState,shippingCountry,shippingType,shippingMethodId,trackingCode,paymentMethodId,const DeepCollectionEquality().hash(_items),internalNote,const DeepCollectionEquality().hash(_tags),subtotal,shippingPrice,total,manualTotal,discount,coupon,storeId,source,status,paymentStatus,deliveryStatus,const DeepCollectionEquality().hash(_customFields),const DeepCollectionEquality().hash(_metadata)]);

@override
String toString() {
  return 'OrderCreate(id: $id, customerName: $customerName, shippingNote: $shippingNote, customerPhone: $customerPhone, customerEmail: $customerEmail, customerNote: $customerNote, customerIp: $customerIp, shippingAddress: $shippingAddress, shippingCity: $shippingCity, shippingState: $shippingState, shippingCountry: $shippingCountry, shippingType: $shippingType, shippingMethodId: $shippingMethodId, trackingCode: $trackingCode, paymentMethodId: $paymentMethodId, items: $items, internalNote: $internalNote, tags: $tags, subtotal: $subtotal, shippingPrice: $shippingPrice, total: $total, manualTotal: $manualTotal, discount: $discount, coupon: $coupon, storeId: $storeId, source: $source, status: $status, paymentStatus: $paymentStatus, deliveryStatus: $deliveryStatus, customFields: $customFields, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$OrderCreateCopyWith<$Res> implements $OrderCreateCopyWith<$Res> {
  factory _$OrderCreateCopyWith(_OrderCreate value, $Res Function(_OrderCreate) _then) = __$OrderCreateCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? customerName, String? shippingNote, String? customerPhone, String? customerEmail, String? customerNote, String? customerIp, String? shippingAddress, String? shippingCity, String? shippingState, String? shippingCountry, ShippingType? shippingType, String? shippingMethodId, String? trackingCode, String? paymentMethodId, List<OrderItem> items, String? internalNote, List<String>? tags, num? subtotal, num? shippingPrice, num? total, num? manualTotal, num? discount, String? coupon, String storeId, String? source, OrderStatus? status, PaymentStatus? paymentStatus, DeliveryStatus? deliveryStatus, Map<String, dynamic>? customFields, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$OrderCreateCopyWithImpl<$Res>
    implements _$OrderCreateCopyWith<$Res> {
  __$OrderCreateCopyWithImpl(this._self, this._then);

  final _OrderCreate _self;
  final $Res Function(_OrderCreate) _then;

/// Create a copy of OrderCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customerName = freezed,Object? shippingNote = freezed,Object? customerPhone = freezed,Object? customerEmail = freezed,Object? customerNote = freezed,Object? customerIp = freezed,Object? shippingAddress = freezed,Object? shippingCity = freezed,Object? shippingState = freezed,Object? shippingCountry = freezed,Object? shippingType = freezed,Object? shippingMethodId = freezed,Object? trackingCode = freezed,Object? paymentMethodId = freezed,Object? items = null,Object? internalNote = freezed,Object? tags = freezed,Object? subtotal = freezed,Object? shippingPrice = freezed,Object? total = freezed,Object? manualTotal = freezed,Object? discount = freezed,Object? coupon = freezed,Object? storeId = null,Object? source = freezed,Object? status = freezed,Object? paymentStatus = freezed,Object? deliveryStatus = freezed,Object? customFields = freezed,Object? metadata = freezed,}) {
  return _then(_OrderCreate(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,shippingNote: freezed == shippingNote ? _self.shippingNote : shippingNote // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,customerIp: freezed == customerIp ? _self.customerIp : customerIp // ignore: cast_nullable_to_non_nullable
as String?,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as String?,shippingCity: freezed == shippingCity ? _self.shippingCity : shippingCity // ignore: cast_nullable_to_non_nullable
as String?,shippingState: freezed == shippingState ? _self.shippingState : shippingState // ignore: cast_nullable_to_non_nullable
as String?,shippingCountry: freezed == shippingCountry ? _self.shippingCountry : shippingCountry // ignore: cast_nullable_to_non_nullable
as String?,shippingType: freezed == shippingType ? _self.shippingType : shippingType // ignore: cast_nullable_to_non_nullable
as ShippingType?,shippingMethodId: freezed == shippingMethodId ? _self.shippingMethodId : shippingMethodId // ignore: cast_nullable_to_non_nullable
as String?,trackingCode: freezed == trackingCode ? _self.trackingCode : trackingCode // ignore: cast_nullable_to_non_nullable
as String?,paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,internalNote: freezed == internalNote ? _self.internalNote : internalNote // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as num?,shippingPrice: freezed == shippingPrice ? _self.shippingPrice : shippingPrice // ignore: cast_nullable_to_non_nullable
as num?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num?,manualTotal: freezed == manualTotal ? _self.manualTotal : manualTotal // ignore: cast_nullable_to_non_nullable
as num?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num?,coupon: freezed == coupon ? _self.coupon : coupon // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,deliveryStatus: freezed == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus?,customFields: freezed == customFields ? _self._customFields : customFields // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$OrderUpdate {

 String? get customerName; String? get shippingNote; String? get customerPhone; String? get customerEmail; String? get customerNote; String? get customerIp; String? get shippingAddress; String? get shippingCity; String? get shippingState; String? get shippingCountry; ShippingType? get shippingType; String? get shippingMethodId; String? get trackingCode; String? get paymentMethodId; List<OrderItem>? get items; num? get subtotal; num? get shippingPrice; num? get total; num? get manualTotal; num? get discount; String? get coupon; String? get source;// internal
 String? get internalNote;// tags
 List<String>? get tags; String get storeId; OrderStatus? get status; PaymentStatus? get paymentStatus; DeliveryStatus? get deliveryStatus; String? get customStatus; Map<String, dynamic>? get customFields;// metadata
 Map<String, dynamic>? get metadata;// ignore: invalid_annotation_target
@JsonKey(includeFromJson: false) List<String> get setToNull;
/// Create a copy of OrderUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderUpdateCopyWith<OrderUpdate> get copyWith => _$OrderUpdateCopyWithImpl<OrderUpdate>(this as OrderUpdate, _$identity);

  /// Serializes this OrderUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderUpdate&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.shippingNote, shippingNote) || other.shippingNote == shippingNote)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.customerNote, customerNote) || other.customerNote == customerNote)&&(identical(other.customerIp, customerIp) || other.customerIp == customerIp)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.shippingCity, shippingCity) || other.shippingCity == shippingCity)&&(identical(other.shippingState, shippingState) || other.shippingState == shippingState)&&(identical(other.shippingCountry, shippingCountry) || other.shippingCountry == shippingCountry)&&(identical(other.shippingType, shippingType) || other.shippingType == shippingType)&&(identical(other.shippingMethodId, shippingMethodId) || other.shippingMethodId == shippingMethodId)&&(identical(other.trackingCode, trackingCode) || other.trackingCode == trackingCode)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingPrice, shippingPrice) || other.shippingPrice == shippingPrice)&&(identical(other.total, total) || other.total == total)&&(identical(other.manualTotal, manualTotal) || other.manualTotal == manualTotal)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.coupon, coupon) || other.coupon == coupon)&&(identical(other.source, source) || other.source == source)&&(identical(other.internalNote, internalNote) || other.internalNote == internalNote)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.customStatus, customStatus) || other.customStatus == customStatus)&&const DeepCollectionEquality().equals(other.customFields, customFields)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,customerName,shippingNote,customerPhone,customerEmail,customerNote,customerIp,shippingAddress,shippingCity,shippingState,shippingCountry,shippingType,shippingMethodId,trackingCode,paymentMethodId,const DeepCollectionEquality().hash(items),subtotal,shippingPrice,total,manualTotal,discount,coupon,source,internalNote,const DeepCollectionEquality().hash(tags),storeId,status,paymentStatus,deliveryStatus,customStatus,const DeepCollectionEquality().hash(customFields),const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(setToNull)]);

@override
String toString() {
  return 'OrderUpdate(customerName: $customerName, shippingNote: $shippingNote, customerPhone: $customerPhone, customerEmail: $customerEmail, customerNote: $customerNote, customerIp: $customerIp, shippingAddress: $shippingAddress, shippingCity: $shippingCity, shippingState: $shippingState, shippingCountry: $shippingCountry, shippingType: $shippingType, shippingMethodId: $shippingMethodId, trackingCode: $trackingCode, paymentMethodId: $paymentMethodId, items: $items, subtotal: $subtotal, shippingPrice: $shippingPrice, total: $total, manualTotal: $manualTotal, discount: $discount, coupon: $coupon, source: $source, internalNote: $internalNote, tags: $tags, storeId: $storeId, status: $status, paymentStatus: $paymentStatus, deliveryStatus: $deliveryStatus, customStatus: $customStatus, customFields: $customFields, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $OrderUpdateCopyWith<$Res>  {
  factory $OrderUpdateCopyWith(OrderUpdate value, $Res Function(OrderUpdate) _then) = _$OrderUpdateCopyWithImpl;
@useResult
$Res call({
 String? customerName, String? shippingNote, String? customerPhone, String? customerEmail, String? customerNote, String? customerIp, String? shippingAddress, String? shippingCity, String? shippingState, String? shippingCountry, ShippingType? shippingType, String? shippingMethodId, String? trackingCode, String? paymentMethodId, List<OrderItem>? items, num? subtotal, num? shippingPrice, num? total, num? manualTotal, num? discount, String? coupon, String? source, String? internalNote, List<String>? tags, String storeId, OrderStatus? status, PaymentStatus? paymentStatus, DeliveryStatus? deliveryStatus, String? customStatus, Map<String, dynamic>? customFields, Map<String, dynamic>? metadata,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class _$OrderUpdateCopyWithImpl<$Res>
    implements $OrderUpdateCopyWith<$Res> {
  _$OrderUpdateCopyWithImpl(this._self, this._then);

  final OrderUpdate _self;
  final $Res Function(OrderUpdate) _then;

/// Create a copy of OrderUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerName = freezed,Object? shippingNote = freezed,Object? customerPhone = freezed,Object? customerEmail = freezed,Object? customerNote = freezed,Object? customerIp = freezed,Object? shippingAddress = freezed,Object? shippingCity = freezed,Object? shippingState = freezed,Object? shippingCountry = freezed,Object? shippingType = freezed,Object? shippingMethodId = freezed,Object? trackingCode = freezed,Object? paymentMethodId = freezed,Object? items = freezed,Object? subtotal = freezed,Object? shippingPrice = freezed,Object? total = freezed,Object? manualTotal = freezed,Object? discount = freezed,Object? coupon = freezed,Object? source = freezed,Object? internalNote = freezed,Object? tags = freezed,Object? storeId = null,Object? status = freezed,Object? paymentStatus = freezed,Object? deliveryStatus = freezed,Object? customStatus = freezed,Object? customFields = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,shippingNote: freezed == shippingNote ? _self.shippingNote : shippingNote // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,customerIp: freezed == customerIp ? _self.customerIp : customerIp // ignore: cast_nullable_to_non_nullable
as String?,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as String?,shippingCity: freezed == shippingCity ? _self.shippingCity : shippingCity // ignore: cast_nullable_to_non_nullable
as String?,shippingState: freezed == shippingState ? _self.shippingState : shippingState // ignore: cast_nullable_to_non_nullable
as String?,shippingCountry: freezed == shippingCountry ? _self.shippingCountry : shippingCountry // ignore: cast_nullable_to_non_nullable
as String?,shippingType: freezed == shippingType ? _self.shippingType : shippingType // ignore: cast_nullable_to_non_nullable
as ShippingType?,shippingMethodId: freezed == shippingMethodId ? _self.shippingMethodId : shippingMethodId // ignore: cast_nullable_to_non_nullable
as String?,trackingCode: freezed == trackingCode ? _self.trackingCode : trackingCode // ignore: cast_nullable_to_non_nullable
as String?,paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as num?,shippingPrice: freezed == shippingPrice ? _self.shippingPrice : shippingPrice // ignore: cast_nullable_to_non_nullable
as num?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num?,manualTotal: freezed == manualTotal ? _self.manualTotal : manualTotal // ignore: cast_nullable_to_non_nullable
as num?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num?,coupon: freezed == coupon ? _self.coupon : coupon // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,internalNote: freezed == internalNote ? _self.internalNote : internalNote // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,deliveryStatus: freezed == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus?,customStatus: freezed == customStatus ? _self.customStatus : customStatus // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderUpdate].
extension OrderUpdatePatterns on OrderUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderUpdate value)  $default,){
final _that = this;
switch (_that) {
case _OrderUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _OrderUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? customerName,  String? shippingNote,  String? customerPhone,  String? customerEmail,  String? customerNote,  String? customerIp,  String? shippingAddress,  String? shippingCity,  String? shippingState,  String? shippingCountry,  ShippingType? shippingType,  String? shippingMethodId,  String? trackingCode,  String? paymentMethodId,  List<OrderItem>? items,  num? subtotal,  num? shippingPrice,  num? total,  num? manualTotal,  num? discount,  String? coupon,  String? source,  String? internalNote,  List<String>? tags,  String storeId,  OrderStatus? status,  PaymentStatus? paymentStatus,  DeliveryStatus? deliveryStatus,  String? customStatus,  Map<String, dynamic>? customFields,  Map<String, dynamic>? metadata, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderUpdate() when $default != null:
return $default(_that.customerName,_that.shippingNote,_that.customerPhone,_that.customerEmail,_that.customerNote,_that.customerIp,_that.shippingAddress,_that.shippingCity,_that.shippingState,_that.shippingCountry,_that.shippingType,_that.shippingMethodId,_that.trackingCode,_that.paymentMethodId,_that.items,_that.subtotal,_that.shippingPrice,_that.total,_that.manualTotal,_that.discount,_that.coupon,_that.source,_that.internalNote,_that.tags,_that.storeId,_that.status,_that.paymentStatus,_that.deliveryStatus,_that.customStatus,_that.customFields,_that.metadata,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? customerName,  String? shippingNote,  String? customerPhone,  String? customerEmail,  String? customerNote,  String? customerIp,  String? shippingAddress,  String? shippingCity,  String? shippingState,  String? shippingCountry,  ShippingType? shippingType,  String? shippingMethodId,  String? trackingCode,  String? paymentMethodId,  List<OrderItem>? items,  num? subtotal,  num? shippingPrice,  num? total,  num? manualTotal,  num? discount,  String? coupon,  String? source,  String? internalNote,  List<String>? tags,  String storeId,  OrderStatus? status,  PaymentStatus? paymentStatus,  DeliveryStatus? deliveryStatus,  String? customStatus,  Map<String, dynamic>? customFields,  Map<String, dynamic>? metadata, @JsonKey(includeFromJson: false)  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _OrderUpdate():
return $default(_that.customerName,_that.shippingNote,_that.customerPhone,_that.customerEmail,_that.customerNote,_that.customerIp,_that.shippingAddress,_that.shippingCity,_that.shippingState,_that.shippingCountry,_that.shippingType,_that.shippingMethodId,_that.trackingCode,_that.paymentMethodId,_that.items,_that.subtotal,_that.shippingPrice,_that.total,_that.manualTotal,_that.discount,_that.coupon,_that.source,_that.internalNote,_that.tags,_that.storeId,_that.status,_that.paymentStatus,_that.deliveryStatus,_that.customStatus,_that.customFields,_that.metadata,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? customerName,  String? shippingNote,  String? customerPhone,  String? customerEmail,  String? customerNote,  String? customerIp,  String? shippingAddress,  String? shippingCity,  String? shippingState,  String? shippingCountry,  ShippingType? shippingType,  String? shippingMethodId,  String? trackingCode,  String? paymentMethodId,  List<OrderItem>? items,  num? subtotal,  num? shippingPrice,  num? total,  num? manualTotal,  num? discount,  String? coupon,  String? source,  String? internalNote,  List<String>? tags,  String storeId,  OrderStatus? status,  PaymentStatus? paymentStatus,  DeliveryStatus? deliveryStatus,  String? customStatus,  Map<String, dynamic>? customFields,  Map<String, dynamic>? metadata, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _OrderUpdate() when $default != null:
return $default(_that.customerName,_that.shippingNote,_that.customerPhone,_that.customerEmail,_that.customerNote,_that.customerIp,_that.shippingAddress,_that.shippingCity,_that.shippingState,_that.shippingCountry,_that.shippingType,_that.shippingMethodId,_that.trackingCode,_that.paymentMethodId,_that.items,_that.subtotal,_that.shippingPrice,_that.total,_that.manualTotal,_that.discount,_that.coupon,_that.source,_that.internalNote,_that.tags,_that.storeId,_that.status,_that.paymentStatus,_that.deliveryStatus,_that.customStatus,_that.customFields,_that.metadata,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderUpdate implements OrderUpdate {
  const _OrderUpdate({this.customerName, this.shippingNote, this.customerPhone, this.customerEmail, this.customerNote, this.customerIp, this.shippingAddress, this.shippingCity, this.shippingState, this.shippingCountry, this.shippingType, this.shippingMethodId, this.trackingCode, this.paymentMethodId, final  List<OrderItem>? items, this.subtotal, this.shippingPrice, this.total, this.manualTotal, this.discount, this.coupon, this.source, this.internalNote, final  List<String>? tags, required this.storeId, this.status, this.paymentStatus, this.deliveryStatus, this.customStatus, final  Map<String, dynamic>? customFields, final  Map<String, dynamic>? metadata, @JsonKey(includeFromJson: false) final  List<String> setToNull = const []}): _items = items,_tags = tags,_customFields = customFields,_metadata = metadata,_setToNull = setToNull;
  factory _OrderUpdate.fromJson(Map<String, dynamic> json) => _$OrderUpdateFromJson(json);

@override final  String? customerName;
@override final  String? shippingNote;
@override final  String? customerPhone;
@override final  String? customerEmail;
@override final  String? customerNote;
@override final  String? customerIp;
@override final  String? shippingAddress;
@override final  String? shippingCity;
@override final  String? shippingState;
@override final  String? shippingCountry;
@override final  ShippingType? shippingType;
@override final  String? shippingMethodId;
@override final  String? trackingCode;
@override final  String? paymentMethodId;
 final  List<OrderItem>? _items;
@override List<OrderItem>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  num? subtotal;
@override final  num? shippingPrice;
@override final  num? total;
@override final  num? manualTotal;
@override final  num? discount;
@override final  String? coupon;
@override final  String? source;
// internal
@override final  String? internalNote;
// tags
 final  List<String>? _tags;
// tags
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String storeId;
@override final  OrderStatus? status;
@override final  PaymentStatus? paymentStatus;
@override final  DeliveryStatus? deliveryStatus;
@override final  String? customStatus;
 final  Map<String, dynamic>? _customFields;
@override Map<String, dynamic>? get customFields {
  final value = _customFields;
  if (value == null) return null;
  if (_customFields is EqualUnmodifiableMapView) return _customFields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

// metadata
 final  Map<String, dynamic>? _metadata;
// metadata
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

// ignore: invalid_annotation_target
 final  List<String> _setToNull;
// ignore: invalid_annotation_target
@override@JsonKey(includeFromJson: false) List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of OrderUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderUpdateCopyWith<_OrderUpdate> get copyWith => __$OrderUpdateCopyWithImpl<_OrderUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderUpdate&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.shippingNote, shippingNote) || other.shippingNote == shippingNote)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.customerNote, customerNote) || other.customerNote == customerNote)&&(identical(other.customerIp, customerIp) || other.customerIp == customerIp)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.shippingCity, shippingCity) || other.shippingCity == shippingCity)&&(identical(other.shippingState, shippingState) || other.shippingState == shippingState)&&(identical(other.shippingCountry, shippingCountry) || other.shippingCountry == shippingCountry)&&(identical(other.shippingType, shippingType) || other.shippingType == shippingType)&&(identical(other.shippingMethodId, shippingMethodId) || other.shippingMethodId == shippingMethodId)&&(identical(other.trackingCode, trackingCode) || other.trackingCode == trackingCode)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingPrice, shippingPrice) || other.shippingPrice == shippingPrice)&&(identical(other.total, total) || other.total == total)&&(identical(other.manualTotal, manualTotal) || other.manualTotal == manualTotal)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.coupon, coupon) || other.coupon == coupon)&&(identical(other.source, source) || other.source == source)&&(identical(other.internalNote, internalNote) || other.internalNote == internalNote)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.customStatus, customStatus) || other.customStatus == customStatus)&&const DeepCollectionEquality().equals(other._customFields, _customFields)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,customerName,shippingNote,customerPhone,customerEmail,customerNote,customerIp,shippingAddress,shippingCity,shippingState,shippingCountry,shippingType,shippingMethodId,trackingCode,paymentMethodId,const DeepCollectionEquality().hash(_items),subtotal,shippingPrice,total,manualTotal,discount,coupon,source,internalNote,const DeepCollectionEquality().hash(_tags),storeId,status,paymentStatus,deliveryStatus,customStatus,const DeepCollectionEquality().hash(_customFields),const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_setToNull)]);

@override
String toString() {
  return 'OrderUpdate(customerName: $customerName, shippingNote: $shippingNote, customerPhone: $customerPhone, customerEmail: $customerEmail, customerNote: $customerNote, customerIp: $customerIp, shippingAddress: $shippingAddress, shippingCity: $shippingCity, shippingState: $shippingState, shippingCountry: $shippingCountry, shippingType: $shippingType, shippingMethodId: $shippingMethodId, trackingCode: $trackingCode, paymentMethodId: $paymentMethodId, items: $items, subtotal: $subtotal, shippingPrice: $shippingPrice, total: $total, manualTotal: $manualTotal, discount: $discount, coupon: $coupon, source: $source, internalNote: $internalNote, tags: $tags, storeId: $storeId, status: $status, paymentStatus: $paymentStatus, deliveryStatus: $deliveryStatus, customStatus: $customStatus, customFields: $customFields, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$OrderUpdateCopyWith<$Res> implements $OrderUpdateCopyWith<$Res> {
  factory _$OrderUpdateCopyWith(_OrderUpdate value, $Res Function(_OrderUpdate) _then) = __$OrderUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? customerName, String? shippingNote, String? customerPhone, String? customerEmail, String? customerNote, String? customerIp, String? shippingAddress, String? shippingCity, String? shippingState, String? shippingCountry, ShippingType? shippingType, String? shippingMethodId, String? trackingCode, String? paymentMethodId, List<OrderItem>? items, num? subtotal, num? shippingPrice, num? total, num? manualTotal, num? discount, String? coupon, String? source, String? internalNote, List<String>? tags, String storeId, OrderStatus? status, PaymentStatus? paymentStatus, DeliveryStatus? deliveryStatus, String? customStatus, Map<String, dynamic>? customFields, Map<String, dynamic>? metadata,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class __$OrderUpdateCopyWithImpl<$Res>
    implements _$OrderUpdateCopyWith<$Res> {
  __$OrderUpdateCopyWithImpl(this._self, this._then);

  final _OrderUpdate _self;
  final $Res Function(_OrderUpdate) _then;

/// Create a copy of OrderUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerName = freezed,Object? shippingNote = freezed,Object? customerPhone = freezed,Object? customerEmail = freezed,Object? customerNote = freezed,Object? customerIp = freezed,Object? shippingAddress = freezed,Object? shippingCity = freezed,Object? shippingState = freezed,Object? shippingCountry = freezed,Object? shippingType = freezed,Object? shippingMethodId = freezed,Object? trackingCode = freezed,Object? paymentMethodId = freezed,Object? items = freezed,Object? subtotal = freezed,Object? shippingPrice = freezed,Object? total = freezed,Object? manualTotal = freezed,Object? discount = freezed,Object? coupon = freezed,Object? source = freezed,Object? internalNote = freezed,Object? tags = freezed,Object? storeId = null,Object? status = freezed,Object? paymentStatus = freezed,Object? deliveryStatus = freezed,Object? customStatus = freezed,Object? customFields = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_OrderUpdate(
customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,shippingNote: freezed == shippingNote ? _self.shippingNote : shippingNote // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,customerIp: freezed == customerIp ? _self.customerIp : customerIp // ignore: cast_nullable_to_non_nullable
as String?,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as String?,shippingCity: freezed == shippingCity ? _self.shippingCity : shippingCity // ignore: cast_nullable_to_non_nullable
as String?,shippingState: freezed == shippingState ? _self.shippingState : shippingState // ignore: cast_nullable_to_non_nullable
as String?,shippingCountry: freezed == shippingCountry ? _self.shippingCountry : shippingCountry // ignore: cast_nullable_to_non_nullable
as String?,shippingType: freezed == shippingType ? _self.shippingType : shippingType // ignore: cast_nullable_to_non_nullable
as ShippingType?,shippingMethodId: freezed == shippingMethodId ? _self.shippingMethodId : shippingMethodId // ignore: cast_nullable_to_non_nullable
as String?,trackingCode: freezed == trackingCode ? _self.trackingCode : trackingCode // ignore: cast_nullable_to_non_nullable
as String?,paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as num?,shippingPrice: freezed == shippingPrice ? _self.shippingPrice : shippingPrice // ignore: cast_nullable_to_non_nullable
as num?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num?,manualTotal: freezed == manualTotal ? _self.manualTotal : manualTotal // ignore: cast_nullable_to_non_nullable
as num?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num?,coupon: freezed == coupon ? _self.coupon : coupon // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,internalNote: freezed == internalNote ? _self.internalNote : internalNote // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,deliveryStatus: freezed == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus?,customStatus: freezed == customStatus ? _self.customStatus : customStatus // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self._customFields : customFields // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$OrderHistoryEvent {

 DateTime get createdAt; OrderStatus get status; DeliveryStatus get deliveryStatus; PaymentStatus get paymentStatus; String get message; String get code; String get userId;
/// Create a copy of OrderHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderHistoryEventCopyWith<OrderHistoryEvent> get copyWith => _$OrderHistoryEventCopyWithImpl<OrderHistoryEvent>(this as OrderHistoryEvent, _$identity);

  /// Serializes this OrderHistoryEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderHistoryEvent&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,status,deliveryStatus,paymentStatus,message,code,userId);

@override
String toString() {
  return 'OrderHistoryEvent(createdAt: $createdAt, status: $status, deliveryStatus: $deliveryStatus, paymentStatus: $paymentStatus, message: $message, code: $code, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $OrderHistoryEventCopyWith<$Res>  {
  factory $OrderHistoryEventCopyWith(OrderHistoryEvent value, $Res Function(OrderHistoryEvent) _then) = _$OrderHistoryEventCopyWithImpl;
@useResult
$Res call({
 DateTime createdAt, OrderStatus status, DeliveryStatus deliveryStatus, PaymentStatus paymentStatus, String message, String code, String userId
});




}
/// @nodoc
class _$OrderHistoryEventCopyWithImpl<$Res>
    implements $OrderHistoryEventCopyWith<$Res> {
  _$OrderHistoryEventCopyWithImpl(this._self, this._then);

  final OrderHistoryEvent _self;
  final $Res Function(OrderHistoryEvent) _then;

/// Create a copy of OrderHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? status = null,Object? deliveryStatus = null,Object? paymentStatus = null,Object? message = null,Object? code = null,Object? userId = null,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderHistoryEvent].
extension OrderHistoryEventPatterns on OrderHistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderHistoryEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderHistoryEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderHistoryEvent value)  $default,){
final _that = this;
switch (_that) {
case _OrderHistoryEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderHistoryEvent value)?  $default,){
final _that = this;
switch (_that) {
case _OrderHistoryEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime createdAt,  OrderStatus status,  DeliveryStatus deliveryStatus,  PaymentStatus paymentStatus,  String message,  String code,  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderHistoryEvent() when $default != null:
return $default(_that.createdAt,_that.status,_that.deliveryStatus,_that.paymentStatus,_that.message,_that.code,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime createdAt,  OrderStatus status,  DeliveryStatus deliveryStatus,  PaymentStatus paymentStatus,  String message,  String code,  String userId)  $default,) {final _that = this;
switch (_that) {
case _OrderHistoryEvent():
return $default(_that.createdAt,_that.status,_that.deliveryStatus,_that.paymentStatus,_that.message,_that.code,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime createdAt,  OrderStatus status,  DeliveryStatus deliveryStatus,  PaymentStatus paymentStatus,  String message,  String code,  String userId)?  $default,) {final _that = this;
switch (_that) {
case _OrderHistoryEvent() when $default != null:
return $default(_that.createdAt,_that.status,_that.deliveryStatus,_that.paymentStatus,_that.message,_that.code,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderHistoryEvent implements OrderHistoryEvent {
  const _OrderHistoryEvent({required this.createdAt, required this.status, required this.deliveryStatus, required this.paymentStatus, required this.message, required this.code, required this.userId});
  factory _OrderHistoryEvent.fromJson(Map<String, dynamic> json) => _$OrderHistoryEventFromJson(json);

@override final  DateTime createdAt;
@override final  OrderStatus status;
@override final  DeliveryStatus deliveryStatus;
@override final  PaymentStatus paymentStatus;
@override final  String message;
@override final  String code;
@override final  String userId;

/// Create a copy of OrderHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderHistoryEventCopyWith<_OrderHistoryEvent> get copyWith => __$OrderHistoryEventCopyWithImpl<_OrderHistoryEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderHistoryEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderHistoryEvent&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,status,deliveryStatus,paymentStatus,message,code,userId);

@override
String toString() {
  return 'OrderHistoryEvent(createdAt: $createdAt, status: $status, deliveryStatus: $deliveryStatus, paymentStatus: $paymentStatus, message: $message, code: $code, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$OrderHistoryEventCopyWith<$Res> implements $OrderHistoryEventCopyWith<$Res> {
  factory _$OrderHistoryEventCopyWith(_OrderHistoryEvent value, $Res Function(_OrderHistoryEvent) _then) = __$OrderHistoryEventCopyWithImpl;
@override @useResult
$Res call({
 DateTime createdAt, OrderStatus status, DeliveryStatus deliveryStatus, PaymentStatus paymentStatus, String message, String code, String userId
});




}
/// @nodoc
class __$OrderHistoryEventCopyWithImpl<$Res>
    implements _$OrderHistoryEventCopyWith<$Res> {
  __$OrderHistoryEventCopyWithImpl(this._self, this._then);

  final _OrderHistoryEvent _self;
  final $Res Function(_OrderHistoryEvent) _then;

/// Create a copy of OrderHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? status = null,Object? deliveryStatus = null,Object? paymentStatus = null,Object? message = null,Object? code = null,Object? userId = null,}) {
  return _then(_OrderHistoryEvent(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
