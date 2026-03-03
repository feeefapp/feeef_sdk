// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'satim_create_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SatimCreateOrderResponse {

 bool get success; Map<String, dynamic> get deposit; SatimOrderData get satim;
/// Create a copy of SatimCreateOrderResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SatimCreateOrderResponseCopyWith<SatimCreateOrderResponse> get copyWith => _$SatimCreateOrderResponseCopyWithImpl<SatimCreateOrderResponse>(this as SatimCreateOrderResponse, _$identity);

  /// Serializes this SatimCreateOrderResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SatimCreateOrderResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.deposit, deposit)&&(identical(other.satim, satim) || other.satim == satim));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(deposit),satim);

@override
String toString() {
  return 'SatimCreateOrderResponse(success: $success, deposit: $deposit, satim: $satim)';
}


}

/// @nodoc
abstract mixin class $SatimCreateOrderResponseCopyWith<$Res>  {
  factory $SatimCreateOrderResponseCopyWith(SatimCreateOrderResponse value, $Res Function(SatimCreateOrderResponse) _then) = _$SatimCreateOrderResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Map<String, dynamic> deposit, SatimOrderData satim
});


$SatimOrderDataCopyWith<$Res> get satim;

}
/// @nodoc
class _$SatimCreateOrderResponseCopyWithImpl<$Res>
    implements $SatimCreateOrderResponseCopyWith<$Res> {
  _$SatimCreateOrderResponseCopyWithImpl(this._self, this._then);

  final SatimCreateOrderResponse _self;
  final $Res Function(SatimCreateOrderResponse) _then;

/// Create a copy of SatimCreateOrderResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? deposit = null,Object? satim = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,satim: null == satim ? _self.satim : satim // ignore: cast_nullable_to_non_nullable
as SatimOrderData,
  ));
}
/// Create a copy of SatimCreateOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SatimOrderDataCopyWith<$Res> get satim {
  
  return $SatimOrderDataCopyWith<$Res>(_self.satim, (value) {
    return _then(_self.copyWith(satim: value));
  });
}
}


/// Adds pattern-matching-related methods to [SatimCreateOrderResponse].
extension SatimCreateOrderResponsePatterns on SatimCreateOrderResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SatimCreateOrderResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SatimCreateOrderResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SatimCreateOrderResponse value)  $default,){
final _that = this;
switch (_that) {
case _SatimCreateOrderResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SatimCreateOrderResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SatimCreateOrderResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Map<String, dynamic> deposit,  SatimOrderData satim)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SatimCreateOrderResponse() when $default != null:
return $default(_that.success,_that.deposit,_that.satim);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Map<String, dynamic> deposit,  SatimOrderData satim)  $default,) {final _that = this;
switch (_that) {
case _SatimCreateOrderResponse():
return $default(_that.success,_that.deposit,_that.satim);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Map<String, dynamic> deposit,  SatimOrderData satim)?  $default,) {final _that = this;
switch (_that) {
case _SatimCreateOrderResponse() when $default != null:
return $default(_that.success,_that.deposit,_that.satim);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SatimCreateOrderResponse implements SatimCreateOrderResponse {
  const _SatimCreateOrderResponse({required this.success, required final  Map<String, dynamic> deposit, required this.satim}): _deposit = deposit;
  factory _SatimCreateOrderResponse.fromJson(Map<String, dynamic> json) => _$SatimCreateOrderResponseFromJson(json);

@override final  bool success;
 final  Map<String, dynamic> _deposit;
@override Map<String, dynamic> get deposit {
  if (_deposit is EqualUnmodifiableMapView) return _deposit;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_deposit);
}

@override final  SatimOrderData satim;

/// Create a copy of SatimCreateOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SatimCreateOrderResponseCopyWith<_SatimCreateOrderResponse> get copyWith => __$SatimCreateOrderResponseCopyWithImpl<_SatimCreateOrderResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SatimCreateOrderResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SatimCreateOrderResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._deposit, _deposit)&&(identical(other.satim, satim) || other.satim == satim));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_deposit),satim);

@override
String toString() {
  return 'SatimCreateOrderResponse(success: $success, deposit: $deposit, satim: $satim)';
}


}

/// @nodoc
abstract mixin class _$SatimCreateOrderResponseCopyWith<$Res> implements $SatimCreateOrderResponseCopyWith<$Res> {
  factory _$SatimCreateOrderResponseCopyWith(_SatimCreateOrderResponse value, $Res Function(_SatimCreateOrderResponse) _then) = __$SatimCreateOrderResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Map<String, dynamic> deposit, SatimOrderData satim
});


@override $SatimOrderDataCopyWith<$Res> get satim;

}
/// @nodoc
class __$SatimCreateOrderResponseCopyWithImpl<$Res>
    implements _$SatimCreateOrderResponseCopyWith<$Res> {
  __$SatimCreateOrderResponseCopyWithImpl(this._self, this._then);

  final _SatimCreateOrderResponse _self;
  final $Res Function(_SatimCreateOrderResponse) _then;

/// Create a copy of SatimCreateOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? deposit = null,Object? satim = null,}) {
  return _then(_SatimCreateOrderResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,deposit: null == deposit ? _self._deposit : deposit // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,satim: null == satim ? _self.satim : satim // ignore: cast_nullable_to_non_nullable
as SatimOrderData,
  ));
}

/// Create a copy of SatimCreateOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SatimOrderDataCopyWith<$Res> get satim {
  
  return $SatimOrderDataCopyWith<$Res>(_self.satim, (value) {
    return _then(_self.copyWith(satim: value));
  });
}
}


/// @nodoc
mixin _$SatimOrderData {

 String get orderId; String get formUrl; String get errorCode; String? get errorMessage;
/// Create a copy of SatimOrderData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SatimOrderDataCopyWith<SatimOrderData> get copyWith => _$SatimOrderDataCopyWithImpl<SatimOrderData>(this as SatimOrderData, _$identity);

  /// Serializes this SatimOrderData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SatimOrderData&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.formUrl, formUrl) || other.formUrl == formUrl)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,formUrl,errorCode,errorMessage);

@override
String toString() {
  return 'SatimOrderData(orderId: $orderId, formUrl: $formUrl, errorCode: $errorCode, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SatimOrderDataCopyWith<$Res>  {
  factory $SatimOrderDataCopyWith(SatimOrderData value, $Res Function(SatimOrderData) _then) = _$SatimOrderDataCopyWithImpl;
@useResult
$Res call({
 String orderId, String formUrl, String errorCode, String? errorMessage
});




}
/// @nodoc
class _$SatimOrderDataCopyWithImpl<$Res>
    implements $SatimOrderDataCopyWith<$Res> {
  _$SatimOrderDataCopyWithImpl(this._self, this._then);

  final SatimOrderData _self;
  final $Res Function(SatimOrderData) _then;

/// Create a copy of SatimOrderData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? formUrl = null,Object? errorCode = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,formUrl: null == formUrl ? _self.formUrl : formUrl // ignore: cast_nullable_to_non_nullable
as String,errorCode: null == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SatimOrderData].
extension SatimOrderDataPatterns on SatimOrderData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SatimOrderData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SatimOrderData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SatimOrderData value)  $default,){
final _that = this;
switch (_that) {
case _SatimOrderData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SatimOrderData value)?  $default,){
final _that = this;
switch (_that) {
case _SatimOrderData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  String formUrl,  String errorCode,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SatimOrderData() when $default != null:
return $default(_that.orderId,_that.formUrl,_that.errorCode,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  String formUrl,  String errorCode,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SatimOrderData():
return $default(_that.orderId,_that.formUrl,_that.errorCode,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  String formUrl,  String errorCode,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SatimOrderData() when $default != null:
return $default(_that.orderId,_that.formUrl,_that.errorCode,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SatimOrderData implements SatimOrderData {
  const _SatimOrderData({required this.orderId, required this.formUrl, required this.errorCode, this.errorMessage});
  factory _SatimOrderData.fromJson(Map<String, dynamic> json) => _$SatimOrderDataFromJson(json);

@override final  String orderId;
@override final  String formUrl;
@override final  String errorCode;
@override final  String? errorMessage;

/// Create a copy of SatimOrderData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SatimOrderDataCopyWith<_SatimOrderData> get copyWith => __$SatimOrderDataCopyWithImpl<_SatimOrderData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SatimOrderDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SatimOrderData&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.formUrl, formUrl) || other.formUrl == formUrl)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,formUrl,errorCode,errorMessage);

@override
String toString() {
  return 'SatimOrderData(orderId: $orderId, formUrl: $formUrl, errorCode: $errorCode, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SatimOrderDataCopyWith<$Res> implements $SatimOrderDataCopyWith<$Res> {
  factory _$SatimOrderDataCopyWith(_SatimOrderData value, $Res Function(_SatimOrderData) _then) = __$SatimOrderDataCopyWithImpl;
@override @useResult
$Res call({
 String orderId, String formUrl, String errorCode, String? errorMessage
});




}
/// @nodoc
class __$SatimOrderDataCopyWithImpl<$Res>
    implements _$SatimOrderDataCopyWith<$Res> {
  __$SatimOrderDataCopyWithImpl(this._self, this._then);

  final _SatimOrderData _self;
  final $Res Function(_SatimOrderData) _then;

/// Create a copy of SatimOrderData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? formUrl = null,Object? errorCode = null,Object? errorMessage = freezed,}) {
  return _then(_SatimOrderData(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,formUrl: null == formUrl ? _self.formUrl : formUrl // ignore: cast_nullable_to_non_nullable
as String,errorCode: null == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
