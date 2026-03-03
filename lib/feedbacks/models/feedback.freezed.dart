// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Feedback {

 String get id; String get userId; String get title; String? get details; List<String> get tags; List<String> get attachments; FeedbackStatus get status; FeedbackPriority get priority; Map<String, dynamic> get metadata; String? get appVersion; List<FeedbackHistoryEvent> get history; DateTime get createdAt; DateTime get updatedAt; DateTime? get resolvedAt;
/// Create a copy of Feedback
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackCopyWith<Feedback> get copyWith => _$FeedbackCopyWithImpl<Feedback>(this as Feedback, _$identity);

  /// Serializes this Feedback to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Feedback&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.details, details) || other.details == details)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&const DeepCollectionEquality().equals(other.history, history)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,details,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(attachments),status,priority,const DeepCollectionEquality().hash(metadata),appVersion,const DeepCollectionEquality().hash(history),createdAt,updatedAt,resolvedAt);

@override
String toString() {
  return 'Feedback(id: $id, userId: $userId, title: $title, details: $details, tags: $tags, attachments: $attachments, status: $status, priority: $priority, metadata: $metadata, appVersion: $appVersion, history: $history, createdAt: $createdAt, updatedAt: $updatedAt, resolvedAt: $resolvedAt)';
}


}

/// @nodoc
abstract mixin class $FeedbackCopyWith<$Res>  {
  factory $FeedbackCopyWith(Feedback value, $Res Function(Feedback) _then) = _$FeedbackCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String title, String? details, List<String> tags, List<String> attachments, FeedbackStatus status, FeedbackPriority priority, Map<String, dynamic> metadata, String? appVersion, List<FeedbackHistoryEvent> history, DateTime createdAt, DateTime updatedAt, DateTime? resolvedAt
});




}
/// @nodoc
class _$FeedbackCopyWithImpl<$Res>
    implements $FeedbackCopyWith<$Res> {
  _$FeedbackCopyWithImpl(this._self, this._then);

  final Feedback _self;
  final $Res Function(Feedback) _then;

/// Create a copy of Feedback
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? title = null,Object? details = freezed,Object? tags = null,Object? attachments = null,Object? status = null,Object? priority = null,Object? metadata = null,Object? appVersion = freezed,Object? history = null,Object? createdAt = null,Object? updatedAt = null,Object? resolvedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeedbackStatus,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as FeedbackPriority,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<FeedbackHistoryEvent>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Feedback].
extension FeedbackPatterns on Feedback {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Feedback value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Feedback() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Feedback value)  $default,){
final _that = this;
switch (_that) {
case _Feedback():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Feedback value)?  $default,){
final _that = this;
switch (_that) {
case _Feedback() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String title,  String? details,  List<String> tags,  List<String> attachments,  FeedbackStatus status,  FeedbackPriority priority,  Map<String, dynamic> metadata,  String? appVersion,  List<FeedbackHistoryEvent> history,  DateTime createdAt,  DateTime updatedAt,  DateTime? resolvedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Feedback() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.details,_that.tags,_that.attachments,_that.status,_that.priority,_that.metadata,_that.appVersion,_that.history,_that.createdAt,_that.updatedAt,_that.resolvedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String title,  String? details,  List<String> tags,  List<String> attachments,  FeedbackStatus status,  FeedbackPriority priority,  Map<String, dynamic> metadata,  String? appVersion,  List<FeedbackHistoryEvent> history,  DateTime createdAt,  DateTime updatedAt,  DateTime? resolvedAt)  $default,) {final _that = this;
switch (_that) {
case _Feedback():
return $default(_that.id,_that.userId,_that.title,_that.details,_that.tags,_that.attachments,_that.status,_that.priority,_that.metadata,_that.appVersion,_that.history,_that.createdAt,_that.updatedAt,_that.resolvedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String title,  String? details,  List<String> tags,  List<String> attachments,  FeedbackStatus status,  FeedbackPriority priority,  Map<String, dynamic> metadata,  String? appVersion,  List<FeedbackHistoryEvent> history,  DateTime createdAt,  DateTime updatedAt,  DateTime? resolvedAt)?  $default,) {final _that = this;
switch (_that) {
case _Feedback() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.details,_that.tags,_that.attachments,_that.status,_that.priority,_that.metadata,_that.appVersion,_that.history,_that.createdAt,_that.updatedAt,_that.resolvedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Feedback extends Feedback {
   _Feedback({required this.id, required this.userId, required this.title, this.details, final  List<String> tags = const [], final  List<String> attachments = const [], this.status = FeedbackStatus.pending, this.priority = FeedbackPriority.medium, final  Map<String, dynamic> metadata = const {}, this.appVersion, final  List<FeedbackHistoryEvent> history = const [], required this.createdAt, required this.updatedAt, this.resolvedAt}): _tags = tags,_attachments = attachments,_metadata = metadata,_history = history,super._();
  factory _Feedback.fromJson(Map<String, dynamic> json) => _$FeedbackFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String title;
@override final  String? details;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<String> _attachments;
@override@JsonKey() List<String> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

@override@JsonKey() final  FeedbackStatus status;
@override@JsonKey() final  FeedbackPriority priority;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override final  String? appVersion;
 final  List<FeedbackHistoryEvent> _history;
@override@JsonKey() List<FeedbackHistoryEvent> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  DateTime? resolvedAt;

/// Create a copy of Feedback
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackCopyWith<_Feedback> get copyWith => __$FeedbackCopyWithImpl<_Feedback>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Feedback&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.details, details) || other.details == details)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&const DeepCollectionEquality().equals(other._history, _history)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,details,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_attachments),status,priority,const DeepCollectionEquality().hash(_metadata),appVersion,const DeepCollectionEquality().hash(_history),createdAt,updatedAt,resolvedAt);

@override
String toString() {
  return 'Feedback(id: $id, userId: $userId, title: $title, details: $details, tags: $tags, attachments: $attachments, status: $status, priority: $priority, metadata: $metadata, appVersion: $appVersion, history: $history, createdAt: $createdAt, updatedAt: $updatedAt, resolvedAt: $resolvedAt)';
}


}

/// @nodoc
abstract mixin class _$FeedbackCopyWith<$Res> implements $FeedbackCopyWith<$Res> {
  factory _$FeedbackCopyWith(_Feedback value, $Res Function(_Feedback) _then) = __$FeedbackCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String title, String? details, List<String> tags, List<String> attachments, FeedbackStatus status, FeedbackPriority priority, Map<String, dynamic> metadata, String? appVersion, List<FeedbackHistoryEvent> history, DateTime createdAt, DateTime updatedAt, DateTime? resolvedAt
});




}
/// @nodoc
class __$FeedbackCopyWithImpl<$Res>
    implements _$FeedbackCopyWith<$Res> {
  __$FeedbackCopyWithImpl(this._self, this._then);

  final _Feedback _self;
  final $Res Function(_Feedback) _then;

/// Create a copy of Feedback
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? title = null,Object? details = freezed,Object? tags = null,Object? attachments = null,Object? status = null,Object? priority = null,Object? metadata = null,Object? appVersion = freezed,Object? history = null,Object? createdAt = null,Object? updatedAt = null,Object? resolvedAt = freezed,}) {
  return _then(_Feedback(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeedbackStatus,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as FeedbackPriority,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<FeedbackHistoryEvent>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$FeedbackCreate {

 String? get id; String get title; String? get details; List<String> get tags; List<String> get attachments; FeedbackPriority get priority; Map<String, dynamic> get metadata; String? get appVersion;
/// Create a copy of FeedbackCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackCreateCopyWith<FeedbackCreate> get copyWith => _$FeedbackCreateCopyWithImpl<FeedbackCreate>(this as FeedbackCreate, _$identity);

  /// Serializes this FeedbackCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.details, details) || other.details == details)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.priority, priority) || other.priority == priority)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,details,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(attachments),priority,const DeepCollectionEquality().hash(metadata),appVersion);

@override
String toString() {
  return 'FeedbackCreate(id: $id, title: $title, details: $details, tags: $tags, attachments: $attachments, priority: $priority, metadata: $metadata, appVersion: $appVersion)';
}


}

/// @nodoc
abstract mixin class $FeedbackCreateCopyWith<$Res>  {
  factory $FeedbackCreateCopyWith(FeedbackCreate value, $Res Function(FeedbackCreate) _then) = _$FeedbackCreateCopyWithImpl;
@useResult
$Res call({
 String? id, String title, String? details, List<String> tags, List<String> attachments, FeedbackPriority priority, Map<String, dynamic> metadata, String? appVersion
});




}
/// @nodoc
class _$FeedbackCreateCopyWithImpl<$Res>
    implements $FeedbackCreateCopyWith<$Res> {
  _$FeedbackCreateCopyWithImpl(this._self, this._then);

  final FeedbackCreate _self;
  final $Res Function(FeedbackCreate) _then;

/// Create a copy of FeedbackCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = null,Object? details = freezed,Object? tags = null,Object? attachments = null,Object? priority = null,Object? metadata = null,Object? appVersion = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as FeedbackPriority,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedbackCreate].
extension FeedbackCreatePatterns on FeedbackCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackCreate value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackCreate value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String title,  String? details,  List<String> tags,  List<String> attachments,  FeedbackPriority priority,  Map<String, dynamic> metadata,  String? appVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackCreate() when $default != null:
return $default(_that.id,_that.title,_that.details,_that.tags,_that.attachments,_that.priority,_that.metadata,_that.appVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String title,  String? details,  List<String> tags,  List<String> attachments,  FeedbackPriority priority,  Map<String, dynamic> metadata,  String? appVersion)  $default,) {final _that = this;
switch (_that) {
case _FeedbackCreate():
return $default(_that.id,_that.title,_that.details,_that.tags,_that.attachments,_that.priority,_that.metadata,_that.appVersion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String title,  String? details,  List<String> tags,  List<String> attachments,  FeedbackPriority priority,  Map<String, dynamic> metadata,  String? appVersion)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackCreate() when $default != null:
return $default(_that.id,_that.title,_that.details,_that.tags,_that.attachments,_that.priority,_that.metadata,_that.appVersion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedbackCreate implements FeedbackCreate {
  const _FeedbackCreate({this.id, required this.title, this.details, final  List<String> tags = const [], final  List<String> attachments = const [], this.priority = FeedbackPriority.medium, final  Map<String, dynamic> metadata = const {}, this.appVersion}): _tags = tags,_attachments = attachments,_metadata = metadata;
  factory _FeedbackCreate.fromJson(Map<String, dynamic> json) => _$FeedbackCreateFromJson(json);

@override final  String? id;
@override final  String title;
@override final  String? details;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<String> _attachments;
@override@JsonKey() List<String> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

@override@JsonKey() final  FeedbackPriority priority;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override final  String? appVersion;

/// Create a copy of FeedbackCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackCreateCopyWith<_FeedbackCreate> get copyWith => __$FeedbackCreateCopyWithImpl<_FeedbackCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedbackCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.details, details) || other.details == details)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.priority, priority) || other.priority == priority)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,details,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_attachments),priority,const DeepCollectionEquality().hash(_metadata),appVersion);

@override
String toString() {
  return 'FeedbackCreate(id: $id, title: $title, details: $details, tags: $tags, attachments: $attachments, priority: $priority, metadata: $metadata, appVersion: $appVersion)';
}


}

/// @nodoc
abstract mixin class _$FeedbackCreateCopyWith<$Res> implements $FeedbackCreateCopyWith<$Res> {
  factory _$FeedbackCreateCopyWith(_FeedbackCreate value, $Res Function(_FeedbackCreate) _then) = __$FeedbackCreateCopyWithImpl;
@override @useResult
$Res call({
 String? id, String title, String? details, List<String> tags, List<String> attachments, FeedbackPriority priority, Map<String, dynamic> metadata, String? appVersion
});




}
/// @nodoc
class __$FeedbackCreateCopyWithImpl<$Res>
    implements _$FeedbackCreateCopyWith<$Res> {
  __$FeedbackCreateCopyWithImpl(this._self, this._then);

  final _FeedbackCreate _self;
  final $Res Function(_FeedbackCreate) _then;

/// Create a copy of FeedbackCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = null,Object? details = freezed,Object? tags = null,Object? attachments = null,Object? priority = null,Object? metadata = null,Object? appVersion = freezed,}) {
  return _then(_FeedbackCreate(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as FeedbackPriority,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FeedbackUpdate {

 String? get title; String? get details; List<String>? get tags; List<String>? get attachments; FeedbackPriority? get priority; Map<String, dynamic>? get metadata; String? get appVersion; String? get comment;// For adding comments
@JsonKey(includeFromJson: false) List<String> get setToNull;
/// Create a copy of FeedbackUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackUpdateCopyWith<FeedbackUpdate> get copyWith => _$FeedbackUpdateCopyWithImpl<FeedbackUpdate>(this as FeedbackUpdate, _$identity);

  /// Serializes this FeedbackUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackUpdate&&(identical(other.title, title) || other.title == title)&&(identical(other.details, details) || other.details == details)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.priority, priority) || other.priority == priority)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,details,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(attachments),priority,const DeepCollectionEquality().hash(metadata),appVersion,comment,const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'FeedbackUpdate(title: $title, details: $details, tags: $tags, attachments: $attachments, priority: $priority, metadata: $metadata, appVersion: $appVersion, comment: $comment, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $FeedbackUpdateCopyWith<$Res>  {
  factory $FeedbackUpdateCopyWith(FeedbackUpdate value, $Res Function(FeedbackUpdate) _then) = _$FeedbackUpdateCopyWithImpl;
@useResult
$Res call({
 String? title, String? details, List<String>? tags, List<String>? attachments, FeedbackPriority? priority, Map<String, dynamic>? metadata, String? appVersion, String? comment,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class _$FeedbackUpdateCopyWithImpl<$Res>
    implements $FeedbackUpdateCopyWith<$Res> {
  _$FeedbackUpdateCopyWithImpl(this._self, this._then);

  final FeedbackUpdate _self;
  final $Res Function(FeedbackUpdate) _then;

/// Create a copy of FeedbackUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? details = freezed,Object? tags = freezed,Object? attachments = freezed,Object? priority = freezed,Object? metadata = freezed,Object? appVersion = freezed,Object? comment = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as FeedbackPriority?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedbackUpdate].
extension FeedbackUpdatePatterns on FeedbackUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackUpdate value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? details,  List<String>? tags,  List<String>? attachments,  FeedbackPriority? priority,  Map<String, dynamic>? metadata,  String? appVersion,  String? comment, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackUpdate() when $default != null:
return $default(_that.title,_that.details,_that.tags,_that.attachments,_that.priority,_that.metadata,_that.appVersion,_that.comment,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? details,  List<String>? tags,  List<String>? attachments,  FeedbackPriority? priority,  Map<String, dynamic>? metadata,  String? appVersion,  String? comment, @JsonKey(includeFromJson: false)  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _FeedbackUpdate():
return $default(_that.title,_that.details,_that.tags,_that.attachments,_that.priority,_that.metadata,_that.appVersion,_that.comment,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? details,  List<String>? tags,  List<String>? attachments,  FeedbackPriority? priority,  Map<String, dynamic>? metadata,  String? appVersion,  String? comment, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackUpdate() when $default != null:
return $default(_that.title,_that.details,_that.tags,_that.attachments,_that.priority,_that.metadata,_that.appVersion,_that.comment,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedbackUpdate implements FeedbackUpdate {
  const _FeedbackUpdate({this.title, this.details, final  List<String>? tags, final  List<String>? attachments, this.priority, final  Map<String, dynamic>? metadata, this.appVersion, this.comment, @JsonKey(includeFromJson: false) final  List<String> setToNull = const []}): _tags = tags,_attachments = attachments,_metadata = metadata,_setToNull = setToNull;
  factory _FeedbackUpdate.fromJson(Map<String, dynamic> json) => _$FeedbackUpdateFromJson(json);

@override final  String? title;
@override final  String? details;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _attachments;
@override List<String>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  FeedbackPriority? priority;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? appVersion;
@override final  String? comment;
// For adding comments
 final  List<String> _setToNull;
// For adding comments
@override@JsonKey(includeFromJson: false) List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of FeedbackUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackUpdateCopyWith<_FeedbackUpdate> get copyWith => __$FeedbackUpdateCopyWithImpl<_FeedbackUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedbackUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackUpdate&&(identical(other.title, title) || other.title == title)&&(identical(other.details, details) || other.details == details)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.priority, priority) || other.priority == priority)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,details,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_attachments),priority,const DeepCollectionEquality().hash(_metadata),appVersion,comment,const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'FeedbackUpdate(title: $title, details: $details, tags: $tags, attachments: $attachments, priority: $priority, metadata: $metadata, appVersion: $appVersion, comment: $comment, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$FeedbackUpdateCopyWith<$Res> implements $FeedbackUpdateCopyWith<$Res> {
  factory _$FeedbackUpdateCopyWith(_FeedbackUpdate value, $Res Function(_FeedbackUpdate) _then) = __$FeedbackUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? details, List<String>? tags, List<String>? attachments, FeedbackPriority? priority, Map<String, dynamic>? metadata, String? appVersion, String? comment,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class __$FeedbackUpdateCopyWithImpl<$Res>
    implements _$FeedbackUpdateCopyWith<$Res> {
  __$FeedbackUpdateCopyWithImpl(this._self, this._then);

  final _FeedbackUpdate _self;
  final $Res Function(_FeedbackUpdate) _then;

/// Create a copy of FeedbackUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? details = freezed,Object? tags = freezed,Object? attachments = freezed,Object? priority = freezed,Object? metadata = freezed,Object? appVersion = freezed,Object? comment = freezed,Object? setToNull = null,}) {
  return _then(_FeedbackUpdate(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as FeedbackPriority?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
