// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_dispatch_strategy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
OrdersDispatchStrategy _$OrdersDispatchStrategyFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'firstUpdate':
          return OrdersDispatchStrategyFirstUpdate.fromJson(
            json
          );
                case 'random':
          return OrdersDispatchStrategyRandom.fromJson(
            json
          );
                case 'weightedRandom':
          return OrdersDispatchStrategyWeightedRandom.fromJson(
            json
          );
                case 'roundRobin':
          return OrdersDispatchStrategyRoundRobin.fromJson(
            json
          );
                case 'manualOnly':
          return OrdersDispatchStrategyManualOnly.fromJson(
            json
          );
                case 'priority':
          return OrdersDispatchStrategyPriority.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'OrdersDispatchStrategy',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$OrdersDispatchStrategy {



  /// Serializes this OrdersDispatchStrategy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersDispatchStrategy);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersDispatchStrategy()';
}


}

/// @nodoc
class $OrdersDispatchStrategyCopyWith<$Res>  {
$OrdersDispatchStrategyCopyWith(OrdersDispatchStrategy _, $Res Function(OrdersDispatchStrategy) __);
}


/// Adds pattern-matching-related methods to [OrdersDispatchStrategy].
extension OrdersDispatchStrategyPatterns on OrdersDispatchStrategy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OrdersDispatchStrategyFirstUpdate value)?  firstUpdate,TResult Function( OrdersDispatchStrategyRandom value)?  random,TResult Function( OrdersDispatchStrategyWeightedRandom value)?  weightedRandom,TResult Function( OrdersDispatchStrategyRoundRobin value)?  roundRobin,TResult Function( OrdersDispatchStrategyManualOnly value)?  manualOnly,TResult Function( OrdersDispatchStrategyPriority value)?  priority,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OrdersDispatchStrategyFirstUpdate() when firstUpdate != null:
return firstUpdate(_that);case OrdersDispatchStrategyRandom() when random != null:
return random(_that);case OrdersDispatchStrategyWeightedRandom() when weightedRandom != null:
return weightedRandom(_that);case OrdersDispatchStrategyRoundRobin() when roundRobin != null:
return roundRobin(_that);case OrdersDispatchStrategyManualOnly() when manualOnly != null:
return manualOnly(_that);case OrdersDispatchStrategyPriority() when priority != null:
return priority(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OrdersDispatchStrategyFirstUpdate value)  firstUpdate,required TResult Function( OrdersDispatchStrategyRandom value)  random,required TResult Function( OrdersDispatchStrategyWeightedRandom value)  weightedRandom,required TResult Function( OrdersDispatchStrategyRoundRobin value)  roundRobin,required TResult Function( OrdersDispatchStrategyManualOnly value)  manualOnly,required TResult Function( OrdersDispatchStrategyPriority value)  priority,}){
final _that = this;
switch (_that) {
case OrdersDispatchStrategyFirstUpdate():
return firstUpdate(_that);case OrdersDispatchStrategyRandom():
return random(_that);case OrdersDispatchStrategyWeightedRandom():
return weightedRandom(_that);case OrdersDispatchStrategyRoundRobin():
return roundRobin(_that);case OrdersDispatchStrategyManualOnly():
return manualOnly(_that);case OrdersDispatchStrategyPriority():
return priority(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OrdersDispatchStrategyFirstUpdate value)?  firstUpdate,TResult? Function( OrdersDispatchStrategyRandom value)?  random,TResult? Function( OrdersDispatchStrategyWeightedRandom value)?  weightedRandom,TResult? Function( OrdersDispatchStrategyRoundRobin value)?  roundRobin,TResult? Function( OrdersDispatchStrategyManualOnly value)?  manualOnly,TResult? Function( OrdersDispatchStrategyPriority value)?  priority,}){
final _that = this;
switch (_that) {
case OrdersDispatchStrategyFirstUpdate() when firstUpdate != null:
return firstUpdate(_that);case OrdersDispatchStrategyRandom() when random != null:
return random(_that);case OrdersDispatchStrategyWeightedRandom() when weightedRandom != null:
return weightedRandom(_that);case OrdersDispatchStrategyRoundRobin() when roundRobin != null:
return roundRobin(_that);case OrdersDispatchStrategyManualOnly() when manualOnly != null:
return manualOnly(_that);case OrdersDispatchStrategyPriority() when priority != null:
return priority(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  firstUpdate,TResult Function()?  random,TResult Function( Map<String, int> weights)?  weightedRandom,TResult Function( String? lastAssignedConfirmerId,  String sortBy)?  roundRobin,TResult Function()?  manualOnly,TResult Function( List<String> confirmerIds)?  priority,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OrdersDispatchStrategyFirstUpdate() when firstUpdate != null:
return firstUpdate();case OrdersDispatchStrategyRandom() when random != null:
return random();case OrdersDispatchStrategyWeightedRandom() when weightedRandom != null:
return weightedRandom(_that.weights);case OrdersDispatchStrategyRoundRobin() when roundRobin != null:
return roundRobin(_that.lastAssignedConfirmerId,_that.sortBy);case OrdersDispatchStrategyManualOnly() when manualOnly != null:
return manualOnly();case OrdersDispatchStrategyPriority() when priority != null:
return priority(_that.confirmerIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  firstUpdate,required TResult Function()  random,required TResult Function( Map<String, int> weights)  weightedRandom,required TResult Function( String? lastAssignedConfirmerId,  String sortBy)  roundRobin,required TResult Function()  manualOnly,required TResult Function( List<String> confirmerIds)  priority,}) {final _that = this;
switch (_that) {
case OrdersDispatchStrategyFirstUpdate():
return firstUpdate();case OrdersDispatchStrategyRandom():
return random();case OrdersDispatchStrategyWeightedRandom():
return weightedRandom(_that.weights);case OrdersDispatchStrategyRoundRobin():
return roundRobin(_that.lastAssignedConfirmerId,_that.sortBy);case OrdersDispatchStrategyManualOnly():
return manualOnly();case OrdersDispatchStrategyPriority():
return priority(_that.confirmerIds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  firstUpdate,TResult? Function()?  random,TResult? Function( Map<String, int> weights)?  weightedRandom,TResult? Function( String? lastAssignedConfirmerId,  String sortBy)?  roundRobin,TResult? Function()?  manualOnly,TResult? Function( List<String> confirmerIds)?  priority,}) {final _that = this;
switch (_that) {
case OrdersDispatchStrategyFirstUpdate() when firstUpdate != null:
return firstUpdate();case OrdersDispatchStrategyRandom() when random != null:
return random();case OrdersDispatchStrategyWeightedRandom() when weightedRandom != null:
return weightedRandom(_that.weights);case OrdersDispatchStrategyRoundRobin() when roundRobin != null:
return roundRobin(_that.lastAssignedConfirmerId,_that.sortBy);case OrdersDispatchStrategyManualOnly() when manualOnly != null:
return manualOnly();case OrdersDispatchStrategyPriority() when priority != null:
return priority(_that.confirmerIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class OrdersDispatchStrategyFirstUpdate implements OrdersDispatchStrategy {
  const OrdersDispatchStrategyFirstUpdate({final  String? $type}): $type = $type ?? 'firstUpdate';
  factory OrdersDispatchStrategyFirstUpdate.fromJson(Map<String, dynamic> json) => _$OrdersDispatchStrategyFirstUpdateFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$OrdersDispatchStrategyFirstUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersDispatchStrategyFirstUpdate);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersDispatchStrategy.firstUpdate()';
}


}




/// @nodoc
@JsonSerializable()

class OrdersDispatchStrategyRandom implements OrdersDispatchStrategy {
  const OrdersDispatchStrategyRandom({final  String? $type}): $type = $type ?? 'random';
  factory OrdersDispatchStrategyRandom.fromJson(Map<String, dynamic> json) => _$OrdersDispatchStrategyRandomFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$OrdersDispatchStrategyRandomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersDispatchStrategyRandom);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersDispatchStrategy.random()';
}


}




/// @nodoc
@JsonSerializable()

class OrdersDispatchStrategyWeightedRandom implements OrdersDispatchStrategy {
  const OrdersDispatchStrategyWeightedRandom({final  Map<String, int> weights = const {}, final  String? $type}): _weights = weights,$type = $type ?? 'weightedRandom';
  factory OrdersDispatchStrategyWeightedRandom.fromJson(Map<String, dynamic> json) => _$OrdersDispatchStrategyWeightedRandomFromJson(json);

 final  Map<String, int> _weights;
@JsonKey() Map<String, int> get weights {
  if (_weights is EqualUnmodifiableMapView) return _weights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_weights);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of OrdersDispatchStrategy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersDispatchStrategyWeightedRandomCopyWith<OrdersDispatchStrategyWeightedRandom> get copyWith => _$OrdersDispatchStrategyWeightedRandomCopyWithImpl<OrdersDispatchStrategyWeightedRandom>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersDispatchStrategyWeightedRandomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersDispatchStrategyWeightedRandom&&const DeepCollectionEquality().equals(other._weights, _weights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_weights));

@override
String toString() {
  return 'OrdersDispatchStrategy.weightedRandom(weights: $weights)';
}


}

/// @nodoc
abstract mixin class $OrdersDispatchStrategyWeightedRandomCopyWith<$Res> implements $OrdersDispatchStrategyCopyWith<$Res> {
  factory $OrdersDispatchStrategyWeightedRandomCopyWith(OrdersDispatchStrategyWeightedRandom value, $Res Function(OrdersDispatchStrategyWeightedRandom) _then) = _$OrdersDispatchStrategyWeightedRandomCopyWithImpl;
@useResult
$Res call({
 Map<String, int> weights
});




}
/// @nodoc
class _$OrdersDispatchStrategyWeightedRandomCopyWithImpl<$Res>
    implements $OrdersDispatchStrategyWeightedRandomCopyWith<$Res> {
  _$OrdersDispatchStrategyWeightedRandomCopyWithImpl(this._self, this._then);

  final OrdersDispatchStrategyWeightedRandom _self;
  final $Res Function(OrdersDispatchStrategyWeightedRandom) _then;

/// Create a copy of OrdersDispatchStrategy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? weights = null,}) {
  return _then(OrdersDispatchStrategyWeightedRandom(
weights: null == weights ? _self._weights : weights // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class OrdersDispatchStrategyRoundRobin implements OrdersDispatchStrategy {
  const OrdersDispatchStrategyRoundRobin({this.lastAssignedConfirmerId, this.sortBy = 'name', final  String? $type}): $type = $type ?? 'roundRobin';
  factory OrdersDispatchStrategyRoundRobin.fromJson(Map<String, dynamic> json) => _$OrdersDispatchStrategyRoundRobinFromJson(json);

 final  String? lastAssignedConfirmerId;
@JsonKey() final  String sortBy;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of OrdersDispatchStrategy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersDispatchStrategyRoundRobinCopyWith<OrdersDispatchStrategyRoundRobin> get copyWith => _$OrdersDispatchStrategyRoundRobinCopyWithImpl<OrdersDispatchStrategyRoundRobin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersDispatchStrategyRoundRobinToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersDispatchStrategyRoundRobin&&(identical(other.lastAssignedConfirmerId, lastAssignedConfirmerId) || other.lastAssignedConfirmerId == lastAssignedConfirmerId)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lastAssignedConfirmerId,sortBy);

@override
String toString() {
  return 'OrdersDispatchStrategy.roundRobin(lastAssignedConfirmerId: $lastAssignedConfirmerId, sortBy: $sortBy)';
}


}

/// @nodoc
abstract mixin class $OrdersDispatchStrategyRoundRobinCopyWith<$Res> implements $OrdersDispatchStrategyCopyWith<$Res> {
  factory $OrdersDispatchStrategyRoundRobinCopyWith(OrdersDispatchStrategyRoundRobin value, $Res Function(OrdersDispatchStrategyRoundRobin) _then) = _$OrdersDispatchStrategyRoundRobinCopyWithImpl;
@useResult
$Res call({
 String? lastAssignedConfirmerId, String sortBy
});




}
/// @nodoc
class _$OrdersDispatchStrategyRoundRobinCopyWithImpl<$Res>
    implements $OrdersDispatchStrategyRoundRobinCopyWith<$Res> {
  _$OrdersDispatchStrategyRoundRobinCopyWithImpl(this._self, this._then);

  final OrdersDispatchStrategyRoundRobin _self;
  final $Res Function(OrdersDispatchStrategyRoundRobin) _then;

/// Create a copy of OrdersDispatchStrategy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lastAssignedConfirmerId = freezed,Object? sortBy = null,}) {
  return _then(OrdersDispatchStrategyRoundRobin(
lastAssignedConfirmerId: freezed == lastAssignedConfirmerId ? _self.lastAssignedConfirmerId : lastAssignedConfirmerId // ignore: cast_nullable_to_non_nullable
as String?,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class OrdersDispatchStrategyManualOnly implements OrdersDispatchStrategy {
  const OrdersDispatchStrategyManualOnly({final  String? $type}): $type = $type ?? 'manualOnly';
  factory OrdersDispatchStrategyManualOnly.fromJson(Map<String, dynamic> json) => _$OrdersDispatchStrategyManualOnlyFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$OrdersDispatchStrategyManualOnlyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersDispatchStrategyManualOnly);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersDispatchStrategy.manualOnly()';
}


}




/// @nodoc
@JsonSerializable()

class OrdersDispatchStrategyPriority implements OrdersDispatchStrategy {
  const OrdersDispatchStrategyPriority({required final  List<String> confirmerIds, final  String? $type}): _confirmerIds = confirmerIds,$type = $type ?? 'priority';
  factory OrdersDispatchStrategyPriority.fromJson(Map<String, dynamic> json) => _$OrdersDispatchStrategyPriorityFromJson(json);

 final  List<String> _confirmerIds;
 List<String> get confirmerIds {
  if (_confirmerIds is EqualUnmodifiableListView) return _confirmerIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_confirmerIds);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of OrdersDispatchStrategy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersDispatchStrategyPriorityCopyWith<OrdersDispatchStrategyPriority> get copyWith => _$OrdersDispatchStrategyPriorityCopyWithImpl<OrdersDispatchStrategyPriority>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersDispatchStrategyPriorityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersDispatchStrategyPriority&&const DeepCollectionEquality().equals(other._confirmerIds, _confirmerIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_confirmerIds));

@override
String toString() {
  return 'OrdersDispatchStrategy.priority(confirmerIds: $confirmerIds)';
}


}

/// @nodoc
abstract mixin class $OrdersDispatchStrategyPriorityCopyWith<$Res> implements $OrdersDispatchStrategyCopyWith<$Res> {
  factory $OrdersDispatchStrategyPriorityCopyWith(OrdersDispatchStrategyPriority value, $Res Function(OrdersDispatchStrategyPriority) _then) = _$OrdersDispatchStrategyPriorityCopyWithImpl;
@useResult
$Res call({
 List<String> confirmerIds
});




}
/// @nodoc
class _$OrdersDispatchStrategyPriorityCopyWithImpl<$Res>
    implements $OrdersDispatchStrategyPriorityCopyWith<$Res> {
  _$OrdersDispatchStrategyPriorityCopyWithImpl(this._self, this._then);

  final OrdersDispatchStrategyPriority _self;
  final $Res Function(OrdersDispatchStrategyPriority) _then;

/// Create a copy of OrdersDispatchStrategy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? confirmerIds = null,}) {
  return _then(OrdersDispatchStrategyPriority(
confirmerIds: null == confirmerIds ? _self._confirmerIds : confirmerIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
