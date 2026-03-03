// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zimou_package_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ZimouPackageResponse {

 int get id; String get trackingCode; String? get orderId; String? get printUrl; String? get statusName; Map<String, dynamic> get metadata;
/// Create a copy of ZimouPackageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZimouPackageResponseCopyWith<ZimouPackageResponse> get copyWith => _$ZimouPackageResponseCopyWithImpl<ZimouPackageResponse>(this as ZimouPackageResponse, _$identity);

  /// Serializes this ZimouPackageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZimouPackageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.trackingCode, trackingCode) || other.trackingCode == trackingCode)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.printUrl, printUrl) || other.printUrl == printUrl)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,trackingCode,orderId,printUrl,statusName,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ZimouPackageResponse(id: $id, trackingCode: $trackingCode, orderId: $orderId, printUrl: $printUrl, statusName: $statusName, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ZimouPackageResponseCopyWith<$Res>  {
  factory $ZimouPackageResponseCopyWith(ZimouPackageResponse value, $Res Function(ZimouPackageResponse) _then) = _$ZimouPackageResponseCopyWithImpl;
@useResult
$Res call({
 int id, String trackingCode, String? orderId, String? printUrl, String? statusName, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$ZimouPackageResponseCopyWithImpl<$Res>
    implements $ZimouPackageResponseCopyWith<$Res> {
  _$ZimouPackageResponseCopyWithImpl(this._self, this._then);

  final ZimouPackageResponse _self;
  final $Res Function(ZimouPackageResponse) _then;

/// Create a copy of ZimouPackageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? trackingCode = null,Object? orderId = freezed,Object? printUrl = freezed,Object? statusName = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,trackingCode: null == trackingCode ? _self.trackingCode : trackingCode // ignore: cast_nullable_to_non_nullable
as String,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,printUrl: freezed == printUrl ? _self.printUrl : printUrl // ignore: cast_nullable_to_non_nullable
as String?,statusName: freezed == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ZimouPackageResponse].
extension ZimouPackageResponsePatterns on ZimouPackageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZimouPackageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZimouPackageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZimouPackageResponse value)  $default,){
final _that = this;
switch (_that) {
case _ZimouPackageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZimouPackageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ZimouPackageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String trackingCode,  String? orderId,  String? printUrl,  String? statusName,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZimouPackageResponse() when $default != null:
return $default(_that.id,_that.trackingCode,_that.orderId,_that.printUrl,_that.statusName,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String trackingCode,  String? orderId,  String? printUrl,  String? statusName,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _ZimouPackageResponse():
return $default(_that.id,_that.trackingCode,_that.orderId,_that.printUrl,_that.statusName,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String trackingCode,  String? orderId,  String? printUrl,  String? statusName,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _ZimouPackageResponse() when $default != null:
return $default(_that.id,_that.trackingCode,_that.orderId,_that.printUrl,_that.statusName,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZimouPackageResponse implements ZimouPackageResponse {
  const _ZimouPackageResponse({required this.id, required this.trackingCode, required this.orderId, this.printUrl, this.statusName, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _ZimouPackageResponse.fromJson(Map<String, dynamic> json) => _$ZimouPackageResponseFromJson(json);

@override final  int id;
@override final  String trackingCode;
@override final  String? orderId;
@override final  String? printUrl;
@override final  String? statusName;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of ZimouPackageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZimouPackageResponseCopyWith<_ZimouPackageResponse> get copyWith => __$ZimouPackageResponseCopyWithImpl<_ZimouPackageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZimouPackageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZimouPackageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.trackingCode, trackingCode) || other.trackingCode == trackingCode)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.printUrl, printUrl) || other.printUrl == printUrl)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,trackingCode,orderId,printUrl,statusName,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ZimouPackageResponse(id: $id, trackingCode: $trackingCode, orderId: $orderId, printUrl: $printUrl, statusName: $statusName, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ZimouPackageResponseCopyWith<$Res> implements $ZimouPackageResponseCopyWith<$Res> {
  factory _$ZimouPackageResponseCopyWith(_ZimouPackageResponse value, $Res Function(_ZimouPackageResponse) _then) = __$ZimouPackageResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String trackingCode, String? orderId, String? printUrl, String? statusName, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$ZimouPackageResponseCopyWithImpl<$Res>
    implements _$ZimouPackageResponseCopyWith<$Res> {
  __$ZimouPackageResponseCopyWithImpl(this._self, this._then);

  final _ZimouPackageResponse _self;
  final $Res Function(_ZimouPackageResponse) _then;

/// Create a copy of ZimouPackageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? trackingCode = null,Object? orderId = freezed,Object? printUrl = freezed,Object? statusName = freezed,Object? metadata = null,}) {
  return _then(_ZimouPackageResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,trackingCode: null == trackingCode ? _self.trackingCode : trackingCode // ignore: cast_nullable_to_non_nullable
as String,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,printUrl: freezed == printUrl ? _self.printUrl : printUrl // ignore: cast_nullable_to_non_nullable
as String?,statusName: freezed == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$ZimouStatisticsResponse {

 int get packagesAdded; int get packagesDispatched; double get netPaid; Map<String, dynamic> get metadata;
/// Create a copy of ZimouStatisticsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZimouStatisticsResponseCopyWith<ZimouStatisticsResponse> get copyWith => _$ZimouStatisticsResponseCopyWithImpl<ZimouStatisticsResponse>(this as ZimouStatisticsResponse, _$identity);

  /// Serializes this ZimouStatisticsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZimouStatisticsResponse&&(identical(other.packagesAdded, packagesAdded) || other.packagesAdded == packagesAdded)&&(identical(other.packagesDispatched, packagesDispatched) || other.packagesDispatched == packagesDispatched)&&(identical(other.netPaid, netPaid) || other.netPaid == netPaid)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packagesAdded,packagesDispatched,netPaid,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ZimouStatisticsResponse(packagesAdded: $packagesAdded, packagesDispatched: $packagesDispatched, netPaid: $netPaid, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ZimouStatisticsResponseCopyWith<$Res>  {
  factory $ZimouStatisticsResponseCopyWith(ZimouStatisticsResponse value, $Res Function(ZimouStatisticsResponse) _then) = _$ZimouStatisticsResponseCopyWithImpl;
@useResult
$Res call({
 int packagesAdded, int packagesDispatched, double netPaid, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$ZimouStatisticsResponseCopyWithImpl<$Res>
    implements $ZimouStatisticsResponseCopyWith<$Res> {
  _$ZimouStatisticsResponseCopyWithImpl(this._self, this._then);

  final ZimouStatisticsResponse _self;
  final $Res Function(ZimouStatisticsResponse) _then;

/// Create a copy of ZimouStatisticsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packagesAdded = null,Object? packagesDispatched = null,Object? netPaid = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
packagesAdded: null == packagesAdded ? _self.packagesAdded : packagesAdded // ignore: cast_nullable_to_non_nullable
as int,packagesDispatched: null == packagesDispatched ? _self.packagesDispatched : packagesDispatched // ignore: cast_nullable_to_non_nullable
as int,netPaid: null == netPaid ? _self.netPaid : netPaid // ignore: cast_nullable_to_non_nullable
as double,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ZimouStatisticsResponse].
extension ZimouStatisticsResponsePatterns on ZimouStatisticsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZimouStatisticsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZimouStatisticsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZimouStatisticsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ZimouStatisticsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZimouStatisticsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ZimouStatisticsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int packagesAdded,  int packagesDispatched,  double netPaid,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZimouStatisticsResponse() when $default != null:
return $default(_that.packagesAdded,_that.packagesDispatched,_that.netPaid,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int packagesAdded,  int packagesDispatched,  double netPaid,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _ZimouStatisticsResponse():
return $default(_that.packagesAdded,_that.packagesDispatched,_that.netPaid,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int packagesAdded,  int packagesDispatched,  double netPaid,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _ZimouStatisticsResponse() when $default != null:
return $default(_that.packagesAdded,_that.packagesDispatched,_that.netPaid,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZimouStatisticsResponse implements ZimouStatisticsResponse {
  const _ZimouStatisticsResponse({required this.packagesAdded, required this.packagesDispatched, required this.netPaid, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _ZimouStatisticsResponse.fromJson(Map<String, dynamic> json) => _$ZimouStatisticsResponseFromJson(json);

@override final  int packagesAdded;
@override final  int packagesDispatched;
@override final  double netPaid;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of ZimouStatisticsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZimouStatisticsResponseCopyWith<_ZimouStatisticsResponse> get copyWith => __$ZimouStatisticsResponseCopyWithImpl<_ZimouStatisticsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZimouStatisticsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZimouStatisticsResponse&&(identical(other.packagesAdded, packagesAdded) || other.packagesAdded == packagesAdded)&&(identical(other.packagesDispatched, packagesDispatched) || other.packagesDispatched == packagesDispatched)&&(identical(other.netPaid, netPaid) || other.netPaid == netPaid)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packagesAdded,packagesDispatched,netPaid,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ZimouStatisticsResponse(packagesAdded: $packagesAdded, packagesDispatched: $packagesDispatched, netPaid: $netPaid, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ZimouStatisticsResponseCopyWith<$Res> implements $ZimouStatisticsResponseCopyWith<$Res> {
  factory _$ZimouStatisticsResponseCopyWith(_ZimouStatisticsResponse value, $Res Function(_ZimouStatisticsResponse) _then) = __$ZimouStatisticsResponseCopyWithImpl;
@override @useResult
$Res call({
 int packagesAdded, int packagesDispatched, double netPaid, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$ZimouStatisticsResponseCopyWithImpl<$Res>
    implements _$ZimouStatisticsResponseCopyWith<$Res> {
  __$ZimouStatisticsResponseCopyWithImpl(this._self, this._then);

  final _ZimouStatisticsResponse _self;
  final $Res Function(_ZimouStatisticsResponse) _then;

/// Create a copy of ZimouStatisticsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packagesAdded = null,Object? packagesDispatched = null,Object? netPaid = null,Object? metadata = null,}) {
  return _then(_ZimouStatisticsResponse(
packagesAdded: null == packagesAdded ? _self.packagesAdded : packagesAdded // ignore: cast_nullable_to_non_nullable
as int,packagesDispatched: null == packagesDispatched ? _self.packagesDispatched : packagesDispatched // ignore: cast_nullable_to_non_nullable
as int,netPaid: null == netPaid ? _self.netPaid : netPaid // ignore: cast_nullable_to_non_nullable
as double,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
