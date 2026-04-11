// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreDomain {

 String get name; DateTime? get verifiedAt; Map<String, dynamic> get metadata;
/// Create a copy of StoreDomain
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreDomainCopyWith<StoreDomain> get copyWith => _$StoreDomainCopyWithImpl<StoreDomain>(this as StoreDomain, _$identity);

  /// Serializes this StoreDomain to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreDomain&&(identical(other.name, name) || other.name == name)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,verifiedAt,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'StoreDomain(name: $name, verifiedAt: $verifiedAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $StoreDomainCopyWith<$Res>  {
  factory $StoreDomainCopyWith(StoreDomain value, $Res Function(StoreDomain) _then) = _$StoreDomainCopyWithImpl;
@useResult
$Res call({
 String name, DateTime? verifiedAt, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$StoreDomainCopyWithImpl<$Res>
    implements $StoreDomainCopyWith<$Res> {
  _$StoreDomainCopyWithImpl(this._self, this._then);

  final StoreDomain _self;
  final $Res Function(StoreDomain) _then;

/// Create a copy of StoreDomain
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? verifiedAt = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreDomain].
extension StoreDomainPatterns on StoreDomain {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreDomain value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreDomain() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreDomain value)  $default,){
final _that = this;
switch (_that) {
case _StoreDomain():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreDomain value)?  $default,){
final _that = this;
switch (_that) {
case _StoreDomain() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  DateTime? verifiedAt,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreDomain() when $default != null:
return $default(_that.name,_that.verifiedAt,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  DateTime? verifiedAt,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _StoreDomain():
return $default(_that.name,_that.verifiedAt,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  DateTime? verifiedAt,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _StoreDomain() when $default != null:
return $default(_that.name,_that.verifiedAt,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreDomain implements StoreDomain {
   _StoreDomain({required this.name, this.verifiedAt, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _StoreDomain.fromJson(Map<String, dynamic> json) => _$StoreDomainFromJson(json);

@override final  String name;
@override final  DateTime? verifiedAt;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of StoreDomain
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreDomainCopyWith<_StoreDomain> get copyWith => __$StoreDomainCopyWithImpl<_StoreDomain>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreDomainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreDomain&&(identical(other.name, name) || other.name == name)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,verifiedAt,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'StoreDomain(name: $name, verifiedAt: $verifiedAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$StoreDomainCopyWith<$Res> implements $StoreDomainCopyWith<$Res> {
  factory _$StoreDomainCopyWith(_StoreDomain value, $Res Function(_StoreDomain) _then) = __$StoreDomainCopyWithImpl;
@override @useResult
$Res call({
 String name, DateTime? verifiedAt, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$StoreDomainCopyWithImpl<$Res>
    implements _$StoreDomainCopyWith<$Res> {
  __$StoreDomainCopyWithImpl(this._self, this._then);

  final _StoreDomain _self;
  final $Res Function(_StoreDomain) _then;

/// Create a copy of StoreDomain
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? verifiedAt = freezed,Object? metadata = null,}) {
  return _then(_StoreDomain(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$StoreBanner {

 String get title; String? get url; bool get enabled; Map<String, dynamic> get metadata;
/// Create a copy of StoreBanner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreBannerCopyWith<StoreBanner> get copyWith => _$StoreBannerCopyWithImpl<StoreBanner>(this as StoreBanner, _$identity);

  /// Serializes this StoreBanner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreBanner&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url,enabled,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'StoreBanner(title: $title, url: $url, enabled: $enabled, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $StoreBannerCopyWith<$Res>  {
  factory $StoreBannerCopyWith(StoreBanner value, $Res Function(StoreBanner) _then) = _$StoreBannerCopyWithImpl;
@useResult
$Res call({
 String title, String? url, bool enabled, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$StoreBannerCopyWithImpl<$Res>
    implements $StoreBannerCopyWith<$Res> {
  _$StoreBannerCopyWithImpl(this._self, this._then);

  final StoreBanner _self;
  final $Res Function(StoreBanner) _then;

/// Create a copy of StoreBanner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? url = freezed,Object? enabled = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreBanner].
extension StoreBannerPatterns on StoreBanner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreBanner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreBanner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreBanner value)  $default,){
final _that = this;
switch (_that) {
case _StoreBanner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreBanner value)?  $default,){
final _that = this;
switch (_that) {
case _StoreBanner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? url,  bool enabled,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreBanner() when $default != null:
return $default(_that.title,_that.url,_that.enabled,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? url,  bool enabled,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _StoreBanner():
return $default(_that.title,_that.url,_that.enabled,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? url,  bool enabled,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _StoreBanner() when $default != null:
return $default(_that.title,_that.url,_that.enabled,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreBanner implements StoreBanner {
   _StoreBanner({required this.title, this.url, this.enabled = false, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _StoreBanner.fromJson(Map<String, dynamic> json) => _$StoreBannerFromJson(json);

@override final  String title;
@override final  String? url;
@override@JsonKey() final  bool enabled;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of StoreBanner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreBannerCopyWith<_StoreBanner> get copyWith => __$StoreBannerCopyWithImpl<_StoreBanner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreBannerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreBanner&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url,enabled,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'StoreBanner(title: $title, url: $url, enabled: $enabled, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$StoreBannerCopyWith<$Res> implements $StoreBannerCopyWith<$Res> {
  factory _$StoreBannerCopyWith(_StoreBanner value, $Res Function(_StoreBanner) _then) = __$StoreBannerCopyWithImpl;
@override @useResult
$Res call({
 String title, String? url, bool enabled, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$StoreBannerCopyWithImpl<$Res>
    implements _$StoreBannerCopyWith<$Res> {
  __$StoreBannerCopyWithImpl(this._self, this._then);

  final _StoreBanner _self;
  final $Res Function(_StoreBanner) _then;

/// Create a copy of StoreBanner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? url = freezed,Object? enabled = null,Object? metadata = null,}) {
  return _then(_StoreBanner(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$StoreDecoration {

// primary
@ColorSerializer() int get primary;@ColorSerializer() int get onPrimary;// on dark mode
@ColorSerializer() int get primaryDark;@ColorSerializer() int get onPrimaryDark;// secondary
@ColorSerializer() int get secondary;@ColorSerializer() int get onSecondary;// on dark mode
@ColorSerializer() int get secondaryDark;@ColorSerializer() int get onSecondaryDark; bool get useLogoDarkFilter; bool? get showStoreLogoInHeader; bool? get logoFullHeight; bool? get showStoreNameInHeader; Map<String, dynamic> get metadata;/// Theme selection and visual editor data storage pointer
 Map<String, dynamic>? get theme;
/// Create a copy of StoreDecoration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreDecorationCopyWith<StoreDecoration> get copyWith => _$StoreDecorationCopyWithImpl<StoreDecoration>(this as StoreDecoration, _$identity);

  /// Serializes this StoreDecoration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreDecoration&&(identical(other.primary, primary) || other.primary == primary)&&(identical(other.onPrimary, onPrimary) || other.onPrimary == onPrimary)&&(identical(other.primaryDark, primaryDark) || other.primaryDark == primaryDark)&&(identical(other.onPrimaryDark, onPrimaryDark) || other.onPrimaryDark == onPrimaryDark)&&(identical(other.secondary, secondary) || other.secondary == secondary)&&(identical(other.onSecondary, onSecondary) || other.onSecondary == onSecondary)&&(identical(other.secondaryDark, secondaryDark) || other.secondaryDark == secondaryDark)&&(identical(other.onSecondaryDark, onSecondaryDark) || other.onSecondaryDark == onSecondaryDark)&&(identical(other.useLogoDarkFilter, useLogoDarkFilter) || other.useLogoDarkFilter == useLogoDarkFilter)&&(identical(other.showStoreLogoInHeader, showStoreLogoInHeader) || other.showStoreLogoInHeader == showStoreLogoInHeader)&&(identical(other.logoFullHeight, logoFullHeight) || other.logoFullHeight == logoFullHeight)&&(identical(other.showStoreNameInHeader, showStoreNameInHeader) || other.showStoreNameInHeader == showStoreNameInHeader)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.theme, theme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primary,onPrimary,primaryDark,onPrimaryDark,secondary,onSecondary,secondaryDark,onSecondaryDark,useLogoDarkFilter,showStoreLogoInHeader,logoFullHeight,showStoreNameInHeader,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(theme));

@override
String toString() {
  return 'StoreDecoration(primary: $primary, onPrimary: $onPrimary, primaryDark: $primaryDark, onPrimaryDark: $onPrimaryDark, secondary: $secondary, onSecondary: $onSecondary, secondaryDark: $secondaryDark, onSecondaryDark: $onSecondaryDark, useLogoDarkFilter: $useLogoDarkFilter, showStoreLogoInHeader: $showStoreLogoInHeader, logoFullHeight: $logoFullHeight, showStoreNameInHeader: $showStoreNameInHeader, metadata: $metadata, theme: $theme)';
}


}

/// @nodoc
abstract mixin class $StoreDecorationCopyWith<$Res>  {
  factory $StoreDecorationCopyWith(StoreDecoration value, $Res Function(StoreDecoration) _then) = _$StoreDecorationCopyWithImpl;
@useResult
$Res call({
@ColorSerializer() int primary,@ColorSerializer() int onPrimary,@ColorSerializer() int primaryDark,@ColorSerializer() int onPrimaryDark,@ColorSerializer() int secondary,@ColorSerializer() int onSecondary,@ColorSerializer() int secondaryDark,@ColorSerializer() int onSecondaryDark, bool useLogoDarkFilter, bool? showStoreLogoInHeader, bool? logoFullHeight, bool? showStoreNameInHeader, Map<String, dynamic> metadata, Map<String, dynamic>? theme
});




}
/// @nodoc
class _$StoreDecorationCopyWithImpl<$Res>
    implements $StoreDecorationCopyWith<$Res> {
  _$StoreDecorationCopyWithImpl(this._self, this._then);

  final StoreDecoration _self;
  final $Res Function(StoreDecoration) _then;

/// Create a copy of StoreDecoration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? primary = null,Object? onPrimary = null,Object? primaryDark = null,Object? onPrimaryDark = null,Object? secondary = null,Object? onSecondary = null,Object? secondaryDark = null,Object? onSecondaryDark = null,Object? useLogoDarkFilter = null,Object? showStoreLogoInHeader = freezed,Object? logoFullHeight = freezed,Object? showStoreNameInHeader = freezed,Object? metadata = null,Object? theme = freezed,}) {
  return _then(_self.copyWith(
primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as int,onPrimary: null == onPrimary ? _self.onPrimary : onPrimary // ignore: cast_nullable_to_non_nullable
as int,primaryDark: null == primaryDark ? _self.primaryDark : primaryDark // ignore: cast_nullable_to_non_nullable
as int,onPrimaryDark: null == onPrimaryDark ? _self.onPrimaryDark : onPrimaryDark // ignore: cast_nullable_to_non_nullable
as int,secondary: null == secondary ? _self.secondary : secondary // ignore: cast_nullable_to_non_nullable
as int,onSecondary: null == onSecondary ? _self.onSecondary : onSecondary // ignore: cast_nullable_to_non_nullable
as int,secondaryDark: null == secondaryDark ? _self.secondaryDark : secondaryDark // ignore: cast_nullable_to_non_nullable
as int,onSecondaryDark: null == onSecondaryDark ? _self.onSecondaryDark : onSecondaryDark // ignore: cast_nullable_to_non_nullable
as int,useLogoDarkFilter: null == useLogoDarkFilter ? _self.useLogoDarkFilter : useLogoDarkFilter // ignore: cast_nullable_to_non_nullable
as bool,showStoreLogoInHeader: freezed == showStoreLogoInHeader ? _self.showStoreLogoInHeader : showStoreLogoInHeader // ignore: cast_nullable_to_non_nullable
as bool?,logoFullHeight: freezed == logoFullHeight ? _self.logoFullHeight : logoFullHeight // ignore: cast_nullable_to_non_nullable
as bool?,showStoreNameInHeader: freezed == showStoreNameInHeader ? _self.showStoreNameInHeader : showStoreNameInHeader // ignore: cast_nullable_to_non_nullable
as bool?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreDecoration].
extension StoreDecorationPatterns on StoreDecoration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreDecoration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreDecoration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreDecoration value)  $default,){
final _that = this;
switch (_that) {
case _StoreDecoration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreDecoration value)?  $default,){
final _that = this;
switch (_that) {
case _StoreDecoration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@ColorSerializer()  int primary, @ColorSerializer()  int onPrimary, @ColorSerializer()  int primaryDark, @ColorSerializer()  int onPrimaryDark, @ColorSerializer()  int secondary, @ColorSerializer()  int onSecondary, @ColorSerializer()  int secondaryDark, @ColorSerializer()  int onSecondaryDark,  bool useLogoDarkFilter,  bool? showStoreLogoInHeader,  bool? logoFullHeight,  bool? showStoreNameInHeader,  Map<String, dynamic> metadata,  Map<String, dynamic>? theme)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreDecoration() when $default != null:
return $default(_that.primary,_that.onPrimary,_that.primaryDark,_that.onPrimaryDark,_that.secondary,_that.onSecondary,_that.secondaryDark,_that.onSecondaryDark,_that.useLogoDarkFilter,_that.showStoreLogoInHeader,_that.logoFullHeight,_that.showStoreNameInHeader,_that.metadata,_that.theme);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@ColorSerializer()  int primary, @ColorSerializer()  int onPrimary, @ColorSerializer()  int primaryDark, @ColorSerializer()  int onPrimaryDark, @ColorSerializer()  int secondary, @ColorSerializer()  int onSecondary, @ColorSerializer()  int secondaryDark, @ColorSerializer()  int onSecondaryDark,  bool useLogoDarkFilter,  bool? showStoreLogoInHeader,  bool? logoFullHeight,  bool? showStoreNameInHeader,  Map<String, dynamic> metadata,  Map<String, dynamic>? theme)  $default,) {final _that = this;
switch (_that) {
case _StoreDecoration():
return $default(_that.primary,_that.onPrimary,_that.primaryDark,_that.onPrimaryDark,_that.secondary,_that.onSecondary,_that.secondaryDark,_that.onSecondaryDark,_that.useLogoDarkFilter,_that.showStoreLogoInHeader,_that.logoFullHeight,_that.showStoreNameInHeader,_that.metadata,_that.theme);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@ColorSerializer()  int primary, @ColorSerializer()  int onPrimary, @ColorSerializer()  int primaryDark, @ColorSerializer()  int onPrimaryDark, @ColorSerializer()  int secondary, @ColorSerializer()  int onSecondary, @ColorSerializer()  int secondaryDark, @ColorSerializer()  int onSecondaryDark,  bool useLogoDarkFilter,  bool? showStoreLogoInHeader,  bool? logoFullHeight,  bool? showStoreNameInHeader,  Map<String, dynamic> metadata,  Map<String, dynamic>? theme)?  $default,) {final _that = this;
switch (_that) {
case _StoreDecoration() when $default != null:
return $default(_that.primary,_that.onPrimary,_that.primaryDark,_that.onPrimaryDark,_that.secondary,_that.onSecondary,_that.secondaryDark,_that.onSecondaryDark,_that.useLogoDarkFilter,_that.showStoreLogoInHeader,_that.logoFullHeight,_that.showStoreNameInHeader,_that.metadata,_that.theme);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreDecoration implements StoreDecoration {
   _StoreDecoration({@ColorSerializer() this.primary = 0xFF4CAF50, @ColorSerializer() this.onPrimary = 0xFFFFFFFF, @ColorSerializer() this.primaryDark = 0xFF69F0AE, @ColorSerializer() this.onPrimaryDark = 0xFF000000, @ColorSerializer() this.secondary = 0xFFFF9800, @ColorSerializer() this.onSecondary = 0xFFFFFFFF, @ColorSerializer() this.secondaryDark = 0xFFFFAB40, @ColorSerializer() this.onSecondaryDark = 0xFF000000, this.useLogoDarkFilter = true, this.showStoreLogoInHeader, this.logoFullHeight, this.showStoreNameInHeader, final  Map<String, dynamic> metadata = const {}, final  Map<String, dynamic>? theme}): _metadata = metadata,_theme = theme;
  factory _StoreDecoration.fromJson(Map<String, dynamic> json) => _$StoreDecorationFromJson(json);

// primary
@override@JsonKey()@ColorSerializer() final  int primary;
@override@JsonKey()@ColorSerializer() final  int onPrimary;
// on dark mode
@override@JsonKey()@ColorSerializer() final  int primaryDark;
@override@JsonKey()@ColorSerializer() final  int onPrimaryDark;
// secondary
@override@JsonKey()@ColorSerializer() final  int secondary;
@override@JsonKey()@ColorSerializer() final  int onSecondary;
// on dark mode
@override@JsonKey()@ColorSerializer() final  int secondaryDark;
@override@JsonKey()@ColorSerializer() final  int onSecondaryDark;
@override@JsonKey() final  bool useLogoDarkFilter;
@override final  bool? showStoreLogoInHeader;
@override final  bool? logoFullHeight;
@override final  bool? showStoreNameInHeader;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

/// Theme selection and visual editor data storage pointer
 final  Map<String, dynamic>? _theme;
/// Theme selection and visual editor data storage pointer
@override Map<String, dynamic>? get theme {
  final value = _theme;
  if (value == null) return null;
  if (_theme is EqualUnmodifiableMapView) return _theme;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of StoreDecoration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreDecorationCopyWith<_StoreDecoration> get copyWith => __$StoreDecorationCopyWithImpl<_StoreDecoration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreDecorationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreDecoration&&(identical(other.primary, primary) || other.primary == primary)&&(identical(other.onPrimary, onPrimary) || other.onPrimary == onPrimary)&&(identical(other.primaryDark, primaryDark) || other.primaryDark == primaryDark)&&(identical(other.onPrimaryDark, onPrimaryDark) || other.onPrimaryDark == onPrimaryDark)&&(identical(other.secondary, secondary) || other.secondary == secondary)&&(identical(other.onSecondary, onSecondary) || other.onSecondary == onSecondary)&&(identical(other.secondaryDark, secondaryDark) || other.secondaryDark == secondaryDark)&&(identical(other.onSecondaryDark, onSecondaryDark) || other.onSecondaryDark == onSecondaryDark)&&(identical(other.useLogoDarkFilter, useLogoDarkFilter) || other.useLogoDarkFilter == useLogoDarkFilter)&&(identical(other.showStoreLogoInHeader, showStoreLogoInHeader) || other.showStoreLogoInHeader == showStoreLogoInHeader)&&(identical(other.logoFullHeight, logoFullHeight) || other.logoFullHeight == logoFullHeight)&&(identical(other.showStoreNameInHeader, showStoreNameInHeader) || other.showStoreNameInHeader == showStoreNameInHeader)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._theme, _theme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primary,onPrimary,primaryDark,onPrimaryDark,secondary,onSecondary,secondaryDark,onSecondaryDark,useLogoDarkFilter,showStoreLogoInHeader,logoFullHeight,showStoreNameInHeader,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_theme));

@override
String toString() {
  return 'StoreDecoration(primary: $primary, onPrimary: $onPrimary, primaryDark: $primaryDark, onPrimaryDark: $onPrimaryDark, secondary: $secondary, onSecondary: $onSecondary, secondaryDark: $secondaryDark, onSecondaryDark: $onSecondaryDark, useLogoDarkFilter: $useLogoDarkFilter, showStoreLogoInHeader: $showStoreLogoInHeader, logoFullHeight: $logoFullHeight, showStoreNameInHeader: $showStoreNameInHeader, metadata: $metadata, theme: $theme)';
}


}

/// @nodoc
abstract mixin class _$StoreDecorationCopyWith<$Res> implements $StoreDecorationCopyWith<$Res> {
  factory _$StoreDecorationCopyWith(_StoreDecoration value, $Res Function(_StoreDecoration) _then) = __$StoreDecorationCopyWithImpl;
@override @useResult
$Res call({
@ColorSerializer() int primary,@ColorSerializer() int onPrimary,@ColorSerializer() int primaryDark,@ColorSerializer() int onPrimaryDark,@ColorSerializer() int secondary,@ColorSerializer() int onSecondary,@ColorSerializer() int secondaryDark,@ColorSerializer() int onSecondaryDark, bool useLogoDarkFilter, bool? showStoreLogoInHeader, bool? logoFullHeight, bool? showStoreNameInHeader, Map<String, dynamic> metadata, Map<String, dynamic>? theme
});




}
/// @nodoc
class __$StoreDecorationCopyWithImpl<$Res>
    implements _$StoreDecorationCopyWith<$Res> {
  __$StoreDecorationCopyWithImpl(this._self, this._then);

  final _StoreDecoration _self;
  final $Res Function(_StoreDecoration) _then;

/// Create a copy of StoreDecoration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? primary = null,Object? onPrimary = null,Object? primaryDark = null,Object? onPrimaryDark = null,Object? secondary = null,Object? onSecondary = null,Object? secondaryDark = null,Object? onSecondaryDark = null,Object? useLogoDarkFilter = null,Object? showStoreLogoInHeader = freezed,Object? logoFullHeight = freezed,Object? showStoreNameInHeader = freezed,Object? metadata = null,Object? theme = freezed,}) {
  return _then(_StoreDecoration(
primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as int,onPrimary: null == onPrimary ? _self.onPrimary : onPrimary // ignore: cast_nullable_to_non_nullable
as int,primaryDark: null == primaryDark ? _self.primaryDark : primaryDark // ignore: cast_nullable_to_non_nullable
as int,onPrimaryDark: null == onPrimaryDark ? _self.onPrimaryDark : onPrimaryDark // ignore: cast_nullable_to_non_nullable
as int,secondary: null == secondary ? _self.secondary : secondary // ignore: cast_nullable_to_non_nullable
as int,onSecondary: null == onSecondary ? _self.onSecondary : onSecondary // ignore: cast_nullable_to_non_nullable
as int,secondaryDark: null == secondaryDark ? _self.secondaryDark : secondaryDark // ignore: cast_nullable_to_non_nullable
as int,onSecondaryDark: null == onSecondaryDark ? _self.onSecondaryDark : onSecondaryDark // ignore: cast_nullable_to_non_nullable
as int,useLogoDarkFilter: null == useLogoDarkFilter ? _self.useLogoDarkFilter : useLogoDarkFilter // ignore: cast_nullable_to_non_nullable
as bool,showStoreLogoInHeader: freezed == showStoreLogoInHeader ? _self.showStoreLogoInHeader : showStoreLogoInHeader // ignore: cast_nullable_to_non_nullable
as bool?,logoFullHeight: freezed == logoFullHeight ? _self.logoFullHeight : logoFullHeight // ignore: cast_nullable_to_non_nullable
as bool?,showStoreNameInHeader: freezed == showStoreNameInHeader ? _self.showStoreNameInHeader : showStoreNameInHeader // ignore: cast_nullable_to_non_nullable
as bool?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,theme: freezed == theme ? _self._theme : theme // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$StoreAction {

 String get label; String get url; StoreActionType get type;
/// Create a copy of StoreAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreActionCopyWith<StoreAction> get copyWith => _$StoreActionCopyWithImpl<StoreAction>(this as StoreAction, _$identity);

  /// Serializes this StoreAction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreAction&&(identical(other.label, label) || other.label == label)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,url,type);

@override
String toString() {
  return 'StoreAction(label: $label, url: $url, type: $type)';
}


}

/// @nodoc
abstract mixin class $StoreActionCopyWith<$Res>  {
  factory $StoreActionCopyWith(StoreAction value, $Res Function(StoreAction) _then) = _$StoreActionCopyWithImpl;
@useResult
$Res call({
 String label, String url, StoreActionType type
});




}
/// @nodoc
class _$StoreActionCopyWithImpl<$Res>
    implements $StoreActionCopyWith<$Res> {
  _$StoreActionCopyWithImpl(this._self, this._then);

  final StoreAction _self;
  final $Res Function(StoreAction) _then;

/// Create a copy of StoreAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? url = null,Object? type = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StoreActionType,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreAction].
extension StoreActionPatterns on StoreAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreAction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreAction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreAction value)  $default,){
final _that = this;
switch (_that) {
case _StoreAction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreAction value)?  $default,){
final _that = this;
switch (_that) {
case _StoreAction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  String url,  StoreActionType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreAction() when $default != null:
return $default(_that.label,_that.url,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  String url,  StoreActionType type)  $default,) {final _that = this;
switch (_that) {
case _StoreAction():
return $default(_that.label,_that.url,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  String url,  StoreActionType type)?  $default,) {final _that = this;
switch (_that) {
case _StoreAction() when $default != null:
return $default(_that.label,_that.url,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreAction implements StoreAction {
   _StoreAction({required this.label, required this.url, required this.type});
  factory _StoreAction.fromJson(Map<String, dynamic> json) => _$StoreActionFromJson(json);

@override final  String label;
@override final  String url;
@override final  StoreActionType type;

/// Create a copy of StoreAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreActionCopyWith<_StoreAction> get copyWith => __$StoreActionCopyWithImpl<_StoreAction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreActionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreAction&&(identical(other.label, label) || other.label == label)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,url,type);

@override
String toString() {
  return 'StoreAction(label: $label, url: $url, type: $type)';
}


}

/// @nodoc
abstract mixin class _$StoreActionCopyWith<$Res> implements $StoreActionCopyWith<$Res> {
  factory _$StoreActionCopyWith(_StoreAction value, $Res Function(_StoreAction) _then) = __$StoreActionCopyWithImpl;
@override @useResult
$Res call({
 String label, String url, StoreActionType type
});




}
/// @nodoc
class __$StoreActionCopyWithImpl<$Res>
    implements _$StoreActionCopyWith<$Res> {
  __$StoreActionCopyWithImpl(this._self, this._then);

  final _StoreAction _self;
  final $Res Function(_StoreAction) _then;

/// Create a copy of StoreAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? url = null,Object? type = null,}) {
  return _then(_StoreAction(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StoreActionType,
  ));
}


}


/// @nodoc
mixin _$EmbaddedAddress {

 String? get city; String? get state; String? get country; String? get street; String? get zip; EmbaddedLocation? get location; Map<String, dynamic> get metadata;
/// Create a copy of EmbaddedAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmbaddedAddressCopyWith<EmbaddedAddress> get copyWith => _$EmbaddedAddressCopyWithImpl<EmbaddedAddress>(this as EmbaddedAddress, _$identity);

  /// Serializes this EmbaddedAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmbaddedAddress&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.street, street) || other.street == street)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,state,country,street,zip,location,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'EmbaddedAddress(city: $city, state: $state, country: $country, street: $street, zip: $zip, location: $location, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $EmbaddedAddressCopyWith<$Res>  {
  factory $EmbaddedAddressCopyWith(EmbaddedAddress value, $Res Function(EmbaddedAddress) _then) = _$EmbaddedAddressCopyWithImpl;
@useResult
$Res call({
 String? city, String? state, String? country, String? street, String? zip, EmbaddedLocation? location, Map<String, dynamic> metadata
});


$EmbaddedLocationCopyWith<$Res>? get location;

}
/// @nodoc
class _$EmbaddedAddressCopyWithImpl<$Res>
    implements $EmbaddedAddressCopyWith<$Res> {
  _$EmbaddedAddressCopyWithImpl(this._self, this._then);

  final EmbaddedAddress _self;
  final $Res Function(EmbaddedAddress) _then;

/// Create a copy of EmbaddedAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? street = freezed,Object? zip = freezed,Object? location = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,zip: freezed == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as EmbaddedLocation?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of EmbaddedAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $EmbaddedLocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmbaddedAddress].
extension EmbaddedAddressPatterns on EmbaddedAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmbaddedAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmbaddedAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmbaddedAddress value)  $default,){
final _that = this;
switch (_that) {
case _EmbaddedAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmbaddedAddress value)?  $default,){
final _that = this;
switch (_that) {
case _EmbaddedAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? city,  String? state,  String? country,  String? street,  String? zip,  EmbaddedLocation? location,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmbaddedAddress() when $default != null:
return $default(_that.city,_that.state,_that.country,_that.street,_that.zip,_that.location,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? city,  String? state,  String? country,  String? street,  String? zip,  EmbaddedLocation? location,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _EmbaddedAddress():
return $default(_that.city,_that.state,_that.country,_that.street,_that.zip,_that.location,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? city,  String? state,  String? country,  String? street,  String? zip,  EmbaddedLocation? location,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _EmbaddedAddress() when $default != null:
return $default(_that.city,_that.state,_that.country,_that.street,_that.zip,_that.location,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmbaddedAddress implements EmbaddedAddress {
   _EmbaddedAddress({this.city, this.state, this.country, this.street, this.zip, this.location, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _EmbaddedAddress.fromJson(Map<String, dynamic> json) => _$EmbaddedAddressFromJson(json);

@override final  String? city;
@override final  String? state;
@override final  String? country;
@override final  String? street;
@override final  String? zip;
@override final  EmbaddedLocation? location;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of EmbaddedAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmbaddedAddressCopyWith<_EmbaddedAddress> get copyWith => __$EmbaddedAddressCopyWithImpl<_EmbaddedAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmbaddedAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmbaddedAddress&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.street, street) || other.street == street)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,state,country,street,zip,location,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'EmbaddedAddress(city: $city, state: $state, country: $country, street: $street, zip: $zip, location: $location, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$EmbaddedAddressCopyWith<$Res> implements $EmbaddedAddressCopyWith<$Res> {
  factory _$EmbaddedAddressCopyWith(_EmbaddedAddress value, $Res Function(_EmbaddedAddress) _then) = __$EmbaddedAddressCopyWithImpl;
@override @useResult
$Res call({
 String? city, String? state, String? country, String? street, String? zip, EmbaddedLocation? location, Map<String, dynamic> metadata
});


@override $EmbaddedLocationCopyWith<$Res>? get location;

}
/// @nodoc
class __$EmbaddedAddressCopyWithImpl<$Res>
    implements _$EmbaddedAddressCopyWith<$Res> {
  __$EmbaddedAddressCopyWithImpl(this._self, this._then);

  final _EmbaddedAddress _self;
  final $Res Function(_EmbaddedAddress) _then;

/// Create a copy of EmbaddedAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? street = freezed,Object? zip = freezed,Object? location = freezed,Object? metadata = null,}) {
  return _then(_EmbaddedAddress(
city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,zip: freezed == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as EmbaddedLocation?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of EmbaddedAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbaddedLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $EmbaddedLocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
mixin _$EmbaddedLocation {

 String? get geohash; double get lat; double get long;
/// Create a copy of EmbaddedLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmbaddedLocationCopyWith<EmbaddedLocation> get copyWith => _$EmbaddedLocationCopyWithImpl<EmbaddedLocation>(this as EmbaddedLocation, _$identity);

  /// Serializes this EmbaddedLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmbaddedLocation&&(identical(other.geohash, geohash) || other.geohash == geohash)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,geohash,lat,long);

@override
String toString() {
  return 'EmbaddedLocation(geohash: $geohash, lat: $lat, long: $long)';
}


}

/// @nodoc
abstract mixin class $EmbaddedLocationCopyWith<$Res>  {
  factory $EmbaddedLocationCopyWith(EmbaddedLocation value, $Res Function(EmbaddedLocation) _then) = _$EmbaddedLocationCopyWithImpl;
@useResult
$Res call({
 String? geohash, double lat, double long
});




}
/// @nodoc
class _$EmbaddedLocationCopyWithImpl<$Res>
    implements $EmbaddedLocationCopyWith<$Res> {
  _$EmbaddedLocationCopyWithImpl(this._self, this._then);

  final EmbaddedLocation _self;
  final $Res Function(EmbaddedLocation) _then;

/// Create a copy of EmbaddedLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? geohash = freezed,Object? lat = null,Object? long = null,}) {
  return _then(_self.copyWith(
geohash: freezed == geohash ? _self.geohash : geohash // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,long: null == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [EmbaddedLocation].
extension EmbaddedLocationPatterns on EmbaddedLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmbaddedLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmbaddedLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmbaddedLocation value)  $default,){
final _that = this;
switch (_that) {
case _EmbaddedLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmbaddedLocation value)?  $default,){
final _that = this;
switch (_that) {
case _EmbaddedLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? geohash,  double lat,  double long)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmbaddedLocation() when $default != null:
return $default(_that.geohash,_that.lat,_that.long);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? geohash,  double lat,  double long)  $default,) {final _that = this;
switch (_that) {
case _EmbaddedLocation():
return $default(_that.geohash,_that.lat,_that.long);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? geohash,  double lat,  double long)?  $default,) {final _that = this;
switch (_that) {
case _EmbaddedLocation() when $default != null:
return $default(_that.geohash,_that.lat,_that.long);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmbaddedLocation implements EmbaddedLocation {
   _EmbaddedLocation({this.geohash, required this.lat, required this.long});
  factory _EmbaddedLocation.fromJson(Map<String, dynamic> json) => _$EmbaddedLocationFromJson(json);

@override final  String? geohash;
@override final  double lat;
@override final  double long;

/// Create a copy of EmbaddedLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmbaddedLocationCopyWith<_EmbaddedLocation> get copyWith => __$EmbaddedLocationCopyWithImpl<_EmbaddedLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmbaddedLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmbaddedLocation&&(identical(other.geohash, geohash) || other.geohash == geohash)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,geohash,lat,long);

@override
String toString() {
  return 'EmbaddedLocation(geohash: $geohash, lat: $lat, long: $long)';
}


}

/// @nodoc
abstract mixin class _$EmbaddedLocationCopyWith<$Res> implements $EmbaddedLocationCopyWith<$Res> {
  factory _$EmbaddedLocationCopyWith(_EmbaddedLocation value, $Res Function(_EmbaddedLocation) _then) = __$EmbaddedLocationCopyWithImpl;
@override @useResult
$Res call({
 String? geohash, double lat, double long
});




}
/// @nodoc
class __$EmbaddedLocationCopyWithImpl<$Res>
    implements _$EmbaddedLocationCopyWith<$Res> {
  __$EmbaddedLocationCopyWithImpl(this._self, this._then);

  final _EmbaddedLocation _self;
  final $Res Function(_EmbaddedLocation) _then;

/// Create a copy of EmbaddedLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? geohash = freezed,Object? lat = null,Object? long = null,}) {
  return _then(_EmbaddedLocation(
geohash: freezed == geohash ? _self.geohash : geohash // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,long: null == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$EmbaddedContact {

 String? get name; EmbaddedContactType get type; String get value; Map<String, dynamic> get metadata;
/// Create a copy of EmbaddedContact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmbaddedContactCopyWith<EmbaddedContact> get copyWith => _$EmbaddedContactCopyWithImpl<EmbaddedContact>(this as EmbaddedContact, _$identity);

  /// Serializes this EmbaddedContact to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmbaddedContact&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,value,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'EmbaddedContact(name: $name, type: $type, value: $value, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $EmbaddedContactCopyWith<$Res>  {
  factory $EmbaddedContactCopyWith(EmbaddedContact value, $Res Function(EmbaddedContact) _then) = _$EmbaddedContactCopyWithImpl;
@useResult
$Res call({
 String? name, EmbaddedContactType type, String value, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$EmbaddedContactCopyWithImpl<$Res>
    implements $EmbaddedContactCopyWith<$Res> {
  _$EmbaddedContactCopyWithImpl(this._self, this._then);

  final EmbaddedContact _self;
  final $Res Function(EmbaddedContact) _then;

/// Create a copy of EmbaddedContact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? type = null,Object? value = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as EmbaddedContactType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [EmbaddedContact].
extension EmbaddedContactPatterns on EmbaddedContact {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmbaddedContact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmbaddedContact() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmbaddedContact value)  $default,){
final _that = this;
switch (_that) {
case _EmbaddedContact():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmbaddedContact value)?  $default,){
final _that = this;
switch (_that) {
case _EmbaddedContact() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  EmbaddedContactType type,  String value,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmbaddedContact() when $default != null:
return $default(_that.name,_that.type,_that.value,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  EmbaddedContactType type,  String value,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _EmbaddedContact():
return $default(_that.name,_that.type,_that.value,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  EmbaddedContactType type,  String value,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _EmbaddedContact() when $default != null:
return $default(_that.name,_that.type,_that.value,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmbaddedContact implements EmbaddedContact {
   _EmbaddedContact({this.name, required this.type, required this.value, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _EmbaddedContact.fromJson(Map<String, dynamic> json) => _$EmbaddedContactFromJson(json);

@override final  String? name;
@override final  EmbaddedContactType type;
@override final  String value;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of EmbaddedContact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmbaddedContactCopyWith<_EmbaddedContact> get copyWith => __$EmbaddedContactCopyWithImpl<_EmbaddedContact>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmbaddedContactToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmbaddedContact&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,value,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'EmbaddedContact(name: $name, type: $type, value: $value, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$EmbaddedContactCopyWith<$Res> implements $EmbaddedContactCopyWith<$Res> {
  factory _$EmbaddedContactCopyWith(_EmbaddedContact value, $Res Function(_EmbaddedContact) _then) = __$EmbaddedContactCopyWithImpl;
@override @useResult
$Res call({
 String? name, EmbaddedContactType type, String value, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$EmbaddedContactCopyWithImpl<$Res>
    implements _$EmbaddedContactCopyWith<$Res> {
  __$EmbaddedContactCopyWithImpl(this._self, this._then);

  final _EmbaddedContact _self;
  final $Res Function(_EmbaddedContact) _then;

/// Create a copy of EmbaddedContact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? type = null,Object? value = null,Object? metadata = null,}) {
  return _then(_EmbaddedContact(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as EmbaddedContactType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$StoreMember {

 String get userId; String get name; StoreMemberRole get role; DateTime? get acceptedAt; DateTime? get expiredAt; DateTime get createdAt; bool get active; Map<String, dynamic> get metadata;/// Fine-grained permissions; empty = legacy full access for editors.
 List<String> get scopes;
/// Create a copy of StoreMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreMemberCopyWith<StoreMember> get copyWith => _$StoreMemberCopyWithImpl<StoreMember>(this as StoreMember, _$identity);

  /// Serializes this StoreMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreMember&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.expiredAt, expiredAt) || other.expiredAt == expiredAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.scopes, scopes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,role,acceptedAt,expiredAt,createdAt,active,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(scopes));

@override
String toString() {
  return 'StoreMember(userId: $userId, name: $name, role: $role, acceptedAt: $acceptedAt, expiredAt: $expiredAt, createdAt: $createdAt, active: $active, metadata: $metadata, scopes: $scopes)';
}


}

/// @nodoc
abstract mixin class $StoreMemberCopyWith<$Res>  {
  factory $StoreMemberCopyWith(StoreMember value, $Res Function(StoreMember) _then) = _$StoreMemberCopyWithImpl;
@useResult
$Res call({
 String userId, String name, StoreMemberRole role, DateTime? acceptedAt, DateTime? expiredAt, DateTime createdAt, bool active, Map<String, dynamic> metadata, List<String> scopes
});




}
/// @nodoc
class _$StoreMemberCopyWithImpl<$Res>
    implements $StoreMemberCopyWith<$Res> {
  _$StoreMemberCopyWithImpl(this._self, this._then);

  final StoreMember _self;
  final $Res Function(StoreMember) _then;

/// Create a copy of StoreMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? name = null,Object? role = null,Object? acceptedAt = freezed,Object? expiredAt = freezed,Object? createdAt = null,Object? active = null,Object? metadata = null,Object? scopes = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as StoreMemberRole,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,expiredAt: freezed == expiredAt ? _self.expiredAt : expiredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,scopes: null == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreMember].
extension StoreMemberPatterns on StoreMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreMember value)  $default,){
final _that = this;
switch (_that) {
case _StoreMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreMember value)?  $default,){
final _that = this;
switch (_that) {
case _StoreMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String name,  StoreMemberRole role,  DateTime? acceptedAt,  DateTime? expiredAt,  DateTime createdAt,  bool active,  Map<String, dynamic> metadata,  List<String> scopes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreMember() when $default != null:
return $default(_that.userId,_that.name,_that.role,_that.acceptedAt,_that.expiredAt,_that.createdAt,_that.active,_that.metadata,_that.scopes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String name,  StoreMemberRole role,  DateTime? acceptedAt,  DateTime? expiredAt,  DateTime createdAt,  bool active,  Map<String, dynamic> metadata,  List<String> scopes)  $default,) {final _that = this;
switch (_that) {
case _StoreMember():
return $default(_that.userId,_that.name,_that.role,_that.acceptedAt,_that.expiredAt,_that.createdAt,_that.active,_that.metadata,_that.scopes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String name,  StoreMemberRole role,  DateTime? acceptedAt,  DateTime? expiredAt,  DateTime createdAt,  bool active,  Map<String, dynamic> metadata,  List<String> scopes)?  $default,) {final _that = this;
switch (_that) {
case _StoreMember() when $default != null:
return $default(_that.userId,_that.name,_that.role,_that.acceptedAt,_that.expiredAt,_that.createdAt,_that.active,_that.metadata,_that.scopes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreMember implements StoreMember {
   _StoreMember({required this.userId, required this.name, required this.role, this.acceptedAt, this.expiredAt, required this.createdAt, this.active = false, final  Map<String, dynamic> metadata = const {}, final  List<String> scopes = const []}): _metadata = metadata,_scopes = scopes;
  factory _StoreMember.fromJson(Map<String, dynamic> json) => _$StoreMemberFromJson(json);

@override final  String userId;
@override final  String name;
@override final  StoreMemberRole role;
@override final  DateTime? acceptedAt;
@override final  DateTime? expiredAt;
@override final  DateTime createdAt;
@override@JsonKey() final  bool active;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

/// Fine-grained permissions; empty = legacy full access for editors.
 final  List<String> _scopes;
/// Fine-grained permissions; empty = legacy full access for editors.
@override@JsonKey() List<String> get scopes {
  if (_scopes is EqualUnmodifiableListView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scopes);
}


/// Create a copy of StoreMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreMemberCopyWith<_StoreMember> get copyWith => __$StoreMemberCopyWithImpl<_StoreMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreMemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreMember&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.expiredAt, expiredAt) || other.expiredAt == expiredAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._scopes, _scopes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,role,acceptedAt,expiredAt,createdAt,active,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_scopes));

@override
String toString() {
  return 'StoreMember(userId: $userId, name: $name, role: $role, acceptedAt: $acceptedAt, expiredAt: $expiredAt, createdAt: $createdAt, active: $active, metadata: $metadata, scopes: $scopes)';
}


}

/// @nodoc
abstract mixin class _$StoreMemberCopyWith<$Res> implements $StoreMemberCopyWith<$Res> {
  factory _$StoreMemberCopyWith(_StoreMember value, $Res Function(_StoreMember) _then) = __$StoreMemberCopyWithImpl;
@override @useResult
$Res call({
 String userId, String name, StoreMemberRole role, DateTime? acceptedAt, DateTime? expiredAt, DateTime createdAt, bool active, Map<String, dynamic> metadata, List<String> scopes
});




}
/// @nodoc
class __$StoreMemberCopyWithImpl<$Res>
    implements _$StoreMemberCopyWith<$Res> {
  __$StoreMemberCopyWithImpl(this._self, this._then);

  final _StoreMember _self;
  final $Res Function(_StoreMember) _then;

/// Create a copy of StoreMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? name = null,Object? role = null,Object? acceptedAt = freezed,Object? expiredAt = freezed,Object? createdAt = null,Object? active = null,Object? metadata = null,Object? scopes = null,}) {
  return _then(_StoreMember(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as StoreMemberRole,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,expiredAt: freezed == expiredAt ? _self.expiredAt : expiredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,scopes: null == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$StoreInviteStore {

 String get id; String get name; String? get iconUrl; String? get logoUrl;
/// Create a copy of StoreInviteStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreInviteStoreCopyWith<StoreInviteStore> get copyWith => _$StoreInviteStoreCopyWithImpl<StoreInviteStore>(this as StoreInviteStore, _$identity);

  /// Serializes this StoreInviteStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreInviteStore&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,iconUrl,logoUrl);

@override
String toString() {
  return 'StoreInviteStore(id: $id, name: $name, iconUrl: $iconUrl, logoUrl: $logoUrl)';
}


}

/// @nodoc
abstract mixin class $StoreInviteStoreCopyWith<$Res>  {
  factory $StoreInviteStoreCopyWith(StoreInviteStore value, $Res Function(StoreInviteStore) _then) = _$StoreInviteStoreCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? iconUrl, String? logoUrl
});




}
/// @nodoc
class _$StoreInviteStoreCopyWithImpl<$Res>
    implements $StoreInviteStoreCopyWith<$Res> {
  _$StoreInviteStoreCopyWithImpl(this._self, this._then);

  final StoreInviteStore _self;
  final $Res Function(StoreInviteStore) _then;

/// Create a copy of StoreInviteStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? iconUrl = freezed,Object? logoUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreInviteStore].
extension StoreInviteStorePatterns on StoreInviteStore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreInviteStore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreInviteStore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreInviteStore value)  $default,){
final _that = this;
switch (_that) {
case _StoreInviteStore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreInviteStore value)?  $default,){
final _that = this;
switch (_that) {
case _StoreInviteStore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? iconUrl,  String? logoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreInviteStore() when $default != null:
return $default(_that.id,_that.name,_that.iconUrl,_that.logoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? iconUrl,  String? logoUrl)  $default,) {final _that = this;
switch (_that) {
case _StoreInviteStore():
return $default(_that.id,_that.name,_that.iconUrl,_that.logoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? iconUrl,  String? logoUrl)?  $default,) {final _that = this;
switch (_that) {
case _StoreInviteStore() when $default != null:
return $default(_that.id,_that.name,_that.iconUrl,_that.logoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreInviteStore implements StoreInviteStore {
   _StoreInviteStore({required this.id, required this.name, this.iconUrl, this.logoUrl});
  factory _StoreInviteStore.fromJson(Map<String, dynamic> json) => _$StoreInviteStoreFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? iconUrl;
@override final  String? logoUrl;

/// Create a copy of StoreInviteStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreInviteStoreCopyWith<_StoreInviteStore> get copyWith => __$StoreInviteStoreCopyWithImpl<_StoreInviteStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreInviteStoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreInviteStore&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,iconUrl,logoUrl);

@override
String toString() {
  return 'StoreInviteStore(id: $id, name: $name, iconUrl: $iconUrl, logoUrl: $logoUrl)';
}


}

/// @nodoc
abstract mixin class _$StoreInviteStoreCopyWith<$Res> implements $StoreInviteStoreCopyWith<$Res> {
  factory _$StoreInviteStoreCopyWith(_StoreInviteStore value, $Res Function(_StoreInviteStore) _then) = __$StoreInviteStoreCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? iconUrl, String? logoUrl
});




}
/// @nodoc
class __$StoreInviteStoreCopyWithImpl<$Res>
    implements _$StoreInviteStoreCopyWith<$Res> {
  __$StoreInviteStoreCopyWithImpl(this._self, this._then);

  final _StoreInviteStore _self;
  final $Res Function(_StoreInviteStore) _then;

/// Create a copy of StoreInviteStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? iconUrl = freezed,Object? logoUrl = freezed,}) {
  return _then(_StoreInviteStore(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StoreInvite {

 String get id; String get storeId; String get email; StoreMemberRole get role; String get invitedBy; StoreInviteStatus get status; DateTime? get acceptedAt; DateTime get expiresAt; Map<String, dynamic> get metadata; DateTime get createdAt; DateTime get updatedAt; StoreInviteStore? get store;/// Present when listing pending invites for the invitee (accept flow).
 String? get token;/// Copied to [StoreMember.scopes] on accept.
 List<String>? get scopes;
/// Create a copy of StoreInvite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreInviteCopyWith<StoreInvite> get copyWith => _$StoreInviteCopyWithImpl<StoreInvite>(this as StoreInvite, _$identity);

  /// Serializes this StoreInvite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreInvite&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.invitedBy, invitedBy) || other.invitedBy == invitedBy)&&(identical(other.status, status) || other.status == status)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.store, store) || other.store == store)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other.scopes, scopes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,email,role,invitedBy,status,acceptedAt,expiresAt,const DeepCollectionEquality().hash(metadata),createdAt,updatedAt,store,token,const DeepCollectionEquality().hash(scopes));

@override
String toString() {
  return 'StoreInvite(id: $id, storeId: $storeId, email: $email, role: $role, invitedBy: $invitedBy, status: $status, acceptedAt: $acceptedAt, expiresAt: $expiresAt, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt, store: $store, token: $token, scopes: $scopes)';
}


}

/// @nodoc
abstract mixin class $StoreInviteCopyWith<$Res>  {
  factory $StoreInviteCopyWith(StoreInvite value, $Res Function(StoreInvite) _then) = _$StoreInviteCopyWithImpl;
@useResult
$Res call({
 String id, String storeId, String email, StoreMemberRole role, String invitedBy, StoreInviteStatus status, DateTime? acceptedAt, DateTime expiresAt, Map<String, dynamic> metadata, DateTime createdAt, DateTime updatedAt, StoreInviteStore? store, String? token, List<String>? scopes
});


$StoreInviteStoreCopyWith<$Res>? get store;

}
/// @nodoc
class _$StoreInviteCopyWithImpl<$Res>
    implements $StoreInviteCopyWith<$Res> {
  _$StoreInviteCopyWithImpl(this._self, this._then);

  final StoreInvite _self;
  final $Res Function(StoreInvite) _then;

/// Create a copy of StoreInvite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? email = null,Object? role = null,Object? invitedBy = null,Object? status = null,Object? acceptedAt = freezed,Object? expiresAt = null,Object? metadata = null,Object? createdAt = null,Object? updatedAt = null,Object? store = freezed,Object? token = freezed,Object? scopes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as StoreMemberRole,invitedBy: null == invitedBy ? _self.invitedBy : invitedBy // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StoreInviteStatus,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as StoreInviteStore?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,scopes: freezed == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of StoreInvite
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreInviteStoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreInviteStoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreInvite].
extension StoreInvitePatterns on StoreInvite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreInvite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreInvite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreInvite value)  $default,){
final _that = this;
switch (_that) {
case _StoreInvite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreInvite value)?  $default,){
final _that = this;
switch (_that) {
case _StoreInvite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String storeId,  String email,  StoreMemberRole role,  String invitedBy,  StoreInviteStatus status,  DateTime? acceptedAt,  DateTime expiresAt,  Map<String, dynamic> metadata,  DateTime createdAt,  DateTime updatedAt,  StoreInviteStore? store,  String? token,  List<String>? scopes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreInvite() when $default != null:
return $default(_that.id,_that.storeId,_that.email,_that.role,_that.invitedBy,_that.status,_that.acceptedAt,_that.expiresAt,_that.metadata,_that.createdAt,_that.updatedAt,_that.store,_that.token,_that.scopes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String storeId,  String email,  StoreMemberRole role,  String invitedBy,  StoreInviteStatus status,  DateTime? acceptedAt,  DateTime expiresAt,  Map<String, dynamic> metadata,  DateTime createdAt,  DateTime updatedAt,  StoreInviteStore? store,  String? token,  List<String>? scopes)  $default,) {final _that = this;
switch (_that) {
case _StoreInvite():
return $default(_that.id,_that.storeId,_that.email,_that.role,_that.invitedBy,_that.status,_that.acceptedAt,_that.expiresAt,_that.metadata,_that.createdAt,_that.updatedAt,_that.store,_that.token,_that.scopes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String storeId,  String email,  StoreMemberRole role,  String invitedBy,  StoreInviteStatus status,  DateTime? acceptedAt,  DateTime expiresAt,  Map<String, dynamic> metadata,  DateTime createdAt,  DateTime updatedAt,  StoreInviteStore? store,  String? token,  List<String>? scopes)?  $default,) {final _that = this;
switch (_that) {
case _StoreInvite() when $default != null:
return $default(_that.id,_that.storeId,_that.email,_that.role,_that.invitedBy,_that.status,_that.acceptedAt,_that.expiresAt,_that.metadata,_that.createdAt,_that.updatedAt,_that.store,_that.token,_that.scopes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreInvite implements StoreInvite {
   _StoreInvite({required this.id, required this.storeId, required this.email, required this.role, required this.invitedBy, required this.status, this.acceptedAt, required this.expiresAt, final  Map<String, dynamic> metadata = const {}, required this.createdAt, required this.updatedAt, this.store, this.token, final  List<String>? scopes}): _metadata = metadata,_scopes = scopes;
  factory _StoreInvite.fromJson(Map<String, dynamic> json) => _$StoreInviteFromJson(json);

@override final  String id;
@override final  String storeId;
@override final  String email;
@override final  StoreMemberRole role;
@override final  String invitedBy;
@override final  StoreInviteStatus status;
@override final  DateTime? acceptedAt;
@override final  DateTime expiresAt;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  StoreInviteStore? store;
/// Present when listing pending invites for the invitee (accept flow).
@override final  String? token;
/// Copied to [StoreMember.scopes] on accept.
 final  List<String>? _scopes;
/// Copied to [StoreMember.scopes] on accept.
@override List<String>? get scopes {
  final value = _scopes;
  if (value == null) return null;
  if (_scopes is EqualUnmodifiableListView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of StoreInvite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreInviteCopyWith<_StoreInvite> get copyWith => __$StoreInviteCopyWithImpl<_StoreInvite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreInviteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreInvite&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.invitedBy, invitedBy) || other.invitedBy == invitedBy)&&(identical(other.status, status) || other.status == status)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.store, store) || other.store == store)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other._scopes, _scopes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,email,role,invitedBy,status,acceptedAt,expiresAt,const DeepCollectionEquality().hash(_metadata),createdAt,updatedAt,store,token,const DeepCollectionEquality().hash(_scopes));

@override
String toString() {
  return 'StoreInvite(id: $id, storeId: $storeId, email: $email, role: $role, invitedBy: $invitedBy, status: $status, acceptedAt: $acceptedAt, expiresAt: $expiresAt, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt, store: $store, token: $token, scopes: $scopes)';
}


}

/// @nodoc
abstract mixin class _$StoreInviteCopyWith<$Res> implements $StoreInviteCopyWith<$Res> {
  factory _$StoreInviteCopyWith(_StoreInvite value, $Res Function(_StoreInvite) _then) = __$StoreInviteCopyWithImpl;
@override @useResult
$Res call({
 String id, String storeId, String email, StoreMemberRole role, String invitedBy, StoreInviteStatus status, DateTime? acceptedAt, DateTime expiresAt, Map<String, dynamic> metadata, DateTime createdAt, DateTime updatedAt, StoreInviteStore? store, String? token, List<String>? scopes
});


@override $StoreInviteStoreCopyWith<$Res>? get store;

}
/// @nodoc
class __$StoreInviteCopyWithImpl<$Res>
    implements _$StoreInviteCopyWith<$Res> {
  __$StoreInviteCopyWithImpl(this._self, this._then);

  final _StoreInvite _self;
  final $Res Function(_StoreInvite) _then;

/// Create a copy of StoreInvite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? email = null,Object? role = null,Object? invitedBy = null,Object? status = null,Object? acceptedAt = freezed,Object? expiresAt = null,Object? metadata = null,Object? createdAt = null,Object? updatedAt = null,Object? store = freezed,Object? token = freezed,Object? scopes = freezed,}) {
  return _then(_StoreInvite(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as StoreMemberRole,invitedBy: null == invitedBy ? _self.invitedBy : invitedBy // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StoreInviteStatus,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as StoreInviteStore?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,scopes: freezed == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of StoreInvite
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreInviteStoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreInviteStoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

// dart format on
