// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_order_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomOrderTag {

 String? get userId; String get name; String? get note;@ColorSerializer() Color get color;
/// Create a copy of CustomOrderTag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomOrderTagCopyWith<CustomOrderTag> get copyWith => _$CustomOrderTagCopyWithImpl<CustomOrderTag>(this as CustomOrderTag, _$identity);

  /// Serializes this CustomOrderTag to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomOrderTag&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.note, note) || other.note == note)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,note,color);

@override
String toString() {
  return 'CustomOrderTag(userId: $userId, name: $name, note: $note, color: $color)';
}


}

/// @nodoc
abstract mixin class $CustomOrderTagCopyWith<$Res>  {
  factory $CustomOrderTagCopyWith(CustomOrderTag value, $Res Function(CustomOrderTag) _then) = _$CustomOrderTagCopyWithImpl;
@useResult
$Res call({
 String? userId, String name, String? note,@ColorSerializer() Color color
});




}
/// @nodoc
class _$CustomOrderTagCopyWithImpl<$Res>
    implements $CustomOrderTagCopyWith<$Res> {
  _$CustomOrderTagCopyWithImpl(this._self, this._then);

  final CustomOrderTag _self;
  final $Res Function(CustomOrderTag) _then;

/// Create a copy of CustomOrderTag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? name = null,Object? note = freezed,Object? color = null,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomOrderTag].
extension CustomOrderTagPatterns on CustomOrderTag {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomOrderTag value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomOrderTag() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomOrderTag value)  $default,){
final _that = this;
switch (_that) {
case _CustomOrderTag():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomOrderTag value)?  $default,){
final _that = this;
switch (_that) {
case _CustomOrderTag() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? userId,  String name,  String? note, @ColorSerializer()  Color color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomOrderTag() when $default != null:
return $default(_that.userId,_that.name,_that.note,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? userId,  String name,  String? note, @ColorSerializer()  Color color)  $default,) {final _that = this;
switch (_that) {
case _CustomOrderTag():
return $default(_that.userId,_that.name,_that.note,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? userId,  String name,  String? note, @ColorSerializer()  Color color)?  $default,) {final _that = this;
switch (_that) {
case _CustomOrderTag() when $default != null:
return $default(_that.userId,_that.name,_that.note,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomOrderTag implements CustomOrderTag {
   _CustomOrderTag({this.userId, required this.name, this.note, @ColorSerializer() required this.color});
  factory _CustomOrderTag.fromJson(Map<String, dynamic> json) => _$CustomOrderTagFromJson(json);

@override final  String? userId;
@override final  String name;
@override final  String? note;
@override@ColorSerializer() final  Color color;

/// Create a copy of CustomOrderTag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomOrderTagCopyWith<_CustomOrderTag> get copyWith => __$CustomOrderTagCopyWithImpl<_CustomOrderTag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomOrderTagToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomOrderTag&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.note, note) || other.note == note)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,note,color);

@override
String toString() {
  return 'CustomOrderTag(userId: $userId, name: $name, note: $note, color: $color)';
}


}

/// @nodoc
abstract mixin class _$CustomOrderTagCopyWith<$Res> implements $CustomOrderTagCopyWith<$Res> {
  factory _$CustomOrderTagCopyWith(_CustomOrderTag value, $Res Function(_CustomOrderTag) _then) = __$CustomOrderTagCopyWithImpl;
@override @useResult
$Res call({
 String? userId, String name, String? note,@ColorSerializer() Color color
});




}
/// @nodoc
class __$CustomOrderTagCopyWithImpl<$Res>
    implements _$CustomOrderTagCopyWith<$Res> {
  __$CustomOrderTagCopyWithImpl(this._self, this._then);

  final _CustomOrderTag _self;
  final $Res Function(_CustomOrderTag) _then;

/// Create a copy of CustomOrderTag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? name = null,Object? note = freezed,Object? color = null,}) {
  return _then(_CustomOrderTag(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}


/// @nodoc
mixin _$CustomOrderTagHistory {

 String? get userId; CustomOrderTag get tag; String? get note; DateTime get createdAt;
/// Create a copy of CustomOrderTagHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomOrderTagHistoryCopyWith<CustomOrderTagHistory> get copyWith => _$CustomOrderTagHistoryCopyWithImpl<CustomOrderTagHistory>(this as CustomOrderTagHistory, _$identity);

  /// Serializes this CustomOrderTagHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomOrderTagHistory&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,tag,note,createdAt);

@override
String toString() {
  return 'CustomOrderTagHistory(userId: $userId, tag: $tag, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CustomOrderTagHistoryCopyWith<$Res>  {
  factory $CustomOrderTagHistoryCopyWith(CustomOrderTagHistory value, $Res Function(CustomOrderTagHistory) _then) = _$CustomOrderTagHistoryCopyWithImpl;
@useResult
$Res call({
 String? userId, CustomOrderTag tag, String? note, DateTime createdAt
});


$CustomOrderTagCopyWith<$Res> get tag;

}
/// @nodoc
class _$CustomOrderTagHistoryCopyWithImpl<$Res>
    implements $CustomOrderTagHistoryCopyWith<$Res> {
  _$CustomOrderTagHistoryCopyWithImpl(this._self, this._then);

  final CustomOrderTagHistory _self;
  final $Res Function(CustomOrderTagHistory) _then;

/// Create a copy of CustomOrderTagHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? tag = null,Object? note = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as CustomOrderTag,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of CustomOrderTagHistory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomOrderTagCopyWith<$Res> get tag {
  
  return $CustomOrderTagCopyWith<$Res>(_self.tag, (value) {
    return _then(_self.copyWith(tag: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomOrderTagHistory].
extension CustomOrderTagHistoryPatterns on CustomOrderTagHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomOrderTagHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomOrderTagHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomOrderTagHistory value)  $default,){
final _that = this;
switch (_that) {
case _CustomOrderTagHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomOrderTagHistory value)?  $default,){
final _that = this;
switch (_that) {
case _CustomOrderTagHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? userId,  CustomOrderTag tag,  String? note,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomOrderTagHistory() when $default != null:
return $default(_that.userId,_that.tag,_that.note,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? userId,  CustomOrderTag tag,  String? note,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _CustomOrderTagHistory():
return $default(_that.userId,_that.tag,_that.note,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? userId,  CustomOrderTag tag,  String? note,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CustomOrderTagHistory() when $default != null:
return $default(_that.userId,_that.tag,_that.note,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomOrderTagHistory implements CustomOrderTagHistory {
   _CustomOrderTagHistory({this.userId, required this.tag, this.note, required this.createdAt});
  factory _CustomOrderTagHistory.fromJson(Map<String, dynamic> json) => _$CustomOrderTagHistoryFromJson(json);

@override final  String? userId;
@override final  CustomOrderTag tag;
@override final  String? note;
@override final  DateTime createdAt;

/// Create a copy of CustomOrderTagHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomOrderTagHistoryCopyWith<_CustomOrderTagHistory> get copyWith => __$CustomOrderTagHistoryCopyWithImpl<_CustomOrderTagHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomOrderTagHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomOrderTagHistory&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,tag,note,createdAt);

@override
String toString() {
  return 'CustomOrderTagHistory(userId: $userId, tag: $tag, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CustomOrderTagHistoryCopyWith<$Res> implements $CustomOrderTagHistoryCopyWith<$Res> {
  factory _$CustomOrderTagHistoryCopyWith(_CustomOrderTagHistory value, $Res Function(_CustomOrderTagHistory) _then) = __$CustomOrderTagHistoryCopyWithImpl;
@override @useResult
$Res call({
 String? userId, CustomOrderTag tag, String? note, DateTime createdAt
});


@override $CustomOrderTagCopyWith<$Res> get tag;

}
/// @nodoc
class __$CustomOrderTagHistoryCopyWithImpl<$Res>
    implements _$CustomOrderTagHistoryCopyWith<$Res> {
  __$CustomOrderTagHistoryCopyWithImpl(this._self, this._then);

  final _CustomOrderTagHistory _self;
  final $Res Function(_CustomOrderTagHistory) _then;

/// Create a copy of CustomOrderTagHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? tag = null,Object? note = freezed,Object? createdAt = null,}) {
  return _then(_CustomOrderTagHistory(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as CustomOrderTag,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of CustomOrderTagHistory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomOrderTagCopyWith<$Res> get tag {
  
  return $CustomOrderTagCopyWith<$Res>(_self.tag, (value) {
    return _then(_self.copyWith(tag: value));
  });
}
}

// dart format on
