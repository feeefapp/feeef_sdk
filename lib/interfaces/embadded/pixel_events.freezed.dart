// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pixel_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PixelEvents {

 List<PixelEventRule> get rules;
/// Create a copy of PixelEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PixelEventsCopyWith<PixelEvents> get copyWith => _$PixelEventsCopyWithImpl<PixelEvents>(this as PixelEvents, _$identity);

  /// Serializes this PixelEvents to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PixelEvents;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PixelEvents&&const DeepCollectionEquality().equals(other.rules, _this.rules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PixelEvents;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.rules));
}

@override
String toString() {
  final _this = this as PixelEvents;
  return 'PixelEvents(rules: ${_this.rules})';
}


}

/// @nodoc
abstract mixin class $PixelEventsCopyWith<$Res>  {
  factory $PixelEventsCopyWith(PixelEvents value, $Res Function(PixelEvents) _then) = _$PixelEventsCopyWithImpl;
@useResult
$Res call({
 List<PixelEventRule> rules
});




}
/// @nodoc
class _$PixelEventsCopyWithImpl<$Res>
    implements $PixelEventsCopyWith<$Res> {
  _$PixelEventsCopyWithImpl(this._self, this._then);

  final PixelEvents _self;
  final $Res Function(PixelEvents) _then;

/// Create a copy of PixelEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rules = null,}) {
  return _then(PixelEvents(
rules: null == rules ? _self.rules : rules // ignore: cast_nullable_to_non_nullable
as List<PixelEventRule>,
  ));
}

}


/// Adds pattern-matching-related methods to [PixelEvents].
extension PixelEventsPatterns on PixelEvents {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PixelEvents value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PixelEvents() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PixelEvents value)  $default,){
final _that = this;
switch (_that) {
case _PixelEvents():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PixelEvents value)?  $default,){
final _that = this;
switch (_that) {
case _PixelEvents() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PixelEventRule> rules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PixelEvents() when $default != null:
return $default(_that.rules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PixelEventRule> rules)  $default,) {final _that = this;
switch (_that) {
case _PixelEvents():
return $default(_that.rules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PixelEventRule> rules)?  $default,) {final _that = this;
switch (_that) {
case _PixelEvents() when $default != null:
return $default(_that.rules);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PixelEvents implements PixelEvents {
  const _PixelEvents({ List<PixelEventRule> rules = const []}): _rules = rules;
  factory _PixelEvents.fromJson(Map<String, dynamic> json) => _$PixelEventsFromJson(json);

 final  List<PixelEventRule> _rules;
@override@JsonKey() List<PixelEventRule> get rules {
  if (_rules is EqualUnmodifiableListView) return _rules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rules);
}


/// Create a copy of PixelEvents
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PixelEventsCopyWith<_PixelEvents> get copyWith => __$PixelEventsCopyWithImpl<_PixelEvents>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PixelEventsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PixelEvents&&const DeepCollectionEquality().equals(other.rules, _rules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_rules));
}

@override
String toString() {
    return 'PixelEvents(rules: $rules)';
}


}

/// @nodoc
abstract mixin class _$PixelEventsCopyWith<$Res> implements $PixelEventsCopyWith<$Res> {
  factory _$PixelEventsCopyWith(_PixelEvents value, $Res Function(_PixelEvents) _then) = __$PixelEventsCopyWithImpl;
@override @useResult
$Res call({
 List<PixelEventRule> rules
});




}
/// @nodoc
class __$PixelEventsCopyWithImpl<$Res>
    implements _$PixelEventsCopyWith<$Res> {
  __$PixelEventsCopyWithImpl(this._self, this._then);

  final _PixelEvents _self;
  final $Res Function(_PixelEvents) _then;

/// Create a copy of PixelEvents
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rules = null,}) {
  return _then(_PixelEvents(
rules: null == rules ? _self._rules : rules // ignore: cast_nullable_to_non_nullable
as List<PixelEventRule>,
  ));
}


}


/// @nodoc
mixin _$PixelEventRule {

 String get id;/// `phase:<draft|open|pack|ship|done|fail>`, `status:<statusId>` or `paid`.
 String get on; String? get meta; String? get tiktok; String? get snapchat;
/// Create a copy of PixelEventRule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PixelEventRuleCopyWith<PixelEventRule> get copyWith => _$PixelEventRuleCopyWithImpl<PixelEventRule>(this as PixelEventRule, _$identity);

  /// Serializes this PixelEventRule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PixelEventRule;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PixelEventRule&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.on, _this.on) || other.on == _this.on)&&(identical(other.meta, _this.meta) || other.meta == _this.meta)&&(identical(other.tiktok, _this.tiktok) || other.tiktok == _this.tiktok)&&(identical(other.snapchat, _this.snapchat) || other.snapchat == _this.snapchat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PixelEventRule;
  return Object.hash(runtimeType,_this.id,_this.on,_this.meta,_this.tiktok,_this.snapchat);
}

@override
String toString() {
  final _this = this as PixelEventRule;
  return 'PixelEventRule(id: ${_this.id}, on: ${_this.on}, meta: ${_this.meta}, tiktok: ${_this.tiktok}, snapchat: ${_this.snapchat})';
}


}

/// @nodoc
abstract mixin class $PixelEventRuleCopyWith<$Res>  {
  factory $PixelEventRuleCopyWith(PixelEventRule value, $Res Function(PixelEventRule) _then) = _$PixelEventRuleCopyWithImpl;
@useResult
$Res call({
 String id, String on, String? meta, String? tiktok, String? snapchat
});




}
/// @nodoc
class _$PixelEventRuleCopyWithImpl<$Res>
    implements $PixelEventRuleCopyWith<$Res> {
  _$PixelEventRuleCopyWithImpl(this._self, this._then);

  final PixelEventRule _self;
  final $Res Function(PixelEventRule) _then;

/// Create a copy of PixelEventRule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? on = null,Object? meta = freezed,Object? tiktok = freezed,Object? snapchat = freezed,}) {
  return _then(PixelEventRule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,on: null == on ? _self.on : on // ignore: cast_nullable_to_non_nullable
as String,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as String?,tiktok: freezed == tiktok ? _self.tiktok : tiktok // ignore: cast_nullable_to_non_nullable
as String?,snapchat: freezed == snapchat ? _self.snapchat : snapchat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PixelEventRule].
extension PixelEventRulePatterns on PixelEventRule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PixelEventRule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PixelEventRule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PixelEventRule value)  $default,){
final _that = this;
switch (_that) {
case _PixelEventRule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PixelEventRule value)?  $default,){
final _that = this;
switch (_that) {
case _PixelEventRule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String on,  String? meta,  String? tiktok,  String? snapchat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PixelEventRule() when $default != null:
return $default(_that.id,_that.on,_that.meta,_that.tiktok,_that.snapchat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String on,  String? meta,  String? tiktok,  String? snapchat)  $default,) {final _that = this;
switch (_that) {
case _PixelEventRule():
return $default(_that.id,_that.on,_that.meta,_that.tiktok,_that.snapchat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String on,  String? meta,  String? tiktok,  String? snapchat)?  $default,) {final _that = this;
switch (_that) {
case _PixelEventRule() when $default != null:
return $default(_that.id,_that.on,_that.meta,_that.tiktok,_that.snapchat);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _PixelEventRule extends PixelEventRule {
  const _PixelEventRule({required this.id, required this.on, this.meta, this.tiktok, this.snapchat}): super._();
  factory _PixelEventRule.fromJson(Map<String, dynamic> json) => _$PixelEventRuleFromJson(json);

@override final  String id;
/// `phase:<draft|open|pack|ship|done|fail>`, `status:<statusId>` or `paid`.
@override final  String on;
@override final  String? meta;
@override final  String? tiktok;
@override final  String? snapchat;

/// Create a copy of PixelEventRule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PixelEventRuleCopyWith<_PixelEventRule> get copyWith => __$PixelEventRuleCopyWithImpl<_PixelEventRule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PixelEventRuleToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PixelEventRule&&(identical(other.id, id) || other.id == id)&&(identical(other.on, on) || other.on == on)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.tiktok, tiktok) || other.tiktok == tiktok)&&(identical(other.snapchat, snapchat) || other.snapchat == snapchat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,on,meta,tiktok,snapchat);
}

@override
String toString() {
    return 'PixelEventRule(id: $id, on: $on, meta: $meta, tiktok: $tiktok, snapchat: $snapchat)';
}


}

/// @nodoc
abstract mixin class _$PixelEventRuleCopyWith<$Res> implements $PixelEventRuleCopyWith<$Res> {
  factory _$PixelEventRuleCopyWith(_PixelEventRule value, $Res Function(_PixelEventRule) _then) = __$PixelEventRuleCopyWithImpl;
@override @useResult
$Res call({
 String id, String on, String? meta, String? tiktok, String? snapchat
});




}
/// @nodoc
class __$PixelEventRuleCopyWithImpl<$Res>
    implements _$PixelEventRuleCopyWith<$Res> {
  __$PixelEventRuleCopyWithImpl(this._self, this._then);

  final _PixelEventRule _self;
  final $Res Function(_PixelEventRule) _then;

/// Create a copy of PixelEventRule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? on = null,Object? meta = freezed,Object? tiktok = freezed,Object? snapchat = freezed,}) {
  return _then(_PixelEventRule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,on: null == on ? _self.on : on // ignore: cast_nullable_to_non_nullable
as String,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as String?,tiktok: freezed == tiktok ? _self.tiktok : tiktok // ignore: cast_nullable_to_non_nullable
as String?,snapchat: freezed == snapchat ? _self.snapchat : snapchat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
