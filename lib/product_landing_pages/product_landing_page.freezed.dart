// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_landing_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductLandingPage {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get name; String? get description; String? get templateId; Map<String, dynamic>? get schema; Map<String, dynamic> get defaults; String get productId; String get storeId; ProductLandingPageTemplate? get template; Product? get product; Store? get store;
/// Create a copy of ProductLandingPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductLandingPageCopyWith<ProductLandingPage> get copyWith => _$ProductLandingPageCopyWithImpl<ProductLandingPage>(this as ProductLandingPage, _$identity);

  /// Serializes this ProductLandingPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLandingPage&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&const DeepCollectionEquality().equals(other.schema, schema)&&const DeepCollectionEquality().equals(other.defaults, defaults)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.template, template) || other.template == template)&&(identical(other.product, product) || other.product == product)&&(identical(other.store, store) || other.store == store));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,name,description,templateId,const DeepCollectionEquality().hash(schema),const DeepCollectionEquality().hash(defaults),productId,storeId,template,product,store);

@override
String toString() {
  return 'ProductLandingPage(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, description: $description, templateId: $templateId, schema: $schema, defaults: $defaults, productId: $productId, storeId: $storeId, template: $template, product: $product, store: $store)';
}


}

/// @nodoc
abstract mixin class $ProductLandingPageCopyWith<$Res>  {
  factory $ProductLandingPageCopyWith(ProductLandingPage value, $Res Function(ProductLandingPage) _then) = _$ProductLandingPageCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String name, String? description, String? templateId, Map<String, dynamic>? schema, Map<String, dynamic> defaults, String productId, String storeId, ProductLandingPageTemplate? template, Product? product, Store? store
});


$ProductLandingPageTemplateCopyWith<$Res>? get template;$ProductCopyWith<$Res>? get product;$StoreCopyWith<$Res>? get store;

}
/// @nodoc
class _$ProductLandingPageCopyWithImpl<$Res>
    implements $ProductLandingPageCopyWith<$Res> {
  _$ProductLandingPageCopyWithImpl(this._self, this._then);

  final ProductLandingPage _self;
  final $Res Function(ProductLandingPage) _then;

/// Create a copy of ProductLandingPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? name = null,Object? description = freezed,Object? templateId = freezed,Object? schema = freezed,Object? defaults = null,Object? productId = null,Object? storeId = null,Object? template = freezed,Object? product = freezed,Object? store = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,templateId: freezed == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String?,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,defaults: null == defaults ? _self.defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as ProductLandingPageTemplate?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,
  ));
}
/// Create a copy of ProductLandingPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductLandingPageTemplateCopyWith<$Res>? get template {
    if (_self.template == null) {
    return null;
  }

  return $ProductLandingPageTemplateCopyWith<$Res>(_self.template!, (value) {
    return _then(_self.copyWith(template: value));
  });
}/// Create a copy of ProductLandingPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of ProductLandingPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductLandingPage].
extension ProductLandingPagePatterns on ProductLandingPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductLandingPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductLandingPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductLandingPage value)  $default,){
final _that = this;
switch (_that) {
case _ProductLandingPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductLandingPage value)?  $default,){
final _that = this;
switch (_that) {
case _ProductLandingPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String name,  String? description,  String? templateId,  Map<String, dynamic>? schema,  Map<String, dynamic> defaults,  String productId,  String storeId,  ProductLandingPageTemplate? template,  Product? product,  Store? store)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductLandingPage() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.description,_that.templateId,_that.schema,_that.defaults,_that.productId,_that.storeId,_that.template,_that.product,_that.store);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String name,  String? description,  String? templateId,  Map<String, dynamic>? schema,  Map<String, dynamic> defaults,  String productId,  String storeId,  ProductLandingPageTemplate? template,  Product? product,  Store? store)  $default,) {final _that = this;
switch (_that) {
case _ProductLandingPage():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.description,_that.templateId,_that.schema,_that.defaults,_that.productId,_that.storeId,_that.template,_that.product,_that.store);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String name,  String? description,  String? templateId,  Map<String, dynamic>? schema,  Map<String, dynamic> defaults,  String productId,  String storeId,  ProductLandingPageTemplate? template,  Product? product,  Store? store)?  $default,) {final _that = this;
switch (_that) {
case _ProductLandingPage() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.description,_that.templateId,_that.schema,_that.defaults,_that.productId,_that.storeId,_that.template,_that.product,_that.store);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductLandingPage extends ProductLandingPage {
   _ProductLandingPage({required this.id, required this.createdAt, required this.updatedAt, required this.name, this.description, this.templateId, final  Map<String, dynamic>? schema, required final  Map<String, dynamic> defaults, required this.productId, required this.storeId, this.template, this.product, this.store}): _schema = schema,_defaults = defaults,super._();
  factory _ProductLandingPage.fromJson(Map<String, dynamic> json) => _$ProductLandingPageFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String name;
@override final  String? description;
@override final  String? templateId;
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

@override final  String productId;
@override final  String storeId;
@override final  ProductLandingPageTemplate? template;
@override final  Product? product;
@override final  Store? store;

/// Create a copy of ProductLandingPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductLandingPageCopyWith<_ProductLandingPage> get copyWith => __$ProductLandingPageCopyWithImpl<_ProductLandingPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductLandingPageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductLandingPage&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&const DeepCollectionEquality().equals(other._schema, _schema)&&const DeepCollectionEquality().equals(other._defaults, _defaults)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.template, template) || other.template == template)&&(identical(other.product, product) || other.product == product)&&(identical(other.store, store) || other.store == store));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,name,description,templateId,const DeepCollectionEquality().hash(_schema),const DeepCollectionEquality().hash(_defaults),productId,storeId,template,product,store);

@override
String toString() {
  return 'ProductLandingPage(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, description: $description, templateId: $templateId, schema: $schema, defaults: $defaults, productId: $productId, storeId: $storeId, template: $template, product: $product, store: $store)';
}


}

/// @nodoc
abstract mixin class _$ProductLandingPageCopyWith<$Res> implements $ProductLandingPageCopyWith<$Res> {
  factory _$ProductLandingPageCopyWith(_ProductLandingPage value, $Res Function(_ProductLandingPage) _then) = __$ProductLandingPageCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String name, String? description, String? templateId, Map<String, dynamic>? schema, Map<String, dynamic> defaults, String productId, String storeId, ProductLandingPageTemplate? template, Product? product, Store? store
});


@override $ProductLandingPageTemplateCopyWith<$Res>? get template;@override $ProductCopyWith<$Res>? get product;@override $StoreCopyWith<$Res>? get store;

}
/// @nodoc
class __$ProductLandingPageCopyWithImpl<$Res>
    implements _$ProductLandingPageCopyWith<$Res> {
  __$ProductLandingPageCopyWithImpl(this._self, this._then);

  final _ProductLandingPage _self;
  final $Res Function(_ProductLandingPage) _then;

/// Create a copy of ProductLandingPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? name = null,Object? description = freezed,Object? templateId = freezed,Object? schema = freezed,Object? defaults = null,Object? productId = null,Object? storeId = null,Object? template = freezed,Object? product = freezed,Object? store = freezed,}) {
  return _then(_ProductLandingPage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,templateId: freezed == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String?,schema: freezed == schema ? _self._schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,defaults: null == defaults ? _self._defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as ProductLandingPageTemplate?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,
  ));
}

/// Create a copy of ProductLandingPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductLandingPageTemplateCopyWith<$Res>? get template {
    if (_self.template == null) {
    return null;
  }

  return $ProductLandingPageTemplateCopyWith<$Res>(_self.template!, (value) {
    return _then(_self.copyWith(template: value));
  });
}/// Create a copy of ProductLandingPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of ProductLandingPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// @nodoc
mixin _$ProductLandingPageCreate {

 String get name; String? get description; String? get templateId; Map<String, dynamic>? get schema; Map<String, dynamic> get defaults; String? get productId; String get storeId;
/// Create a copy of ProductLandingPageCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductLandingPageCreateCopyWith<ProductLandingPageCreate> get copyWith => _$ProductLandingPageCreateCopyWithImpl<ProductLandingPageCreate>(this as ProductLandingPageCreate, _$identity);

  /// Serializes this ProductLandingPageCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLandingPageCreate&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&const DeepCollectionEquality().equals(other.schema, schema)&&const DeepCollectionEquality().equals(other.defaults, defaults)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.storeId, storeId) || other.storeId == storeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,templateId,const DeepCollectionEquality().hash(schema),const DeepCollectionEquality().hash(defaults),productId,storeId);

@override
String toString() {
  return 'ProductLandingPageCreate(name: $name, description: $description, templateId: $templateId, schema: $schema, defaults: $defaults, productId: $productId, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class $ProductLandingPageCreateCopyWith<$Res>  {
  factory $ProductLandingPageCreateCopyWith(ProductLandingPageCreate value, $Res Function(ProductLandingPageCreate) _then) = _$ProductLandingPageCreateCopyWithImpl;
@useResult
$Res call({
 String name, String? description, String? templateId, Map<String, dynamic>? schema, Map<String, dynamic> defaults, String? productId, String storeId
});




}
/// @nodoc
class _$ProductLandingPageCreateCopyWithImpl<$Res>
    implements $ProductLandingPageCreateCopyWith<$Res> {
  _$ProductLandingPageCreateCopyWithImpl(this._self, this._then);

  final ProductLandingPageCreate _self;
  final $Res Function(ProductLandingPageCreate) _then;

/// Create a copy of ProductLandingPageCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = freezed,Object? templateId = freezed,Object? schema = freezed,Object? defaults = null,Object? productId = freezed,Object? storeId = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,templateId: freezed == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String?,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,defaults: null == defaults ? _self.defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductLandingPageCreate].
extension ProductLandingPageCreatePatterns on ProductLandingPageCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductLandingPageCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductLandingPageCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductLandingPageCreate value)  $default,){
final _that = this;
switch (_that) {
case _ProductLandingPageCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductLandingPageCreate value)?  $default,){
final _that = this;
switch (_that) {
case _ProductLandingPageCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? description,  String? templateId,  Map<String, dynamic>? schema,  Map<String, dynamic> defaults,  String? productId,  String storeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductLandingPageCreate() when $default != null:
return $default(_that.name,_that.description,_that.templateId,_that.schema,_that.defaults,_that.productId,_that.storeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? description,  String? templateId,  Map<String, dynamic>? schema,  Map<String, dynamic> defaults,  String? productId,  String storeId)  $default,) {final _that = this;
switch (_that) {
case _ProductLandingPageCreate():
return $default(_that.name,_that.description,_that.templateId,_that.schema,_that.defaults,_that.productId,_that.storeId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? description,  String? templateId,  Map<String, dynamic>? schema,  Map<String, dynamic> defaults,  String? productId,  String storeId)?  $default,) {final _that = this;
switch (_that) {
case _ProductLandingPageCreate() when $default != null:
return $default(_that.name,_that.description,_that.templateId,_that.schema,_that.defaults,_that.productId,_that.storeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductLandingPageCreate implements ProductLandingPageCreate {
  const _ProductLandingPageCreate({required this.name, this.description, this.templateId, final  Map<String, dynamic>? schema, required final  Map<String, dynamic> defaults, this.productId, required this.storeId}): _schema = schema,_defaults = defaults;
  factory _ProductLandingPageCreate.fromJson(Map<String, dynamic> json) => _$ProductLandingPageCreateFromJson(json);

@override final  String name;
@override final  String? description;
@override final  String? templateId;
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

@override final  String? productId;
@override final  String storeId;

/// Create a copy of ProductLandingPageCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductLandingPageCreateCopyWith<_ProductLandingPageCreate> get copyWith => __$ProductLandingPageCreateCopyWithImpl<_ProductLandingPageCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductLandingPageCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductLandingPageCreate&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&const DeepCollectionEquality().equals(other._schema, _schema)&&const DeepCollectionEquality().equals(other._defaults, _defaults)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.storeId, storeId) || other.storeId == storeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,templateId,const DeepCollectionEquality().hash(_schema),const DeepCollectionEquality().hash(_defaults),productId,storeId);

@override
String toString() {
  return 'ProductLandingPageCreate(name: $name, description: $description, templateId: $templateId, schema: $schema, defaults: $defaults, productId: $productId, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class _$ProductLandingPageCreateCopyWith<$Res> implements $ProductLandingPageCreateCopyWith<$Res> {
  factory _$ProductLandingPageCreateCopyWith(_ProductLandingPageCreate value, $Res Function(_ProductLandingPageCreate) _then) = __$ProductLandingPageCreateCopyWithImpl;
@override @useResult
$Res call({
 String name, String? description, String? templateId, Map<String, dynamic>? schema, Map<String, dynamic> defaults, String? productId, String storeId
});




}
/// @nodoc
class __$ProductLandingPageCreateCopyWithImpl<$Res>
    implements _$ProductLandingPageCreateCopyWith<$Res> {
  __$ProductLandingPageCreateCopyWithImpl(this._self, this._then);

  final _ProductLandingPageCreate _self;
  final $Res Function(_ProductLandingPageCreate) _then;

/// Create a copy of ProductLandingPageCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = freezed,Object? templateId = freezed,Object? schema = freezed,Object? defaults = null,Object? productId = freezed,Object? storeId = null,}) {
  return _then(_ProductLandingPageCreate(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,templateId: freezed == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String?,schema: freezed == schema ? _self._schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,defaults: null == defaults ? _self._defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductLandingPageUpdate {

 String? get name; String? get description; String? get templateId; Map<String, dynamic>? get schema; Map<String, dynamic>? get defaults;@JsonKey(includeFromJson: false) List<String> get setToNull; String? get productId; String? get storeId;
/// Create a copy of ProductLandingPageUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductLandingPageUpdateCopyWith<ProductLandingPageUpdate> get copyWith => _$ProductLandingPageUpdateCopyWithImpl<ProductLandingPageUpdate>(this as ProductLandingPageUpdate, _$identity);

  /// Serializes this ProductLandingPageUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLandingPageUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&const DeepCollectionEquality().equals(other.schema, schema)&&const DeepCollectionEquality().equals(other.defaults, defaults)&&const DeepCollectionEquality().equals(other.setToNull, setToNull)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.storeId, storeId) || other.storeId == storeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,templateId,const DeepCollectionEquality().hash(schema),const DeepCollectionEquality().hash(defaults),const DeepCollectionEquality().hash(setToNull),productId,storeId);

@override
String toString() {
  return 'ProductLandingPageUpdate(name: $name, description: $description, templateId: $templateId, schema: $schema, defaults: $defaults, setToNull: $setToNull, productId: $productId, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class $ProductLandingPageUpdateCopyWith<$Res>  {
  factory $ProductLandingPageUpdateCopyWith(ProductLandingPageUpdate value, $Res Function(ProductLandingPageUpdate) _then) = _$ProductLandingPageUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? description, String? templateId, Map<String, dynamic>? schema, Map<String, dynamic>? defaults,@JsonKey(includeFromJson: false) List<String> setToNull, String? productId, String? storeId
});




}
/// @nodoc
class _$ProductLandingPageUpdateCopyWithImpl<$Res>
    implements $ProductLandingPageUpdateCopyWith<$Res> {
  _$ProductLandingPageUpdateCopyWithImpl(this._self, this._then);

  final ProductLandingPageUpdate _self;
  final $Res Function(ProductLandingPageUpdate) _then;

/// Create a copy of ProductLandingPageUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? description = freezed,Object? templateId = freezed,Object? schema = freezed,Object? defaults = freezed,Object? setToNull = null,Object? productId = freezed,Object? storeId = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,templateId: freezed == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String?,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,defaults: freezed == defaults ? _self.defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductLandingPageUpdate].
extension ProductLandingPageUpdatePatterns on ProductLandingPageUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductLandingPageUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductLandingPageUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductLandingPageUpdate value)  $default,){
final _that = this;
switch (_that) {
case _ProductLandingPageUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductLandingPageUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _ProductLandingPageUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? description,  String? templateId,  Map<String, dynamic>? schema,  Map<String, dynamic>? defaults, @JsonKey(includeFromJson: false)  List<String> setToNull,  String? productId,  String? storeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductLandingPageUpdate() when $default != null:
return $default(_that.name,_that.description,_that.templateId,_that.schema,_that.defaults,_that.setToNull,_that.productId,_that.storeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? description,  String? templateId,  Map<String, dynamic>? schema,  Map<String, dynamic>? defaults, @JsonKey(includeFromJson: false)  List<String> setToNull,  String? productId,  String? storeId)  $default,) {final _that = this;
switch (_that) {
case _ProductLandingPageUpdate():
return $default(_that.name,_that.description,_that.templateId,_that.schema,_that.defaults,_that.setToNull,_that.productId,_that.storeId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? description,  String? templateId,  Map<String, dynamic>? schema,  Map<String, dynamic>? defaults, @JsonKey(includeFromJson: false)  List<String> setToNull,  String? productId,  String? storeId)?  $default,) {final _that = this;
switch (_that) {
case _ProductLandingPageUpdate() when $default != null:
return $default(_that.name,_that.description,_that.templateId,_that.schema,_that.defaults,_that.setToNull,_that.productId,_that.storeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductLandingPageUpdate implements ProductLandingPageUpdate {
  const _ProductLandingPageUpdate({this.name, this.description, this.templateId, final  Map<String, dynamic>? schema, final  Map<String, dynamic>? defaults, @JsonKey(includeFromJson: false) final  List<String> setToNull = const [], this.productId, this.storeId}): _schema = schema,_defaults = defaults,_setToNull = setToNull;
  factory _ProductLandingPageUpdate.fromJson(Map<String, dynamic> json) => _$ProductLandingPageUpdateFromJson(json);

@override final  String? name;
@override final  String? description;
@override final  String? templateId;
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

@override final  String? productId;
@override final  String? storeId;

/// Create a copy of ProductLandingPageUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductLandingPageUpdateCopyWith<_ProductLandingPageUpdate> get copyWith => __$ProductLandingPageUpdateCopyWithImpl<_ProductLandingPageUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductLandingPageUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductLandingPageUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&const DeepCollectionEquality().equals(other._schema, _schema)&&const DeepCollectionEquality().equals(other._defaults, _defaults)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.storeId, storeId) || other.storeId == storeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,templateId,const DeepCollectionEquality().hash(_schema),const DeepCollectionEquality().hash(_defaults),const DeepCollectionEquality().hash(_setToNull),productId,storeId);

@override
String toString() {
  return 'ProductLandingPageUpdate(name: $name, description: $description, templateId: $templateId, schema: $schema, defaults: $defaults, setToNull: $setToNull, productId: $productId, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class _$ProductLandingPageUpdateCopyWith<$Res> implements $ProductLandingPageUpdateCopyWith<$Res> {
  factory _$ProductLandingPageUpdateCopyWith(_ProductLandingPageUpdate value, $Res Function(_ProductLandingPageUpdate) _then) = __$ProductLandingPageUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? description, String? templateId, Map<String, dynamic>? schema, Map<String, dynamic>? defaults,@JsonKey(includeFromJson: false) List<String> setToNull, String? productId, String? storeId
});




}
/// @nodoc
class __$ProductLandingPageUpdateCopyWithImpl<$Res>
    implements _$ProductLandingPageUpdateCopyWith<$Res> {
  __$ProductLandingPageUpdateCopyWithImpl(this._self, this._then);

  final _ProductLandingPageUpdate _self;
  final $Res Function(_ProductLandingPageUpdate) _then;

/// Create a copy of ProductLandingPageUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? description = freezed,Object? templateId = freezed,Object? schema = freezed,Object? defaults = freezed,Object? setToNull = null,Object? productId = freezed,Object? storeId = freezed,}) {
  return _then(_ProductLandingPageUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,templateId: freezed == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String?,schema: freezed == schema ? _self._schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,defaults: freezed == defaults ? _self._defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
