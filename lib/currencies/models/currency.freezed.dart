// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Currency {

/// ISO 4217 currency code (e.g., USD, EUR, DZD)
 String get code;/// Currency name (e.g., US Dollar, Euro, Algerian Dinar)
 String get name;/// Currency symbol (e.g., $, €, د.ج)
 String? get symbol;/// Number of decimal places for this currency (0-8)
 int get decimals;/// Exchange rate to USD (1 USD = rate * this currency)
 num get rate;/// Additional metadata as key-value pairs
 Map<String, dynamic> get metadata;/// Creation timestamp
 DateTime get createdAt;
/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyCopyWith<Currency> get copyWith => _$CurrencyCopyWithImpl<Currency>(this as Currency, _$identity);

  /// Serializes this Currency to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Currency&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.decimals, decimals) || other.decimals == decimals)&&(identical(other.rate, rate) || other.rate == rate)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,symbol,decimals,rate,const DeepCollectionEquality().hash(metadata),createdAt);

@override
String toString() {
  return 'Currency(code: $code, name: $name, symbol: $symbol, decimals: $decimals, rate: $rate, metadata: $metadata, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CurrencyCopyWith<$Res>  {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) _then) = _$CurrencyCopyWithImpl;
@useResult
$Res call({
 String code, String name, String? symbol, int decimals, num rate, Map<String, dynamic> metadata, DateTime createdAt
});




}
/// @nodoc
class _$CurrencyCopyWithImpl<$Res>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._self, this._then);

  final Currency _self;
  final $Res Function(Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? symbol = freezed,Object? decimals = null,Object? rate = null,Object? metadata = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,decimals: null == decimals ? _self.decimals : decimals // ignore: cast_nullable_to_non_nullable
as int,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as num,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Currency].
extension CurrencyPatterns on Currency {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Currency value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Currency value)  $default,){
final _that = this;
switch (_that) {
case _Currency():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Currency value)?  $default,){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String? symbol,  int decimals,  num rate,  Map<String, dynamic> metadata,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.code,_that.name,_that.symbol,_that.decimals,_that.rate,_that.metadata,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String? symbol,  int decimals,  num rate,  Map<String, dynamic> metadata,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Currency():
return $default(_that.code,_that.name,_that.symbol,_that.decimals,_that.rate,_that.metadata,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String? symbol,  int decimals,  num rate,  Map<String, dynamic> metadata,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.code,_that.name,_that.symbol,_that.decimals,_that.rate,_that.metadata,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Currency extends Currency {
   _Currency({required this.code, required this.name, this.symbol, required this.decimals, required this.rate, final  Map<String, dynamic> metadata = const {}, required this.createdAt}): _metadata = metadata,super._();
  factory _Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);

/// ISO 4217 currency code (e.g., USD, EUR, DZD)
@override final  String code;
/// Currency name (e.g., US Dollar, Euro, Algerian Dinar)
@override final  String name;
/// Currency symbol (e.g., $, €, د.ج)
@override final  String? symbol;
/// Number of decimal places for this currency (0-8)
@override final  int decimals;
/// Exchange rate to USD (1 USD = rate * this currency)
@override final  num rate;
/// Additional metadata as key-value pairs
 final  Map<String, dynamic> _metadata;
/// Additional metadata as key-value pairs
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

/// Creation timestamp
@override final  DateTime createdAt;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyCopyWith<_Currency> get copyWith => __$CurrencyCopyWithImpl<_Currency>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrencyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Currency&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.decimals, decimals) || other.decimals == decimals)&&(identical(other.rate, rate) || other.rate == rate)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,symbol,decimals,rate,const DeepCollectionEquality().hash(_metadata),createdAt);

@override
String toString() {
  return 'Currency(code: $code, name: $name, symbol: $symbol, decimals: $decimals, rate: $rate, metadata: $metadata, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) _then) = __$CurrencyCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String? symbol, int decimals, num rate, Map<String, dynamic> metadata, DateTime createdAt
});




}
/// @nodoc
class __$CurrencyCopyWithImpl<$Res>
    implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(this._self, this._then);

  final _Currency _self;
  final $Res Function(_Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? symbol = freezed,Object? decimals = null,Object? rate = null,Object? metadata = null,Object? createdAt = null,}) {
  return _then(_Currency(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,decimals: null == decimals ? _self.decimals : decimals // ignore: cast_nullable_to_non_nullable
as int,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as num,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$CurrencyCreate {

/// ISO 4217 currency code (e.g., USD, EUR, DZD)
 String get code;/// Currency name (e.g., US Dollar, Euro, Algerian Dinar)
 String get name;/// Currency symbol (e.g., $, €, د.ج)
 String? get symbol;/// Number of decimal places for this currency (0-8)
 int get decimals;/// Exchange rate to USD (1 USD = rate * this currency)
 num get rate;/// Additional metadata as key-value pairs
 Map<String, dynamic>? get metadata;
/// Create a copy of CurrencyCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyCreateCopyWith<CurrencyCreate> get copyWith => _$CurrencyCreateCopyWithImpl<CurrencyCreate>(this as CurrencyCreate, _$identity);

  /// Serializes this CurrencyCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrencyCreate&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.decimals, decimals) || other.decimals == decimals)&&(identical(other.rate, rate) || other.rate == rate)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,symbol,decimals,rate,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'CurrencyCreate(code: $code, name: $name, symbol: $symbol, decimals: $decimals, rate: $rate, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $CurrencyCreateCopyWith<$Res>  {
  factory $CurrencyCreateCopyWith(CurrencyCreate value, $Res Function(CurrencyCreate) _then) = _$CurrencyCreateCopyWithImpl;
@useResult
$Res call({
 String code, String name, String? symbol, int decimals, num rate, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$CurrencyCreateCopyWithImpl<$Res>
    implements $CurrencyCreateCopyWith<$Res> {
  _$CurrencyCreateCopyWithImpl(this._self, this._then);

  final CurrencyCreate _self;
  final $Res Function(CurrencyCreate) _then;

/// Create a copy of CurrencyCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? symbol = freezed,Object? decimals = null,Object? rate = null,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,decimals: null == decimals ? _self.decimals : decimals // ignore: cast_nullable_to_non_nullable
as int,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as num,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrencyCreate].
extension CurrencyCreatePatterns on CurrencyCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrencyCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrencyCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrencyCreate value)  $default,){
final _that = this;
switch (_that) {
case _CurrencyCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrencyCreate value)?  $default,){
final _that = this;
switch (_that) {
case _CurrencyCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String? symbol,  int decimals,  num rate,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrencyCreate() when $default != null:
return $default(_that.code,_that.name,_that.symbol,_that.decimals,_that.rate,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String? symbol,  int decimals,  num rate,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _CurrencyCreate():
return $default(_that.code,_that.name,_that.symbol,_that.decimals,_that.rate,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String? symbol,  int decimals,  num rate,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _CurrencyCreate() when $default != null:
return $default(_that.code,_that.name,_that.symbol,_that.decimals,_that.rate,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurrencyCreate implements CurrencyCreate {
  const _CurrencyCreate({required this.code, required this.name, this.symbol, required this.decimals, required this.rate, final  Map<String, dynamic>? metadata = const {}}): _metadata = metadata;
  factory _CurrencyCreate.fromJson(Map<String, dynamic> json) => _$CurrencyCreateFromJson(json);

/// ISO 4217 currency code (e.g., USD, EUR, DZD)
@override final  String code;
/// Currency name (e.g., US Dollar, Euro, Algerian Dinar)
@override final  String name;
/// Currency symbol (e.g., $, €, د.ج)
@override final  String? symbol;
/// Number of decimal places for this currency (0-8)
@override final  int decimals;
/// Exchange rate to USD (1 USD = rate * this currency)
@override final  num rate;
/// Additional metadata as key-value pairs
 final  Map<String, dynamic>? _metadata;
/// Additional metadata as key-value pairs
@override@JsonKey() Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of CurrencyCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyCreateCopyWith<_CurrencyCreate> get copyWith => __$CurrencyCreateCopyWithImpl<_CurrencyCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrencyCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrencyCreate&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.decimals, decimals) || other.decimals == decimals)&&(identical(other.rate, rate) || other.rate == rate)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,symbol,decimals,rate,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'CurrencyCreate(code: $code, name: $name, symbol: $symbol, decimals: $decimals, rate: $rate, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$CurrencyCreateCopyWith<$Res> implements $CurrencyCreateCopyWith<$Res> {
  factory _$CurrencyCreateCopyWith(_CurrencyCreate value, $Res Function(_CurrencyCreate) _then) = __$CurrencyCreateCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String? symbol, int decimals, num rate, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$CurrencyCreateCopyWithImpl<$Res>
    implements _$CurrencyCreateCopyWith<$Res> {
  __$CurrencyCreateCopyWithImpl(this._self, this._then);

  final _CurrencyCreate _self;
  final $Res Function(_CurrencyCreate) _then;

/// Create a copy of CurrencyCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? symbol = freezed,Object? decimals = null,Object? rate = null,Object? metadata = freezed,}) {
  return _then(_CurrencyCreate(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,decimals: null == decimals ? _self.decimals : decimals // ignore: cast_nullable_to_non_nullable
as int,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as num,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$CurrencyUpdate {

/// Currency name (e.g., US Dollar, Euro, Algerian Dinar)
 String? get name;/// Currency symbol (e.g., $, €, د.ج)
 String? get symbol;/// Number of decimal places for this currency (0-8)
 int? get decimals;/// Exchange rate to USD (1 USD = rate * this currency)
 num? get rate;/// Additional metadata as key-value pairs
 Map<String, dynamic>? get metadata; List<String> get setToNull;
/// Create a copy of CurrencyUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyUpdateCopyWith<CurrencyUpdate> get copyWith => _$CurrencyUpdateCopyWithImpl<CurrencyUpdate>(this as CurrencyUpdate, _$identity);

  /// Serializes this CurrencyUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrencyUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.decimals, decimals) || other.decimals == decimals)&&(identical(other.rate, rate) || other.rate == rate)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,symbol,decimals,rate,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'CurrencyUpdate(name: $name, symbol: $symbol, decimals: $decimals, rate: $rate, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $CurrencyUpdateCopyWith<$Res>  {
  factory $CurrencyUpdateCopyWith(CurrencyUpdate value, $Res Function(CurrencyUpdate) _then) = _$CurrencyUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? symbol, int? decimals, num? rate, Map<String, dynamic>? metadata, List<String> setToNull
});




}
/// @nodoc
class _$CurrencyUpdateCopyWithImpl<$Res>
    implements $CurrencyUpdateCopyWith<$Res> {
  _$CurrencyUpdateCopyWithImpl(this._self, this._then);

  final CurrencyUpdate _self;
  final $Res Function(CurrencyUpdate) _then;

/// Create a copy of CurrencyUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? symbol = freezed,Object? decimals = freezed,Object? rate = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,decimals: freezed == decimals ? _self.decimals : decimals // ignore: cast_nullable_to_non_nullable
as int?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as num?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrencyUpdate].
extension CurrencyUpdatePatterns on CurrencyUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrencyUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrencyUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrencyUpdate value)  $default,){
final _that = this;
switch (_that) {
case _CurrencyUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrencyUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _CurrencyUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? symbol,  int? decimals,  num? rate,  Map<String, dynamic>? metadata,  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrencyUpdate() when $default != null:
return $default(_that.name,_that.symbol,_that.decimals,_that.rate,_that.metadata,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? symbol,  int? decimals,  num? rate,  Map<String, dynamic>? metadata,  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _CurrencyUpdate():
return $default(_that.name,_that.symbol,_that.decimals,_that.rate,_that.metadata,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? symbol,  int? decimals,  num? rate,  Map<String, dynamic>? metadata,  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _CurrencyUpdate() when $default != null:
return $default(_that.name,_that.symbol,_that.decimals,_that.rate,_that.metadata,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurrencyUpdate implements CurrencyUpdate {
  const _CurrencyUpdate({this.name, this.symbol, this.decimals, this.rate, final  Map<String, dynamic>? metadata, final  List<String> setToNull = const []}): _metadata = metadata,_setToNull = setToNull;
  factory _CurrencyUpdate.fromJson(Map<String, dynamic> json) => _$CurrencyUpdateFromJson(json);

/// Currency name (e.g., US Dollar, Euro, Algerian Dinar)
@override final  String? name;
/// Currency symbol (e.g., $, €, د.ج)
@override final  String? symbol;
/// Number of decimal places for this currency (0-8)
@override final  int? decimals;
/// Exchange rate to USD (1 USD = rate * this currency)
@override final  num? rate;
/// Additional metadata as key-value pairs
 final  Map<String, dynamic>? _metadata;
/// Additional metadata as key-value pairs
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String> _setToNull;
@override@JsonKey() List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of CurrencyUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyUpdateCopyWith<_CurrencyUpdate> get copyWith => __$CurrencyUpdateCopyWithImpl<_CurrencyUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrencyUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrencyUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.decimals, decimals) || other.decimals == decimals)&&(identical(other.rate, rate) || other.rate == rate)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,symbol,decimals,rate,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'CurrencyUpdate(name: $name, symbol: $symbol, decimals: $decimals, rate: $rate, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$CurrencyUpdateCopyWith<$Res> implements $CurrencyUpdateCopyWith<$Res> {
  factory _$CurrencyUpdateCopyWith(_CurrencyUpdate value, $Res Function(_CurrencyUpdate) _then) = __$CurrencyUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? symbol, int? decimals, num? rate, Map<String, dynamic>? metadata, List<String> setToNull
});




}
/// @nodoc
class __$CurrencyUpdateCopyWithImpl<$Res>
    implements _$CurrencyUpdateCopyWith<$Res> {
  __$CurrencyUpdateCopyWithImpl(this._self, this._then);

  final _CurrencyUpdate _self;
  final $Res Function(_CurrencyUpdate) _then;

/// Create a copy of CurrencyUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? symbol = freezed,Object? decimals = freezed,Object? rate = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_CurrencyUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,decimals: freezed == decimals ? _self.decimals : decimals // ignore: cast_nullable_to_non_nullable
as int?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as num?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
