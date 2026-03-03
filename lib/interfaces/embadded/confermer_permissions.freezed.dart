// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confermer_permissions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfermerPermissions {

/// See all orders (unassigned + others'), not just unassigned + own.
 bool get canSeeAllOrders;/// Assign unassigned orders to a confirmer.
 bool get canAssignOrder;/// Reassign already-assigned orders to another confirmer.
 bool get canReAssignOrder; Map<String, dynamic> get metadata;
/// Create a copy of ConfermerPermissions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfermerPermissionsCopyWith<ConfermerPermissions> get copyWith => _$ConfermerPermissionsCopyWithImpl<ConfermerPermissions>(this as ConfermerPermissions, _$identity);

  /// Serializes this ConfermerPermissions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfermerPermissions&&(identical(other.canSeeAllOrders, canSeeAllOrders) || other.canSeeAllOrders == canSeeAllOrders)&&(identical(other.canAssignOrder, canAssignOrder) || other.canAssignOrder == canAssignOrder)&&(identical(other.canReAssignOrder, canReAssignOrder) || other.canReAssignOrder == canReAssignOrder)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,canSeeAllOrders,canAssignOrder,canReAssignOrder,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ConfermerPermissions(canSeeAllOrders: $canSeeAllOrders, canAssignOrder: $canAssignOrder, canReAssignOrder: $canReAssignOrder, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ConfermerPermissionsCopyWith<$Res>  {
  factory $ConfermerPermissionsCopyWith(ConfermerPermissions value, $Res Function(ConfermerPermissions) _then) = _$ConfermerPermissionsCopyWithImpl;
@useResult
$Res call({
 bool canSeeAllOrders, bool canAssignOrder, bool canReAssignOrder, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$ConfermerPermissionsCopyWithImpl<$Res>
    implements $ConfermerPermissionsCopyWith<$Res> {
  _$ConfermerPermissionsCopyWithImpl(this._self, this._then);

  final ConfermerPermissions _self;
  final $Res Function(ConfermerPermissions) _then;

/// Create a copy of ConfermerPermissions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? canSeeAllOrders = null,Object? canAssignOrder = null,Object? canReAssignOrder = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
canSeeAllOrders: null == canSeeAllOrders ? _self.canSeeAllOrders : canSeeAllOrders // ignore: cast_nullable_to_non_nullable
as bool,canAssignOrder: null == canAssignOrder ? _self.canAssignOrder : canAssignOrder // ignore: cast_nullable_to_non_nullable
as bool,canReAssignOrder: null == canReAssignOrder ? _self.canReAssignOrder : canReAssignOrder // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfermerPermissions].
extension ConfermerPermissionsPatterns on ConfermerPermissions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfermerPermissions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfermerPermissions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfermerPermissions value)  $default,){
final _that = this;
switch (_that) {
case _ConfermerPermissions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfermerPermissions value)?  $default,){
final _that = this;
switch (_that) {
case _ConfermerPermissions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool canSeeAllOrders,  bool canAssignOrder,  bool canReAssignOrder,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfermerPermissions() when $default != null:
return $default(_that.canSeeAllOrders,_that.canAssignOrder,_that.canReAssignOrder,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool canSeeAllOrders,  bool canAssignOrder,  bool canReAssignOrder,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _ConfermerPermissions():
return $default(_that.canSeeAllOrders,_that.canAssignOrder,_that.canReAssignOrder,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool canSeeAllOrders,  bool canAssignOrder,  bool canReAssignOrder,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _ConfermerPermissions() when $default != null:
return $default(_that.canSeeAllOrders,_that.canAssignOrder,_that.canReAssignOrder,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfermerPermissions implements ConfermerPermissions {
  const _ConfermerPermissions({this.canSeeAllOrders = false, this.canAssignOrder = false, this.canReAssignOrder = false, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _ConfermerPermissions.fromJson(Map<String, dynamic> json) => _$ConfermerPermissionsFromJson(json);

/// See all orders (unassigned + others'), not just unassigned + own.
@override@JsonKey() final  bool canSeeAllOrders;
/// Assign unassigned orders to a confirmer.
@override@JsonKey() final  bool canAssignOrder;
/// Reassign already-assigned orders to another confirmer.
@override@JsonKey() final  bool canReAssignOrder;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of ConfermerPermissions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfermerPermissionsCopyWith<_ConfermerPermissions> get copyWith => __$ConfermerPermissionsCopyWithImpl<_ConfermerPermissions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfermerPermissionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfermerPermissions&&(identical(other.canSeeAllOrders, canSeeAllOrders) || other.canSeeAllOrders == canSeeAllOrders)&&(identical(other.canAssignOrder, canAssignOrder) || other.canAssignOrder == canAssignOrder)&&(identical(other.canReAssignOrder, canReAssignOrder) || other.canReAssignOrder == canReAssignOrder)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,canSeeAllOrders,canAssignOrder,canReAssignOrder,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ConfermerPermissions(canSeeAllOrders: $canSeeAllOrders, canAssignOrder: $canAssignOrder, canReAssignOrder: $canReAssignOrder, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ConfermerPermissionsCopyWith<$Res> implements $ConfermerPermissionsCopyWith<$Res> {
  factory _$ConfermerPermissionsCopyWith(_ConfermerPermissions value, $Res Function(_ConfermerPermissions) _then) = __$ConfermerPermissionsCopyWithImpl;
@override @useResult
$Res call({
 bool canSeeAllOrders, bool canAssignOrder, bool canReAssignOrder, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$ConfermerPermissionsCopyWithImpl<$Res>
    implements _$ConfermerPermissionsCopyWith<$Res> {
  __$ConfermerPermissionsCopyWithImpl(this._self, this._then);

  final _ConfermerPermissions _self;
  final $Res Function(_ConfermerPermissions) _then;

/// Create a copy of ConfermerPermissions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? canSeeAllOrders = null,Object? canAssignOrder = null,Object? canReAssignOrder = null,Object? metadata = null,}) {
  return _then(_ConfermerPermissions(
canSeeAllOrders: null == canSeeAllOrders ? _self.canSeeAllOrders : canSeeAllOrders // ignore: cast_nullable_to_non_nullable
as bool,canAssignOrder: null == canAssignOrder ? _self.canAssignOrder : canAssignOrder // ignore: cast_nullable_to_non_nullable
as bool,canReAssignOrder: null == canReAssignOrder ? _self.canReAssignOrder : canReAssignOrder // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
