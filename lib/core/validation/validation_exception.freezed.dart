// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeeefValidationException {

 List<FeeefViolation> get errors;
/// Create a copy of FeeefValidationException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeefValidationExceptionCopyWith<FeeefValidationException> get copyWith => _$FeeefValidationExceptionCopyWithImpl<FeeefValidationException>(this as FeeefValidationException, _$identity);

  /// Serializes this FeeefValidationException to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeefValidationException&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'FeeefValidationException(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $FeeefValidationExceptionCopyWith<$Res>  {
  factory $FeeefValidationExceptionCopyWith(FeeefValidationException value, $Res Function(FeeefValidationException) _then) = _$FeeefValidationExceptionCopyWithImpl;
@useResult
$Res call({
 List<FeeefViolation> errors
});




}
/// @nodoc
class _$FeeefValidationExceptionCopyWithImpl<$Res>
    implements $FeeefValidationExceptionCopyWith<$Res> {
  _$FeeefValidationExceptionCopyWithImpl(this._self, this._then);

  final FeeefValidationException _self;
  final $Res Function(FeeefValidationException) _then;

/// Create a copy of FeeefValidationException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errors = null,}) {
  return _then(_self.copyWith(
errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<FeeefViolation>,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeefValidationException].
extension FeeefValidationExceptionPatterns on FeeefValidationException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeefValidationException value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeefValidationException() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeefValidationException value)  $default,){
final _that = this;
switch (_that) {
case _FeeefValidationException():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeefValidationException value)?  $default,){
final _that = this;
switch (_that) {
case _FeeefValidationException() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FeeefViolation> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeefValidationException() when $default != null:
return $default(_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FeeefViolation> errors)  $default,) {final _that = this;
switch (_that) {
case _FeeefValidationException():
return $default(_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FeeefViolation> errors)?  $default,) {final _that = this;
switch (_that) {
case _FeeefValidationException() when $default != null:
return $default(_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeefValidationException implements FeeefValidationException {
   _FeeefValidationException({required final  List<FeeefViolation> errors}): _errors = errors;
  factory _FeeefValidationException.fromJson(Map<String, dynamic> json) => _$FeeefValidationExceptionFromJson(json);

 final  List<FeeefViolation> _errors;
@override List<FeeefViolation> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of FeeefValidationException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeefValidationExceptionCopyWith<_FeeefValidationException> get copyWith => __$FeeefValidationExceptionCopyWithImpl<_FeeefValidationException>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeefValidationExceptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeefValidationException&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'FeeefValidationException(errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$FeeefValidationExceptionCopyWith<$Res> implements $FeeefValidationExceptionCopyWith<$Res> {
  factory _$FeeefValidationExceptionCopyWith(_FeeefValidationException value, $Res Function(_FeeefValidationException) _then) = __$FeeefValidationExceptionCopyWithImpl;
@override @useResult
$Res call({
 List<FeeefViolation> errors
});




}
/// @nodoc
class __$FeeefValidationExceptionCopyWithImpl<$Res>
    implements _$FeeefValidationExceptionCopyWith<$Res> {
  __$FeeefValidationExceptionCopyWithImpl(this._self, this._then);

  final _FeeefValidationException _self;
  final $Res Function(_FeeefValidationException) _then;

/// Create a copy of FeeefValidationException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(_FeeefValidationException(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<FeeefViolation>,
  ));
}


}


/// @nodoc
mixin _$FeeefViolation {

 String get message; String? get rule; String? get field;
/// Create a copy of FeeefViolation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeefViolationCopyWith<FeeefViolation> get copyWith => _$FeeefViolationCopyWithImpl<FeeefViolation>(this as FeeefViolation, _$identity);

  /// Serializes this FeeefViolation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeefViolation&&(identical(other.message, message) || other.message == message)&&(identical(other.rule, rule) || other.rule == rule)&&(identical(other.field, field) || other.field == field));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,rule,field);

@override
String toString() {
  return 'FeeefViolation(message: $message, rule: $rule, field: $field)';
}


}

/// @nodoc
abstract mixin class $FeeefViolationCopyWith<$Res>  {
  factory $FeeefViolationCopyWith(FeeefViolation value, $Res Function(FeeefViolation) _then) = _$FeeefViolationCopyWithImpl;
@useResult
$Res call({
 String message, String? rule, String? field
});




}
/// @nodoc
class _$FeeefViolationCopyWithImpl<$Res>
    implements $FeeefViolationCopyWith<$Res> {
  _$FeeefViolationCopyWithImpl(this._self, this._then);

  final FeeefViolation _self;
  final $Res Function(FeeefViolation) _then;

/// Create a copy of FeeefViolation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? rule = freezed,Object? field = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,rule: freezed == rule ? _self.rule : rule // ignore: cast_nullable_to_non_nullable
as String?,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeefViolation].
extension FeeefViolationPatterns on FeeefViolation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeefViolation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeefViolation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeefViolation value)  $default,){
final _that = this;
switch (_that) {
case _FeeefViolation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeefViolation value)?  $default,){
final _that = this;
switch (_that) {
case _FeeefViolation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  String? rule,  String? field)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeefViolation() when $default != null:
return $default(_that.message,_that.rule,_that.field);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  String? rule,  String? field)  $default,) {final _that = this;
switch (_that) {
case _FeeefViolation():
return $default(_that.message,_that.rule,_that.field);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  String? rule,  String? field)?  $default,) {final _that = this;
switch (_that) {
case _FeeefViolation() when $default != null:
return $default(_that.message,_that.rule,_that.field);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeefViolation implements FeeefViolation {
   _FeeefViolation({required this.message, this.rule, this.field});
  factory _FeeefViolation.fromJson(Map<String, dynamic> json) => _$FeeefViolationFromJson(json);

@override final  String message;
@override final  String? rule;
@override final  String? field;

/// Create a copy of FeeefViolation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeefViolationCopyWith<_FeeefViolation> get copyWith => __$FeeefViolationCopyWithImpl<_FeeefViolation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeefViolationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeefViolation&&(identical(other.message, message) || other.message == message)&&(identical(other.rule, rule) || other.rule == rule)&&(identical(other.field, field) || other.field == field));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,rule,field);

@override
String toString() {
  return 'FeeefViolation(message: $message, rule: $rule, field: $field)';
}


}

/// @nodoc
abstract mixin class _$FeeefViolationCopyWith<$Res> implements $FeeefViolationCopyWith<$Res> {
  factory _$FeeefViolationCopyWith(_FeeefViolation value, $Res Function(_FeeefViolation) _then) = __$FeeefViolationCopyWithImpl;
@override @useResult
$Res call({
 String message, String? rule, String? field
});




}
/// @nodoc
class __$FeeefViolationCopyWithImpl<$Res>
    implements _$FeeefViolationCopyWith<$Res> {
  __$FeeefViolationCopyWithImpl(this._self, this._then);

  final _FeeefViolation _self;
  final $Res Function(_FeeefViolation) _then;

/// Create a copy of FeeefViolation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? rule = freezed,Object? field = freezed,}) {
  return _then(_FeeefViolation(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,rule: freezed == rule ? _self.rule : rule // ignore: cast_nullable_to_non_nullable
as String?,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
