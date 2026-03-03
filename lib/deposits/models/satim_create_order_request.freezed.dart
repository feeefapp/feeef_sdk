// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'satim_create_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SatimCreateOrderRequest {

 num get amount; String get currency; String? get depositId; String get language; String? get description;
/// Create a copy of SatimCreateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SatimCreateOrderRequestCopyWith<SatimCreateOrderRequest> get copyWith => _$SatimCreateOrderRequestCopyWithImpl<SatimCreateOrderRequest>(this as SatimCreateOrderRequest, _$identity);

  /// Serializes this SatimCreateOrderRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SatimCreateOrderRequest&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.depositId, depositId) || other.depositId == depositId)&&(identical(other.language, language) || other.language == language)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,currency,depositId,language,description);

@override
String toString() {
  return 'SatimCreateOrderRequest(amount: $amount, currency: $currency, depositId: $depositId, language: $language, description: $description)';
}


}

/// @nodoc
abstract mixin class $SatimCreateOrderRequestCopyWith<$Res>  {
  factory $SatimCreateOrderRequestCopyWith(SatimCreateOrderRequest value, $Res Function(SatimCreateOrderRequest) _then) = _$SatimCreateOrderRequestCopyWithImpl;
@useResult
$Res call({
 num amount, String currency, String? depositId, String language, String? description
});




}
/// @nodoc
class _$SatimCreateOrderRequestCopyWithImpl<$Res>
    implements $SatimCreateOrderRequestCopyWith<$Res> {
  _$SatimCreateOrderRequestCopyWithImpl(this._self, this._then);

  final SatimCreateOrderRequest _self;
  final $Res Function(SatimCreateOrderRequest) _then;

/// Create a copy of SatimCreateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? currency = null,Object? depositId = freezed,Object? language = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,depositId: freezed == depositId ? _self.depositId : depositId // ignore: cast_nullable_to_non_nullable
as String?,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SatimCreateOrderRequest].
extension SatimCreateOrderRequestPatterns on SatimCreateOrderRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SatimCreateOrderRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SatimCreateOrderRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SatimCreateOrderRequest value)  $default,){
final _that = this;
switch (_that) {
case _SatimCreateOrderRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SatimCreateOrderRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SatimCreateOrderRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num amount,  String currency,  String? depositId,  String language,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SatimCreateOrderRequest() when $default != null:
return $default(_that.amount,_that.currency,_that.depositId,_that.language,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num amount,  String currency,  String? depositId,  String language,  String? description)  $default,) {final _that = this;
switch (_that) {
case _SatimCreateOrderRequest():
return $default(_that.amount,_that.currency,_that.depositId,_that.language,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num amount,  String currency,  String? depositId,  String language,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _SatimCreateOrderRequest() when $default != null:
return $default(_that.amount,_that.currency,_that.depositId,_that.language,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SatimCreateOrderRequest implements SatimCreateOrderRequest {
  const _SatimCreateOrderRequest({required this.amount, this.currency = 'DZD', this.depositId, this.language = 'AR', this.description});
  factory _SatimCreateOrderRequest.fromJson(Map<String, dynamic> json) => _$SatimCreateOrderRequestFromJson(json);

@override final  num amount;
@override@JsonKey() final  String currency;
@override final  String? depositId;
@override@JsonKey() final  String language;
@override final  String? description;

/// Create a copy of SatimCreateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SatimCreateOrderRequestCopyWith<_SatimCreateOrderRequest> get copyWith => __$SatimCreateOrderRequestCopyWithImpl<_SatimCreateOrderRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SatimCreateOrderRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SatimCreateOrderRequest&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.depositId, depositId) || other.depositId == depositId)&&(identical(other.language, language) || other.language == language)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,currency,depositId,language,description);

@override
String toString() {
  return 'SatimCreateOrderRequest(amount: $amount, currency: $currency, depositId: $depositId, language: $language, description: $description)';
}


}

/// @nodoc
abstract mixin class _$SatimCreateOrderRequestCopyWith<$Res> implements $SatimCreateOrderRequestCopyWith<$Res> {
  factory _$SatimCreateOrderRequestCopyWith(_SatimCreateOrderRequest value, $Res Function(_SatimCreateOrderRequest) _then) = __$SatimCreateOrderRequestCopyWithImpl;
@override @useResult
$Res call({
 num amount, String currency, String? depositId, String language, String? description
});




}
/// @nodoc
class __$SatimCreateOrderRequestCopyWithImpl<$Res>
    implements _$SatimCreateOrderRequestCopyWith<$Res> {
  __$SatimCreateOrderRequestCopyWithImpl(this._self, this._then);

  final _SatimCreateOrderRequest _self;
  final $Res Function(_SatimCreateOrderRequest) _then;

/// Create a copy of SatimCreateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? currency = null,Object? depositId = freezed,Object? language = null,Object? description = freezed,}) {
  return _then(_SatimCreateOrderRequest(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,depositId: freezed == depositId ? _self.depositId : depositId // ignore: cast_nullable_to_non_nullable
as String?,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
