// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_addon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductAddon {

 String? get photoUrl; String get title; String? get subtitle; num? get stock; num? get price; num? get min; num? get max;
/// Create a copy of ProductAddon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductAddonCopyWith<ProductAddon> get copyWith => _$ProductAddonCopyWithImpl<ProductAddon>(this as ProductAddon, _$identity);

  /// Serializes this ProductAddon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductAddon&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.price, price) || other.price == price)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,photoUrl,title,subtitle,stock,price,min,max);

@override
String toString() {
  return 'ProductAddon(photoUrl: $photoUrl, title: $title, subtitle: $subtitle, stock: $stock, price: $price, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $ProductAddonCopyWith<$Res>  {
  factory $ProductAddonCopyWith(ProductAddon value, $Res Function(ProductAddon) _then) = _$ProductAddonCopyWithImpl;
@useResult
$Res call({
 String? photoUrl, String title, String? subtitle, num? stock, num? price, num? min, num? max
});




}
/// @nodoc
class _$ProductAddonCopyWithImpl<$Res>
    implements $ProductAddonCopyWith<$Res> {
  _$ProductAddonCopyWithImpl(this._self, this._then);

  final ProductAddon _self;
  final $Res Function(ProductAddon) _then;

/// Create a copy of ProductAddon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? photoUrl = freezed,Object? title = null,Object? subtitle = freezed,Object? stock = freezed,Object? price = freezed,Object? min = freezed,Object? max = freezed,}) {
  return _then(_self.copyWith(
photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as num?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as num?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductAddon].
extension ProductAddonPatterns on ProductAddon {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductAddon value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductAddon() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductAddon value)  $default,){
final _that = this;
switch (_that) {
case _ProductAddon():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductAddon value)?  $default,){
final _that = this;
switch (_that) {
case _ProductAddon() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? photoUrl,  String title,  String? subtitle,  num? stock,  num? price,  num? min,  num? max)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductAddon() when $default != null:
return $default(_that.photoUrl,_that.title,_that.subtitle,_that.stock,_that.price,_that.min,_that.max);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? photoUrl,  String title,  String? subtitle,  num? stock,  num? price,  num? min,  num? max)  $default,) {final _that = this;
switch (_that) {
case _ProductAddon():
return $default(_that.photoUrl,_that.title,_that.subtitle,_that.stock,_that.price,_that.min,_that.max);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? photoUrl,  String title,  String? subtitle,  num? stock,  num? price,  num? min,  num? max)?  $default,) {final _that = this;
switch (_that) {
case _ProductAddon() when $default != null:
return $default(_that.photoUrl,_that.title,_that.subtitle,_that.stock,_that.price,_that.min,_that.max);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductAddon implements ProductAddon {
   _ProductAddon({this.photoUrl, required this.title, this.subtitle, this.stock, this.price, this.min, this.max});
  factory _ProductAddon.fromJson(Map<String, dynamic> json) => _$ProductAddonFromJson(json);

@override final  String? photoUrl;
@override final  String title;
@override final  String? subtitle;
@override final  num? stock;
@override final  num? price;
@override final  num? min;
@override final  num? max;

/// Create a copy of ProductAddon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductAddonCopyWith<_ProductAddon> get copyWith => __$ProductAddonCopyWithImpl<_ProductAddon>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductAddonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductAddon&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.price, price) || other.price == price)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,photoUrl,title,subtitle,stock,price,min,max);

@override
String toString() {
  return 'ProductAddon(photoUrl: $photoUrl, title: $title, subtitle: $subtitle, stock: $stock, price: $price, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class _$ProductAddonCopyWith<$Res> implements $ProductAddonCopyWith<$Res> {
  factory _$ProductAddonCopyWith(_ProductAddon value, $Res Function(_ProductAddon) _then) = __$ProductAddonCopyWithImpl;
@override @useResult
$Res call({
 String? photoUrl, String title, String? subtitle, num? stock, num? price, num? min, num? max
});




}
/// @nodoc
class __$ProductAddonCopyWithImpl<$Res>
    implements _$ProductAddonCopyWith<$Res> {
  __$ProductAddonCopyWithImpl(this._self, this._then);

  final _ProductAddon _self;
  final $Res Function(_ProductAddon) _then;

/// Create a copy of ProductAddon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? photoUrl = freezed,Object? title = null,Object? subtitle = freezed,Object? stock = freezed,Object? price = freezed,Object? min = freezed,Object? max = freezed,}) {
  return _then(_ProductAddon(
photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as num?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as num?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
