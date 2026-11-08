// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_security_claims.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderSecurityGeo {

/// ISO 3166-1 alpha-2 country code.
@JsonKey(name: SecurityGeoJsonKeys.geoCountry, fromJson: securityGeoValueFromJson) String? get country;/// Region / state / wilaya name as given by the edge geo database.
@JsonKey(name: SecurityGeoJsonKeys.geoRegion, fromJson: securityGeoValueFromJson) String? get region;/// City name as given by the edge geo database.
@JsonKey(name: SecurityGeoJsonKeys.geoCity, fromJson: securityGeoValueFromJson) String? get city;/// Visitor IP the lookup used.
@JsonKey(name: SecurityGeoJsonKeys.geoIp, fromJson: securityGeoValueFromJson) String? get ip;/// Where the values came from; null when the backend did not say.
@JsonKey(name: SecurityGeoJsonKeys.geoSource, fromJson: visitorGeoSourceFromJson, toJson: visitorGeoSourceToJson) VisitorGeoSource? get source;
/// Create a copy of OrderSecurityGeo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderSecurityGeoCopyWith<OrderSecurityGeo> get copyWith => _$OrderSecurityGeoCopyWithImpl<OrderSecurityGeo>(this as OrderSecurityGeo, _$identity);

  /// Serializes this OrderSecurityGeo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OrderSecurityGeo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSecurityGeo&&(identical(other.country, _this.country) || other.country == _this.country)&&(identical(other.region, _this.region) || other.region == _this.region)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.ip, _this.ip) || other.ip == _this.ip)&&(identical(other.source, _this.source) || other.source == _this.source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OrderSecurityGeo;
  return Object.hash(runtimeType,_this.country,_this.region,_this.city,_this.ip,_this.source);
}

@override
String toString() {
  final _this = this as OrderSecurityGeo;
  return 'OrderSecurityGeo(country: ${_this.country}, region: ${_this.region}, city: ${_this.city}, ip: ${_this.ip}, source: ${_this.source})';
}


}

/// @nodoc
abstract mixin class $OrderSecurityGeoCopyWith<$Res>  {
  factory $OrderSecurityGeoCopyWith(OrderSecurityGeo value, $Res Function(OrderSecurityGeo) _then) = _$OrderSecurityGeoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: SecurityGeoJsonKeys.geoCountry, fromJson: securityGeoValueFromJson) String? country,@JsonKey(name: SecurityGeoJsonKeys.geoRegion, fromJson: securityGeoValueFromJson) String? region,@JsonKey(name: SecurityGeoJsonKeys.geoCity, fromJson: securityGeoValueFromJson) String? city,@JsonKey(name: SecurityGeoJsonKeys.geoIp, fromJson: securityGeoValueFromJson) String? ip,@JsonKey(name: SecurityGeoJsonKeys.geoSource, fromJson: visitorGeoSourceFromJson, toJson: visitorGeoSourceToJson) VisitorGeoSource? source
});




}
/// @nodoc
class _$OrderSecurityGeoCopyWithImpl<$Res>
    implements $OrderSecurityGeoCopyWith<$Res> {
  _$OrderSecurityGeoCopyWithImpl(this._self, this._then);

  final OrderSecurityGeo _self;
  final $Res Function(OrderSecurityGeo) _then;

/// Create a copy of OrderSecurityGeo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = freezed,Object? region = freezed,Object? city = freezed,Object? ip = freezed,Object? source = freezed,}) {
  return _then(OrderSecurityGeo(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,ip: freezed == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as VisitorGeoSource?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderSecurityGeo].
extension OrderSecurityGeoPatterns on OrderSecurityGeo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderSecurityGeo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderSecurityGeo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderSecurityGeo value)  $default,){
final _that = this;
switch (_that) {
case _OrderSecurityGeo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderSecurityGeo value)?  $default,){
final _that = this;
switch (_that) {
case _OrderSecurityGeo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: SecurityGeoJsonKeys.geoCountry, fromJson: securityGeoValueFromJson)  String? country, @JsonKey(name: SecurityGeoJsonKeys.geoRegion, fromJson: securityGeoValueFromJson)  String? region, @JsonKey(name: SecurityGeoJsonKeys.geoCity, fromJson: securityGeoValueFromJson)  String? city, @JsonKey(name: SecurityGeoJsonKeys.geoIp, fromJson: securityGeoValueFromJson)  String? ip, @JsonKey(name: SecurityGeoJsonKeys.geoSource, fromJson: visitorGeoSourceFromJson, toJson: visitorGeoSourceToJson)  VisitorGeoSource? source)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderSecurityGeo() when $default != null:
return $default(_that.country,_that.region,_that.city,_that.ip,_that.source);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: SecurityGeoJsonKeys.geoCountry, fromJson: securityGeoValueFromJson)  String? country, @JsonKey(name: SecurityGeoJsonKeys.geoRegion, fromJson: securityGeoValueFromJson)  String? region, @JsonKey(name: SecurityGeoJsonKeys.geoCity, fromJson: securityGeoValueFromJson)  String? city, @JsonKey(name: SecurityGeoJsonKeys.geoIp, fromJson: securityGeoValueFromJson)  String? ip, @JsonKey(name: SecurityGeoJsonKeys.geoSource, fromJson: visitorGeoSourceFromJson, toJson: visitorGeoSourceToJson)  VisitorGeoSource? source)  $default,) {final _that = this;
switch (_that) {
case _OrderSecurityGeo():
return $default(_that.country,_that.region,_that.city,_that.ip,_that.source);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: SecurityGeoJsonKeys.geoCountry, fromJson: securityGeoValueFromJson)  String? country, @JsonKey(name: SecurityGeoJsonKeys.geoRegion, fromJson: securityGeoValueFromJson)  String? region, @JsonKey(name: SecurityGeoJsonKeys.geoCity, fromJson: securityGeoValueFromJson)  String? city, @JsonKey(name: SecurityGeoJsonKeys.geoIp, fromJson: securityGeoValueFromJson)  String? ip, @JsonKey(name: SecurityGeoJsonKeys.geoSource, fromJson: visitorGeoSourceFromJson, toJson: visitorGeoSourceToJson)  VisitorGeoSource? source)?  $default,) {final _that = this;
switch (_that) {
case _OrderSecurityGeo() when $default != null:
return $default(_that.country,_that.region,_that.city,_that.ip,_that.source);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderSecurityGeo extends OrderSecurityGeo {
  const _OrderSecurityGeo({@JsonKey(name: SecurityGeoJsonKeys.geoCountry, fromJson: securityGeoValueFromJson) this.country, @JsonKey(name: SecurityGeoJsonKeys.geoRegion, fromJson: securityGeoValueFromJson) this.region, @JsonKey(name: SecurityGeoJsonKeys.geoCity, fromJson: securityGeoValueFromJson) this.city, @JsonKey(name: SecurityGeoJsonKeys.geoIp, fromJson: securityGeoValueFromJson) this.ip, @JsonKey(name: SecurityGeoJsonKeys.geoSource, fromJson: visitorGeoSourceFromJson, toJson: visitorGeoSourceToJson) this.source}): super._();
  factory _OrderSecurityGeo.fromJson(Map<String, dynamic> json) => _$OrderSecurityGeoFromJson(json);

/// ISO 3166-1 alpha-2 country code.
@override@JsonKey(name: SecurityGeoJsonKeys.geoCountry, fromJson: securityGeoValueFromJson) final  String? country;
/// Region / state / wilaya name as given by the edge geo database.
@override@JsonKey(name: SecurityGeoJsonKeys.geoRegion, fromJson: securityGeoValueFromJson) final  String? region;
/// City name as given by the edge geo database.
@override@JsonKey(name: SecurityGeoJsonKeys.geoCity, fromJson: securityGeoValueFromJson) final  String? city;
/// Visitor IP the lookup used.
@override@JsonKey(name: SecurityGeoJsonKeys.geoIp, fromJson: securityGeoValueFromJson) final  String? ip;
/// Where the values came from; null when the backend did not say.
@override@JsonKey(name: SecurityGeoJsonKeys.geoSource, fromJson: visitorGeoSourceFromJson, toJson: visitorGeoSourceToJson) final  VisitorGeoSource? source;

/// Create a copy of OrderSecurityGeo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderSecurityGeoCopyWith<_OrderSecurityGeo> get copyWith => __$OrderSecurityGeoCopyWithImpl<_OrderSecurityGeo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderSecurityGeoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderSecurityGeo&&(identical(other.country, country) || other.country == country)&&(identical(other.region, region) || other.region == region)&&(identical(other.city, city) || other.city == city)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,country,region,city,ip,source);
}

@override
String toString() {
    return 'OrderSecurityGeo(country: $country, region: $region, city: $city, ip: $ip, source: $source)';
}


}

/// @nodoc
abstract mixin class _$OrderSecurityGeoCopyWith<$Res> implements $OrderSecurityGeoCopyWith<$Res> {
  factory _$OrderSecurityGeoCopyWith(_OrderSecurityGeo value, $Res Function(_OrderSecurityGeo) _then) = __$OrderSecurityGeoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: SecurityGeoJsonKeys.geoCountry, fromJson: securityGeoValueFromJson) String? country,@JsonKey(name: SecurityGeoJsonKeys.geoRegion, fromJson: securityGeoValueFromJson) String? region,@JsonKey(name: SecurityGeoJsonKeys.geoCity, fromJson: securityGeoValueFromJson) String? city,@JsonKey(name: SecurityGeoJsonKeys.geoIp, fromJson: securityGeoValueFromJson) String? ip,@JsonKey(name: SecurityGeoJsonKeys.geoSource, fromJson: visitorGeoSourceFromJson, toJson: visitorGeoSourceToJson) VisitorGeoSource? source
});




}
/// @nodoc
class __$OrderSecurityGeoCopyWithImpl<$Res>
    implements _$OrderSecurityGeoCopyWith<$Res> {
  __$OrderSecurityGeoCopyWithImpl(this._self, this._then);

  final _OrderSecurityGeo _self;
  final $Res Function(_OrderSecurityGeo) _then;

/// Create a copy of OrderSecurityGeo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = freezed,Object? region = freezed,Object? city = freezed,Object? ip = freezed,Object? source = freezed,}) {
  return _then(_OrderSecurityGeo(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,ip: freezed == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as VisitorGeoSource?,
  ));
}


}


/// @nodoc
mixin _$OrderSecurityViolation {

/// Rule key (`ip`, `phone`, `countries`, `regions`, ...).
@JsonKey(name: SecurityGeoJsonKeys.violationOption, fromJson: securityStringOrNull) String? get option;/// Server-written human readable reason.
@JsonKey(name: SecurityGeoJsonKeys.violationReason, fromJson: securityStringOrNull) String? get reason;
/// Create a copy of OrderSecurityViolation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderSecurityViolationCopyWith<OrderSecurityViolation> get copyWith => _$OrderSecurityViolationCopyWithImpl<OrderSecurityViolation>(this as OrderSecurityViolation, _$identity);

  /// Serializes this OrderSecurityViolation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OrderSecurityViolation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSecurityViolation&&(identical(other.option, _this.option) || other.option == _this.option)&&(identical(other.reason, _this.reason) || other.reason == _this.reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OrderSecurityViolation;
  return Object.hash(runtimeType,_this.option,_this.reason);
}

@override
String toString() {
  final _this = this as OrderSecurityViolation;
  return 'OrderSecurityViolation(option: ${_this.option}, reason: ${_this.reason})';
}


}

/// @nodoc
abstract mixin class $OrderSecurityViolationCopyWith<$Res>  {
  factory $OrderSecurityViolationCopyWith(OrderSecurityViolation value, $Res Function(OrderSecurityViolation) _then) = _$OrderSecurityViolationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: SecurityGeoJsonKeys.violationOption, fromJson: securityStringOrNull) String? option,@JsonKey(name: SecurityGeoJsonKeys.violationReason, fromJson: securityStringOrNull) String? reason
});




}
/// @nodoc
class _$OrderSecurityViolationCopyWithImpl<$Res>
    implements $OrderSecurityViolationCopyWith<$Res> {
  _$OrderSecurityViolationCopyWithImpl(this._self, this._then);

  final OrderSecurityViolation _self;
  final $Res Function(OrderSecurityViolation) _then;

/// Create a copy of OrderSecurityViolation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? option = freezed,Object? reason = freezed,}) {
  return _then(OrderSecurityViolation(
option: freezed == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderSecurityViolation].
extension OrderSecurityViolationPatterns on OrderSecurityViolation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderSecurityViolation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderSecurityViolation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderSecurityViolation value)  $default,){
final _that = this;
switch (_that) {
case _OrderSecurityViolation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderSecurityViolation value)?  $default,){
final _that = this;
switch (_that) {
case _OrderSecurityViolation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: SecurityGeoJsonKeys.violationOption, fromJson: securityStringOrNull)  String? option, @JsonKey(name: SecurityGeoJsonKeys.violationReason, fromJson: securityStringOrNull)  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderSecurityViolation() when $default != null:
return $default(_that.option,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: SecurityGeoJsonKeys.violationOption, fromJson: securityStringOrNull)  String? option, @JsonKey(name: SecurityGeoJsonKeys.violationReason, fromJson: securityStringOrNull)  String? reason)  $default,) {final _that = this;
switch (_that) {
case _OrderSecurityViolation():
return $default(_that.option,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: SecurityGeoJsonKeys.violationOption, fromJson: securityStringOrNull)  String? option, @JsonKey(name: SecurityGeoJsonKeys.violationReason, fromJson: securityStringOrNull)  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _OrderSecurityViolation() when $default != null:
return $default(_that.option,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderSecurityViolation extends OrderSecurityViolation {
  const _OrderSecurityViolation({@JsonKey(name: SecurityGeoJsonKeys.violationOption, fromJson: securityStringOrNull) this.option, @JsonKey(name: SecurityGeoJsonKeys.violationReason, fromJson: securityStringOrNull) this.reason}): super._();
  factory _OrderSecurityViolation.fromJson(Map<String, dynamic> json) => _$OrderSecurityViolationFromJson(json);

/// Rule key (`ip`, `phone`, `countries`, `regions`, ...).
@override@JsonKey(name: SecurityGeoJsonKeys.violationOption, fromJson: securityStringOrNull) final  String? option;
/// Server-written human readable reason.
@override@JsonKey(name: SecurityGeoJsonKeys.violationReason, fromJson: securityStringOrNull) final  String? reason;

/// Create a copy of OrderSecurityViolation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderSecurityViolationCopyWith<_OrderSecurityViolation> get copyWith => __$OrderSecurityViolationCopyWithImpl<_OrderSecurityViolation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderSecurityViolationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderSecurityViolation&&(identical(other.option, option) || other.option == option)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,option,reason);
}

@override
String toString() {
    return 'OrderSecurityViolation(option: $option, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$OrderSecurityViolationCopyWith<$Res> implements $OrderSecurityViolationCopyWith<$Res> {
  factory _$OrderSecurityViolationCopyWith(_OrderSecurityViolation value, $Res Function(_OrderSecurityViolation) _then) = __$OrderSecurityViolationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: SecurityGeoJsonKeys.violationOption, fromJson: securityStringOrNull) String? option,@JsonKey(name: SecurityGeoJsonKeys.violationReason, fromJson: securityStringOrNull) String? reason
});




}
/// @nodoc
class __$OrderSecurityViolationCopyWithImpl<$Res>
    implements _$OrderSecurityViolationCopyWith<$Res> {
  __$OrderSecurityViolationCopyWithImpl(this._self, this._then);

  final _OrderSecurityViolation _self;
  final $Res Function(_OrderSecurityViolation) _then;

/// Create a copy of OrderSecurityViolation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? option = freezed,Object? reason = freezed,}) {
  return _then(_OrderSecurityViolation(
option: freezed == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OrderSecurityClaims {

/// Trusted visitor geo (design §4.4). Null on older orders.
@JsonKey(name: SecurityGeoJsonKeys.claimsGeo, fromJson: _geoFromJson, includeIfNull: false) OrderSecurityGeo? get geo;/// Treatment applied (only `warning` orders are persisted with it today).
@JsonKey(name: SecurityGeoJsonKeys.securityTreatment, fromJson: securityTreatmentOrNull, toJson: _treatmentToJson, includeIfNull: false) SecurityTreatment? get treatment;/// Rules that fired.
@JsonKey(name: SecurityGeoJsonKeys.securityViolations, fromJson: _violationsFromJson) List<OrderSecurityViolation> get violations;@JsonKey(name: SecurityGeoJsonKeys.securityCheckedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false) DateTime? get checkedAt;@JsonKey(name: SecurityGeoJsonKeys.securityCapturedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false) DateTime? get capturedAt;@JsonKey(name: SecurityGeoJsonKeys.securityUserAgent, fromJson: securityStringOrNull, includeIfNull: false) String? get userAgent;/// Legacy flat `claims.security.country` (from the request body or the
/// shipping country). NOT trusted; display hint only.
@JsonKey(name: SecurityGeoJsonKeys.securityLegacyCountry, fromJson: securityGeoValueFromJson, includeIfNull: false) String? get legacyCountry;@JsonKey(name: SecurityGeoJsonKeys.securityDeviceFingerprint, fromJson: securityStringOrNull, includeIfNull: false) String? get deviceFingerprint;@JsonKey(name: SecurityGeoJsonKeys.securityPlatform, fromJson: securityStringOrNull, includeIfNull: false) String? get platform;/// Raw passthrough (number or string depending on the storefront).
@JsonKey(name: SecurityGeoJsonKeys.securityFormLoadTime, includeIfNull: false) Object? get formLoadTime;
/// Create a copy of OrderSecurityClaims
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderSecurityClaimsCopyWith<OrderSecurityClaims> get copyWith => _$OrderSecurityClaimsCopyWithImpl<OrderSecurityClaims>(this as OrderSecurityClaims, _$identity);

  /// Serializes this OrderSecurityClaims to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OrderSecurityClaims;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSecurityClaims&&(identical(other.geo, _this.geo) || other.geo == _this.geo)&&(identical(other.treatment, _this.treatment) || other.treatment == _this.treatment)&&const DeepCollectionEquality().equals(other.violations, _this.violations)&&(identical(other.checkedAt, _this.checkedAt) || other.checkedAt == _this.checkedAt)&&(identical(other.capturedAt, _this.capturedAt) || other.capturedAt == _this.capturedAt)&&(identical(other.userAgent, _this.userAgent) || other.userAgent == _this.userAgent)&&(identical(other.legacyCountry, _this.legacyCountry) || other.legacyCountry == _this.legacyCountry)&&(identical(other.deviceFingerprint, _this.deviceFingerprint) || other.deviceFingerprint == _this.deviceFingerprint)&&(identical(other.platform, _this.platform) || other.platform == _this.platform)&&const DeepCollectionEquality().equals(other.formLoadTime, _this.formLoadTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OrderSecurityClaims;
  return Object.hash(runtimeType,_this.geo,_this.treatment,const DeepCollectionEquality().hash(_this.violations),_this.checkedAt,_this.capturedAt,_this.userAgent,_this.legacyCountry,_this.deviceFingerprint,_this.platform,const DeepCollectionEquality().hash(_this.formLoadTime));
}

@override
String toString() {
  final _this = this as OrderSecurityClaims;
  return 'OrderSecurityClaims(geo: ${_this.geo}, treatment: ${_this.treatment}, violations: ${_this.violations}, checkedAt: ${_this.checkedAt}, capturedAt: ${_this.capturedAt}, userAgent: ${_this.userAgent}, legacyCountry: ${_this.legacyCountry}, deviceFingerprint: ${_this.deviceFingerprint}, platform: ${_this.platform}, formLoadTime: ${_this.formLoadTime})';
}


}

/// @nodoc
abstract mixin class $OrderSecurityClaimsCopyWith<$Res>  {
  factory $OrderSecurityClaimsCopyWith(OrderSecurityClaims value, $Res Function(OrderSecurityClaims) _then) = _$OrderSecurityClaimsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: SecurityGeoJsonKeys.claimsGeo, fromJson: _geoFromJson, includeIfNull: false) OrderSecurityGeo? geo,@JsonKey(name: SecurityGeoJsonKeys.securityTreatment, fromJson: securityTreatmentOrNull, toJson: _treatmentToJson, includeIfNull: false) SecurityTreatment? treatment,@JsonKey(name: SecurityGeoJsonKeys.securityViolations, fromJson: _violationsFromJson) List<OrderSecurityViolation> violations,@JsonKey(name: SecurityGeoJsonKeys.securityCheckedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false) DateTime? checkedAt,@JsonKey(name: SecurityGeoJsonKeys.securityCapturedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false) DateTime? capturedAt,@JsonKey(name: SecurityGeoJsonKeys.securityUserAgent, fromJson: securityStringOrNull, includeIfNull: false) String? userAgent,@JsonKey(name: SecurityGeoJsonKeys.securityLegacyCountry, fromJson: securityGeoValueFromJson, includeIfNull: false) String? legacyCountry,@JsonKey(name: SecurityGeoJsonKeys.securityDeviceFingerprint, fromJson: securityStringOrNull, includeIfNull: false) String? deviceFingerprint,@JsonKey(name: SecurityGeoJsonKeys.securityPlatform, fromJson: securityStringOrNull, includeIfNull: false) String? platform,@JsonKey(name: SecurityGeoJsonKeys.securityFormLoadTime, includeIfNull: false) Object? formLoadTime
});


$OrderSecurityGeoCopyWith<$Res>? get geo;

}
/// @nodoc
class _$OrderSecurityClaimsCopyWithImpl<$Res>
    implements $OrderSecurityClaimsCopyWith<$Res> {
  _$OrderSecurityClaimsCopyWithImpl(this._self, this._then);

  final OrderSecurityClaims _self;
  final $Res Function(OrderSecurityClaims) _then;

/// Create a copy of OrderSecurityClaims
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? geo = freezed,Object? treatment = freezed,Object? violations = null,Object? checkedAt = freezed,Object? capturedAt = freezed,Object? userAgent = freezed,Object? legacyCountry = freezed,Object? deviceFingerprint = freezed,Object? platform = freezed,Object? formLoadTime = freezed,}) {
  return _then(OrderSecurityClaims(
geo: freezed == geo ? _self.geo : geo // ignore: cast_nullable_to_non_nullable
as OrderSecurityGeo?,treatment: freezed == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as SecurityTreatment?,violations: null == violations ? _self.violations : violations // ignore: cast_nullable_to_non_nullable
as List<OrderSecurityViolation>,checkedAt: freezed == checkedAt ? _self.checkedAt : checkedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,capturedAt: freezed == capturedAt ? _self.capturedAt : capturedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,legacyCountry: freezed == legacyCountry ? _self.legacyCountry : legacyCountry // ignore: cast_nullable_to_non_nullable
as String?,deviceFingerprint: freezed == deviceFingerprint ? _self.deviceFingerprint : deviceFingerprint // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,formLoadTime: freezed == formLoadTime ? _self.formLoadTime : formLoadTime ,
  ));
}
/// Create a copy of OrderSecurityClaims
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderSecurityGeoCopyWith<$Res>? get geo {
    if (_self.geo == null) {
    return null;
  }

  return $OrderSecurityGeoCopyWith<$Res>(_self.geo!, (value) {
    return _then(_self.copyWith(geo: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderSecurityClaims].
extension OrderSecurityClaimsPatterns on OrderSecurityClaims {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderSecurityClaims value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderSecurityClaims() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderSecurityClaims value)  $default,){
final _that = this;
switch (_that) {
case _OrderSecurityClaims():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderSecurityClaims value)?  $default,){
final _that = this;
switch (_that) {
case _OrderSecurityClaims() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: SecurityGeoJsonKeys.claimsGeo, fromJson: _geoFromJson, includeIfNull: false)  OrderSecurityGeo? geo, @JsonKey(name: SecurityGeoJsonKeys.securityTreatment, fromJson: securityTreatmentOrNull, toJson: _treatmentToJson, includeIfNull: false)  SecurityTreatment? treatment, @JsonKey(name: SecurityGeoJsonKeys.securityViolations, fromJson: _violationsFromJson)  List<OrderSecurityViolation> violations, @JsonKey(name: SecurityGeoJsonKeys.securityCheckedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false)  DateTime? checkedAt, @JsonKey(name: SecurityGeoJsonKeys.securityCapturedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false)  DateTime? capturedAt, @JsonKey(name: SecurityGeoJsonKeys.securityUserAgent, fromJson: securityStringOrNull, includeIfNull: false)  String? userAgent, @JsonKey(name: SecurityGeoJsonKeys.securityLegacyCountry, fromJson: securityGeoValueFromJson, includeIfNull: false)  String? legacyCountry, @JsonKey(name: SecurityGeoJsonKeys.securityDeviceFingerprint, fromJson: securityStringOrNull, includeIfNull: false)  String? deviceFingerprint, @JsonKey(name: SecurityGeoJsonKeys.securityPlatform, fromJson: securityStringOrNull, includeIfNull: false)  String? platform, @JsonKey(name: SecurityGeoJsonKeys.securityFormLoadTime, includeIfNull: false)  Object? formLoadTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderSecurityClaims() when $default != null:
return $default(_that.geo,_that.treatment,_that.violations,_that.checkedAt,_that.capturedAt,_that.userAgent,_that.legacyCountry,_that.deviceFingerprint,_that.platform,_that.formLoadTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: SecurityGeoJsonKeys.claimsGeo, fromJson: _geoFromJson, includeIfNull: false)  OrderSecurityGeo? geo, @JsonKey(name: SecurityGeoJsonKeys.securityTreatment, fromJson: securityTreatmentOrNull, toJson: _treatmentToJson, includeIfNull: false)  SecurityTreatment? treatment, @JsonKey(name: SecurityGeoJsonKeys.securityViolations, fromJson: _violationsFromJson)  List<OrderSecurityViolation> violations, @JsonKey(name: SecurityGeoJsonKeys.securityCheckedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false)  DateTime? checkedAt, @JsonKey(name: SecurityGeoJsonKeys.securityCapturedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false)  DateTime? capturedAt, @JsonKey(name: SecurityGeoJsonKeys.securityUserAgent, fromJson: securityStringOrNull, includeIfNull: false)  String? userAgent, @JsonKey(name: SecurityGeoJsonKeys.securityLegacyCountry, fromJson: securityGeoValueFromJson, includeIfNull: false)  String? legacyCountry, @JsonKey(name: SecurityGeoJsonKeys.securityDeviceFingerprint, fromJson: securityStringOrNull, includeIfNull: false)  String? deviceFingerprint, @JsonKey(name: SecurityGeoJsonKeys.securityPlatform, fromJson: securityStringOrNull, includeIfNull: false)  String? platform, @JsonKey(name: SecurityGeoJsonKeys.securityFormLoadTime, includeIfNull: false)  Object? formLoadTime)  $default,) {final _that = this;
switch (_that) {
case _OrderSecurityClaims():
return $default(_that.geo,_that.treatment,_that.violations,_that.checkedAt,_that.capturedAt,_that.userAgent,_that.legacyCountry,_that.deviceFingerprint,_that.platform,_that.formLoadTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: SecurityGeoJsonKeys.claimsGeo, fromJson: _geoFromJson, includeIfNull: false)  OrderSecurityGeo? geo, @JsonKey(name: SecurityGeoJsonKeys.securityTreatment, fromJson: securityTreatmentOrNull, toJson: _treatmentToJson, includeIfNull: false)  SecurityTreatment? treatment, @JsonKey(name: SecurityGeoJsonKeys.securityViolations, fromJson: _violationsFromJson)  List<OrderSecurityViolation> violations, @JsonKey(name: SecurityGeoJsonKeys.securityCheckedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false)  DateTime? checkedAt, @JsonKey(name: SecurityGeoJsonKeys.securityCapturedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false)  DateTime? capturedAt, @JsonKey(name: SecurityGeoJsonKeys.securityUserAgent, fromJson: securityStringOrNull, includeIfNull: false)  String? userAgent, @JsonKey(name: SecurityGeoJsonKeys.securityLegacyCountry, fromJson: securityGeoValueFromJson, includeIfNull: false)  String? legacyCountry, @JsonKey(name: SecurityGeoJsonKeys.securityDeviceFingerprint, fromJson: securityStringOrNull, includeIfNull: false)  String? deviceFingerprint, @JsonKey(name: SecurityGeoJsonKeys.securityPlatform, fromJson: securityStringOrNull, includeIfNull: false)  String? platform, @JsonKey(name: SecurityGeoJsonKeys.securityFormLoadTime, includeIfNull: false)  Object? formLoadTime)?  $default,) {final _that = this;
switch (_that) {
case _OrderSecurityClaims() when $default != null:
return $default(_that.geo,_that.treatment,_that.violations,_that.checkedAt,_that.capturedAt,_that.userAgent,_that.legacyCountry,_that.deviceFingerprint,_that.platform,_that.formLoadTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderSecurityClaims extends OrderSecurityClaims {
  const _OrderSecurityClaims({@JsonKey(name: SecurityGeoJsonKeys.claimsGeo, fromJson: _geoFromJson, includeIfNull: false) this.geo, @JsonKey(name: SecurityGeoJsonKeys.securityTreatment, fromJson: securityTreatmentOrNull, toJson: _treatmentToJson, includeIfNull: false) this.treatment, @JsonKey(name: SecurityGeoJsonKeys.securityViolations, fromJson: _violationsFromJson)  List<OrderSecurityViolation> violations = const <OrderSecurityViolation>[], @JsonKey(name: SecurityGeoJsonKeys.securityCheckedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false) this.checkedAt, @JsonKey(name: SecurityGeoJsonKeys.securityCapturedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false) this.capturedAt, @JsonKey(name: SecurityGeoJsonKeys.securityUserAgent, fromJson: securityStringOrNull, includeIfNull: false) this.userAgent, @JsonKey(name: SecurityGeoJsonKeys.securityLegacyCountry, fromJson: securityGeoValueFromJson, includeIfNull: false) this.legacyCountry, @JsonKey(name: SecurityGeoJsonKeys.securityDeviceFingerprint, fromJson: securityStringOrNull, includeIfNull: false) this.deviceFingerprint, @JsonKey(name: SecurityGeoJsonKeys.securityPlatform, fromJson: securityStringOrNull, includeIfNull: false) this.platform, @JsonKey(name: SecurityGeoJsonKeys.securityFormLoadTime, includeIfNull: false) this.formLoadTime}): _violations = violations,super._();
  factory _OrderSecurityClaims.fromJson(Map<String, dynamic> json) => _$OrderSecurityClaimsFromJson(json);

/// Trusted visitor geo (design §4.4). Null on older orders.
@override@JsonKey(name: SecurityGeoJsonKeys.claimsGeo, fromJson: _geoFromJson, includeIfNull: false) final  OrderSecurityGeo? geo;
/// Treatment applied (only `warning` orders are persisted with it today).
@override@JsonKey(name: SecurityGeoJsonKeys.securityTreatment, fromJson: securityTreatmentOrNull, toJson: _treatmentToJson, includeIfNull: false) final  SecurityTreatment? treatment;
/// Rules that fired.
 final  List<OrderSecurityViolation> _violations;
/// Rules that fired.
@override@JsonKey(name: SecurityGeoJsonKeys.securityViolations, fromJson: _violationsFromJson) List<OrderSecurityViolation> get violations {
  if (_violations is EqualUnmodifiableListView) return _violations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_violations);
}

@override@JsonKey(name: SecurityGeoJsonKeys.securityCheckedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false) final  DateTime? checkedAt;
@override@JsonKey(name: SecurityGeoJsonKeys.securityCapturedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false) final  DateTime? capturedAt;
@override@JsonKey(name: SecurityGeoJsonKeys.securityUserAgent, fromJson: securityStringOrNull, includeIfNull: false) final  String? userAgent;
/// Legacy flat `claims.security.country` (from the request body or the
/// shipping country). NOT trusted; display hint only.
@override@JsonKey(name: SecurityGeoJsonKeys.securityLegacyCountry, fromJson: securityGeoValueFromJson, includeIfNull: false) final  String? legacyCountry;
@override@JsonKey(name: SecurityGeoJsonKeys.securityDeviceFingerprint, fromJson: securityStringOrNull, includeIfNull: false) final  String? deviceFingerprint;
@override@JsonKey(name: SecurityGeoJsonKeys.securityPlatform, fromJson: securityStringOrNull, includeIfNull: false) final  String? platform;
/// Raw passthrough (number or string depending on the storefront).
@override@JsonKey(name: SecurityGeoJsonKeys.securityFormLoadTime, includeIfNull: false) final  Object? formLoadTime;

/// Create a copy of OrderSecurityClaims
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderSecurityClaimsCopyWith<_OrderSecurityClaims> get copyWith => __$OrderSecurityClaimsCopyWithImpl<_OrderSecurityClaims>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderSecurityClaimsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderSecurityClaims&&(identical(other.geo, geo) || other.geo == geo)&&(identical(other.treatment, treatment) || other.treatment == treatment)&&const DeepCollectionEquality().equals(other.violations, _violations)&&(identical(other.checkedAt, checkedAt) || other.checkedAt == checkedAt)&&(identical(other.capturedAt, capturedAt) || other.capturedAt == capturedAt)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.legacyCountry, legacyCountry) || other.legacyCountry == legacyCountry)&&(identical(other.deviceFingerprint, deviceFingerprint) || other.deviceFingerprint == deviceFingerprint)&&(identical(other.platform, platform) || other.platform == platform)&&const DeepCollectionEquality().equals(other.formLoadTime, formLoadTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,geo,treatment,const DeepCollectionEquality().hash(_violations),checkedAt,capturedAt,userAgent,legacyCountry,deviceFingerprint,platform,const DeepCollectionEquality().hash(formLoadTime));
}

@override
String toString() {
    return 'OrderSecurityClaims(geo: $geo, treatment: $treatment, violations: $violations, checkedAt: $checkedAt, capturedAt: $capturedAt, userAgent: $userAgent, legacyCountry: $legacyCountry, deviceFingerprint: $deviceFingerprint, platform: $platform, formLoadTime: $formLoadTime)';
}


}

/// @nodoc
abstract mixin class _$OrderSecurityClaimsCopyWith<$Res> implements $OrderSecurityClaimsCopyWith<$Res> {
  factory _$OrderSecurityClaimsCopyWith(_OrderSecurityClaims value, $Res Function(_OrderSecurityClaims) _then) = __$OrderSecurityClaimsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: SecurityGeoJsonKeys.claimsGeo, fromJson: _geoFromJson, includeIfNull: false) OrderSecurityGeo? geo,@JsonKey(name: SecurityGeoJsonKeys.securityTreatment, fromJson: securityTreatmentOrNull, toJson: _treatmentToJson, includeIfNull: false) SecurityTreatment? treatment,@JsonKey(name: SecurityGeoJsonKeys.securityViolations, fromJson: _violationsFromJson) List<OrderSecurityViolation> violations,@JsonKey(name: SecurityGeoJsonKeys.securityCheckedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false) DateTime? checkedAt,@JsonKey(name: SecurityGeoJsonKeys.securityCapturedAt, fromJson: securityDateTimeFromJson, toJson: securityDateTimeToJson, includeIfNull: false) DateTime? capturedAt,@JsonKey(name: SecurityGeoJsonKeys.securityUserAgent, fromJson: securityStringOrNull, includeIfNull: false) String? userAgent,@JsonKey(name: SecurityGeoJsonKeys.securityLegacyCountry, fromJson: securityGeoValueFromJson, includeIfNull: false) String? legacyCountry,@JsonKey(name: SecurityGeoJsonKeys.securityDeviceFingerprint, fromJson: securityStringOrNull, includeIfNull: false) String? deviceFingerprint,@JsonKey(name: SecurityGeoJsonKeys.securityPlatform, fromJson: securityStringOrNull, includeIfNull: false) String? platform,@JsonKey(name: SecurityGeoJsonKeys.securityFormLoadTime, includeIfNull: false) Object? formLoadTime
});


@override $OrderSecurityGeoCopyWith<$Res>? get geo;

}
/// @nodoc
class __$OrderSecurityClaimsCopyWithImpl<$Res>
    implements _$OrderSecurityClaimsCopyWith<$Res> {
  __$OrderSecurityClaimsCopyWithImpl(this._self, this._then);

  final _OrderSecurityClaims _self;
  final $Res Function(_OrderSecurityClaims) _then;

/// Create a copy of OrderSecurityClaims
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? geo = freezed,Object? treatment = freezed,Object? violations = null,Object? checkedAt = freezed,Object? capturedAt = freezed,Object? userAgent = freezed,Object? legacyCountry = freezed,Object? deviceFingerprint = freezed,Object? platform = freezed,Object? formLoadTime = freezed,}) {
  return _then(_OrderSecurityClaims(
geo: freezed == geo ? _self.geo : geo // ignore: cast_nullable_to_non_nullable
as OrderSecurityGeo?,treatment: freezed == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as SecurityTreatment?,violations: null == violations ? _self._violations : violations // ignore: cast_nullable_to_non_nullable
as List<OrderSecurityViolation>,checkedAt: freezed == checkedAt ? _self.checkedAt : checkedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,capturedAt: freezed == capturedAt ? _self.capturedAt : capturedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,legacyCountry: freezed == legacyCountry ? _self.legacyCountry : legacyCountry // ignore: cast_nullable_to_non_nullable
as String?,deviceFingerprint: freezed == deviceFingerprint ? _self.deviceFingerprint : deviceFingerprint // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,formLoadTime: freezed == formLoadTime ? _self.formLoadTime : formLoadTime ,
  ));
}

/// Create a copy of OrderSecurityClaims
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderSecurityGeoCopyWith<$Res>? get geo {
    if (_self.geo == null) {
    return null;
  }

  return $OrderSecurityGeoCopyWith<$Res>(_self.geo!, (value) {
    return _then(_self.copyWith(geo: value));
  });
}
}

// dart format on
