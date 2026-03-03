// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_landing_page_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductLandingPageTemplate {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get name; String get description; String get imageUrl; Map<String, dynamic>? get schema; Map<String, dynamic> get defaults;
/// Create a copy of ProductLandingPageTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductLandingPageTemplateCopyWith<ProductLandingPageTemplate> get copyWith => _$ProductLandingPageTemplateCopyWithImpl<ProductLandingPageTemplate>(this as ProductLandingPageTemplate, _$identity);

  /// Serializes this ProductLandingPageTemplate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLandingPageTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.schema, schema)&&const DeepCollectionEquality().equals(other.defaults, defaults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,name,description,imageUrl,const DeepCollectionEquality().hash(schema),const DeepCollectionEquality().hash(defaults));

@override
String toString() {
  return 'ProductLandingPageTemplate(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, description: $description, imageUrl: $imageUrl, schema: $schema, defaults: $defaults)';
}


}

/// @nodoc
abstract mixin class $ProductLandingPageTemplateCopyWith<$Res>  {
  factory $ProductLandingPageTemplateCopyWith(ProductLandingPageTemplate value, $Res Function(ProductLandingPageTemplate) _then) = _$ProductLandingPageTemplateCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String name, String description, String imageUrl, Map<String, dynamic>? schema, Map<String, dynamic> defaults
});




}
/// @nodoc
class _$ProductLandingPageTemplateCopyWithImpl<$Res>
    implements $ProductLandingPageTemplateCopyWith<$Res> {
  _$ProductLandingPageTemplateCopyWithImpl(this._self, this._then);

  final ProductLandingPageTemplate _self;
  final $Res Function(ProductLandingPageTemplate) _then;

/// Create a copy of ProductLandingPageTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? name = null,Object? description = null,Object? imageUrl = null,Object? schema = freezed,Object? defaults = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,defaults: null == defaults ? _self.defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductLandingPageTemplate].
extension ProductLandingPageTemplatePatterns on ProductLandingPageTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductLandingPageTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductLandingPageTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductLandingPageTemplate value)  $default,){
final _that = this;
switch (_that) {
case _ProductLandingPageTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductLandingPageTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _ProductLandingPageTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String name,  String description,  String imageUrl,  Map<String, dynamic>? schema,  Map<String, dynamic> defaults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductLandingPageTemplate() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.description,_that.imageUrl,_that.schema,_that.defaults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String name,  String description,  String imageUrl,  Map<String, dynamic>? schema,  Map<String, dynamic> defaults)  $default,) {final _that = this;
switch (_that) {
case _ProductLandingPageTemplate():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.description,_that.imageUrl,_that.schema,_that.defaults);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String name,  String description,  String imageUrl,  Map<String, dynamic>? schema,  Map<String, dynamic> defaults)?  $default,) {final _that = this;
switch (_that) {
case _ProductLandingPageTemplate() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.description,_that.imageUrl,_that.schema,_that.defaults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductLandingPageTemplate extends ProductLandingPageTemplate {
   _ProductLandingPageTemplate({required this.id, required this.createdAt, required this.updatedAt, required this.name, required this.description, required this.imageUrl, final  Map<String, dynamic>? schema, required final  Map<String, dynamic> defaults}): _schema = schema,_defaults = defaults,super._();
  factory _ProductLandingPageTemplate.fromJson(Map<String, dynamic> json) => _$ProductLandingPageTemplateFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String name;
@override final  String description;
@override final  String imageUrl;
 final  Map<String, dynamic>? _schema;
@override Map<String, dynamic>? get schema {
  final value = _schema;
  if (value == null) return null;
  if (_schema is EqualUnmodifiableMapView) return _schema;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic> _defaults;
@override Map<String, dynamic> get defaults {
  if (_defaults is EqualUnmodifiableMapView) return _defaults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_defaults);
}


/// Create a copy of ProductLandingPageTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductLandingPageTemplateCopyWith<_ProductLandingPageTemplate> get copyWith => __$ProductLandingPageTemplateCopyWithImpl<_ProductLandingPageTemplate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductLandingPageTemplateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductLandingPageTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._schema, _schema)&&const DeepCollectionEquality().equals(other._defaults, _defaults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,name,description,imageUrl,const DeepCollectionEquality().hash(_schema),const DeepCollectionEquality().hash(_defaults));

@override
String toString() {
  return 'ProductLandingPageTemplate(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, description: $description, imageUrl: $imageUrl, schema: $schema, defaults: $defaults)';
}


}

/// @nodoc
abstract mixin class _$ProductLandingPageTemplateCopyWith<$Res> implements $ProductLandingPageTemplateCopyWith<$Res> {
  factory _$ProductLandingPageTemplateCopyWith(_ProductLandingPageTemplate value, $Res Function(_ProductLandingPageTemplate) _then) = __$ProductLandingPageTemplateCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String name, String description, String imageUrl, Map<String, dynamic>? schema, Map<String, dynamic> defaults
});




}
/// @nodoc
class __$ProductLandingPageTemplateCopyWithImpl<$Res>
    implements _$ProductLandingPageTemplateCopyWith<$Res> {
  __$ProductLandingPageTemplateCopyWithImpl(this._self, this._then);

  final _ProductLandingPageTemplate _self;
  final $Res Function(_ProductLandingPageTemplate) _then;

/// Create a copy of ProductLandingPageTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? name = null,Object? description = null,Object? imageUrl = null,Object? schema = freezed,Object? defaults = null,}) {
  return _then(_ProductLandingPageTemplate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,schema: freezed == schema ? _self._schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,defaults: null == defaults ? _self._defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$ProductLandingPageTemplateCreate {

 String get name; String get description; String get imageUrl; Map<String, dynamic> get schema; Map<String, dynamic> get defaults;
/// Create a copy of ProductLandingPageTemplateCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductLandingPageTemplateCreateCopyWith<ProductLandingPageTemplateCreate> get copyWith => _$ProductLandingPageTemplateCreateCopyWithImpl<ProductLandingPageTemplateCreate>(this as ProductLandingPageTemplateCreate, _$identity);

  /// Serializes this ProductLandingPageTemplateCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLandingPageTemplateCreate&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.schema, schema)&&const DeepCollectionEquality().equals(other.defaults, defaults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,imageUrl,const DeepCollectionEquality().hash(schema),const DeepCollectionEquality().hash(defaults));

@override
String toString() {
  return 'ProductLandingPageTemplateCreate(name: $name, description: $description, imageUrl: $imageUrl, schema: $schema, defaults: $defaults)';
}


}

/// @nodoc
abstract mixin class $ProductLandingPageTemplateCreateCopyWith<$Res>  {
  factory $ProductLandingPageTemplateCreateCopyWith(ProductLandingPageTemplateCreate value, $Res Function(ProductLandingPageTemplateCreate) _then) = _$ProductLandingPageTemplateCreateCopyWithImpl;
@useResult
$Res call({
 String name, String description, String imageUrl, Map<String, dynamic> schema, Map<String, dynamic> defaults
});




}
/// @nodoc
class _$ProductLandingPageTemplateCreateCopyWithImpl<$Res>
    implements $ProductLandingPageTemplateCreateCopyWith<$Res> {
  _$ProductLandingPageTemplateCreateCopyWithImpl(this._self, this._then);

  final ProductLandingPageTemplateCreate _self;
  final $Res Function(ProductLandingPageTemplateCreate) _then;

/// Create a copy of ProductLandingPageTemplateCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? imageUrl = null,Object? schema = null,Object? defaults = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,schema: null == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,defaults: null == defaults ? _self.defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductLandingPageTemplateCreate].
extension ProductLandingPageTemplateCreatePatterns on ProductLandingPageTemplateCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductLandingPageTemplateCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductLandingPageTemplateCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductLandingPageTemplateCreate value)  $default,){
final _that = this;
switch (_that) {
case _ProductLandingPageTemplateCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductLandingPageTemplateCreate value)?  $default,){
final _that = this;
switch (_that) {
case _ProductLandingPageTemplateCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description,  String imageUrl,  Map<String, dynamic> schema,  Map<String, dynamic> defaults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductLandingPageTemplateCreate() when $default != null:
return $default(_that.name,_that.description,_that.imageUrl,_that.schema,_that.defaults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description,  String imageUrl,  Map<String, dynamic> schema,  Map<String, dynamic> defaults)  $default,) {final _that = this;
switch (_that) {
case _ProductLandingPageTemplateCreate():
return $default(_that.name,_that.description,_that.imageUrl,_that.schema,_that.defaults);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description,  String imageUrl,  Map<String, dynamic> schema,  Map<String, dynamic> defaults)?  $default,) {final _that = this;
switch (_that) {
case _ProductLandingPageTemplateCreate() when $default != null:
return $default(_that.name,_that.description,_that.imageUrl,_that.schema,_that.defaults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductLandingPageTemplateCreate implements ProductLandingPageTemplateCreate {
  const _ProductLandingPageTemplateCreate({required this.name, required this.description, required this.imageUrl, required final  Map<String, dynamic> schema, required final  Map<String, dynamic> defaults}): _schema = schema,_defaults = defaults;
  factory _ProductLandingPageTemplateCreate.fromJson(Map<String, dynamic> json) => _$ProductLandingPageTemplateCreateFromJson(json);

@override final  String name;
@override final  String description;
@override final  String imageUrl;
 final  Map<String, dynamic> _schema;
@override Map<String, dynamic> get schema {
  if (_schema is EqualUnmodifiableMapView) return _schema;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_schema);
}

 final  Map<String, dynamic> _defaults;
@override Map<String, dynamic> get defaults {
  if (_defaults is EqualUnmodifiableMapView) return _defaults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_defaults);
}


/// Create a copy of ProductLandingPageTemplateCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductLandingPageTemplateCreateCopyWith<_ProductLandingPageTemplateCreate> get copyWith => __$ProductLandingPageTemplateCreateCopyWithImpl<_ProductLandingPageTemplateCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductLandingPageTemplateCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductLandingPageTemplateCreate&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._schema, _schema)&&const DeepCollectionEquality().equals(other._defaults, _defaults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,imageUrl,const DeepCollectionEquality().hash(_schema),const DeepCollectionEquality().hash(_defaults));

@override
String toString() {
  return 'ProductLandingPageTemplateCreate(name: $name, description: $description, imageUrl: $imageUrl, schema: $schema, defaults: $defaults)';
}


}

/// @nodoc
abstract mixin class _$ProductLandingPageTemplateCreateCopyWith<$Res> implements $ProductLandingPageTemplateCreateCopyWith<$Res> {
  factory _$ProductLandingPageTemplateCreateCopyWith(_ProductLandingPageTemplateCreate value, $Res Function(_ProductLandingPageTemplateCreate) _then) = __$ProductLandingPageTemplateCreateCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, String imageUrl, Map<String, dynamic> schema, Map<String, dynamic> defaults
});




}
/// @nodoc
class __$ProductLandingPageTemplateCreateCopyWithImpl<$Res>
    implements _$ProductLandingPageTemplateCreateCopyWith<$Res> {
  __$ProductLandingPageTemplateCreateCopyWithImpl(this._self, this._then);

  final _ProductLandingPageTemplateCreate _self;
  final $Res Function(_ProductLandingPageTemplateCreate) _then;

/// Create a copy of ProductLandingPageTemplateCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? imageUrl = null,Object? schema = null,Object? defaults = null,}) {
  return _then(_ProductLandingPageTemplateCreate(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,schema: null == schema ? _self._schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,defaults: null == defaults ? _self._defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$ProductLandingPageTemplateUpdate {

 String? get name; String? get description; String? get imageUrl; Map<String, dynamic>? get schema; Map<String, dynamic>? get defaults;@JsonKey(includeFromJson: false) List<String> get setToNull;
/// Create a copy of ProductLandingPageTemplateUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductLandingPageTemplateUpdateCopyWith<ProductLandingPageTemplateUpdate> get copyWith => _$ProductLandingPageTemplateUpdateCopyWithImpl<ProductLandingPageTemplateUpdate>(this as ProductLandingPageTemplateUpdate, _$identity);

  /// Serializes this ProductLandingPageTemplateUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLandingPageTemplateUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.schema, schema)&&const DeepCollectionEquality().equals(other.defaults, defaults)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,imageUrl,const DeepCollectionEquality().hash(schema),const DeepCollectionEquality().hash(defaults),const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'ProductLandingPageTemplateUpdate(name: $name, description: $description, imageUrl: $imageUrl, schema: $schema, defaults: $defaults, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $ProductLandingPageTemplateUpdateCopyWith<$Res>  {
  factory $ProductLandingPageTemplateUpdateCopyWith(ProductLandingPageTemplateUpdate value, $Res Function(ProductLandingPageTemplateUpdate) _then) = _$ProductLandingPageTemplateUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? description, String? imageUrl, Map<String, dynamic>? schema, Map<String, dynamic>? defaults,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class _$ProductLandingPageTemplateUpdateCopyWithImpl<$Res>
    implements $ProductLandingPageTemplateUpdateCopyWith<$Res> {
  _$ProductLandingPageTemplateUpdateCopyWithImpl(this._self, this._then);

  final ProductLandingPageTemplateUpdate _self;
  final $Res Function(ProductLandingPageTemplateUpdate) _then;

/// Create a copy of ProductLandingPageTemplateUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? description = freezed,Object? imageUrl = freezed,Object? schema = freezed,Object? defaults = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,defaults: freezed == defaults ? _self.defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductLandingPageTemplateUpdate].
extension ProductLandingPageTemplateUpdatePatterns on ProductLandingPageTemplateUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductLandingPageTemplateUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductLandingPageTemplateUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductLandingPageTemplateUpdate value)  $default,){
final _that = this;
switch (_that) {
case _ProductLandingPageTemplateUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductLandingPageTemplateUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _ProductLandingPageTemplateUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? description,  String? imageUrl,  Map<String, dynamic>? schema,  Map<String, dynamic>? defaults, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductLandingPageTemplateUpdate() when $default != null:
return $default(_that.name,_that.description,_that.imageUrl,_that.schema,_that.defaults,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? description,  String? imageUrl,  Map<String, dynamic>? schema,  Map<String, dynamic>? defaults, @JsonKey(includeFromJson: false)  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _ProductLandingPageTemplateUpdate():
return $default(_that.name,_that.description,_that.imageUrl,_that.schema,_that.defaults,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? description,  String? imageUrl,  Map<String, dynamic>? schema,  Map<String, dynamic>? defaults, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _ProductLandingPageTemplateUpdate() when $default != null:
return $default(_that.name,_that.description,_that.imageUrl,_that.schema,_that.defaults,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductLandingPageTemplateUpdate implements ProductLandingPageTemplateUpdate {
  const _ProductLandingPageTemplateUpdate({this.name, this.description, this.imageUrl, final  Map<String, dynamic>? schema, final  Map<String, dynamic>? defaults, @JsonKey(includeFromJson: false) final  List<String> setToNull = const []}): _schema = schema,_defaults = defaults,_setToNull = setToNull;
  factory _ProductLandingPageTemplateUpdate.fromJson(Map<String, dynamic> json) => _$ProductLandingPageTemplateUpdateFromJson(json);

@override final  String? name;
@override final  String? description;
@override final  String? imageUrl;
 final  Map<String, dynamic>? _schema;
@override Map<String, dynamic>? get schema {
  final value = _schema;
  if (value == null) return null;
  if (_schema is EqualUnmodifiableMapView) return _schema;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _defaults;
@override Map<String, dynamic>? get defaults {
  final value = _defaults;
  if (value == null) return null;
  if (_defaults is EqualUnmodifiableMapView) return _defaults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String> _setToNull;
@override@JsonKey(includeFromJson: false) List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of ProductLandingPageTemplateUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductLandingPageTemplateUpdateCopyWith<_ProductLandingPageTemplateUpdate> get copyWith => __$ProductLandingPageTemplateUpdateCopyWithImpl<_ProductLandingPageTemplateUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductLandingPageTemplateUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductLandingPageTemplateUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._schema, _schema)&&const DeepCollectionEquality().equals(other._defaults, _defaults)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,imageUrl,const DeepCollectionEquality().hash(_schema),const DeepCollectionEquality().hash(_defaults),const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'ProductLandingPageTemplateUpdate(name: $name, description: $description, imageUrl: $imageUrl, schema: $schema, defaults: $defaults, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$ProductLandingPageTemplateUpdateCopyWith<$Res> implements $ProductLandingPageTemplateUpdateCopyWith<$Res> {
  factory _$ProductLandingPageTemplateUpdateCopyWith(_ProductLandingPageTemplateUpdate value, $Res Function(_ProductLandingPageTemplateUpdate) _then) = __$ProductLandingPageTemplateUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? description, String? imageUrl, Map<String, dynamic>? schema, Map<String, dynamic>? defaults,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class __$ProductLandingPageTemplateUpdateCopyWithImpl<$Res>
    implements _$ProductLandingPageTemplateUpdateCopyWith<$Res> {
  __$ProductLandingPageTemplateUpdateCopyWithImpl(this._self, this._then);

  final _ProductLandingPageTemplateUpdate _self;
  final $Res Function(_ProductLandingPageTemplateUpdate) _then;

/// Create a copy of ProductLandingPageTemplateUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? description = freezed,Object? imageUrl = freezed,Object? schema = freezed,Object? defaults = freezed,Object? setToNull = null,}) {
  return _then(_ProductLandingPageTemplateUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,schema: freezed == schema ? _self._schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,defaults: freezed == defaults ? _self._defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
