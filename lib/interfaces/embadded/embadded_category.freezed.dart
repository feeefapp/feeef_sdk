// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'embadded_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmbaddedCategory {

 String get name; String? get description; String? get photoUrl; String? get ondarkPhotoUrl;// metadata
 Map<String, dynamic> get metadata;
/// Create a copy of EmbaddedCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmbaddedCategoryCopyWith<EmbaddedCategory> get copyWith => _$EmbaddedCategoryCopyWithImpl<EmbaddedCategory>(this as EmbaddedCategory, _$identity);

  /// Serializes this EmbaddedCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmbaddedCategory&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.ondarkPhotoUrl, ondarkPhotoUrl) || other.ondarkPhotoUrl == ondarkPhotoUrl)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,photoUrl,ondarkPhotoUrl,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'EmbaddedCategory(name: $name, description: $description, photoUrl: $photoUrl, ondarkPhotoUrl: $ondarkPhotoUrl, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $EmbaddedCategoryCopyWith<$Res>  {
  factory $EmbaddedCategoryCopyWith(EmbaddedCategory value, $Res Function(EmbaddedCategory) _then) = _$EmbaddedCategoryCopyWithImpl;
@useResult
$Res call({
 String name, String? description, String? photoUrl, String? ondarkPhotoUrl, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$EmbaddedCategoryCopyWithImpl<$Res>
    implements $EmbaddedCategoryCopyWith<$Res> {
  _$EmbaddedCategoryCopyWithImpl(this._self, this._then);

  final EmbaddedCategory _self;
  final $Res Function(EmbaddedCategory) _then;

/// Create a copy of EmbaddedCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = freezed,Object? photoUrl = freezed,Object? ondarkPhotoUrl = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkPhotoUrl: freezed == ondarkPhotoUrl ? _self.ondarkPhotoUrl : ondarkPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [EmbaddedCategory].
extension EmbaddedCategoryPatterns on EmbaddedCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmbaddedCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmbaddedCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmbaddedCategory value)  $default,){
final _that = this;
switch (_that) {
case _EmbaddedCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmbaddedCategory value)?  $default,){
final _that = this;
switch (_that) {
case _EmbaddedCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? description,  String? photoUrl,  String? ondarkPhotoUrl,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmbaddedCategory() when $default != null:
return $default(_that.name,_that.description,_that.photoUrl,_that.ondarkPhotoUrl,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? description,  String? photoUrl,  String? ondarkPhotoUrl,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _EmbaddedCategory():
return $default(_that.name,_that.description,_that.photoUrl,_that.ondarkPhotoUrl,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? description,  String? photoUrl,  String? ondarkPhotoUrl,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _EmbaddedCategory() when $default != null:
return $default(_that.name,_that.description,_that.photoUrl,_that.ondarkPhotoUrl,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmbaddedCategory implements EmbaddedCategory {
   _EmbaddedCategory({required this.name, this.description, this.photoUrl, this.ondarkPhotoUrl, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _EmbaddedCategory.fromJson(Map<String, dynamic> json) => _$EmbaddedCategoryFromJson(json);

@override final  String name;
@override final  String? description;
@override final  String? photoUrl;
@override final  String? ondarkPhotoUrl;
// metadata
 final  Map<String, dynamic> _metadata;
// metadata
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of EmbaddedCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmbaddedCategoryCopyWith<_EmbaddedCategory> get copyWith => __$EmbaddedCategoryCopyWithImpl<_EmbaddedCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmbaddedCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmbaddedCategory&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.ondarkPhotoUrl, ondarkPhotoUrl) || other.ondarkPhotoUrl == ondarkPhotoUrl)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,photoUrl,ondarkPhotoUrl,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'EmbaddedCategory(name: $name, description: $description, photoUrl: $photoUrl, ondarkPhotoUrl: $ondarkPhotoUrl, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$EmbaddedCategoryCopyWith<$Res> implements $EmbaddedCategoryCopyWith<$Res> {
  factory _$EmbaddedCategoryCopyWith(_EmbaddedCategory value, $Res Function(_EmbaddedCategory) _then) = __$EmbaddedCategoryCopyWithImpl;
@override @useResult
$Res call({
 String name, String? description, String? photoUrl, String? ondarkPhotoUrl, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$EmbaddedCategoryCopyWithImpl<$Res>
    implements _$EmbaddedCategoryCopyWith<$Res> {
  __$EmbaddedCategoryCopyWithImpl(this._self, this._then);

  final _EmbaddedCategory _self;
  final $Res Function(_EmbaddedCategory) _then;

/// Create a copy of EmbaddedCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = freezed,Object? photoUrl = freezed,Object? ondarkPhotoUrl = freezed,Object? metadata = null,}) {
  return _then(_EmbaddedCategory(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,ondarkPhotoUrl: freezed == ondarkPhotoUrl ? _self.ondarkPhotoUrl : ondarkPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
