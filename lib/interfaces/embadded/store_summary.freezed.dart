// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreSummary {

 StoreOrdersSummary get orders;
/// Create a copy of StoreSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreSummaryCopyWith<StoreSummary> get copyWith => _$StoreSummaryCopyWithImpl<StoreSummary>(this as StoreSummary, _$identity);

  /// Serializes this StoreSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreSummary&&(identical(other.orders, _this.orders) || other.orders == _this.orders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreSummary;
  return Object.hash(runtimeType,_this.orders);
}

@override
String toString() {
  final _this = this as StoreSummary;
  return 'StoreSummary(orders: ${_this.orders})';
}


}

/// @nodoc
abstract mixin class $StoreSummaryCopyWith<$Res>  {
  factory $StoreSummaryCopyWith(StoreSummary value, $Res Function(StoreSummary) _then) = _$StoreSummaryCopyWithImpl;
@useResult
$Res call({
 StoreOrdersSummary orders
});


$StoreOrdersSummaryCopyWith<$Res> get orders;

}
/// @nodoc
class _$StoreSummaryCopyWithImpl<$Res>
    implements $StoreSummaryCopyWith<$Res> {
  _$StoreSummaryCopyWithImpl(this._self, this._then);

  final StoreSummary _self;
  final $Res Function(StoreSummary) _then;

/// Create a copy of StoreSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orders = null,}) {
  return _then(StoreSummary(
orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as StoreOrdersSummary,
  ));
}
/// Create a copy of StoreSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreOrdersSummaryCopyWith<$Res> get orders {
  
  return $StoreOrdersSummaryCopyWith<$Res>(_self.orders, (value) {
    return _then(_self.copyWith(orders: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreSummary].
extension StoreSummaryPatterns on StoreSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreSummary value)  $default,){
final _that = this;
switch (_that) {
case _StoreSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreSummary value)?  $default,){
final _that = this;
switch (_that) {
case _StoreSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StoreOrdersSummary orders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreSummary() when $default != null:
return $default(_that.orders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StoreOrdersSummary orders)  $default,) {final _that = this;
switch (_that) {
case _StoreSummary():
return $default(_that.orders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StoreOrdersSummary orders)?  $default,) {final _that = this;
switch (_that) {
case _StoreSummary() when $default != null:
return $default(_that.orders);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreSummary implements StoreSummary {
   _StoreSummary({required this.orders});
  factory _StoreSummary.fromJson(Map<String, dynamic> json) => _$StoreSummaryFromJson(json);

@override final  StoreOrdersSummary orders;

/// Create a copy of StoreSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreSummaryCopyWith<_StoreSummary> get copyWith => __$StoreSummaryCopyWithImpl<_StoreSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreSummary&&(identical(other.orders, orders) || other.orders == orders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,orders);
}

@override
String toString() {
    return 'StoreSummary(orders: $orders)';
}


}

/// @nodoc
abstract mixin class _$StoreSummaryCopyWith<$Res> implements $StoreSummaryCopyWith<$Res> {
  factory _$StoreSummaryCopyWith(_StoreSummary value, $Res Function(_StoreSummary) _then) = __$StoreSummaryCopyWithImpl;
@override @useResult
$Res call({
 StoreOrdersSummary orders
});


@override $StoreOrdersSummaryCopyWith<$Res> get orders;

}
/// @nodoc
class __$StoreSummaryCopyWithImpl<$Res>
    implements _$StoreSummaryCopyWith<$Res> {
  __$StoreSummaryCopyWithImpl(this._self, this._then);

  final _StoreSummary _self;
  final $Res Function(_StoreSummary) _then;

/// Create a copy of StoreSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orders = null,}) {
  return _then(_StoreSummary(
orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as StoreOrdersSummary,
  ));
}

/// Create a copy of StoreSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreOrdersSummaryCopyWith<$Res> get orders {
  
  return $StoreOrdersSummaryCopyWith<$Res>(_self.orders, (value) {
    return _then(_self.copyWith(orders: value));
  });
}
}


/// @nodoc
mixin _$StoreOrdersSummary {

 int get total; int get draft; int get open; int get pack; int get ship; int get done; int get fail;
/// Create a copy of StoreOrdersSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreOrdersSummaryCopyWith<StoreOrdersSummary> get copyWith => _$StoreOrdersSummaryCopyWithImpl<StoreOrdersSummary>(this as StoreOrdersSummary, _$identity);

  /// Serializes this StoreOrdersSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreOrdersSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreOrdersSummary&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.draft, _this.draft) || other.draft == _this.draft)&&(identical(other.open, _this.open) || other.open == _this.open)&&(identical(other.pack, _this.pack) || other.pack == _this.pack)&&(identical(other.ship, _this.ship) || other.ship == _this.ship)&&(identical(other.done, _this.done) || other.done == _this.done)&&(identical(other.fail, _this.fail) || other.fail == _this.fail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreOrdersSummary;
  return Object.hash(runtimeType,_this.total,_this.draft,_this.open,_this.pack,_this.ship,_this.done,_this.fail);
}

@override
String toString() {
  final _this = this as StoreOrdersSummary;
  return 'StoreOrdersSummary(total: ${_this.total}, draft: ${_this.draft}, open: ${_this.open}, pack: ${_this.pack}, ship: ${_this.ship}, done: ${_this.done}, fail: ${_this.fail})';
}


}

/// @nodoc
abstract mixin class $StoreOrdersSummaryCopyWith<$Res>  {
  factory $StoreOrdersSummaryCopyWith(StoreOrdersSummary value, $Res Function(StoreOrdersSummary) _then) = _$StoreOrdersSummaryCopyWithImpl;
@useResult
$Res call({
 int total, int draft, int open, int pack, int ship, int done, int fail
});




}
/// @nodoc
class _$StoreOrdersSummaryCopyWithImpl<$Res>
    implements $StoreOrdersSummaryCopyWith<$Res> {
  _$StoreOrdersSummaryCopyWithImpl(this._self, this._then);

  final StoreOrdersSummary _self;
  final $Res Function(StoreOrdersSummary) _then;

/// Create a copy of StoreOrdersSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? draft = null,Object? open = null,Object? pack = null,Object? ship = null,Object? done = null,Object? fail = null,}) {
  return _then(StoreOrdersSummary(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as int,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as int,pack: null == pack ? _self.pack : pack // ignore: cast_nullable_to_non_nullable
as int,ship: null == ship ? _self.ship : ship // ignore: cast_nullable_to_non_nullable
as int,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as int,fail: null == fail ? _self.fail : fail // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreOrdersSummary].
extension StoreOrdersSummaryPatterns on StoreOrdersSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreOrdersSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreOrdersSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreOrdersSummary value)  $default,){
final _that = this;
switch (_that) {
case _StoreOrdersSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreOrdersSummary value)?  $default,){
final _that = this;
switch (_that) {
case _StoreOrdersSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int draft,  int open,  int pack,  int ship,  int done,  int fail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreOrdersSummary() when $default != null:
return $default(_that.total,_that.draft,_that.open,_that.pack,_that.ship,_that.done,_that.fail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int draft,  int open,  int pack,  int ship,  int done,  int fail)  $default,) {final _that = this;
switch (_that) {
case _StoreOrdersSummary():
return $default(_that.total,_that.draft,_that.open,_that.pack,_that.ship,_that.done,_that.fail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int draft,  int open,  int pack,  int ship,  int done,  int fail)?  $default,) {final _that = this;
switch (_that) {
case _StoreOrdersSummary() when $default != null:
return $default(_that.total,_that.draft,_that.open,_that.pack,_that.ship,_that.done,_that.fail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreOrdersSummary implements StoreOrdersSummary {
   _StoreOrdersSummary({this.total = 0, this.draft = 0, this.open = 0, this.pack = 0, this.ship = 0, this.done = 0, this.fail = 0});
  factory _StoreOrdersSummary.fromJson(Map<String, dynamic> json) => _$StoreOrdersSummaryFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int draft;
@override@JsonKey() final  int open;
@override@JsonKey() final  int pack;
@override@JsonKey() final  int ship;
@override@JsonKey() final  int done;
@override@JsonKey() final  int fail;

/// Create a copy of StoreOrdersSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreOrdersSummaryCopyWith<_StoreOrdersSummary> get copyWith => __$StoreOrdersSummaryCopyWithImpl<_StoreOrdersSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreOrdersSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreOrdersSummary&&(identical(other.total, total) || other.total == total)&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.open, open) || other.open == open)&&(identical(other.pack, pack) || other.pack == pack)&&(identical(other.ship, ship) || other.ship == ship)&&(identical(other.done, done) || other.done == done)&&(identical(other.fail, fail) || other.fail == fail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,draft,open,pack,ship,done,fail);
}

@override
String toString() {
    return 'StoreOrdersSummary(total: $total, draft: $draft, open: $open, pack: $pack, ship: $ship, done: $done, fail: $fail)';
}


}

/// @nodoc
abstract mixin class _$StoreOrdersSummaryCopyWith<$Res> implements $StoreOrdersSummaryCopyWith<$Res> {
  factory _$StoreOrdersSummaryCopyWith(_StoreOrdersSummary value, $Res Function(_StoreOrdersSummary) _then) = __$StoreOrdersSummaryCopyWithImpl;
@override @useResult
$Res call({
 int total, int draft, int open, int pack, int ship, int done, int fail
});




}
/// @nodoc
class __$StoreOrdersSummaryCopyWithImpl<$Res>
    implements _$StoreOrdersSummaryCopyWith<$Res> {
  __$StoreOrdersSummaryCopyWithImpl(this._self, this._then);

  final _StoreOrdersSummary _self;
  final $Res Function(_StoreOrdersSummary) _then;

/// Create a copy of StoreOrdersSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? draft = null,Object? open = null,Object? pack = null,Object? ship = null,Object? done = null,Object? fail = null,}) {
  return _then(_StoreOrdersSummary(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as int,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as int,pack: null == pack ? _self.pack : pack // ignore: cast_nullable_to_non_nullable
as int,ship: null == ship ? _self.ship : ship // ignore: cast_nullable_to_non_nullable
as int,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as int,fail: null == fail ? _self.fail : fail // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
