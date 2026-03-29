// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get slug; ProductDecoration? get decoration; String get name; String? get photoUrl; List<String> get media; String get storeId; String? get shippingMethodId; String? get shippingPriceId; String? get categoryId; EmbaddedCategory? get category; Category? get categoryRelation; String? get title; String? get description; String? get body; String? get sku; String? get barcode; num get price; num? get cost; num? get discount; num? get stock; num get sold; num get views; num get likes; ProductVariant? get variant; List<ProductOffer>? get offers; List<ProductAddon>? get addons; num get dislikes; ProductStatus get status; ProductType get type; IntegrationsData? get integrationsData; DateTime? get verifiedAt; DateTime? get blockedAt; Map<String, dynamic> get metadata;/// Present when list/show is called with `with[]=lor` and the user may view analytics.
@JsonKey(fromJson: _productLorFromJson) LiteOrdersReport? get lor;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.decoration, decoration)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other.media, media)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.shippingMethodId, shippingMethodId) || other.shippingMethodId == shippingMethodId)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryRelation, categoryRelation) || other.categoryRelation == categoryRelation)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.body, body) || other.body == body)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.price, price) || other.price == price)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.sold, sold) || other.sold == sold)&&(identical(other.views, views) || other.views == views)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.variant, variant) || other.variant == variant)&&const DeepCollectionEquality().equals(other.offers, offers)&&const DeepCollectionEquality().equals(other.addons, addons)&&(identical(other.dislikes, dislikes) || other.dislikes == dislikes)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.integrationsData, integrationsData) || other.integrationsData == integrationsData)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.blockedAt, blockedAt) || other.blockedAt == blockedAt)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.lor, lor) || other.lor == lor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,slug,const DeepCollectionEquality().hash(decoration),name,photoUrl,const DeepCollectionEquality().hash(media),storeId,shippingMethodId,shippingPriceId,categoryId,category,categoryRelation,title,description,body,sku,barcode,price,cost,discount,stock,sold,views,likes,variant,const DeepCollectionEquality().hash(offers),const DeepCollectionEquality().hash(addons),dislikes,status,type,integrationsData,verifiedAt,blockedAt,const DeepCollectionEquality().hash(metadata),lor]);

@override
String toString() {
  return 'Product(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, decoration: $decoration, name: $name, photoUrl: $photoUrl, media: $media, storeId: $storeId, shippingMethodId: $shippingMethodId, shippingPriceId: $shippingPriceId, categoryId: $categoryId, category: $category, categoryRelation: $categoryRelation, title: $title, description: $description, body: $body, sku: $sku, barcode: $barcode, price: $price, cost: $cost, discount: $discount, stock: $stock, sold: $sold, views: $views, likes: $likes, variant: $variant, offers: $offers, addons: $addons, dislikes: $dislikes, status: $status, type: $type, integrationsData: $integrationsData, verifiedAt: $verifiedAt, blockedAt: $blockedAt, metadata: $metadata, lor: $lor)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String slug, ProductDecoration? decoration, String name, String? photoUrl, List<String> media, String storeId, String? shippingMethodId, String? shippingPriceId, String? categoryId, EmbaddedCategory? category, Category? categoryRelation, String? title, String? description, String? body, String? sku, String? barcode, num price, num? cost, num? discount, num? stock, num sold, num views, num likes, ProductVariant? variant, List<ProductOffer>? offers, List<ProductAddon>? addons, num dislikes, ProductStatus status, ProductType type, IntegrationsData? integrationsData, DateTime? verifiedAt, DateTime? blockedAt, Map<String, dynamic> metadata,@JsonKey(fromJson: _productLorFromJson) LiteOrdersReport? lor
});


$EmbaddedCategoryCopyWith<$Res>? get category;$CategoryCopyWith<$Res>? get categoryRelation;$ProductVariantCopyWith<$Res>? get variant;$IntegrationsDataCopyWith<$Res>? get integrationsData;

}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? slug = null,Object? decoration = freezed,Object? name = null,Object? photoUrl = freezed,Object? media = null,Object? storeId = null,Object? shippingMethodId = freezed,Object? shippingPriceId = freezed,Object? categoryId = freezed,Object? category = freezed,Object? categoryRelation = freezed,Object? title = freezed,Object? description = freezed,Object? body = freezed,Object? sku = freezed,Object? barcode = freezed,Object? price = null,Object? cost = freezed,Object? discount = freezed,Object? stock = freezed,Object? sold = null,Object? views = null,Object? likes = null,Object? variant = freezed,Object? offers = freezed,Object? addons = freezed,Object? dislikes = null,Object? status = null,Object? type = null,Object? integrationsData = freezed,Object? verifiedAt = freezed,Object? blockedAt = freezed,Object? metadata = null,Object? lor = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,decoration: freezed == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as ProductDecoration?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<String>,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,shippingMethodId: freezed == shippingMethodId ? _self.shippingMethodId : shippingMethodId // ignore: cast_nullable_to_non_nullable
as String?,shippingPriceId: freezed == shippingPriceId ? _self.shippingPriceId : shippingPriceId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EmbaddedCategory?,categoryRelation: freezed == categoryRelation ? _self.categoryRelation : categoryRelation // ignore: cast_nullable_to_non_nullable
as Category?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as num?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as num?,sold: null == sold ? _self.sold : sold // ignore: cast_nullable_to_non_nullable
as num,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as num,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as num,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as ProductVariant?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as List<ProductOffer>?,addons: freezed == addons ? _self.addons : addons // ignore: cast_nullable_to_non_nullable
as List<ProductAddon>?,dislikes: null == dislikes ? _self.dislikes : dislikes // ignore: cast_nullable_to_non_nullable
as num,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductType,integrationsData: freezed == integrationsData ? _self.integrationsData : integrationsData // ignore: cast_nullable_to_non_nullable
as IntegrationsData?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,blockedAt: freezed == blockedAt ? _self.blockedAt : blockedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,lor: freezed == lor ? _self.lor : lor // ignore: cast_nullable_to_non_nullable
as LiteOrdersReport?,
  ));
}
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $EmbaddedCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get categoryRelation {
    if (_self.categoryRelation == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.categoryRelation!, (value) {
    return _then(_self.copyWith(categoryRelation: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<$Res>? get variant {
    if (_self.variant == null) {
    return null;
  }

  return $ProductVariantCopyWith<$Res>(_self.variant!, (value) {
    return _then(_self.copyWith(variant: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntegrationsDataCopyWith<$Res>? get integrationsData {
    if (_self.integrationsData == null) {
    return null;
  }

  return $IntegrationsDataCopyWith<$Res>(_self.integrationsData!, (value) {
    return _then(_self.copyWith(integrationsData: value));
  });
}
}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String slug,  ProductDecoration? decoration,  String name,  String? photoUrl,  List<String> media,  String storeId,  String? shippingMethodId,  String? shippingPriceId,  String? categoryId,  EmbaddedCategory? category,  Category? categoryRelation,  String? title,  String? description,  String? body,  String? sku,  String? barcode,  num price,  num? cost,  num? discount,  num? stock,  num sold,  num views,  num likes,  ProductVariant? variant,  List<ProductOffer>? offers,  List<ProductAddon>? addons,  num dislikes,  ProductStatus status,  ProductType type,  IntegrationsData? integrationsData,  DateTime? verifiedAt,  DateTime? blockedAt,  Map<String, dynamic> metadata, @JsonKey(fromJson: _productLorFromJson)  LiteOrdersReport? lor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.slug,_that.decoration,_that.name,_that.photoUrl,_that.media,_that.storeId,_that.shippingMethodId,_that.shippingPriceId,_that.categoryId,_that.category,_that.categoryRelation,_that.title,_that.description,_that.body,_that.sku,_that.barcode,_that.price,_that.cost,_that.discount,_that.stock,_that.sold,_that.views,_that.likes,_that.variant,_that.offers,_that.addons,_that.dislikes,_that.status,_that.type,_that.integrationsData,_that.verifiedAt,_that.blockedAt,_that.metadata,_that.lor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String slug,  ProductDecoration? decoration,  String name,  String? photoUrl,  List<String> media,  String storeId,  String? shippingMethodId,  String? shippingPriceId,  String? categoryId,  EmbaddedCategory? category,  Category? categoryRelation,  String? title,  String? description,  String? body,  String? sku,  String? barcode,  num price,  num? cost,  num? discount,  num? stock,  num sold,  num views,  num likes,  ProductVariant? variant,  List<ProductOffer>? offers,  List<ProductAddon>? addons,  num dislikes,  ProductStatus status,  ProductType type,  IntegrationsData? integrationsData,  DateTime? verifiedAt,  DateTime? blockedAt,  Map<String, dynamic> metadata, @JsonKey(fromJson: _productLorFromJson)  LiteOrdersReport? lor)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.slug,_that.decoration,_that.name,_that.photoUrl,_that.media,_that.storeId,_that.shippingMethodId,_that.shippingPriceId,_that.categoryId,_that.category,_that.categoryRelation,_that.title,_that.description,_that.body,_that.sku,_that.barcode,_that.price,_that.cost,_that.discount,_that.stock,_that.sold,_that.views,_that.likes,_that.variant,_that.offers,_that.addons,_that.dislikes,_that.status,_that.type,_that.integrationsData,_that.verifiedAt,_that.blockedAt,_that.metadata,_that.lor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String slug,  ProductDecoration? decoration,  String name,  String? photoUrl,  List<String> media,  String storeId,  String? shippingMethodId,  String? shippingPriceId,  String? categoryId,  EmbaddedCategory? category,  Category? categoryRelation,  String? title,  String? description,  String? body,  String? sku,  String? barcode,  num price,  num? cost,  num? discount,  num? stock,  num sold,  num views,  num likes,  ProductVariant? variant,  List<ProductOffer>? offers,  List<ProductAddon>? addons,  num dislikes,  ProductStatus status,  ProductType type,  IntegrationsData? integrationsData,  DateTime? verifiedAt,  DateTime? blockedAt,  Map<String, dynamic> metadata, @JsonKey(fromJson: _productLorFromJson)  LiteOrdersReport? lor)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.slug,_that.decoration,_that.name,_that.photoUrl,_that.media,_that.storeId,_that.shippingMethodId,_that.shippingPriceId,_that.categoryId,_that.category,_that.categoryRelation,_that.title,_that.description,_that.body,_that.sku,_that.barcode,_that.price,_that.cost,_that.discount,_that.stock,_that.sold,_that.views,_that.likes,_that.variant,_that.offers,_that.addons,_that.dislikes,_that.status,_that.type,_that.integrationsData,_that.verifiedAt,_that.blockedAt,_that.metadata,_that.lor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product extends Product {
   _Product({required this.id, required this.createdAt, required this.updatedAt, required this.slug, this.decoration, required this.name, this.photoUrl, required final  List<String> media, required this.storeId, this.shippingMethodId, this.shippingPriceId, this.categoryId, this.category, this.categoryRelation, this.title, this.description, this.body, this.sku, this.barcode, required this.price, this.cost, this.discount, this.stock, this.sold = 0, this.views = 0, this.likes = 0, this.variant, final  List<ProductOffer>? offers, final  List<ProductAddon>? addons, this.dislikes = 0, this.status = ProductStatus.draft, this.type = ProductType.physical, this.integrationsData, this.verifiedAt, this.blockedAt, final  Map<String, dynamic> metadata = const {}, @JsonKey(fromJson: _productLorFromJson) this.lor}): _media = media,_offers = offers,_addons = addons,_metadata = metadata,super._();
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String slug;
@override final  ProductDecoration? decoration;
@override final  String name;
@override final  String? photoUrl;
 final  List<String> _media;
@override List<String> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}

@override final  String storeId;
@override final  String? shippingMethodId;
@override final  String? shippingPriceId;
@override final  String? categoryId;
@override final  EmbaddedCategory? category;
@override final  Category? categoryRelation;
@override final  String? title;
@override final  String? description;
@override final  String? body;
@override final  String? sku;
@override final  String? barcode;
@override final  num price;
@override final  num? cost;
@override final  num? discount;
@override final  num? stock;
@override@JsonKey() final  num sold;
@override@JsonKey() final  num views;
@override@JsonKey() final  num likes;
@override final  ProductVariant? variant;
 final  List<ProductOffer>? _offers;
@override List<ProductOffer>? get offers {
  final value = _offers;
  if (value == null) return null;
  if (_offers is EqualUnmodifiableListView) return _offers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProductAddon>? _addons;
@override List<ProductAddon>? get addons {
  final value = _addons;
  if (value == null) return null;
  if (_addons is EqualUnmodifiableListView) return _addons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  num dislikes;
@override@JsonKey() final  ProductStatus status;
@override@JsonKey() final  ProductType type;
@override final  IntegrationsData? integrationsData;
@override final  DateTime? verifiedAt;
@override final  DateTime? blockedAt;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

/// Present when list/show is called with `with[]=lor` and the user may view analytics.
@override@JsonKey(fromJson: _productLorFromJson) final  LiteOrdersReport? lor;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.decoration, decoration)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other._media, _media)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.shippingMethodId, shippingMethodId) || other.shippingMethodId == shippingMethodId)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryRelation, categoryRelation) || other.categoryRelation == categoryRelation)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.body, body) || other.body == body)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.price, price) || other.price == price)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.sold, sold) || other.sold == sold)&&(identical(other.views, views) || other.views == views)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.variant, variant) || other.variant == variant)&&const DeepCollectionEquality().equals(other._offers, _offers)&&const DeepCollectionEquality().equals(other._addons, _addons)&&(identical(other.dislikes, dislikes) || other.dislikes == dislikes)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.integrationsData, integrationsData) || other.integrationsData == integrationsData)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.blockedAt, blockedAt) || other.blockedAt == blockedAt)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.lor, lor) || other.lor == lor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,slug,const DeepCollectionEquality().hash(decoration),name,photoUrl,const DeepCollectionEquality().hash(_media),storeId,shippingMethodId,shippingPriceId,categoryId,category,categoryRelation,title,description,body,sku,barcode,price,cost,discount,stock,sold,views,likes,variant,const DeepCollectionEquality().hash(_offers),const DeepCollectionEquality().hash(_addons),dislikes,status,type,integrationsData,verifiedAt,blockedAt,const DeepCollectionEquality().hash(_metadata),lor]);

@override
String toString() {
  return 'Product(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, decoration: $decoration, name: $name, photoUrl: $photoUrl, media: $media, storeId: $storeId, shippingMethodId: $shippingMethodId, shippingPriceId: $shippingPriceId, categoryId: $categoryId, category: $category, categoryRelation: $categoryRelation, title: $title, description: $description, body: $body, sku: $sku, barcode: $barcode, price: $price, cost: $cost, discount: $discount, stock: $stock, sold: $sold, views: $views, likes: $likes, variant: $variant, offers: $offers, addons: $addons, dislikes: $dislikes, status: $status, type: $type, integrationsData: $integrationsData, verifiedAt: $verifiedAt, blockedAt: $blockedAt, metadata: $metadata, lor: $lor)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String slug, ProductDecoration? decoration, String name, String? photoUrl, List<String> media, String storeId, String? shippingMethodId, String? shippingPriceId, String? categoryId, EmbaddedCategory? category, Category? categoryRelation, String? title, String? description, String? body, String? sku, String? barcode, num price, num? cost, num? discount, num? stock, num sold, num views, num likes, ProductVariant? variant, List<ProductOffer>? offers, List<ProductAddon>? addons, num dislikes, ProductStatus status, ProductType type, IntegrationsData? integrationsData, DateTime? verifiedAt, DateTime? blockedAt, Map<String, dynamic> metadata,@JsonKey(fromJson: _productLorFromJson) LiteOrdersReport? lor
});


@override $EmbaddedCategoryCopyWith<$Res>? get category;@override $CategoryCopyWith<$Res>? get categoryRelation;@override $ProductVariantCopyWith<$Res>? get variant;@override $IntegrationsDataCopyWith<$Res>? get integrationsData;

}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? slug = null,Object? decoration = freezed,Object? name = null,Object? photoUrl = freezed,Object? media = null,Object? storeId = null,Object? shippingMethodId = freezed,Object? shippingPriceId = freezed,Object? categoryId = freezed,Object? category = freezed,Object? categoryRelation = freezed,Object? title = freezed,Object? description = freezed,Object? body = freezed,Object? sku = freezed,Object? barcode = freezed,Object? price = null,Object? cost = freezed,Object? discount = freezed,Object? stock = freezed,Object? sold = null,Object? views = null,Object? likes = null,Object? variant = freezed,Object? offers = freezed,Object? addons = freezed,Object? dislikes = null,Object? status = null,Object? type = null,Object? integrationsData = freezed,Object? verifiedAt = freezed,Object? blockedAt = freezed,Object? metadata = null,Object? lor = freezed,}) {
  return _then(_Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,decoration: freezed == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as ProductDecoration?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,media: null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<String>,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,shippingMethodId: freezed == shippingMethodId ? _self.shippingMethodId : shippingMethodId // ignore: cast_nullable_to_non_nullable
as String?,shippingPriceId: freezed == shippingPriceId ? _self.shippingPriceId : shippingPriceId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EmbaddedCategory?,categoryRelation: freezed == categoryRelation ? _self.categoryRelation : categoryRelation // ignore: cast_nullable_to_non_nullable
as Category?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as num?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as num?,sold: null == sold ? _self.sold : sold // ignore: cast_nullable_to_non_nullable
as num,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as num,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as num,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as ProductVariant?,offers: freezed == offers ? _self._offers : offers // ignore: cast_nullable_to_non_nullable
as List<ProductOffer>?,addons: freezed == addons ? _self._addons : addons // ignore: cast_nullable_to_non_nullable
as List<ProductAddon>?,dislikes: null == dislikes ? _self.dislikes : dislikes // ignore: cast_nullable_to_non_nullable
as num,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductType,integrationsData: freezed == integrationsData ? _self.integrationsData : integrationsData // ignore: cast_nullable_to_non_nullable
as IntegrationsData?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,blockedAt: freezed == blockedAt ? _self.blockedAt : blockedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,lor: freezed == lor ? _self.lor : lor // ignore: cast_nullable_to_non_nullable
as LiteOrdersReport?,
  ));
}

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $EmbaddedCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get categoryRelation {
    if (_self.categoryRelation == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.categoryRelation!, (value) {
    return _then(_self.copyWith(categoryRelation: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<$Res>? get variant {
    if (_self.variant == null) {
    return null;
  }

  return $ProductVariantCopyWith<$Res>(_self.variant!, (value) {
    return _then(_self.copyWith(variant: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntegrationsDataCopyWith<$Res>? get integrationsData {
    if (_self.integrationsData == null) {
    return null;
  }

  return $IntegrationsDataCopyWith<$Res>(_self.integrationsData!, (value) {
    return _then(_self.copyWith(integrationsData: value));
  });
}
}


/// @nodoc
mixin _$IntegrationsData {

 MetaPixelData? get metaPixelData; TiktokPixelData? get tiktokPixelData;// GoogleAnalyticsData? googleAnalyticsData;
// GoogleTagData? googleTagsData;
 GoogleSheetsData? get googleSheetsData; PaymentMethodData? get paymentMethodData; CustomFieldsIntegrationData? get customFieldsData;
/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntegrationsDataCopyWith<IntegrationsData> get copyWith => _$IntegrationsDataCopyWithImpl<IntegrationsData>(this as IntegrationsData, _$identity);

  /// Serializes this IntegrationsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntegrationsData&&(identical(other.metaPixelData, metaPixelData) || other.metaPixelData == metaPixelData)&&(identical(other.tiktokPixelData, tiktokPixelData) || other.tiktokPixelData == tiktokPixelData)&&(identical(other.googleSheetsData, googleSheetsData) || other.googleSheetsData == googleSheetsData)&&(identical(other.paymentMethodData, paymentMethodData) || other.paymentMethodData == paymentMethodData)&&(identical(other.customFieldsData, customFieldsData) || other.customFieldsData == customFieldsData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metaPixelData,tiktokPixelData,googleSheetsData,paymentMethodData,customFieldsData);

@override
String toString() {
  return 'IntegrationsData(metaPixelData: $metaPixelData, tiktokPixelData: $tiktokPixelData, googleSheetsData: $googleSheetsData, paymentMethodData: $paymentMethodData, customFieldsData: $customFieldsData)';
}


}

/// @nodoc
abstract mixin class $IntegrationsDataCopyWith<$Res>  {
  factory $IntegrationsDataCopyWith(IntegrationsData value, $Res Function(IntegrationsData) _then) = _$IntegrationsDataCopyWithImpl;
@useResult
$Res call({
 MetaPixelData? metaPixelData, TiktokPixelData? tiktokPixelData, GoogleSheetsData? googleSheetsData, PaymentMethodData? paymentMethodData, CustomFieldsIntegrationData? customFieldsData
});


$MetaPixelDataCopyWith<$Res>? get metaPixelData;$TiktokPixelDataCopyWith<$Res>? get tiktokPixelData;$GoogleSheetsDataCopyWith<$Res>? get googleSheetsData;$PaymentMethodDataCopyWith<$Res>? get paymentMethodData;$CustomFieldsIntegrationDataCopyWith<$Res>? get customFieldsData;

}
/// @nodoc
class _$IntegrationsDataCopyWithImpl<$Res>
    implements $IntegrationsDataCopyWith<$Res> {
  _$IntegrationsDataCopyWithImpl(this._self, this._then);

  final IntegrationsData _self;
  final $Res Function(IntegrationsData) _then;

/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metaPixelData = freezed,Object? tiktokPixelData = freezed,Object? googleSheetsData = freezed,Object? paymentMethodData = freezed,Object? customFieldsData = freezed,}) {
  return _then(_self.copyWith(
metaPixelData: freezed == metaPixelData ? _self.metaPixelData : metaPixelData // ignore: cast_nullable_to_non_nullable
as MetaPixelData?,tiktokPixelData: freezed == tiktokPixelData ? _self.tiktokPixelData : tiktokPixelData // ignore: cast_nullable_to_non_nullable
as TiktokPixelData?,googleSheetsData: freezed == googleSheetsData ? _self.googleSheetsData : googleSheetsData // ignore: cast_nullable_to_non_nullable
as GoogleSheetsData?,paymentMethodData: freezed == paymentMethodData ? _self.paymentMethodData : paymentMethodData // ignore: cast_nullable_to_non_nullable
as PaymentMethodData?,customFieldsData: freezed == customFieldsData ? _self.customFieldsData : customFieldsData // ignore: cast_nullable_to_non_nullable
as CustomFieldsIntegrationData?,
  ));
}
/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaPixelDataCopyWith<$Res>? get metaPixelData {
    if (_self.metaPixelData == null) {
    return null;
  }

  return $MetaPixelDataCopyWith<$Res>(_self.metaPixelData!, (value) {
    return _then(_self.copyWith(metaPixelData: value));
  });
}/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TiktokPixelDataCopyWith<$Res>? get tiktokPixelData {
    if (_self.tiktokPixelData == null) {
    return null;
  }

  return $TiktokPixelDataCopyWith<$Res>(_self.tiktokPixelData!, (value) {
    return _then(_self.copyWith(tiktokPixelData: value));
  });
}/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoogleSheetsDataCopyWith<$Res>? get googleSheetsData {
    if (_self.googleSheetsData == null) {
    return null;
  }

  return $GoogleSheetsDataCopyWith<$Res>(_self.googleSheetsData!, (value) {
    return _then(_self.copyWith(googleSheetsData: value));
  });
}/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodDataCopyWith<$Res>? get paymentMethodData {
    if (_self.paymentMethodData == null) {
    return null;
  }

  return $PaymentMethodDataCopyWith<$Res>(_self.paymentMethodData!, (value) {
    return _then(_self.copyWith(paymentMethodData: value));
  });
}/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomFieldsIntegrationDataCopyWith<$Res>? get customFieldsData {
    if (_self.customFieldsData == null) {
    return null;
  }

  return $CustomFieldsIntegrationDataCopyWith<$Res>(_self.customFieldsData!, (value) {
    return _then(_self.copyWith(customFieldsData: value));
  });
}
}


/// Adds pattern-matching-related methods to [IntegrationsData].
extension IntegrationsDataPatterns on IntegrationsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntegrationsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntegrationsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntegrationsData value)  $default,){
final _that = this;
switch (_that) {
case _IntegrationsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntegrationsData value)?  $default,){
final _that = this;
switch (_that) {
case _IntegrationsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MetaPixelData? metaPixelData,  TiktokPixelData? tiktokPixelData,  GoogleSheetsData? googleSheetsData,  PaymentMethodData? paymentMethodData,  CustomFieldsIntegrationData? customFieldsData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntegrationsData() when $default != null:
return $default(_that.metaPixelData,_that.tiktokPixelData,_that.googleSheetsData,_that.paymentMethodData,_that.customFieldsData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MetaPixelData? metaPixelData,  TiktokPixelData? tiktokPixelData,  GoogleSheetsData? googleSheetsData,  PaymentMethodData? paymentMethodData,  CustomFieldsIntegrationData? customFieldsData)  $default,) {final _that = this;
switch (_that) {
case _IntegrationsData():
return $default(_that.metaPixelData,_that.tiktokPixelData,_that.googleSheetsData,_that.paymentMethodData,_that.customFieldsData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MetaPixelData? metaPixelData,  TiktokPixelData? tiktokPixelData,  GoogleSheetsData? googleSheetsData,  PaymentMethodData? paymentMethodData,  CustomFieldsIntegrationData? customFieldsData)?  $default,) {final _that = this;
switch (_that) {
case _IntegrationsData() when $default != null:
return $default(_that.metaPixelData,_that.tiktokPixelData,_that.googleSheetsData,_that.paymentMethodData,_that.customFieldsData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IntegrationsData extends IntegrationsData {
   _IntegrationsData({this.metaPixelData, this.tiktokPixelData, this.googleSheetsData, this.paymentMethodData, this.customFieldsData}): super._();
  factory _IntegrationsData.fromJson(Map<String, dynamic> json) => _$IntegrationsDataFromJson(json);

@override final  MetaPixelData? metaPixelData;
@override final  TiktokPixelData? tiktokPixelData;
// GoogleAnalyticsData? googleAnalyticsData;
// GoogleTagData? googleTagsData;
@override final  GoogleSheetsData? googleSheetsData;
@override final  PaymentMethodData? paymentMethodData;
@override final  CustomFieldsIntegrationData? customFieldsData;

/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntegrationsDataCopyWith<_IntegrationsData> get copyWith => __$IntegrationsDataCopyWithImpl<_IntegrationsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IntegrationsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntegrationsData&&(identical(other.metaPixelData, metaPixelData) || other.metaPixelData == metaPixelData)&&(identical(other.tiktokPixelData, tiktokPixelData) || other.tiktokPixelData == tiktokPixelData)&&(identical(other.googleSheetsData, googleSheetsData) || other.googleSheetsData == googleSheetsData)&&(identical(other.paymentMethodData, paymentMethodData) || other.paymentMethodData == paymentMethodData)&&(identical(other.customFieldsData, customFieldsData) || other.customFieldsData == customFieldsData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metaPixelData,tiktokPixelData,googleSheetsData,paymentMethodData,customFieldsData);

@override
String toString() {
  return 'IntegrationsData(metaPixelData: $metaPixelData, tiktokPixelData: $tiktokPixelData, googleSheetsData: $googleSheetsData, paymentMethodData: $paymentMethodData, customFieldsData: $customFieldsData)';
}


}

/// @nodoc
abstract mixin class _$IntegrationsDataCopyWith<$Res> implements $IntegrationsDataCopyWith<$Res> {
  factory _$IntegrationsDataCopyWith(_IntegrationsData value, $Res Function(_IntegrationsData) _then) = __$IntegrationsDataCopyWithImpl;
@override @useResult
$Res call({
 MetaPixelData? metaPixelData, TiktokPixelData? tiktokPixelData, GoogleSheetsData? googleSheetsData, PaymentMethodData? paymentMethodData, CustomFieldsIntegrationData? customFieldsData
});


@override $MetaPixelDataCopyWith<$Res>? get metaPixelData;@override $TiktokPixelDataCopyWith<$Res>? get tiktokPixelData;@override $GoogleSheetsDataCopyWith<$Res>? get googleSheetsData;@override $PaymentMethodDataCopyWith<$Res>? get paymentMethodData;@override $CustomFieldsIntegrationDataCopyWith<$Res>? get customFieldsData;

}
/// @nodoc
class __$IntegrationsDataCopyWithImpl<$Res>
    implements _$IntegrationsDataCopyWith<$Res> {
  __$IntegrationsDataCopyWithImpl(this._self, this._then);

  final _IntegrationsData _self;
  final $Res Function(_IntegrationsData) _then;

/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metaPixelData = freezed,Object? tiktokPixelData = freezed,Object? googleSheetsData = freezed,Object? paymentMethodData = freezed,Object? customFieldsData = freezed,}) {
  return _then(_IntegrationsData(
metaPixelData: freezed == metaPixelData ? _self.metaPixelData : metaPixelData // ignore: cast_nullable_to_non_nullable
as MetaPixelData?,tiktokPixelData: freezed == tiktokPixelData ? _self.tiktokPixelData : tiktokPixelData // ignore: cast_nullable_to_non_nullable
as TiktokPixelData?,googleSheetsData: freezed == googleSheetsData ? _self.googleSheetsData : googleSheetsData // ignore: cast_nullable_to_non_nullable
as GoogleSheetsData?,paymentMethodData: freezed == paymentMethodData ? _self.paymentMethodData : paymentMethodData // ignore: cast_nullable_to_non_nullable
as PaymentMethodData?,customFieldsData: freezed == customFieldsData ? _self.customFieldsData : customFieldsData // ignore: cast_nullable_to_non_nullable
as CustomFieldsIntegrationData?,
  ));
}

/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaPixelDataCopyWith<$Res>? get metaPixelData {
    if (_self.metaPixelData == null) {
    return null;
  }

  return $MetaPixelDataCopyWith<$Res>(_self.metaPixelData!, (value) {
    return _then(_self.copyWith(metaPixelData: value));
  });
}/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TiktokPixelDataCopyWith<$Res>? get tiktokPixelData {
    if (_self.tiktokPixelData == null) {
    return null;
  }

  return $TiktokPixelDataCopyWith<$Res>(_self.tiktokPixelData!, (value) {
    return _then(_self.copyWith(tiktokPixelData: value));
  });
}/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoogleSheetsDataCopyWith<$Res>? get googleSheetsData {
    if (_self.googleSheetsData == null) {
    return null;
  }

  return $GoogleSheetsDataCopyWith<$Res>(_self.googleSheetsData!, (value) {
    return _then(_self.copyWith(googleSheetsData: value));
  });
}/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodDataCopyWith<$Res>? get paymentMethodData {
    if (_self.paymentMethodData == null) {
    return null;
  }

  return $PaymentMethodDataCopyWith<$Res>(_self.paymentMethodData!, (value) {
    return _then(_self.copyWith(paymentMethodData: value));
  });
}/// Create a copy of IntegrationsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomFieldsIntegrationDataCopyWith<$Res>? get customFieldsData {
    if (_self.customFieldsData == null) {
    return null;
  }

  return $CustomFieldsIntegrationDataCopyWith<$Res>(_self.customFieldsData!, (value) {
    return _then(_self.copyWith(customFieldsData: value));
  });
}
}


/// @nodoc
mixin _$CustomFieldsIntegrationData {

/// List of custom field definitions specific to this product.
/// If empty or null, product inherits from store's global custom fields.
 List<CustomField> get fields;/// Whether to use product-specific fields (true) or inherit from store (false).
 bool get useProductFields;
/// Create a copy of CustomFieldsIntegrationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomFieldsIntegrationDataCopyWith<CustomFieldsIntegrationData> get copyWith => _$CustomFieldsIntegrationDataCopyWithImpl<CustomFieldsIntegrationData>(this as CustomFieldsIntegrationData, _$identity);

  /// Serializes this CustomFieldsIntegrationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomFieldsIntegrationData&&const DeepCollectionEquality().equals(other.fields, fields)&&(identical(other.useProductFields, useProductFields) || other.useProductFields == useProductFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(fields),useProductFields);

@override
String toString() {
  return 'CustomFieldsIntegrationData(fields: $fields, useProductFields: $useProductFields)';
}


}

/// @nodoc
abstract mixin class $CustomFieldsIntegrationDataCopyWith<$Res>  {
  factory $CustomFieldsIntegrationDataCopyWith(CustomFieldsIntegrationData value, $Res Function(CustomFieldsIntegrationData) _then) = _$CustomFieldsIntegrationDataCopyWithImpl;
@useResult
$Res call({
 List<CustomField> fields, bool useProductFields
});




}
/// @nodoc
class _$CustomFieldsIntegrationDataCopyWithImpl<$Res>
    implements $CustomFieldsIntegrationDataCopyWith<$Res> {
  _$CustomFieldsIntegrationDataCopyWithImpl(this._self, this._then);

  final CustomFieldsIntegrationData _self;
  final $Res Function(CustomFieldsIntegrationData) _then;

/// Create a copy of CustomFieldsIntegrationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fields = null,Object? useProductFields = null,}) {
  return _then(_self.copyWith(
fields: null == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as List<CustomField>,useProductFields: null == useProductFields ? _self.useProductFields : useProductFields // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomFieldsIntegrationData].
extension CustomFieldsIntegrationDataPatterns on CustomFieldsIntegrationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomFieldsIntegrationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomFieldsIntegrationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomFieldsIntegrationData value)  $default,){
final _that = this;
switch (_that) {
case _CustomFieldsIntegrationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomFieldsIntegrationData value)?  $default,){
final _that = this;
switch (_that) {
case _CustomFieldsIntegrationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CustomField> fields,  bool useProductFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomFieldsIntegrationData() when $default != null:
return $default(_that.fields,_that.useProductFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CustomField> fields,  bool useProductFields)  $default,) {final _that = this;
switch (_that) {
case _CustomFieldsIntegrationData():
return $default(_that.fields,_that.useProductFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CustomField> fields,  bool useProductFields)?  $default,) {final _that = this;
switch (_that) {
case _CustomFieldsIntegrationData() when $default != null:
return $default(_that.fields,_that.useProductFields);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomFieldsIntegrationData implements CustomFieldsIntegrationData {
  const _CustomFieldsIntegrationData({final  List<CustomField> fields = const [], this.useProductFields = false}): _fields = fields;
  factory _CustomFieldsIntegrationData.fromJson(Map<String, dynamic> json) => _$CustomFieldsIntegrationDataFromJson(json);

/// List of custom field definitions specific to this product.
/// If empty or null, product inherits from store's global custom fields.
 final  List<CustomField> _fields;
/// List of custom field definitions specific to this product.
/// If empty or null, product inherits from store's global custom fields.
@override@JsonKey() List<CustomField> get fields {
  if (_fields is EqualUnmodifiableListView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fields);
}

/// Whether to use product-specific fields (true) or inherit from store (false).
@override@JsonKey() final  bool useProductFields;

/// Create a copy of CustomFieldsIntegrationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomFieldsIntegrationDataCopyWith<_CustomFieldsIntegrationData> get copyWith => __$CustomFieldsIntegrationDataCopyWithImpl<_CustomFieldsIntegrationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomFieldsIntegrationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomFieldsIntegrationData&&const DeepCollectionEquality().equals(other._fields, _fields)&&(identical(other.useProductFields, useProductFields) || other.useProductFields == useProductFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_fields),useProductFields);

@override
String toString() {
  return 'CustomFieldsIntegrationData(fields: $fields, useProductFields: $useProductFields)';
}


}

/// @nodoc
abstract mixin class _$CustomFieldsIntegrationDataCopyWith<$Res> implements $CustomFieldsIntegrationDataCopyWith<$Res> {
  factory _$CustomFieldsIntegrationDataCopyWith(_CustomFieldsIntegrationData value, $Res Function(_CustomFieldsIntegrationData) _then) = __$CustomFieldsIntegrationDataCopyWithImpl;
@override @useResult
$Res call({
 List<CustomField> fields, bool useProductFields
});




}
/// @nodoc
class __$CustomFieldsIntegrationDataCopyWithImpl<$Res>
    implements _$CustomFieldsIntegrationDataCopyWith<$Res> {
  __$CustomFieldsIntegrationDataCopyWithImpl(this._self, this._then);

  final _CustomFieldsIntegrationData _self;
  final $Res Function(_CustomFieldsIntegrationData) _then;

/// Create a copy of CustomFieldsIntegrationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fields = null,Object? useProductFields = null,}) {
  return _then(_CustomFieldsIntegrationData(
fields: null == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<CustomField>,useProductFields: null == useProductFields ? _self.useProductFields : useProductFields // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$MetaPixelData {

 bool get enabled; List<String>? get ids; MetaPixelEvent? get objective; MetaPixelEvent? get draftObjective;
/// Create a copy of MetaPixelData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaPixelDataCopyWith<MetaPixelData> get copyWith => _$MetaPixelDataCopyWithImpl<MetaPixelData>(this as MetaPixelData, _$identity);

  /// Serializes this MetaPixelData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaPixelData&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.ids, ids)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.draftObjective, draftObjective) || other.draftObjective == draftObjective));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,const DeepCollectionEquality().hash(ids),objective,draftObjective);

@override
String toString() {
  return 'MetaPixelData(enabled: $enabled, ids: $ids, objective: $objective, draftObjective: $draftObjective)';
}


}

/// @nodoc
abstract mixin class $MetaPixelDataCopyWith<$Res>  {
  factory $MetaPixelDataCopyWith(MetaPixelData value, $Res Function(MetaPixelData) _then) = _$MetaPixelDataCopyWithImpl;
@useResult
$Res call({
 bool enabled, List<String>? ids, MetaPixelEvent? objective, MetaPixelEvent? draftObjective
});




}
/// @nodoc
class _$MetaPixelDataCopyWithImpl<$Res>
    implements $MetaPixelDataCopyWith<$Res> {
  _$MetaPixelDataCopyWithImpl(this._self, this._then);

  final MetaPixelData _self;
  final $Res Function(MetaPixelData) _then;

/// Create a copy of MetaPixelData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,Object? ids = freezed,Object? objective = freezed,Object? draftObjective = freezed,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,ids: freezed == ids ? _self.ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>?,objective: freezed == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent?,draftObjective: freezed == draftObjective ? _self.draftObjective : draftObjective // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent?,
  ));
}

}


/// Adds pattern-matching-related methods to [MetaPixelData].
extension MetaPixelDataPatterns on MetaPixelData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetaPixelData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaPixelData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetaPixelData value)  $default,){
final _that = this;
switch (_that) {
case _MetaPixelData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetaPixelData value)?  $default,){
final _that = this;
switch (_that) {
case _MetaPixelData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled,  List<String>? ids,  MetaPixelEvent? objective,  MetaPixelEvent? draftObjective)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaPixelData() when $default != null:
return $default(_that.enabled,_that.ids,_that.objective,_that.draftObjective);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled,  List<String>? ids,  MetaPixelEvent? objective,  MetaPixelEvent? draftObjective)  $default,) {final _that = this;
switch (_that) {
case _MetaPixelData():
return $default(_that.enabled,_that.ids,_that.objective,_that.draftObjective);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled,  List<String>? ids,  MetaPixelEvent? objective,  MetaPixelEvent? draftObjective)?  $default,) {final _that = this;
switch (_that) {
case _MetaPixelData() when $default != null:
return $default(_that.enabled,_that.ids,_that.objective,_that.draftObjective);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetaPixelData extends MetaPixelData {
   _MetaPixelData({this.enabled = true, final  List<String>? ids, this.objective, this.draftObjective}): _ids = ids,super._();
  factory _MetaPixelData.fromJson(Map<String, dynamic> json) => _$MetaPixelDataFromJson(json);

@override@JsonKey() final  bool enabled;
 final  List<String>? _ids;
@override List<String>? get ids {
  final value = _ids;
  if (value == null) return null;
  if (_ids is EqualUnmodifiableListView) return _ids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaPixelEvent? objective;
@override final  MetaPixelEvent? draftObjective;

/// Create a copy of MetaPixelData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaPixelDataCopyWith<_MetaPixelData> get copyWith => __$MetaPixelDataCopyWithImpl<_MetaPixelData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaPixelDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaPixelData&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other._ids, _ids)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.draftObjective, draftObjective) || other.draftObjective == draftObjective));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,const DeepCollectionEquality().hash(_ids),objective,draftObjective);

@override
String toString() {
  return 'MetaPixelData(enabled: $enabled, ids: $ids, objective: $objective, draftObjective: $draftObjective)';
}


}

/// @nodoc
abstract mixin class _$MetaPixelDataCopyWith<$Res> implements $MetaPixelDataCopyWith<$Res> {
  factory _$MetaPixelDataCopyWith(_MetaPixelData value, $Res Function(_MetaPixelData) _then) = __$MetaPixelDataCopyWithImpl;
@override @useResult
$Res call({
 bool enabled, List<String>? ids, MetaPixelEvent? objective, MetaPixelEvent? draftObjective
});




}
/// @nodoc
class __$MetaPixelDataCopyWithImpl<$Res>
    implements _$MetaPixelDataCopyWith<$Res> {
  __$MetaPixelDataCopyWithImpl(this._self, this._then);

  final _MetaPixelData _self;
  final $Res Function(_MetaPixelData) _then;

/// Create a copy of MetaPixelData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,Object? ids = freezed,Object? objective = freezed,Object? draftObjective = freezed,}) {
  return _then(_MetaPixelData(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,ids: freezed == ids ? _self._ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>?,objective: freezed == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent?,draftObjective: freezed == draftObjective ? _self.draftObjective : draftObjective // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent?,
  ));
}


}


/// @nodoc
mixin _$TiktokPixelData {

 bool get enabled; List<String>? get ids; TiktokPixelEvent? get objective; TiktokPixelEvent? get draftObjective;
/// Create a copy of TiktokPixelData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TiktokPixelDataCopyWith<TiktokPixelData> get copyWith => _$TiktokPixelDataCopyWithImpl<TiktokPixelData>(this as TiktokPixelData, _$identity);

  /// Serializes this TiktokPixelData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TiktokPixelData&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.ids, ids)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.draftObjective, draftObjective) || other.draftObjective == draftObjective));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,const DeepCollectionEquality().hash(ids),objective,draftObjective);

@override
String toString() {
  return 'TiktokPixelData(enabled: $enabled, ids: $ids, objective: $objective, draftObjective: $draftObjective)';
}


}

/// @nodoc
abstract mixin class $TiktokPixelDataCopyWith<$Res>  {
  factory $TiktokPixelDataCopyWith(TiktokPixelData value, $Res Function(TiktokPixelData) _then) = _$TiktokPixelDataCopyWithImpl;
@useResult
$Res call({
 bool enabled, List<String>? ids, TiktokPixelEvent? objective, TiktokPixelEvent? draftObjective
});




}
/// @nodoc
class _$TiktokPixelDataCopyWithImpl<$Res>
    implements $TiktokPixelDataCopyWith<$Res> {
  _$TiktokPixelDataCopyWithImpl(this._self, this._then);

  final TiktokPixelData _self;
  final $Res Function(TiktokPixelData) _then;

/// Create a copy of TiktokPixelData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,Object? ids = freezed,Object? objective = freezed,Object? draftObjective = freezed,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,ids: freezed == ids ? _self.ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>?,objective: freezed == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent?,draftObjective: freezed == draftObjective ? _self.draftObjective : draftObjective // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent?,
  ));
}

}


/// Adds pattern-matching-related methods to [TiktokPixelData].
extension TiktokPixelDataPatterns on TiktokPixelData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TiktokPixelData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TiktokPixelData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TiktokPixelData value)  $default,){
final _that = this;
switch (_that) {
case _TiktokPixelData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TiktokPixelData value)?  $default,){
final _that = this;
switch (_that) {
case _TiktokPixelData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled,  List<String>? ids,  TiktokPixelEvent? objective,  TiktokPixelEvent? draftObjective)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TiktokPixelData() when $default != null:
return $default(_that.enabled,_that.ids,_that.objective,_that.draftObjective);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled,  List<String>? ids,  TiktokPixelEvent? objective,  TiktokPixelEvent? draftObjective)  $default,) {final _that = this;
switch (_that) {
case _TiktokPixelData():
return $default(_that.enabled,_that.ids,_that.objective,_that.draftObjective);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled,  List<String>? ids,  TiktokPixelEvent? objective,  TiktokPixelEvent? draftObjective)?  $default,) {final _that = this;
switch (_that) {
case _TiktokPixelData() when $default != null:
return $default(_that.enabled,_that.ids,_that.objective,_that.draftObjective);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TiktokPixelData extends TiktokPixelData {
   _TiktokPixelData({this.enabled = true, final  List<String>? ids, this.objective, this.draftObjective}): _ids = ids,super._();
  factory _TiktokPixelData.fromJson(Map<String, dynamic> json) => _$TiktokPixelDataFromJson(json);

@override@JsonKey() final  bool enabled;
 final  List<String>? _ids;
@override List<String>? get ids {
  final value = _ids;
  if (value == null) return null;
  if (_ids is EqualUnmodifiableListView) return _ids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  TiktokPixelEvent? objective;
@override final  TiktokPixelEvent? draftObjective;

/// Create a copy of TiktokPixelData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TiktokPixelDataCopyWith<_TiktokPixelData> get copyWith => __$TiktokPixelDataCopyWithImpl<_TiktokPixelData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TiktokPixelDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TiktokPixelData&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other._ids, _ids)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.draftObjective, draftObjective) || other.draftObjective == draftObjective));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,const DeepCollectionEquality().hash(_ids),objective,draftObjective);

@override
String toString() {
  return 'TiktokPixelData(enabled: $enabled, ids: $ids, objective: $objective, draftObjective: $draftObjective)';
}


}

/// @nodoc
abstract mixin class _$TiktokPixelDataCopyWith<$Res> implements $TiktokPixelDataCopyWith<$Res> {
  factory _$TiktokPixelDataCopyWith(_TiktokPixelData value, $Res Function(_TiktokPixelData) _then) = __$TiktokPixelDataCopyWithImpl;
@override @useResult
$Res call({
 bool enabled, List<String>? ids, TiktokPixelEvent? objective, TiktokPixelEvent? draftObjective
});




}
/// @nodoc
class __$TiktokPixelDataCopyWithImpl<$Res>
    implements _$TiktokPixelDataCopyWith<$Res> {
  __$TiktokPixelDataCopyWithImpl(this._self, this._then);

  final _TiktokPixelData _self;
  final $Res Function(_TiktokPixelData) _then;

/// Create a copy of TiktokPixelData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,Object? ids = freezed,Object? objective = freezed,Object? draftObjective = freezed,}) {
  return _then(_TiktokPixelData(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,ids: freezed == ids ? _self._ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>?,objective: freezed == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent?,draftObjective: freezed == draftObjective ? _self.draftObjective : draftObjective // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent?,
  ));
}


}


/// @nodoc
mixin _$GoogleSheetsData {

 bool get enabled; String? get sheetId; String? get sheetName; String? get spreadsheetId; int? get nextRow;/// Optional columns configuration for this product's export to Google Sheets.
 List<GoogleSheetsColumn>? get columns;
/// Create a copy of GoogleSheetsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleSheetsDataCopyWith<GoogleSheetsData> get copyWith => _$GoogleSheetsDataCopyWithImpl<GoogleSheetsData>(this as GoogleSheetsData, _$identity);

  /// Serializes this GoogleSheetsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleSheetsData&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.sheetId, sheetId) || other.sheetId == sheetId)&&(identical(other.sheetName, sheetName) || other.sheetName == sheetName)&&(identical(other.spreadsheetId, spreadsheetId) || other.spreadsheetId == spreadsheetId)&&(identical(other.nextRow, nextRow) || other.nextRow == nextRow)&&const DeepCollectionEquality().equals(other.columns, columns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,sheetId,sheetName,spreadsheetId,nextRow,const DeepCollectionEquality().hash(columns));

@override
String toString() {
  return 'GoogleSheetsData(enabled: $enabled, sheetId: $sheetId, sheetName: $sheetName, spreadsheetId: $spreadsheetId, nextRow: $nextRow, columns: $columns)';
}


}

/// @nodoc
abstract mixin class $GoogleSheetsDataCopyWith<$Res>  {
  factory $GoogleSheetsDataCopyWith(GoogleSheetsData value, $Res Function(GoogleSheetsData) _then) = _$GoogleSheetsDataCopyWithImpl;
@useResult
$Res call({
 bool enabled, String? sheetId, String? sheetName, String? spreadsheetId, int? nextRow, List<GoogleSheetsColumn>? columns
});




}
/// @nodoc
class _$GoogleSheetsDataCopyWithImpl<$Res>
    implements $GoogleSheetsDataCopyWith<$Res> {
  _$GoogleSheetsDataCopyWithImpl(this._self, this._then);

  final GoogleSheetsData _self;
  final $Res Function(GoogleSheetsData) _then;

/// Create a copy of GoogleSheetsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,Object? sheetId = freezed,Object? sheetName = freezed,Object? spreadsheetId = freezed,Object? nextRow = freezed,Object? columns = freezed,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,sheetId: freezed == sheetId ? _self.sheetId : sheetId // ignore: cast_nullable_to_non_nullable
as String?,sheetName: freezed == sheetName ? _self.sheetName : sheetName // ignore: cast_nullable_to_non_nullable
as String?,spreadsheetId: freezed == spreadsheetId ? _self.spreadsheetId : spreadsheetId // ignore: cast_nullable_to_non_nullable
as String?,nextRow: freezed == nextRow ? _self.nextRow : nextRow // ignore: cast_nullable_to_non_nullable
as int?,columns: freezed == columns ? _self.columns : columns // ignore: cast_nullable_to_non_nullable
as List<GoogleSheetsColumn>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GoogleSheetsData].
extension GoogleSheetsDataPatterns on GoogleSheetsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleSheetsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleSheetsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleSheetsData value)  $default,){
final _that = this;
switch (_that) {
case _GoogleSheetsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleSheetsData value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleSheetsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled,  String? sheetId,  String? sheetName,  String? spreadsheetId,  int? nextRow,  List<GoogleSheetsColumn>? columns)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleSheetsData() when $default != null:
return $default(_that.enabled,_that.sheetId,_that.sheetName,_that.spreadsheetId,_that.nextRow,_that.columns);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled,  String? sheetId,  String? sheetName,  String? spreadsheetId,  int? nextRow,  List<GoogleSheetsColumn>? columns)  $default,) {final _that = this;
switch (_that) {
case _GoogleSheetsData():
return $default(_that.enabled,_that.sheetId,_that.sheetName,_that.spreadsheetId,_that.nextRow,_that.columns);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled,  String? sheetId,  String? sheetName,  String? spreadsheetId,  int? nextRow,  List<GoogleSheetsColumn>? columns)?  $default,) {final _that = this;
switch (_that) {
case _GoogleSheetsData() when $default != null:
return $default(_that.enabled,_that.sheetId,_that.sheetName,_that.spreadsheetId,_that.nextRow,_that.columns);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoogleSheetsData extends GoogleSheetsData {
   _GoogleSheetsData({this.enabled = true, this.sheetId, this.sheetName, this.spreadsheetId, this.nextRow, final  List<GoogleSheetsColumn>? columns}): _columns = columns,super._();
  factory _GoogleSheetsData.fromJson(Map<String, dynamic> json) => _$GoogleSheetsDataFromJson(json);

@override@JsonKey() final  bool enabled;
@override final  String? sheetId;
@override final  String? sheetName;
@override final  String? spreadsheetId;
@override final  int? nextRow;
/// Optional columns configuration for this product's export to Google Sheets.
 final  List<GoogleSheetsColumn>? _columns;
/// Optional columns configuration for this product's export to Google Sheets.
@override List<GoogleSheetsColumn>? get columns {
  final value = _columns;
  if (value == null) return null;
  if (_columns is EqualUnmodifiableListView) return _columns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GoogleSheetsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleSheetsDataCopyWith<_GoogleSheetsData> get copyWith => __$GoogleSheetsDataCopyWithImpl<_GoogleSheetsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoogleSheetsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleSheetsData&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.sheetId, sheetId) || other.sheetId == sheetId)&&(identical(other.sheetName, sheetName) || other.sheetName == sheetName)&&(identical(other.spreadsheetId, spreadsheetId) || other.spreadsheetId == spreadsheetId)&&(identical(other.nextRow, nextRow) || other.nextRow == nextRow)&&const DeepCollectionEquality().equals(other._columns, _columns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,sheetId,sheetName,spreadsheetId,nextRow,const DeepCollectionEquality().hash(_columns));

@override
String toString() {
  return 'GoogleSheetsData(enabled: $enabled, sheetId: $sheetId, sheetName: $sheetName, spreadsheetId: $spreadsheetId, nextRow: $nextRow, columns: $columns)';
}


}

/// @nodoc
abstract mixin class _$GoogleSheetsDataCopyWith<$Res> implements $GoogleSheetsDataCopyWith<$Res> {
  factory _$GoogleSheetsDataCopyWith(_GoogleSheetsData value, $Res Function(_GoogleSheetsData) _then) = __$GoogleSheetsDataCopyWithImpl;
@override @useResult
$Res call({
 bool enabled, String? sheetId, String? sheetName, String? spreadsheetId, int? nextRow, List<GoogleSheetsColumn>? columns
});




}
/// @nodoc
class __$GoogleSheetsDataCopyWithImpl<$Res>
    implements _$GoogleSheetsDataCopyWith<$Res> {
  __$GoogleSheetsDataCopyWithImpl(this._self, this._then);

  final _GoogleSheetsData _self;
  final $Res Function(_GoogleSheetsData) _then;

/// Create a copy of GoogleSheetsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,Object? sheetId = freezed,Object? sheetName = freezed,Object? spreadsheetId = freezed,Object? nextRow = freezed,Object? columns = freezed,}) {
  return _then(_GoogleSheetsData(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,sheetId: freezed == sheetId ? _self.sheetId : sheetId // ignore: cast_nullable_to_non_nullable
as String?,sheetName: freezed == sheetName ? _self.sheetName : sheetName // ignore: cast_nullable_to_non_nullable
as String?,spreadsheetId: freezed == spreadsheetId ? _self.spreadsheetId : spreadsheetId // ignore: cast_nullable_to_non_nullable
as String?,nextRow: freezed == nextRow ? _self.nextRow : nextRow // ignore: cast_nullable_to_non_nullable
as int?,columns: freezed == columns ? _self._columns : columns // ignore: cast_nullable_to_non_nullable
as List<GoogleSheetsColumn>?,
  ));
}


}


/// @nodoc
mixin _$PaymentMethodData {

 bool get enabled; List<String> get methodIds;
/// Create a copy of PaymentMethodData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodDataCopyWith<PaymentMethodData> get copyWith => _$PaymentMethodDataCopyWithImpl<PaymentMethodData>(this as PaymentMethodData, _$identity);

  /// Serializes this PaymentMethodData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethodData&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.methodIds, methodIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,const DeepCollectionEquality().hash(methodIds));

@override
String toString() {
  return 'PaymentMethodData(enabled: $enabled, methodIds: $methodIds)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodDataCopyWith<$Res>  {
  factory $PaymentMethodDataCopyWith(PaymentMethodData value, $Res Function(PaymentMethodData) _then) = _$PaymentMethodDataCopyWithImpl;
@useResult
$Res call({
 bool enabled, List<String> methodIds
});




}
/// @nodoc
class _$PaymentMethodDataCopyWithImpl<$Res>
    implements $PaymentMethodDataCopyWith<$Res> {
  _$PaymentMethodDataCopyWithImpl(this._self, this._then);

  final PaymentMethodData _self;
  final $Res Function(PaymentMethodData) _then;

/// Create a copy of PaymentMethodData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,Object? methodIds = null,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,methodIds: null == methodIds ? _self.methodIds : methodIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentMethodData].
extension PaymentMethodDataPatterns on PaymentMethodData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethodData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethodData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethodData value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethodData value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled,  List<String> methodIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethodData() when $default != null:
return $default(_that.enabled,_that.methodIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled,  List<String> methodIds)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodData():
return $default(_that.enabled,_that.methodIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled,  List<String> methodIds)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodData() when $default != null:
return $default(_that.enabled,_that.methodIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentMethodData extends PaymentMethodData {
   _PaymentMethodData({this.enabled = false, final  List<String> methodIds = const []}): _methodIds = methodIds,super._();
  factory _PaymentMethodData.fromJson(Map<String, dynamic> json) => _$PaymentMethodDataFromJson(json);

@override@JsonKey() final  bool enabled;
 final  List<String> _methodIds;
@override@JsonKey() List<String> get methodIds {
  if (_methodIds is EqualUnmodifiableListView) return _methodIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_methodIds);
}


/// Create a copy of PaymentMethodData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodDataCopyWith<_PaymentMethodData> get copyWith => __$PaymentMethodDataCopyWithImpl<_PaymentMethodData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethodData&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other._methodIds, _methodIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,const DeepCollectionEquality().hash(_methodIds));

@override
String toString() {
  return 'PaymentMethodData(enabled: $enabled, methodIds: $methodIds)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodDataCopyWith<$Res> implements $PaymentMethodDataCopyWith<$Res> {
  factory _$PaymentMethodDataCopyWith(_PaymentMethodData value, $Res Function(_PaymentMethodData) _then) = __$PaymentMethodDataCopyWithImpl;
@override @useResult
$Res call({
 bool enabled, List<String> methodIds
});




}
/// @nodoc
class __$PaymentMethodDataCopyWithImpl<$Res>
    implements _$PaymentMethodDataCopyWith<$Res> {
  __$PaymentMethodDataCopyWithImpl(this._self, this._then);

  final _PaymentMethodData _self;
  final $Res Function(_PaymentMethodData) _then;

/// Create a copy of PaymentMethodData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,Object? methodIds = null,}) {
  return _then(_PaymentMethodData(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,methodIds: null == methodIds ? _self._methodIds : methodIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$ProductCreate {

 String? get id; String get name; String get slug; ProductDecoration? get decoration; String? get photoUrl; List<String> get media; String get storeId; String? get shippingMethodId; String? get shippingPriceId; String? get categoryId; EmbaddedCategory? get category; String? get title; String? get description; String? get body; String? get sku; String? get barcode; num get price; num? get cost; num? get discount; num? get stock; ProductVariant? get variant; List<ProductOffer>? get offers; List<ProductAddon>? get addons; IntegrationsData? get integrationsData; ProductStatus get status; ProductType get type; Map<String, dynamic> get metadata;
/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCreateCopyWith<ProductCreate> get copyWith => _$ProductCreateCopyWithImpl<ProductCreate>(this as ProductCreate, _$identity);

  /// Serializes this ProductCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.decoration, decoration)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other.media, media)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.shippingMethodId, shippingMethodId) || other.shippingMethodId == shippingMethodId)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.body, body) || other.body == body)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.price, price) || other.price == price)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.variant, variant) || other.variant == variant)&&const DeepCollectionEquality().equals(other.offers, offers)&&const DeepCollectionEquality().equals(other.addons, addons)&&(identical(other.integrationsData, integrationsData) || other.integrationsData == integrationsData)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,slug,const DeepCollectionEquality().hash(decoration),photoUrl,const DeepCollectionEquality().hash(media),storeId,shippingMethodId,shippingPriceId,categoryId,category,title,description,body,sku,barcode,price,cost,discount,stock,variant,const DeepCollectionEquality().hash(offers),const DeepCollectionEquality().hash(addons),integrationsData,status,type,const DeepCollectionEquality().hash(metadata)]);

@override
String toString() {
  return 'ProductCreate(id: $id, name: $name, slug: $slug, decoration: $decoration, photoUrl: $photoUrl, media: $media, storeId: $storeId, shippingMethodId: $shippingMethodId, shippingPriceId: $shippingPriceId, categoryId: $categoryId, category: $category, title: $title, description: $description, body: $body, sku: $sku, barcode: $barcode, price: $price, cost: $cost, discount: $discount, stock: $stock, variant: $variant, offers: $offers, addons: $addons, integrationsData: $integrationsData, status: $status, type: $type, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ProductCreateCopyWith<$Res>  {
  factory $ProductCreateCopyWith(ProductCreate value, $Res Function(ProductCreate) _then) = _$ProductCreateCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String slug, ProductDecoration? decoration, String? photoUrl, List<String> media, String storeId, String? shippingMethodId, String? shippingPriceId, String? categoryId, EmbaddedCategory? category, String? title, String? description, String? body, String? sku, String? barcode, num price, num? cost, num? discount, num? stock, ProductVariant? variant, List<ProductOffer>? offers, List<ProductAddon>? addons, IntegrationsData? integrationsData, ProductStatus status, ProductType type, Map<String, dynamic> metadata
});


$EmbaddedCategoryCopyWith<$Res>? get category;$ProductVariantCopyWith<$Res>? get variant;$IntegrationsDataCopyWith<$Res>? get integrationsData;

}
/// @nodoc
class _$ProductCreateCopyWithImpl<$Res>
    implements $ProductCreateCopyWith<$Res> {
  _$ProductCreateCopyWithImpl(this._self, this._then);

  final ProductCreate _self;
  final $Res Function(ProductCreate) _then;

/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? slug = null,Object? decoration = freezed,Object? photoUrl = freezed,Object? media = null,Object? storeId = null,Object? shippingMethodId = freezed,Object? shippingPriceId = freezed,Object? categoryId = freezed,Object? category = freezed,Object? title = freezed,Object? description = freezed,Object? body = freezed,Object? sku = freezed,Object? barcode = freezed,Object? price = null,Object? cost = freezed,Object? discount = freezed,Object? stock = freezed,Object? variant = freezed,Object? offers = freezed,Object? addons = freezed,Object? integrationsData = freezed,Object? status = null,Object? type = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,decoration: freezed == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as ProductDecoration?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<String>,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,shippingMethodId: freezed == shippingMethodId ? _self.shippingMethodId : shippingMethodId // ignore: cast_nullable_to_non_nullable
as String?,shippingPriceId: freezed == shippingPriceId ? _self.shippingPriceId : shippingPriceId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EmbaddedCategory?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as num?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as num?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as ProductVariant?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as List<ProductOffer>?,addons: freezed == addons ? _self.addons : addons // ignore: cast_nullable_to_non_nullable
as List<ProductAddon>?,integrationsData: freezed == integrationsData ? _self.integrationsData : integrationsData // ignore: cast_nullable_to_non_nullable
as IntegrationsData?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductType,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $EmbaddedCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<$Res>? get variant {
    if (_self.variant == null) {
    return null;
  }

  return $ProductVariantCopyWith<$Res>(_self.variant!, (value) {
    return _then(_self.copyWith(variant: value));
  });
}/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntegrationsDataCopyWith<$Res>? get integrationsData {
    if (_self.integrationsData == null) {
    return null;
  }

  return $IntegrationsDataCopyWith<$Res>(_self.integrationsData!, (value) {
    return _then(_self.copyWith(integrationsData: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductCreate].
extension ProductCreatePatterns on ProductCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCreate value)  $default,){
final _that = this;
switch (_that) {
case _ProductCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCreate value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String slug,  ProductDecoration? decoration,  String? photoUrl,  List<String> media,  String storeId,  String? shippingMethodId,  String? shippingPriceId,  String? categoryId,  EmbaddedCategory? category,  String? title,  String? description,  String? body,  String? sku,  String? barcode,  num price,  num? cost,  num? discount,  num? stock,  ProductVariant? variant,  List<ProductOffer>? offers,  List<ProductAddon>? addons,  IntegrationsData? integrationsData,  ProductStatus status,  ProductType type,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCreate() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.decoration,_that.photoUrl,_that.media,_that.storeId,_that.shippingMethodId,_that.shippingPriceId,_that.categoryId,_that.category,_that.title,_that.description,_that.body,_that.sku,_that.barcode,_that.price,_that.cost,_that.discount,_that.stock,_that.variant,_that.offers,_that.addons,_that.integrationsData,_that.status,_that.type,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String slug,  ProductDecoration? decoration,  String? photoUrl,  List<String> media,  String storeId,  String? shippingMethodId,  String? shippingPriceId,  String? categoryId,  EmbaddedCategory? category,  String? title,  String? description,  String? body,  String? sku,  String? barcode,  num price,  num? cost,  num? discount,  num? stock,  ProductVariant? variant,  List<ProductOffer>? offers,  List<ProductAddon>? addons,  IntegrationsData? integrationsData,  ProductStatus status,  ProductType type,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _ProductCreate():
return $default(_that.id,_that.name,_that.slug,_that.decoration,_that.photoUrl,_that.media,_that.storeId,_that.shippingMethodId,_that.shippingPriceId,_that.categoryId,_that.category,_that.title,_that.description,_that.body,_that.sku,_that.barcode,_that.price,_that.cost,_that.discount,_that.stock,_that.variant,_that.offers,_that.addons,_that.integrationsData,_that.status,_that.type,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String slug,  ProductDecoration? decoration,  String? photoUrl,  List<String> media,  String storeId,  String? shippingMethodId,  String? shippingPriceId,  String? categoryId,  EmbaddedCategory? category,  String? title,  String? description,  String? body,  String? sku,  String? barcode,  num price,  num? cost,  num? discount,  num? stock,  ProductVariant? variant,  List<ProductOffer>? offers,  List<ProductAddon>? addons,  IntegrationsData? integrationsData,  ProductStatus status,  ProductType type,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _ProductCreate() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.decoration,_that.photoUrl,_that.media,_that.storeId,_that.shippingMethodId,_that.shippingPriceId,_that.categoryId,_that.category,_that.title,_that.description,_that.body,_that.sku,_that.barcode,_that.price,_that.cost,_that.discount,_that.stock,_that.variant,_that.offers,_that.addons,_that.integrationsData,_that.status,_that.type,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductCreate implements ProductCreate {
  const _ProductCreate({this.id, required this.name, required this.slug, this.decoration, this.photoUrl, required final  List<String> media, required this.storeId, this.shippingMethodId, this.shippingPriceId, this.categoryId, this.category, this.title, this.description, this.body, this.sku, this.barcode, required this.price, this.cost, this.discount, this.stock, this.variant, final  List<ProductOffer>? offers, final  List<ProductAddon>? addons, this.integrationsData, this.status = ProductStatus.draft, this.type = ProductType.physical, final  Map<String, dynamic> metadata = const {}}): _media = media,_offers = offers,_addons = addons,_metadata = metadata;
  factory _ProductCreate.fromJson(Map<String, dynamic> json) => _$ProductCreateFromJson(json);

@override final  String? id;
@override final  String name;
@override final  String slug;
@override final  ProductDecoration? decoration;
@override final  String? photoUrl;
 final  List<String> _media;
@override List<String> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}

@override final  String storeId;
@override final  String? shippingMethodId;
@override final  String? shippingPriceId;
@override final  String? categoryId;
@override final  EmbaddedCategory? category;
@override final  String? title;
@override final  String? description;
@override final  String? body;
@override final  String? sku;
@override final  String? barcode;
@override final  num price;
@override final  num? cost;
@override final  num? discount;
@override final  num? stock;
@override final  ProductVariant? variant;
 final  List<ProductOffer>? _offers;
@override List<ProductOffer>? get offers {
  final value = _offers;
  if (value == null) return null;
  if (_offers is EqualUnmodifiableListView) return _offers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProductAddon>? _addons;
@override List<ProductAddon>? get addons {
  final value = _addons;
  if (value == null) return null;
  if (_addons is EqualUnmodifiableListView) return _addons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  IntegrationsData? integrationsData;
@override@JsonKey() final  ProductStatus status;
@override@JsonKey() final  ProductType type;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCreateCopyWith<_ProductCreate> get copyWith => __$ProductCreateCopyWithImpl<_ProductCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.decoration, decoration)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other._media, _media)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.shippingMethodId, shippingMethodId) || other.shippingMethodId == shippingMethodId)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.body, body) || other.body == body)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.price, price) || other.price == price)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.variant, variant) || other.variant == variant)&&const DeepCollectionEquality().equals(other._offers, _offers)&&const DeepCollectionEquality().equals(other._addons, _addons)&&(identical(other.integrationsData, integrationsData) || other.integrationsData == integrationsData)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,slug,const DeepCollectionEquality().hash(decoration),photoUrl,const DeepCollectionEquality().hash(_media),storeId,shippingMethodId,shippingPriceId,categoryId,category,title,description,body,sku,barcode,price,cost,discount,stock,variant,const DeepCollectionEquality().hash(_offers),const DeepCollectionEquality().hash(_addons),integrationsData,status,type,const DeepCollectionEquality().hash(_metadata)]);

@override
String toString() {
  return 'ProductCreate(id: $id, name: $name, slug: $slug, decoration: $decoration, photoUrl: $photoUrl, media: $media, storeId: $storeId, shippingMethodId: $shippingMethodId, shippingPriceId: $shippingPriceId, categoryId: $categoryId, category: $category, title: $title, description: $description, body: $body, sku: $sku, barcode: $barcode, price: $price, cost: $cost, discount: $discount, stock: $stock, variant: $variant, offers: $offers, addons: $addons, integrationsData: $integrationsData, status: $status, type: $type, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ProductCreateCopyWith<$Res> implements $ProductCreateCopyWith<$Res> {
  factory _$ProductCreateCopyWith(_ProductCreate value, $Res Function(_ProductCreate) _then) = __$ProductCreateCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String slug, ProductDecoration? decoration, String? photoUrl, List<String> media, String storeId, String? shippingMethodId, String? shippingPriceId, String? categoryId, EmbaddedCategory? category, String? title, String? description, String? body, String? sku, String? barcode, num price, num? cost, num? discount, num? stock, ProductVariant? variant, List<ProductOffer>? offers, List<ProductAddon>? addons, IntegrationsData? integrationsData, ProductStatus status, ProductType type, Map<String, dynamic> metadata
});


@override $EmbaddedCategoryCopyWith<$Res>? get category;@override $ProductVariantCopyWith<$Res>? get variant;@override $IntegrationsDataCopyWith<$Res>? get integrationsData;

}
/// @nodoc
class __$ProductCreateCopyWithImpl<$Res>
    implements _$ProductCreateCopyWith<$Res> {
  __$ProductCreateCopyWithImpl(this._self, this._then);

  final _ProductCreate _self;
  final $Res Function(_ProductCreate) _then;

/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? slug = null,Object? decoration = freezed,Object? photoUrl = freezed,Object? media = null,Object? storeId = null,Object? shippingMethodId = freezed,Object? shippingPriceId = freezed,Object? categoryId = freezed,Object? category = freezed,Object? title = freezed,Object? description = freezed,Object? body = freezed,Object? sku = freezed,Object? barcode = freezed,Object? price = null,Object? cost = freezed,Object? discount = freezed,Object? stock = freezed,Object? variant = freezed,Object? offers = freezed,Object? addons = freezed,Object? integrationsData = freezed,Object? status = null,Object? type = null,Object? metadata = null,}) {
  return _then(_ProductCreate(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,decoration: freezed == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as ProductDecoration?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,media: null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<String>,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,shippingMethodId: freezed == shippingMethodId ? _self.shippingMethodId : shippingMethodId // ignore: cast_nullable_to_non_nullable
as String?,shippingPriceId: freezed == shippingPriceId ? _self.shippingPriceId : shippingPriceId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EmbaddedCategory?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as num?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as num?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as ProductVariant?,offers: freezed == offers ? _self._offers : offers // ignore: cast_nullable_to_non_nullable
as List<ProductOffer>?,addons: freezed == addons ? _self._addons : addons // ignore: cast_nullable_to_non_nullable
as List<ProductAddon>?,integrationsData: freezed == integrationsData ? _self.integrationsData : integrationsData // ignore: cast_nullable_to_non_nullable
as IntegrationsData?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductType,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $EmbaddedCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<$Res>? get variant {
    if (_self.variant == null) {
    return null;
  }

  return $ProductVariantCopyWith<$Res>(_self.variant!, (value) {
    return _then(_self.copyWith(variant: value));
  });
}/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntegrationsDataCopyWith<$Res>? get integrationsData {
    if (_self.integrationsData == null) {
    return null;
  }

  return $IntegrationsDataCopyWith<$Res>(_self.integrationsData!, (value) {
    return _then(_self.copyWith(integrationsData: value));
  });
}
}


/// @nodoc
mixin _$ProductUpdate {

 String? get name; String? get slug; ProductDecoration? get decoration; String? get photoUrl; List<String>? get media; String? get storeId; String? get shippingMethodId; String? get shippingPriceId; String? get categoryId; EmbaddedCategory? get category; String? get title; String? get description; String? get body; String? get sku; String? get barcode; num? get price; num? get cost; num? get discount; num? get stock; ProductVariant? get variant; List<ProductOffer>? get offers; List<ProductAddon>? get addons; IntegrationsData? get integrationsData; ProductStatus? get status; ProductType? get type; Map<String, dynamic>? get metadata;@JsonKey(includeFromJson: false) List<String> get setToNull;
/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductUpdateCopyWith<ProductUpdate> get copyWith => _$ProductUpdateCopyWithImpl<ProductUpdate>(this as ProductUpdate, _$identity);

  /// Serializes this ProductUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.decoration, decoration)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other.media, media)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.shippingMethodId, shippingMethodId) || other.shippingMethodId == shippingMethodId)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.body, body) || other.body == body)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.price, price) || other.price == price)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.variant, variant) || other.variant == variant)&&const DeepCollectionEquality().equals(other.offers, offers)&&const DeepCollectionEquality().equals(other.addons, addons)&&(identical(other.integrationsData, integrationsData) || other.integrationsData == integrationsData)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,slug,const DeepCollectionEquality().hash(decoration),photoUrl,const DeepCollectionEquality().hash(media),storeId,shippingMethodId,shippingPriceId,categoryId,category,title,description,body,sku,barcode,price,cost,discount,stock,variant,const DeepCollectionEquality().hash(offers),const DeepCollectionEquality().hash(addons),integrationsData,status,type,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(setToNull)]);

@override
String toString() {
  return 'ProductUpdate(name: $name, slug: $slug, decoration: $decoration, photoUrl: $photoUrl, media: $media, storeId: $storeId, shippingMethodId: $shippingMethodId, shippingPriceId: $shippingPriceId, categoryId: $categoryId, category: $category, title: $title, description: $description, body: $body, sku: $sku, barcode: $barcode, price: $price, cost: $cost, discount: $discount, stock: $stock, variant: $variant, offers: $offers, addons: $addons, integrationsData: $integrationsData, status: $status, type: $type, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $ProductUpdateCopyWith<$Res>  {
  factory $ProductUpdateCopyWith(ProductUpdate value, $Res Function(ProductUpdate) _then) = _$ProductUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? slug, ProductDecoration? decoration, String? photoUrl, List<String>? media, String? storeId, String? shippingMethodId, String? shippingPriceId, String? categoryId, EmbaddedCategory? category, String? title, String? description, String? body, String? sku, String? barcode, num? price, num? cost, num? discount, num? stock, ProductVariant? variant, List<ProductOffer>? offers, List<ProductAddon>? addons, IntegrationsData? integrationsData, ProductStatus? status, ProductType? type, Map<String, dynamic>? metadata,@JsonKey(includeFromJson: false) List<String> setToNull
});


$EmbaddedCategoryCopyWith<$Res>? get category;$ProductVariantCopyWith<$Res>? get variant;$IntegrationsDataCopyWith<$Res>? get integrationsData;

}
/// @nodoc
class _$ProductUpdateCopyWithImpl<$Res>
    implements $ProductUpdateCopyWith<$Res> {
  _$ProductUpdateCopyWithImpl(this._self, this._then);

  final ProductUpdate _self;
  final $Res Function(ProductUpdate) _then;

/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? slug = freezed,Object? decoration = freezed,Object? photoUrl = freezed,Object? media = freezed,Object? storeId = freezed,Object? shippingMethodId = freezed,Object? shippingPriceId = freezed,Object? categoryId = freezed,Object? category = freezed,Object? title = freezed,Object? description = freezed,Object? body = freezed,Object? sku = freezed,Object? barcode = freezed,Object? price = freezed,Object? cost = freezed,Object? discount = freezed,Object? stock = freezed,Object? variant = freezed,Object? offers = freezed,Object? addons = freezed,Object? integrationsData = freezed,Object? status = freezed,Object? type = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,decoration: freezed == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as ProductDecoration?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<String>?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,shippingMethodId: freezed == shippingMethodId ? _self.shippingMethodId : shippingMethodId // ignore: cast_nullable_to_non_nullable
as String?,shippingPriceId: freezed == shippingPriceId ? _self.shippingPriceId : shippingPriceId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EmbaddedCategory?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as num?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as num?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as ProductVariant?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as List<ProductOffer>?,addons: freezed == addons ? _self.addons : addons // ignore: cast_nullable_to_non_nullable
as List<ProductAddon>?,integrationsData: freezed == integrationsData ? _self.integrationsData : integrationsData // ignore: cast_nullable_to_non_nullable
as IntegrationsData?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductType?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $EmbaddedCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<$Res>? get variant {
    if (_self.variant == null) {
    return null;
  }

  return $ProductVariantCopyWith<$Res>(_self.variant!, (value) {
    return _then(_self.copyWith(variant: value));
  });
}/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntegrationsDataCopyWith<$Res>? get integrationsData {
    if (_self.integrationsData == null) {
    return null;
  }

  return $IntegrationsDataCopyWith<$Res>(_self.integrationsData!, (value) {
    return _then(_self.copyWith(integrationsData: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductUpdate].
extension ProductUpdatePatterns on ProductUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductUpdate value)  $default,){
final _that = this;
switch (_that) {
case _ProductUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _ProductUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? slug,  ProductDecoration? decoration,  String? photoUrl,  List<String>? media,  String? storeId,  String? shippingMethodId,  String? shippingPriceId,  String? categoryId,  EmbaddedCategory? category,  String? title,  String? description,  String? body,  String? sku,  String? barcode,  num? price,  num? cost,  num? discount,  num? stock,  ProductVariant? variant,  List<ProductOffer>? offers,  List<ProductAddon>? addons,  IntegrationsData? integrationsData,  ProductStatus? status,  ProductType? type,  Map<String, dynamic>? metadata, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductUpdate() when $default != null:
return $default(_that.name,_that.slug,_that.decoration,_that.photoUrl,_that.media,_that.storeId,_that.shippingMethodId,_that.shippingPriceId,_that.categoryId,_that.category,_that.title,_that.description,_that.body,_that.sku,_that.barcode,_that.price,_that.cost,_that.discount,_that.stock,_that.variant,_that.offers,_that.addons,_that.integrationsData,_that.status,_that.type,_that.metadata,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? slug,  ProductDecoration? decoration,  String? photoUrl,  List<String>? media,  String? storeId,  String? shippingMethodId,  String? shippingPriceId,  String? categoryId,  EmbaddedCategory? category,  String? title,  String? description,  String? body,  String? sku,  String? barcode,  num? price,  num? cost,  num? discount,  num? stock,  ProductVariant? variant,  List<ProductOffer>? offers,  List<ProductAddon>? addons,  IntegrationsData? integrationsData,  ProductStatus? status,  ProductType? type,  Map<String, dynamic>? metadata, @JsonKey(includeFromJson: false)  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _ProductUpdate():
return $default(_that.name,_that.slug,_that.decoration,_that.photoUrl,_that.media,_that.storeId,_that.shippingMethodId,_that.shippingPriceId,_that.categoryId,_that.category,_that.title,_that.description,_that.body,_that.sku,_that.barcode,_that.price,_that.cost,_that.discount,_that.stock,_that.variant,_that.offers,_that.addons,_that.integrationsData,_that.status,_that.type,_that.metadata,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? slug,  ProductDecoration? decoration,  String? photoUrl,  List<String>? media,  String? storeId,  String? shippingMethodId,  String? shippingPriceId,  String? categoryId,  EmbaddedCategory? category,  String? title,  String? description,  String? body,  String? sku,  String? barcode,  num? price,  num? cost,  num? discount,  num? stock,  ProductVariant? variant,  List<ProductOffer>? offers,  List<ProductAddon>? addons,  IntegrationsData? integrationsData,  ProductStatus? status,  ProductType? type,  Map<String, dynamic>? metadata, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _ProductUpdate() when $default != null:
return $default(_that.name,_that.slug,_that.decoration,_that.photoUrl,_that.media,_that.storeId,_that.shippingMethodId,_that.shippingPriceId,_that.categoryId,_that.category,_that.title,_that.description,_that.body,_that.sku,_that.barcode,_that.price,_that.cost,_that.discount,_that.stock,_that.variant,_that.offers,_that.addons,_that.integrationsData,_that.status,_that.type,_that.metadata,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductUpdate implements ProductUpdate {
  const _ProductUpdate({this.name, this.slug, this.decoration, this.photoUrl, final  List<String>? media, this.storeId, this.shippingMethodId, this.shippingPriceId, this.categoryId, this.category, this.title, this.description, this.body, this.sku, this.barcode, this.price, this.cost, this.discount, this.stock, this.variant, final  List<ProductOffer>? offers, final  List<ProductAddon>? addons, this.integrationsData, this.status, this.type, final  Map<String, dynamic>? metadata, @JsonKey(includeFromJson: false) final  List<String> setToNull = const []}): _media = media,_offers = offers,_addons = addons,_metadata = metadata,_setToNull = setToNull;
  factory _ProductUpdate.fromJson(Map<String, dynamic> json) => _$ProductUpdateFromJson(json);

@override final  String? name;
@override final  String? slug;
@override final  ProductDecoration? decoration;
@override final  String? photoUrl;
 final  List<String>? _media;
@override List<String>? get media {
  final value = _media;
  if (value == null) return null;
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? storeId;
@override final  String? shippingMethodId;
@override final  String? shippingPriceId;
@override final  String? categoryId;
@override final  EmbaddedCategory? category;
@override final  String? title;
@override final  String? description;
@override final  String? body;
@override final  String? sku;
@override final  String? barcode;
@override final  num? price;
@override final  num? cost;
@override final  num? discount;
@override final  num? stock;
@override final  ProductVariant? variant;
 final  List<ProductOffer>? _offers;
@override List<ProductOffer>? get offers {
  final value = _offers;
  if (value == null) return null;
  if (_offers is EqualUnmodifiableListView) return _offers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProductAddon>? _addons;
@override List<ProductAddon>? get addons {
  final value = _addons;
  if (value == null) return null;
  if (_addons is EqualUnmodifiableListView) return _addons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  IntegrationsData? integrationsData;
@override final  ProductStatus? status;
@override final  ProductType? type;
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


/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductUpdateCopyWith<_ProductUpdate> get copyWith => __$ProductUpdateCopyWithImpl<_ProductUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.decoration, decoration)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&const DeepCollectionEquality().equals(other._media, _media)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.shippingMethodId, shippingMethodId) || other.shippingMethodId == shippingMethodId)&&(identical(other.shippingPriceId, shippingPriceId) || other.shippingPriceId == shippingPriceId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.body, body) || other.body == body)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.price, price) || other.price == price)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.variant, variant) || other.variant == variant)&&const DeepCollectionEquality().equals(other._offers, _offers)&&const DeepCollectionEquality().equals(other._addons, _addons)&&(identical(other.integrationsData, integrationsData) || other.integrationsData == integrationsData)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,slug,const DeepCollectionEquality().hash(decoration),photoUrl,const DeepCollectionEquality().hash(_media),storeId,shippingMethodId,shippingPriceId,categoryId,category,title,description,body,sku,barcode,price,cost,discount,stock,variant,const DeepCollectionEquality().hash(_offers),const DeepCollectionEquality().hash(_addons),integrationsData,status,type,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_setToNull)]);

@override
String toString() {
  return 'ProductUpdate(name: $name, slug: $slug, decoration: $decoration, photoUrl: $photoUrl, media: $media, storeId: $storeId, shippingMethodId: $shippingMethodId, shippingPriceId: $shippingPriceId, categoryId: $categoryId, category: $category, title: $title, description: $description, body: $body, sku: $sku, barcode: $barcode, price: $price, cost: $cost, discount: $discount, stock: $stock, variant: $variant, offers: $offers, addons: $addons, integrationsData: $integrationsData, status: $status, type: $type, metadata: $metadata, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$ProductUpdateCopyWith<$Res> implements $ProductUpdateCopyWith<$Res> {
  factory _$ProductUpdateCopyWith(_ProductUpdate value, $Res Function(_ProductUpdate) _then) = __$ProductUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? slug, ProductDecoration? decoration, String? photoUrl, List<String>? media, String? storeId, String? shippingMethodId, String? shippingPriceId, String? categoryId, EmbaddedCategory? category, String? title, String? description, String? body, String? sku, String? barcode, num? price, num? cost, num? discount, num? stock, ProductVariant? variant, List<ProductOffer>? offers, List<ProductAddon>? addons, IntegrationsData? integrationsData, ProductStatus? status, ProductType? type, Map<String, dynamic>? metadata,@JsonKey(includeFromJson: false) List<String> setToNull
});


@override $EmbaddedCategoryCopyWith<$Res>? get category;@override $ProductVariantCopyWith<$Res>? get variant;@override $IntegrationsDataCopyWith<$Res>? get integrationsData;

}
/// @nodoc
class __$ProductUpdateCopyWithImpl<$Res>
    implements _$ProductUpdateCopyWith<$Res> {
  __$ProductUpdateCopyWithImpl(this._self, this._then);

  final _ProductUpdate _self;
  final $Res Function(_ProductUpdate) _then;

/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? slug = freezed,Object? decoration = freezed,Object? photoUrl = freezed,Object? media = freezed,Object? storeId = freezed,Object? shippingMethodId = freezed,Object? shippingPriceId = freezed,Object? categoryId = freezed,Object? category = freezed,Object? title = freezed,Object? description = freezed,Object? body = freezed,Object? sku = freezed,Object? barcode = freezed,Object? price = freezed,Object? cost = freezed,Object? discount = freezed,Object? stock = freezed,Object? variant = freezed,Object? offers = freezed,Object? addons = freezed,Object? integrationsData = freezed,Object? status = freezed,Object? type = freezed,Object? metadata = freezed,Object? setToNull = null,}) {
  return _then(_ProductUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,decoration: freezed == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as ProductDecoration?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,media: freezed == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<String>?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,shippingMethodId: freezed == shippingMethodId ? _self.shippingMethodId : shippingMethodId // ignore: cast_nullable_to_non_nullable
as String?,shippingPriceId: freezed == shippingPriceId ? _self.shippingPriceId : shippingPriceId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EmbaddedCategory?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as num?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as num?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as ProductVariant?,offers: freezed == offers ? _self._offers : offers // ignore: cast_nullable_to_non_nullable
as List<ProductOffer>?,addons: freezed == addons ? _self._addons : addons // ignore: cast_nullable_to_non_nullable
as List<ProductAddon>?,integrationsData: freezed == integrationsData ? _self.integrationsData : integrationsData // ignore: cast_nullable_to_non_nullable
as IntegrationsData?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductType?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $EmbaddedCategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<$Res>? get variant {
    if (_self.variant == null) {
    return null;
  }

  return $ProductVariantCopyWith<$Res>(_self.variant!, (value) {
    return _then(_self.copyWith(variant: value));
  });
}/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntegrationsDataCopyWith<$Res>? get integrationsData {
    if (_self.integrationsData == null) {
    return null;
  }

  return $IntegrationsDataCopyWith<$Res>(_self.integrationsData!, (value) {
    return _then(_self.copyWith(integrationsData: value));
  });
}
}


/// @nodoc
mixin _$ProductOffer {

 String get code; String get title; String? get subtitle; num? get price; num? get minQuantity; num? get maxQuantity; bool get freeShipping;
/// Create a copy of ProductOffer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductOfferCopyWith<ProductOffer> get copyWith => _$ProductOfferCopyWithImpl<ProductOffer>(this as ProductOffer, _$identity);

  /// Serializes this ProductOffer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductOffer&&(identical(other.code, code) || other.code == code)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.price, price) || other.price == price)&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.maxQuantity, maxQuantity) || other.maxQuantity == maxQuantity)&&(identical(other.freeShipping, freeShipping) || other.freeShipping == freeShipping));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,title,subtitle,price,minQuantity,maxQuantity,freeShipping);

@override
String toString() {
  return 'ProductOffer(code: $code, title: $title, subtitle: $subtitle, price: $price, minQuantity: $minQuantity, maxQuantity: $maxQuantity, freeShipping: $freeShipping)';
}


}

/// @nodoc
abstract mixin class $ProductOfferCopyWith<$Res>  {
  factory $ProductOfferCopyWith(ProductOffer value, $Res Function(ProductOffer) _then) = _$ProductOfferCopyWithImpl;
@useResult
$Res call({
 String code, String title, String? subtitle, num? price, num? minQuantity, num? maxQuantity, bool freeShipping
});




}
/// @nodoc
class _$ProductOfferCopyWithImpl<$Res>
    implements $ProductOfferCopyWith<$Res> {
  _$ProductOfferCopyWithImpl(this._self, this._then);

  final ProductOffer _self;
  final $Res Function(ProductOffer) _then;

/// Create a copy of ProductOffer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? title = null,Object? subtitle = freezed,Object? price = freezed,Object? minQuantity = freezed,Object? maxQuantity = freezed,Object? freeShipping = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,minQuantity: freezed == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as num?,maxQuantity: freezed == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as num?,freeShipping: null == freeShipping ? _self.freeShipping : freeShipping // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductOffer].
extension ProductOfferPatterns on ProductOffer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductOffer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductOffer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductOffer value)  $default,){
final _that = this;
switch (_that) {
case _ProductOffer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductOffer value)?  $default,){
final _that = this;
switch (_that) {
case _ProductOffer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String title,  String? subtitle,  num? price,  num? minQuantity,  num? maxQuantity,  bool freeShipping)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductOffer() when $default != null:
return $default(_that.code,_that.title,_that.subtitle,_that.price,_that.minQuantity,_that.maxQuantity,_that.freeShipping);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String title,  String? subtitle,  num? price,  num? minQuantity,  num? maxQuantity,  bool freeShipping)  $default,) {final _that = this;
switch (_that) {
case _ProductOffer():
return $default(_that.code,_that.title,_that.subtitle,_that.price,_that.minQuantity,_that.maxQuantity,_that.freeShipping);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String title,  String? subtitle,  num? price,  num? minQuantity,  num? maxQuantity,  bool freeShipping)?  $default,) {final _that = this;
switch (_that) {
case _ProductOffer() when $default != null:
return $default(_that.code,_that.title,_that.subtitle,_that.price,_that.minQuantity,_that.maxQuantity,_that.freeShipping);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductOffer implements ProductOffer {
  const _ProductOffer({required this.code, required this.title, this.subtitle, this.price, this.minQuantity, this.maxQuantity, this.freeShipping = false});
  factory _ProductOffer.fromJson(Map<String, dynamic> json) => _$ProductOfferFromJson(json);

@override final  String code;
@override final  String title;
@override final  String? subtitle;
@override final  num? price;
@override final  num? minQuantity;
@override final  num? maxQuantity;
@override@JsonKey() final  bool freeShipping;

/// Create a copy of ProductOffer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductOfferCopyWith<_ProductOffer> get copyWith => __$ProductOfferCopyWithImpl<_ProductOffer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductOfferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductOffer&&(identical(other.code, code) || other.code == code)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.price, price) || other.price == price)&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.maxQuantity, maxQuantity) || other.maxQuantity == maxQuantity)&&(identical(other.freeShipping, freeShipping) || other.freeShipping == freeShipping));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,title,subtitle,price,minQuantity,maxQuantity,freeShipping);

@override
String toString() {
  return 'ProductOffer(code: $code, title: $title, subtitle: $subtitle, price: $price, minQuantity: $minQuantity, maxQuantity: $maxQuantity, freeShipping: $freeShipping)';
}


}

/// @nodoc
abstract mixin class _$ProductOfferCopyWith<$Res> implements $ProductOfferCopyWith<$Res> {
  factory _$ProductOfferCopyWith(_ProductOffer value, $Res Function(_ProductOffer) _then) = __$ProductOfferCopyWithImpl;
@override @useResult
$Res call({
 String code, String title, String? subtitle, num? price, num? minQuantity, num? maxQuantity, bool freeShipping
});




}
/// @nodoc
class __$ProductOfferCopyWithImpl<$Res>
    implements _$ProductOfferCopyWith<$Res> {
  __$ProductOfferCopyWithImpl(this._self, this._then);

  final _ProductOffer _self;
  final $Res Function(_ProductOffer) _then;

/// Create a copy of ProductOffer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? title = null,Object? subtitle = freezed,Object? price = freezed,Object? minQuantity = freezed,Object? maxQuantity = freezed,Object? freeShipping = null,}) {
  return _then(_ProductOffer(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,minQuantity: freezed == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as num?,maxQuantity: freezed == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as num?,freeShipping: null == freeShipping ? _self.freeShipping : freeShipping // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
