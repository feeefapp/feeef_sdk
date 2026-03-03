// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FileObject {

/// The name of the file (without path)
 String get name;/// The full path of the file including name
 String get path;/// The type of object (file/directory)
 String get type;/// The size of the file in bytes
 int? get size;/// Last modified timestamp
 DateTime? get lastModified;/// Optional metadata that needs to be fetched separately
 FileMetadata? get metadata;/// Whether the file is being deleted
 bool get isBeingDeleted;
/// Create a copy of FileObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileObjectCopyWith<FileObject> get copyWith => _$FileObjectCopyWithImpl<FileObject>(this as FileObject, _$identity);

  /// Serializes this FileObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileObject&&(identical(other.name, name) || other.name == name)&&(identical(other.path, path) || other.path == path)&&(identical(other.type, type) || other.type == type)&&(identical(other.size, size) || other.size == size)&&(identical(other.lastModified, lastModified) || other.lastModified == lastModified)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.isBeingDeleted, isBeingDeleted) || other.isBeingDeleted == isBeingDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,path,type,size,lastModified,metadata,isBeingDeleted);

@override
String toString() {
  return 'FileObject(name: $name, path: $path, type: $type, size: $size, lastModified: $lastModified, metadata: $metadata, isBeingDeleted: $isBeingDeleted)';
}


}

/// @nodoc
abstract mixin class $FileObjectCopyWith<$Res>  {
  factory $FileObjectCopyWith(FileObject value, $Res Function(FileObject) _then) = _$FileObjectCopyWithImpl;
@useResult
$Res call({
 String name, String path, String type, int? size, DateTime? lastModified, FileMetadata? metadata, bool isBeingDeleted
});


$FileMetadataCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$FileObjectCopyWithImpl<$Res>
    implements $FileObjectCopyWith<$Res> {
  _$FileObjectCopyWithImpl(this._self, this._then);

  final FileObject _self;
  final $Res Function(FileObject) _then;

/// Create a copy of FileObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? path = null,Object? type = null,Object? size = freezed,Object? lastModified = freezed,Object? metadata = freezed,Object? isBeingDeleted = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,lastModified: freezed == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as FileMetadata?,isBeingDeleted: null == isBeingDeleted ? _self.isBeingDeleted : isBeingDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of FileObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $FileMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [FileObject].
extension FileObjectPatterns on FileObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileObject value)  $default,){
final _that = this;
switch (_that) {
case _FileObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileObject value)?  $default,){
final _that = this;
switch (_that) {
case _FileObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String path,  String type,  int? size,  DateTime? lastModified,  FileMetadata? metadata,  bool isBeingDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileObject() when $default != null:
return $default(_that.name,_that.path,_that.type,_that.size,_that.lastModified,_that.metadata,_that.isBeingDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String path,  String type,  int? size,  DateTime? lastModified,  FileMetadata? metadata,  bool isBeingDeleted)  $default,) {final _that = this;
switch (_that) {
case _FileObject():
return $default(_that.name,_that.path,_that.type,_that.size,_that.lastModified,_that.metadata,_that.isBeingDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String path,  String type,  int? size,  DateTime? lastModified,  FileMetadata? metadata,  bool isBeingDeleted)?  $default,) {final _that = this;
switch (_that) {
case _FileObject() when $default != null:
return $default(_that.name,_that.path,_that.type,_that.size,_that.lastModified,_that.metadata,_that.isBeingDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FileObject extends FileObject {
  const _FileObject({required this.name, required this.path, this.type = 'file', this.size, this.lastModified, this.metadata, this.isBeingDeleted = false}): super._();
  factory _FileObject.fromJson(Map<String, dynamic> json) => _$FileObjectFromJson(json);

/// The name of the file (without path)
@override final  String name;
/// The full path of the file including name
@override final  String path;
/// The type of object (file/directory)
@override@JsonKey() final  String type;
/// The size of the file in bytes
@override final  int? size;
/// Last modified timestamp
@override final  DateTime? lastModified;
/// Optional metadata that needs to be fetched separately
@override final  FileMetadata? metadata;
/// Whether the file is being deleted
@override@JsonKey() final  bool isBeingDeleted;

/// Create a copy of FileObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileObjectCopyWith<_FileObject> get copyWith => __$FileObjectCopyWithImpl<_FileObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileObject&&(identical(other.name, name) || other.name == name)&&(identical(other.path, path) || other.path == path)&&(identical(other.type, type) || other.type == type)&&(identical(other.size, size) || other.size == size)&&(identical(other.lastModified, lastModified) || other.lastModified == lastModified)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.isBeingDeleted, isBeingDeleted) || other.isBeingDeleted == isBeingDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,path,type,size,lastModified,metadata,isBeingDeleted);

@override
String toString() {
  return 'FileObject(name: $name, path: $path, type: $type, size: $size, lastModified: $lastModified, metadata: $metadata, isBeingDeleted: $isBeingDeleted)';
}


}

/// @nodoc
abstract mixin class _$FileObjectCopyWith<$Res> implements $FileObjectCopyWith<$Res> {
  factory _$FileObjectCopyWith(_FileObject value, $Res Function(_FileObject) _then) = __$FileObjectCopyWithImpl;
@override @useResult
$Res call({
 String name, String path, String type, int? size, DateTime? lastModified, FileMetadata? metadata, bool isBeingDeleted
});


@override $FileMetadataCopyWith<$Res>? get metadata;

}
/// @nodoc
class __$FileObjectCopyWithImpl<$Res>
    implements _$FileObjectCopyWith<$Res> {
  __$FileObjectCopyWithImpl(this._self, this._then);

  final _FileObject _self;
  final $Res Function(_FileObject) _then;

/// Create a copy of FileObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? path = null,Object? type = null,Object? size = freezed,Object? lastModified = freezed,Object? metadata = freezed,Object? isBeingDeleted = null,}) {
  return _then(_FileObject(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,lastModified: freezed == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as FileMetadata?,isBeingDeleted: null == isBeingDeleted ? _self.isBeingDeleted : isBeingDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of FileObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $FileMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
mixin _$FileMetadata {

/// Whether the file exists
 bool get exists;/// The full path of the file
 String get path;/// The content type (MIME type)
 String get contentType;/// The size of the file in bytes
 int get size;/// The ETag of the file
 String? get etag;/// Last modified timestamp
 DateTime get lastModified;/// Any additional metadata stored with the file
 Map<String, dynamic>? get extra;
/// Create a copy of FileMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileMetadataCopyWith<FileMetadata> get copyWith => _$FileMetadataCopyWithImpl<FileMetadata>(this as FileMetadata, _$identity);

  /// Serializes this FileMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileMetadata&&(identical(other.exists, exists) || other.exists == exists)&&(identical(other.path, path) || other.path == path)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.size, size) || other.size == size)&&(identical(other.etag, etag) || other.etag == etag)&&(identical(other.lastModified, lastModified) || other.lastModified == lastModified)&&const DeepCollectionEquality().equals(other.extra, extra));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exists,path,contentType,size,etag,lastModified,const DeepCollectionEquality().hash(extra));

@override
String toString() {
  return 'FileMetadata(exists: $exists, path: $path, contentType: $contentType, size: $size, etag: $etag, lastModified: $lastModified, extra: $extra)';
}


}

/// @nodoc
abstract mixin class $FileMetadataCopyWith<$Res>  {
  factory $FileMetadataCopyWith(FileMetadata value, $Res Function(FileMetadata) _then) = _$FileMetadataCopyWithImpl;
@useResult
$Res call({
 bool exists, String path, String contentType, int size, String? etag, DateTime lastModified, Map<String, dynamic>? extra
});




}
/// @nodoc
class _$FileMetadataCopyWithImpl<$Res>
    implements $FileMetadataCopyWith<$Res> {
  _$FileMetadataCopyWithImpl(this._self, this._then);

  final FileMetadata _self;
  final $Res Function(FileMetadata) _then;

/// Create a copy of FileMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exists = null,Object? path = null,Object? contentType = null,Object? size = null,Object? etag = freezed,Object? lastModified = null,Object? extra = freezed,}) {
  return _then(_self.copyWith(
exists: null == exists ? _self.exists : exists // ignore: cast_nullable_to_non_nullable
as bool,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,etag: freezed == etag ? _self.etag : etag // ignore: cast_nullable_to_non_nullable
as String?,lastModified: null == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as DateTime,extra: freezed == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FileMetadata].
extension FileMetadataPatterns on FileMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileMetadata value)  $default,){
final _that = this;
switch (_that) {
case _FileMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _FileMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool exists,  String path,  String contentType,  int size,  String? etag,  DateTime lastModified,  Map<String, dynamic>? extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileMetadata() when $default != null:
return $default(_that.exists,_that.path,_that.contentType,_that.size,_that.etag,_that.lastModified,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool exists,  String path,  String contentType,  int size,  String? etag,  DateTime lastModified,  Map<String, dynamic>? extra)  $default,) {final _that = this;
switch (_that) {
case _FileMetadata():
return $default(_that.exists,_that.path,_that.contentType,_that.size,_that.etag,_that.lastModified,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool exists,  String path,  String contentType,  int size,  String? etag,  DateTime lastModified,  Map<String, dynamic>? extra)?  $default,) {final _that = this;
switch (_that) {
case _FileMetadata() when $default != null:
return $default(_that.exists,_that.path,_that.contentType,_that.size,_that.etag,_that.lastModified,_that.extra);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FileMetadata implements FileMetadata {
  const _FileMetadata({required this.exists, required this.path, required this.contentType, required this.size, this.etag, required this.lastModified, final  Map<String, dynamic>? extra}): _extra = extra;
  factory _FileMetadata.fromJson(Map<String, dynamic> json) => _$FileMetadataFromJson(json);

/// Whether the file exists
@override final  bool exists;
/// The full path of the file
@override final  String path;
/// The content type (MIME type)
@override final  String contentType;
/// The size of the file in bytes
@override final  int size;
/// The ETag of the file
@override final  String? etag;
/// Last modified timestamp
@override final  DateTime lastModified;
/// Any additional metadata stored with the file
 final  Map<String, dynamic>? _extra;
/// Any additional metadata stored with the file
@override Map<String, dynamic>? get extra {
  final value = _extra;
  if (value == null) return null;
  if (_extra is EqualUnmodifiableMapView) return _extra;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of FileMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileMetadataCopyWith<_FileMetadata> get copyWith => __$FileMetadataCopyWithImpl<_FileMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileMetadata&&(identical(other.exists, exists) || other.exists == exists)&&(identical(other.path, path) || other.path == path)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.size, size) || other.size == size)&&(identical(other.etag, etag) || other.etag == etag)&&(identical(other.lastModified, lastModified) || other.lastModified == lastModified)&&const DeepCollectionEquality().equals(other._extra, _extra));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exists,path,contentType,size,etag,lastModified,const DeepCollectionEquality().hash(_extra));

@override
String toString() {
  return 'FileMetadata(exists: $exists, path: $path, contentType: $contentType, size: $size, etag: $etag, lastModified: $lastModified, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$FileMetadataCopyWith<$Res> implements $FileMetadataCopyWith<$Res> {
  factory _$FileMetadataCopyWith(_FileMetadata value, $Res Function(_FileMetadata) _then) = __$FileMetadataCopyWithImpl;
@override @useResult
$Res call({
 bool exists, String path, String contentType, int size, String? etag, DateTime lastModified, Map<String, dynamic>? extra
});




}
/// @nodoc
class __$FileMetadataCopyWithImpl<$Res>
    implements _$FileMetadataCopyWith<$Res> {
  __$FileMetadataCopyWithImpl(this._self, this._then);

  final _FileMetadata _self;
  final $Res Function(_FileMetadata) _then;

/// Create a copy of FileMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exists = null,Object? path = null,Object? contentType = null,Object? size = null,Object? etag = freezed,Object? lastModified = null,Object? extra = freezed,}) {
  return _then(_FileMetadata(
exists: null == exists ? _self.exists : exists // ignore: cast_nullable_to_non_nullable
as bool,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,etag: freezed == etag ? _self.etag : etag // ignore: cast_nullable_to_non_nullable
as String?,lastModified: null == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as DateTime,extra: freezed == extra ? _self._extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$FileListResponse {

 List<FileObject> get objects; String? get paginationToken;
/// Create a copy of FileListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileListResponseCopyWith<FileListResponse> get copyWith => _$FileListResponseCopyWithImpl<FileListResponse>(this as FileListResponse, _$identity);

  /// Serializes this FileListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileListResponse&&const DeepCollectionEquality().equals(other.objects, objects)&&(identical(other.paginationToken, paginationToken) || other.paginationToken == paginationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(objects),paginationToken);

@override
String toString() {
  return 'FileListResponse(objects: $objects, paginationToken: $paginationToken)';
}


}

/// @nodoc
abstract mixin class $FileListResponseCopyWith<$Res>  {
  factory $FileListResponseCopyWith(FileListResponse value, $Res Function(FileListResponse) _then) = _$FileListResponseCopyWithImpl;
@useResult
$Res call({
 List<FileObject> objects, String? paginationToken
});




}
/// @nodoc
class _$FileListResponseCopyWithImpl<$Res>
    implements $FileListResponseCopyWith<$Res> {
  _$FileListResponseCopyWithImpl(this._self, this._then);

  final FileListResponse _self;
  final $Res Function(FileListResponse) _then;

/// Create a copy of FileListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objects = null,Object? paginationToken = freezed,}) {
  return _then(_self.copyWith(
objects: null == objects ? _self.objects : objects // ignore: cast_nullable_to_non_nullable
as List<FileObject>,paginationToken: freezed == paginationToken ? _self.paginationToken : paginationToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FileListResponse].
extension FileListResponsePatterns on FileListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileListResponse value)  $default,){
final _that = this;
switch (_that) {
case _FileListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FileListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FileObject> objects,  String? paginationToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileListResponse() when $default != null:
return $default(_that.objects,_that.paginationToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FileObject> objects,  String? paginationToken)  $default,) {final _that = this;
switch (_that) {
case _FileListResponse():
return $default(_that.objects,_that.paginationToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FileObject> objects,  String? paginationToken)?  $default,) {final _that = this;
switch (_that) {
case _FileListResponse() when $default != null:
return $default(_that.objects,_that.paginationToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FileListResponse implements FileListResponse {
  const _FileListResponse({required final  List<FileObject> objects, this.paginationToken}): _objects = objects;
  factory _FileListResponse.fromJson(Map<String, dynamic> json) => _$FileListResponseFromJson(json);

 final  List<FileObject> _objects;
@override List<FileObject> get objects {
  if (_objects is EqualUnmodifiableListView) return _objects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_objects);
}

@override final  String? paginationToken;

/// Create a copy of FileListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileListResponseCopyWith<_FileListResponse> get copyWith => __$FileListResponseCopyWithImpl<_FileListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileListResponse&&const DeepCollectionEquality().equals(other._objects, _objects)&&(identical(other.paginationToken, paginationToken) || other.paginationToken == paginationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_objects),paginationToken);

@override
String toString() {
  return 'FileListResponse(objects: $objects, paginationToken: $paginationToken)';
}


}

/// @nodoc
abstract mixin class _$FileListResponseCopyWith<$Res> implements $FileListResponseCopyWith<$Res> {
  factory _$FileListResponseCopyWith(_FileListResponse value, $Res Function(_FileListResponse) _then) = __$FileListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<FileObject> objects, String? paginationToken
});




}
/// @nodoc
class __$FileListResponseCopyWithImpl<$Res>
    implements _$FileListResponseCopyWith<$Res> {
  __$FileListResponseCopyWithImpl(this._self, this._then);

  final _FileListResponse _self;
  final $Res Function(_FileListResponse) _then;

/// Create a copy of FileListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objects = null,Object? paginationToken = freezed,}) {
  return _then(_FileListResponse(
objects: null == objects ? _self._objects : objects // ignore: cast_nullable_to_non_nullable
as List<FileObject>,paginationToken: freezed == paginationToken ? _self.paginationToken : paginationToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
