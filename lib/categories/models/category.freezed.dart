// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Category {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get storeId; String? get parentId; String get name; String? get description; String? get photoUrl; Map<String, dynamic> get metadata; Category? get parent; List<Category>? get children;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.parent, parent) || other.parent == parent)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,storeId,parentId,name,description,photoUrl,const DeepCollectionEquality().hash(metadata),parent,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'Category(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, storeId: $storeId, parentId: $parentId, name: $name, description: $description, photoUrl: $photoUrl, metadata: $metadata, parent: $parent, children: $children)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String storeId, String? parentId, String name, String? description, String? photoUrl, Map<String, dynamic> metadata, Category? parent, List<Category>? children
});


$CategoryCopyWith<$Res>? get parent;

}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? storeId = null,Object? parentId = freezed,Object? name = null,Object? description = freezed,Object? photoUrl = freezed,Object? metadata = null,Object? parent = freezed,Object? children = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as Category?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<Category>?,
  ));
}
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String storeId,  String? parentId,  String name,  String? description,  String? photoUrl,  Map<String, dynamic> metadata,  Category? parent,  List<Category>? children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.storeId,_that.parentId,_that.name,_that.description,_that.photoUrl,_that.metadata,_that.parent,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String storeId,  String? parentId,  String name,  String? description,  String? photoUrl,  Map<String, dynamic> metadata,  Category? parent,  List<Category>? children)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.storeId,_that.parentId,_that.name,_that.description,_that.photoUrl,_that.metadata,_that.parent,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String storeId,  String? parentId,  String name,  String? description,  String? photoUrl,  Map<String, dynamic> metadata,  Category? parent,  List<Category>? children)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.storeId,_that.parentId,_that.name,_that.description,_that.photoUrl,_that.metadata,_that.parent,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category extends Category {
   _Category({required this.id, required this.createdAt, required this.updatedAt, required this.storeId, this.parentId, required this.name, this.description, this.photoUrl, final  Map<String, dynamic> metadata = const {}, this.parent, final  List<Category>? children}): _metadata = metadata,_children = children,super._();
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String storeId;
@override final  String? parentId;
@override final  String name;
@override final  String? description;
@override final  String? photoUrl;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override final  Category? parent;
 final  List<Category>? _children;
@override List<Category>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.parent, parent) || other.parent == parent)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,storeId,parentId,name,description,photoUrl,const DeepCollectionEquality().hash(_metadata),parent,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'Category(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, storeId: $storeId, parentId: $parentId, name: $name, description: $description, photoUrl: $photoUrl, metadata: $metadata, parent: $parent, children: $children)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String storeId, String? parentId, String name, String? description, String? photoUrl, Map<String, dynamic> metadata, Category? parent, List<Category>? children
});


@override $CategoryCopyWith<$Res>? get parent;

}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? storeId = null,Object? parentId = freezed,Object? name = null,Object? description = freezed,Object? photoUrl = freezed,Object? metadata = null,Object? parent = freezed,Object? children = freezed,}) {
  return _then(_Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as Category?,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<Category>?,
  ));
}

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// @nodoc
mixin _$CategoryCreate {

 String get storeId; String? get parentId; String get name; String? get description; String? get photoUrl; Map<String, dynamic> get metadata;
/// Create a copy of CategoryCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCreateCopyWith<CategoryCreate> get copyWith => _$CategoryCreateCopyWithImpl<CategoryCreate>(this as CategoryCreate, _$identity);

  /// Serializes this CategoryCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,parentId,name,description,photoUrl,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'CategoryCreate(storeId: $storeId, parentId: $parentId, name: $name, description: $description, photoUrl: $photoUrl, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $CategoryCreateCopyWith<$Res>  {
  factory $CategoryCreateCopyWith(CategoryCreate value, $Res Function(CategoryCreate) _then) = _$CategoryCreateCopyWithImpl;
@useResult
$Res call({
 String storeId, String? parentId, String name, String? description, String? photoUrl, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$CategoryCreateCopyWithImpl<$Res>
    implements $CategoryCreateCopyWith<$Res> {
  _$CategoryCreateCopyWithImpl(this._self, this._then);

  final CategoryCreate _self;
  final $Res Function(CategoryCreate) _then;

/// Create a copy of CategoryCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? parentId = freezed,Object? name = null,Object? description = freezed,Object? photoUrl = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryCreate].
extension CategoryCreatePatterns on CategoryCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryCreate value)  $default,){
final _that = this;
switch (_that) {
case _CategoryCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryCreate value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String storeId,  String? parentId,  String name,  String? description,  String? photoUrl,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryCreate() when $default != null:
return $default(_that.storeId,_that.parentId,_that.name,_that.description,_that.photoUrl,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String storeId,  String? parentId,  String name,  String? description,  String? photoUrl,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _CategoryCreate():
return $default(_that.storeId,_that.parentId,_that.name,_that.description,_that.photoUrl,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String storeId,  String? parentId,  String name,  String? description,  String? photoUrl,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _CategoryCreate() when $default != null:
return $default(_that.storeId,_that.parentId,_that.name,_that.description,_that.photoUrl,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryCreate implements CategoryCreate {
  const _CategoryCreate({required this.storeId, this.parentId, required this.name, this.description, this.photoUrl, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _CategoryCreate.fromJson(Map<String, dynamic> json) => _$CategoryCreateFromJson(json);

@override final  String storeId;
@override final  String? parentId;
@override final  String name;
@override final  String? description;
@override final  String? photoUrl;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of CategoryCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCreateCopyWith<_CategoryCreate> get copyWith => __$CategoryCreateCopyWithImpl<_CategoryCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,parentId,name,description,photoUrl,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'CategoryCreate(storeId: $storeId, parentId: $parentId, name: $name, description: $description, photoUrl: $photoUrl, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$CategoryCreateCopyWith<$Res> implements $CategoryCreateCopyWith<$Res> {
  factory _$CategoryCreateCopyWith(_CategoryCreate value, $Res Function(_CategoryCreate) _then) = __$CategoryCreateCopyWithImpl;
@override @useResult
$Res call({
 String storeId, String? parentId, String name, String? description, String? photoUrl, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$CategoryCreateCopyWithImpl<$Res>
    implements _$CategoryCreateCopyWith<$Res> {
  __$CategoryCreateCopyWithImpl(this._self, this._then);

  final _CategoryCreate _self;
  final $Res Function(_CategoryCreate) _then;

/// Create a copy of CategoryCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? parentId = freezed,Object? name = null,Object? description = freezed,Object? photoUrl = freezed,Object? metadata = null,}) {
  return _then(_CategoryCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$CategoryUpdate {

 String? get parentId; String? get name; String? get description; String? get photoUrl; Map<String, dynamic>? get metadata;@JsonKey(includeFromJson: false) List<String> get setToNull;
/// Create a copy of CategoryUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryUpdateCopyWith<CategoryUpdate> get copyWith => _$CategoryUpdateCopyWithImpl<CategoryUpdate>(this as CategoryUpdate, _$identity);

  /// Serializes this CategoryUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryUpdate&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parentId,name,description,photoUrl,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'CategoryUpdate(parentId: $parentId, name: $name, description: $description, photoUrl: $photoUrl, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $CategoryUpdateCopyWith<$Res>  {
  factory $CategoryUpdateCopyWith(CategoryUpdate value, $Res Function(CategoryUpdate) _then) = _$CategoryUpdateCopyWithImpl;
@useResult
$Res call({
 String? parentId, String? name, String? description, String? photoUrl, Map<String, dynamic>? metadata,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class _$CategoryUpdateCopyWithImpl<$Res>
    implements $CategoryUpdateCopyWith<$Res> {
  _$CategoryUpdateCopyWithImpl(this._self, this._then);

  final CategoryUpdate _self;
  final $Res Function(CategoryUpdate) _then;

/// Create a copy of CategoryUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentId = freezed,Object? name = freezed,Object? description = freezed,Object? photoUrl = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryUpdate].
extension CategoryUpdatePatterns on CategoryUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryUpdate value)  $default,){
final _that = this;
switch (_that) {
case _CategoryUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? parentId,  String? name,  String? description,  String? photoUrl,  Map<String, dynamic>? metadata, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryUpdate() when $default != null:
return $default(_that.parentId,_that.name,_that.description,_that.photoUrl,_that.metadata,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? parentId,  String? name,  String? description,  String? photoUrl,  Map<String, dynamic>? metadata, @JsonKey(includeFromJson: false)  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _CategoryUpdate():
return $default(_that.parentId,_that.name,_that.description,_that.photoUrl,_that.metadata,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? parentId,  String? name,  String? description,  String? photoUrl,  Map<String, dynamic>? metadata, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _CategoryUpdate() when $default != null:
return $default(_that.parentId,_that.name,_that.description,_that.photoUrl,_that.metadata,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryUpdate implements CategoryUpdate {
  const _CategoryUpdate({this.parentId, this.name, this.description, this.photoUrl, final  Map<String, dynamic>? metadata, @JsonKey(includeFromJson: false) final  List<String> setToNull = const []}): _metadata = metadata,_setToNull = setToNull;
  factory _CategoryUpdate.fromJson(Map<String, dynamic> json) => _$CategoryUpdateFromJson(json);

@override final  String? parentId;
@override final  String? name;
@override final  String? description;
@override final  String? photoUrl;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String> _setToNull;
@override@JsonKey(includeFromJson: false) List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of CategoryUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryUpdateCopyWith<_CategoryUpdate> get copyWith => __$CategoryUpdateCopyWithImpl<_CategoryUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryUpdate&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parentId,name,description,photoUrl,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'CategoryUpdate(parentId: $parentId, name: $name, description: $description, photoUrl: $photoUrl, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$CategoryUpdateCopyWith<$Res> implements $CategoryUpdateCopyWith<$Res> {
  factory _$CategoryUpdateCopyWith(_CategoryUpdate value, $Res Function(_CategoryUpdate) _then) = __$CategoryUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? parentId, String? name, String? description, String? photoUrl, Map<String, dynamic>? metadata,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class __$CategoryUpdateCopyWithImpl<$Res>
    implements _$CategoryUpdateCopyWith<$Res> {
  __$CategoryUpdateCopyWithImpl(this._self, this._then);

  final _CategoryUpdate _self;
  final $Res Function(_CategoryUpdate) _then;

/// Create a copy of CategoryUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentId = freezed,Object? name = freezed,Object? description = freezed,Object? photoUrl = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_CategoryUpdate(
parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
