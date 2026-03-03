// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductVariant {

 String get name; ProductVariantView get view; bool get required; List<ProductVariantOption> get options;
/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<ProductVariant> get copyWith => _$ProductVariantCopyWithImpl<ProductVariant>(this as ProductVariant, _$identity);

  /// Serializes this ProductVariant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductVariant&&(identical(other.name, name) || other.name == name)&&(identical(other.view, view) || other.view == view)&&(identical(other.required, required) || other.required == required)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,view,required,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'ProductVariant(name: $name, view: $view, required: $required, options: $options)';
}


}

/// @nodoc
abstract mixin class $ProductVariantCopyWith<$Res>  {
  factory $ProductVariantCopyWith(ProductVariant value, $Res Function(ProductVariant) _then) = _$ProductVariantCopyWithImpl;
@useResult
$Res call({
 String name, ProductVariantView view, bool required, List<ProductVariantOption> options
});




}
/// @nodoc
class _$ProductVariantCopyWithImpl<$Res>
    implements $ProductVariantCopyWith<$Res> {
  _$ProductVariantCopyWithImpl(this._self, this._then);

  final ProductVariant _self;
  final $Res Function(ProductVariant) _then;

/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? view = null,Object? required = null,Object? options = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,view: null == view ? _self.view : view // ignore: cast_nullable_to_non_nullable
as ProductVariantView,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<ProductVariantOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductVariant].
extension ProductVariantPatterns on ProductVariant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductVariant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductVariant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductVariant value)  $default,){
final _that = this;
switch (_that) {
case _ProductVariant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductVariant value)?  $default,){
final _that = this;
switch (_that) {
case _ProductVariant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  ProductVariantView view,  bool required,  List<ProductVariantOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductVariant() when $default != null:
return $default(_that.name,_that.view,_that.required,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  ProductVariantView view,  bool required,  List<ProductVariantOption> options)  $default,) {final _that = this;
switch (_that) {
case _ProductVariant():
return $default(_that.name,_that.view,_that.required,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  ProductVariantView view,  bool required,  List<ProductVariantOption> options)?  $default,) {final _that = this;
switch (_that) {
case _ProductVariant() when $default != null:
return $default(_that.name,_that.view,_that.required,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductVariant implements ProductVariant {
   _ProductVariant({this.name = "option", this.view = ProductVariantView.chips, this.required = false, final  List<ProductVariantOption> options = const []}): _options = options;
  factory _ProductVariant.fromJson(Map<String, dynamic> json) => _$ProductVariantFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  ProductVariantView view;
@override@JsonKey() final  bool required;
 final  List<ProductVariantOption> _options;
@override@JsonKey() List<ProductVariantOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductVariantCopyWith<_ProductVariant> get copyWith => __$ProductVariantCopyWithImpl<_ProductVariant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductVariantToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductVariant&&(identical(other.name, name) || other.name == name)&&(identical(other.view, view) || other.view == view)&&(identical(other.required, required) || other.required == required)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,view,required,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'ProductVariant(name: $name, view: $view, required: $required, options: $options)';
}


}

/// @nodoc
abstract mixin class _$ProductVariantCopyWith<$Res> implements $ProductVariantCopyWith<$Res> {
  factory _$ProductVariantCopyWith(_ProductVariant value, $Res Function(_ProductVariant) _then) = __$ProductVariantCopyWithImpl;
@override @useResult
$Res call({
 String name, ProductVariantView view, bool required, List<ProductVariantOption> options
});




}
/// @nodoc
class __$ProductVariantCopyWithImpl<$Res>
    implements _$ProductVariantCopyWith<$Res> {
  __$ProductVariantCopyWithImpl(this._self, this._then);

  final _ProductVariant _self;
  final $Res Function(_ProductVariant) _then;

/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? view = null,Object? required = null,Object? options = null,}) {
  return _then(_ProductVariant(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,view: null == view ? _self.view : view // ignore: cast_nullable_to_non_nullable
as ProductVariantView,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<ProductVariantOption>,
  ));
}


}


/// @nodoc
mixin _$ProductVariantOption {

 String get name; bool get hidden; VariantOptionType get type; dynamic get value; ProductVariant? get child;//
 String? get sku; num? get price; num? get discount; num? get stock; num? get sold; bool get mustSelectChild;
/// Create a copy of ProductVariantOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductVariantOptionCopyWith<ProductVariantOption> get copyWith => _$ProductVariantOptionCopyWithImpl<ProductVariantOption>(this as ProductVariantOption, _$identity);

  /// Serializes this ProductVariantOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductVariantOption&&(identical(other.name, name) || other.name == name)&&(identical(other.hidden, hidden) || other.hidden == hidden)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.child, child) || other.child == child)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.sold, sold) || other.sold == sold)&&(identical(other.mustSelectChild, mustSelectChild) || other.mustSelectChild == mustSelectChild));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,hidden,type,const DeepCollectionEquality().hash(value),child,sku,price,discount,stock,sold,mustSelectChild);

@override
String toString() {
  return 'ProductVariantOption(name: $name, hidden: $hidden, type: $type, value: $value, child: $child, sku: $sku, price: $price, discount: $discount, stock: $stock, sold: $sold, mustSelectChild: $mustSelectChild)';
}


}

/// @nodoc
abstract mixin class $ProductVariantOptionCopyWith<$Res>  {
  factory $ProductVariantOptionCopyWith(ProductVariantOption value, $Res Function(ProductVariantOption) _then) = _$ProductVariantOptionCopyWithImpl;
@useResult
$Res call({
 String name, bool hidden, VariantOptionType type, dynamic value, ProductVariant? child, String? sku, num? price, num? discount, num? stock, num? sold, bool mustSelectChild
});


$ProductVariantCopyWith<$Res>? get child;

}
/// @nodoc
class _$ProductVariantOptionCopyWithImpl<$Res>
    implements $ProductVariantOptionCopyWith<$Res> {
  _$ProductVariantOptionCopyWithImpl(this._self, this._then);

  final ProductVariantOption _self;
  final $Res Function(ProductVariantOption) _then;

/// Create a copy of ProductVariantOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? hidden = null,Object? type = null,Object? value = freezed,Object? child = freezed,Object? sku = freezed,Object? price = freezed,Object? discount = freezed,Object? stock = freezed,Object? sold = freezed,Object? mustSelectChild = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,hidden: null == hidden ? _self.hidden : hidden // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as VariantOptionType,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as ProductVariant?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as num?,sold: freezed == sold ? _self.sold : sold // ignore: cast_nullable_to_non_nullable
as num?,mustSelectChild: null == mustSelectChild ? _self.mustSelectChild : mustSelectChild // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProductVariantOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<$Res>? get child {
    if (_self.child == null) {
    return null;
  }

  return $ProductVariantCopyWith<$Res>(_self.child!, (value) {
    return _then(_self.copyWith(child: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductVariantOption].
extension ProductVariantOptionPatterns on ProductVariantOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductVariantOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductVariantOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductVariantOption value)  $default,){
final _that = this;
switch (_that) {
case _ProductVariantOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductVariantOption value)?  $default,){
final _that = this;
switch (_that) {
case _ProductVariantOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  bool hidden,  VariantOptionType type,  dynamic value,  ProductVariant? child,  String? sku,  num? price,  num? discount,  num? stock,  num? sold,  bool mustSelectChild)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductVariantOption() when $default != null:
return $default(_that.name,_that.hidden,_that.type,_that.value,_that.child,_that.sku,_that.price,_that.discount,_that.stock,_that.sold,_that.mustSelectChild);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  bool hidden,  VariantOptionType type,  dynamic value,  ProductVariant? child,  String? sku,  num? price,  num? discount,  num? stock,  num? sold,  bool mustSelectChild)  $default,) {final _that = this;
switch (_that) {
case _ProductVariantOption():
return $default(_that.name,_that.hidden,_that.type,_that.value,_that.child,_that.sku,_that.price,_that.discount,_that.stock,_that.sold,_that.mustSelectChild);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  bool hidden,  VariantOptionType type,  dynamic value,  ProductVariant? child,  String? sku,  num? price,  num? discount,  num? stock,  num? sold,  bool mustSelectChild)?  $default,) {final _that = this;
switch (_that) {
case _ProductVariantOption() when $default != null:
return $default(_that.name,_that.hidden,_that.type,_that.value,_that.child,_that.sku,_that.price,_that.discount,_that.stock,_that.sold,_that.mustSelectChild);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductVariantOption implements ProductVariantOption {
   _ProductVariantOption({this.name = "option", this.hidden = false, this.type = VariantOptionType.text, this.value, this.child, this.sku, this.price, this.discount, this.stock, this.sold, this.mustSelectChild = false});
  factory _ProductVariantOption.fromJson(Map<String, dynamic> json) => _$ProductVariantOptionFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  bool hidden;
@override@JsonKey() final  VariantOptionType type;
@override final  dynamic value;
@override final  ProductVariant? child;
//
@override final  String? sku;
@override final  num? price;
@override final  num? discount;
@override final  num? stock;
@override final  num? sold;
@override@JsonKey() final  bool mustSelectChild;

/// Create a copy of ProductVariantOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductVariantOptionCopyWith<_ProductVariantOption> get copyWith => __$ProductVariantOptionCopyWithImpl<_ProductVariantOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductVariantOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductVariantOption&&(identical(other.name, name) || other.name == name)&&(identical(other.hidden, hidden) || other.hidden == hidden)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.child, child) || other.child == child)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.sold, sold) || other.sold == sold)&&(identical(other.mustSelectChild, mustSelectChild) || other.mustSelectChild == mustSelectChild));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,hidden,type,const DeepCollectionEquality().hash(value),child,sku,price,discount,stock,sold,mustSelectChild);

@override
String toString() {
  return 'ProductVariantOption(name: $name, hidden: $hidden, type: $type, value: $value, child: $child, sku: $sku, price: $price, discount: $discount, stock: $stock, sold: $sold, mustSelectChild: $mustSelectChild)';
}


}

/// @nodoc
abstract mixin class _$ProductVariantOptionCopyWith<$Res> implements $ProductVariantOptionCopyWith<$Res> {
  factory _$ProductVariantOptionCopyWith(_ProductVariantOption value, $Res Function(_ProductVariantOption) _then) = __$ProductVariantOptionCopyWithImpl;
@override @useResult
$Res call({
 String name, bool hidden, VariantOptionType type, dynamic value, ProductVariant? child, String? sku, num? price, num? discount, num? stock, num? sold, bool mustSelectChild
});


@override $ProductVariantCopyWith<$Res>? get child;

}
/// @nodoc
class __$ProductVariantOptionCopyWithImpl<$Res>
    implements _$ProductVariantOptionCopyWith<$Res> {
  __$ProductVariantOptionCopyWithImpl(this._self, this._then);

  final _ProductVariantOption _self;
  final $Res Function(_ProductVariantOption) _then;

/// Create a copy of ProductVariantOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? hidden = null,Object? type = null,Object? value = freezed,Object? child = freezed,Object? sku = freezed,Object? price = freezed,Object? discount = freezed,Object? stock = freezed,Object? sold = freezed,Object? mustSelectChild = null,}) {
  return _then(_ProductVariantOption(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,hidden: null == hidden ? _self.hidden : hidden // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as VariantOptionType,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as ProductVariant?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as num?,sold: freezed == sold ? _self.sold : sold // ignore: cast_nullable_to_non_nullable
as num?,mustSelectChild: null == mustSelectChild ? _self.mustSelectChild : mustSelectChild // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProductVariantOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<$Res>? get child {
    if (_self.child == null) {
    return null;
  }

  return $ProductVariantCopyWith<$Res>(_self.child!, (value) {
    return _then(_self.copyWith(child: value));
  });
}
}

// dart format on
