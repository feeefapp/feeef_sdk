// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreSummary&&(identical(other.orders, orders) || other.orders == orders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orders);

@override
String toString() {
  return 'StoreSummary(orders: $orders)';
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
  return _then(_self.copyWith(
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
int get hashCode => Object.hash(runtimeType,orders);

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

 int get total; int get draft; int get pending; int get review; int get processing; int get accepted; int get completed; int get cancelled;
/// Create a copy of StoreOrdersSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreOrdersSummaryCopyWith<StoreOrdersSummary> get copyWith => _$StoreOrdersSummaryCopyWithImpl<StoreOrdersSummary>(this as StoreOrdersSummary, _$identity);

  /// Serializes this StoreOrdersSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreOrdersSummary&&(identical(other.total, total) || other.total == total)&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.review, review) || other.review == review)&&(identical(other.processing, processing) || other.processing == processing)&&(identical(other.accepted, accepted) || other.accepted == accepted)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,draft,pending,review,processing,accepted,completed,cancelled);

@override
String toString() {
  return 'StoreOrdersSummary(total: $total, draft: $draft, pending: $pending, review: $review, processing: $processing, accepted: $accepted, completed: $completed, cancelled: $cancelled)';
}


}

/// @nodoc
abstract mixin class $StoreOrdersSummaryCopyWith<$Res>  {
  factory $StoreOrdersSummaryCopyWith(StoreOrdersSummary value, $Res Function(StoreOrdersSummary) _then) = _$StoreOrdersSummaryCopyWithImpl;
@useResult
$Res call({
 int total, int draft, int pending, int review, int processing, int accepted, int completed, int cancelled
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
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? draft = null,Object? pending = null,Object? review = null,Object? processing = null,Object? accepted = null,Object? completed = null,Object? cancelled = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as int,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as int,processing: null == processing ? _self.processing : processing // ignore: cast_nullable_to_non_nullable
as int,accepted: null == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int draft,  int pending,  int review,  int processing,  int accepted,  int completed,  int cancelled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreOrdersSummary() when $default != null:
return $default(_that.total,_that.draft,_that.pending,_that.review,_that.processing,_that.accepted,_that.completed,_that.cancelled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int draft,  int pending,  int review,  int processing,  int accepted,  int completed,  int cancelled)  $default,) {final _that = this;
switch (_that) {
case _StoreOrdersSummary():
return $default(_that.total,_that.draft,_that.pending,_that.review,_that.processing,_that.accepted,_that.completed,_that.cancelled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int draft,  int pending,  int review,  int processing,  int accepted,  int completed,  int cancelled)?  $default,) {final _that = this;
switch (_that) {
case _StoreOrdersSummary() when $default != null:
return $default(_that.total,_that.draft,_that.pending,_that.review,_that.processing,_that.accepted,_that.completed,_that.cancelled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreOrdersSummary implements StoreOrdersSummary {
   _StoreOrdersSummary({required this.total, required this.draft, required this.pending, required this.review, required this.processing, required this.accepted, required this.completed, required this.cancelled});
  factory _StoreOrdersSummary.fromJson(Map<String, dynamic> json) => _$StoreOrdersSummaryFromJson(json);

@override final  int total;
@override final  int draft;
@override final  int pending;
@override final  int review;
@override final  int processing;
@override final  int accepted;
@override final  int completed;
@override final  int cancelled;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreOrdersSummary&&(identical(other.total, total) || other.total == total)&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.review, review) || other.review == review)&&(identical(other.processing, processing) || other.processing == processing)&&(identical(other.accepted, accepted) || other.accepted == accepted)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,draft,pending,review,processing,accepted,completed,cancelled);

@override
String toString() {
  return 'StoreOrdersSummary(total: $total, draft: $draft, pending: $pending, review: $review, processing: $processing, accepted: $accepted, completed: $completed, cancelled: $cancelled)';
}


}

/// @nodoc
abstract mixin class _$StoreOrdersSummaryCopyWith<$Res> implements $StoreOrdersSummaryCopyWith<$Res> {
  factory _$StoreOrdersSummaryCopyWith(_StoreOrdersSummary value, $Res Function(_StoreOrdersSummary) _then) = __$StoreOrdersSummaryCopyWithImpl;
@override @useResult
$Res call({
 int total, int draft, int pending, int review, int processing, int accepted, int completed, int cancelled
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
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? draft = null,Object? pending = null,Object? review = null,Object? processing = null,Object? accepted = null,Object? completed = null,Object? cancelled = null,}) {
  return _then(_StoreOrdersSummary(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as int,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as int,processing: null == processing ? _self.processing : processing // ignore: cast_nullable_to_non_nullable
as int,accepted: null == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
