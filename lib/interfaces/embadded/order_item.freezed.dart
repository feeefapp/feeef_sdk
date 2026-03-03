// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderItem {

 String get productId; String get productName; String? get productPhotoUrl; String? get variantPath; String? get offerCode; String? get offerName; String? get sku; num get quantity; num get price; num get discount;// addons?: Record<string, number>
 Map<String, num>? get addons;
/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemCopyWith<OrderItem> get copyWith => _$OrderItemCopyWithImpl<OrderItem>(this as OrderItem, _$identity);

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productPhotoUrl, productPhotoUrl) || other.productPhotoUrl == productPhotoUrl)&&(identical(other.variantPath, variantPath) || other.variantPath == variantPath)&&(identical(other.offerCode, offerCode) || other.offerCode == offerCode)&&(identical(other.offerName, offerName) || other.offerName == offerName)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&const DeepCollectionEquality().equals(other.addons, addons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productName,productPhotoUrl,variantPath,offerCode,offerName,sku,quantity,price,discount,const DeepCollectionEquality().hash(addons));

@override
String toString() {
  return 'OrderItem(productId: $productId, productName: $productName, productPhotoUrl: $productPhotoUrl, variantPath: $variantPath, offerCode: $offerCode, offerName: $offerName, sku: $sku, quantity: $quantity, price: $price, discount: $discount, addons: $addons)';
}


}

/// @nodoc
abstract mixin class $OrderItemCopyWith<$Res>  {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) _then) = _$OrderItemCopyWithImpl;
@useResult
$Res call({
 String productId, String productName, String? productPhotoUrl, String? variantPath, String? offerCode, String? offerName, String? sku, num quantity, num price, num discount, Map<String, num>? addons
});




}
/// @nodoc
class _$OrderItemCopyWithImpl<$Res>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._self, this._then);

  final OrderItem _self;
  final $Res Function(OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? productName = null,Object? productPhotoUrl = freezed,Object? variantPath = freezed,Object? offerCode = freezed,Object? offerName = freezed,Object? sku = freezed,Object? quantity = null,Object? price = null,Object? discount = null,Object? addons = freezed,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productPhotoUrl: freezed == productPhotoUrl ? _self.productPhotoUrl : productPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,variantPath: freezed == variantPath ? _self.variantPath : variantPath // ignore: cast_nullable_to_non_nullable
as String?,offerCode: freezed == offerCode ? _self.offerCode : offerCode // ignore: cast_nullable_to_non_nullable
as String?,offerName: freezed == offerName ? _self.offerName : offerName // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as num,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num,addons: freezed == addons ? _self.addons : addons // ignore: cast_nullable_to_non_nullable
as Map<String, num>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItem].
extension OrderItemPatterns on OrderItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItem value)  $default,){
final _that = this;
switch (_that) {
case _OrderItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String productName,  String? productPhotoUrl,  String? variantPath,  String? offerCode,  String? offerName,  String? sku,  num quantity,  num price,  num discount,  Map<String, num>? addons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.productId,_that.productName,_that.productPhotoUrl,_that.variantPath,_that.offerCode,_that.offerName,_that.sku,_that.quantity,_that.price,_that.discount,_that.addons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String productName,  String? productPhotoUrl,  String? variantPath,  String? offerCode,  String? offerName,  String? sku,  num quantity,  num price,  num discount,  Map<String, num>? addons)  $default,) {final _that = this;
switch (_that) {
case _OrderItem():
return $default(_that.productId,_that.productName,_that.productPhotoUrl,_that.variantPath,_that.offerCode,_that.offerName,_that.sku,_that.quantity,_that.price,_that.discount,_that.addons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String productName,  String? productPhotoUrl,  String? variantPath,  String? offerCode,  String? offerName,  String? sku,  num quantity,  num price,  num discount,  Map<String, num>? addons)?  $default,) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.productId,_that.productName,_that.productPhotoUrl,_that.variantPath,_that.offerCode,_that.offerName,_that.sku,_that.quantity,_that.price,_that.discount,_that.addons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItem implements OrderItem {
   _OrderItem({required this.productId, required this.productName, this.productPhotoUrl, this.variantPath, this.offerCode, this.offerName, this.sku, this.quantity = 0, this.price = 0, this.discount = 0, final  Map<String, num>? addons}): _addons = addons;
  factory _OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);

@override final  String productId;
@override final  String productName;
@override final  String? productPhotoUrl;
@override final  String? variantPath;
@override final  String? offerCode;
@override final  String? offerName;
@override final  String? sku;
@override@JsonKey() final  num quantity;
@override@JsonKey() final  num price;
@override@JsonKey() final  num discount;
// addons?: Record<string, number>
 final  Map<String, num>? _addons;
// addons?: Record<string, number>
@override Map<String, num>? get addons {
  final value = _addons;
  if (value == null) return null;
  if (_addons is EqualUnmodifiableMapView) return _addons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemCopyWith<_OrderItem> get copyWith => __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productPhotoUrl, productPhotoUrl) || other.productPhotoUrl == productPhotoUrl)&&(identical(other.variantPath, variantPath) || other.variantPath == variantPath)&&(identical(other.offerCode, offerCode) || other.offerCode == offerCode)&&(identical(other.offerName, offerName) || other.offerName == offerName)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&const DeepCollectionEquality().equals(other._addons, _addons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productName,productPhotoUrl,variantPath,offerCode,offerName,sku,quantity,price,discount,const DeepCollectionEquality().hash(_addons));

@override
String toString() {
  return 'OrderItem(productId: $productId, productName: $productName, productPhotoUrl: $productPhotoUrl, variantPath: $variantPath, offerCode: $offerCode, offerName: $offerName, sku: $sku, quantity: $quantity, price: $price, discount: $discount, addons: $addons)';
}


}

/// @nodoc
abstract mixin class _$OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$OrderItemCopyWith(_OrderItem value, $Res Function(_OrderItem) _then) = __$OrderItemCopyWithImpl;
@override @useResult
$Res call({
 String productId, String productName, String? productPhotoUrl, String? variantPath, String? offerCode, String? offerName, String? sku, num quantity, num price, num discount, Map<String, num>? addons
});




}
/// @nodoc
class __$OrderItemCopyWithImpl<$Res>
    implements _$OrderItemCopyWith<$Res> {
  __$OrderItemCopyWithImpl(this._self, this._then);

  final _OrderItem _self;
  final $Res Function(_OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? productName = null,Object? productPhotoUrl = freezed,Object? variantPath = freezed,Object? offerCode = freezed,Object? offerName = freezed,Object? sku = freezed,Object? quantity = null,Object? price = null,Object? discount = null,Object? addons = freezed,}) {
  return _then(_OrderItem(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productPhotoUrl: freezed == productPhotoUrl ? _self.productPhotoUrl : productPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,variantPath: freezed == variantPath ? _self.variantPath : variantPath // ignore: cast_nullable_to_non_nullable
as String?,offerCode: freezed == offerCode ? _self.offerCode : offerCode // ignore: cast_nullable_to_non_nullable
as String?,offerName: freezed == offerName ? _self.offerName : offerName // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as num,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num,addons: freezed == addons ? _self._addons : addons // ignore: cast_nullable_to_non_nullable
as Map<String, num>?,
  ));
}


}

// dart format on
