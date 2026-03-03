// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deposit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Deposit {

 String get id; DateTime get createdAt; DateTime get updatedAt; String? get externalId; String get userId; num get amount; String get currency; String? get paymentMethod; String? get attachment; DepositStatus get status; String? get note; Map<String, dynamic> get metadata; List<DepositHistory> get history;
/// Create a copy of Deposit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepositCopyWith<Deposit> get copyWith => _$DepositCopyWithImpl<Deposit>(this as Deposit, _$identity);

  /// Serializes this Deposit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Deposit&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.attachment, attachment) || other.attachment == attachment)&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.history, history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,externalId,userId,amount,currency,paymentMethod,attachment,status,note,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'Deposit(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, externalId: $externalId, userId: $userId, amount: $amount, currency: $currency, paymentMethod: $paymentMethod, attachment: $attachment, status: $status, note: $note, metadata: $metadata, history: $history)';
}


}

/// @nodoc
abstract mixin class $DepositCopyWith<$Res>  {
  factory $DepositCopyWith(Deposit value, $Res Function(Deposit) _then) = _$DepositCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String? externalId, String userId, num amount, String currency, String? paymentMethod, String? attachment, DepositStatus status, String? note, Map<String, dynamic> metadata, List<DepositHistory> history
});




}
/// @nodoc
class _$DepositCopyWithImpl<$Res>
    implements $DepositCopyWith<$Res> {
  _$DepositCopyWithImpl(this._self, this._then);

  final Deposit _self;
  final $Res Function(Deposit) _then;

/// Create a copy of Deposit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? externalId = freezed,Object? userId = null,Object? amount = null,Object? currency = null,Object? paymentMethod = freezed,Object? attachment = freezed,Object? status = null,Object? note = freezed,Object? metadata = null,Object? history = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DepositStatus,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<DepositHistory>,
  ));
}

}


/// Adds pattern-matching-related methods to [Deposit].
extension DepositPatterns on Deposit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Deposit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Deposit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Deposit value)  $default,){
final _that = this;
switch (_that) {
case _Deposit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Deposit value)?  $default,){
final _that = this;
switch (_that) {
case _Deposit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String? externalId,  String userId,  num amount,  String currency,  String? paymentMethod,  String? attachment,  DepositStatus status,  String? note,  Map<String, dynamic> metadata,  List<DepositHistory> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Deposit() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.externalId,_that.userId,_that.amount,_that.currency,_that.paymentMethod,_that.attachment,_that.status,_that.note,_that.metadata,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String? externalId,  String userId,  num amount,  String currency,  String? paymentMethod,  String? attachment,  DepositStatus status,  String? note,  Map<String, dynamic> metadata,  List<DepositHistory> history)  $default,) {final _that = this;
switch (_that) {
case _Deposit():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.externalId,_that.userId,_that.amount,_that.currency,_that.paymentMethod,_that.attachment,_that.status,_that.note,_that.metadata,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String? externalId,  String userId,  num amount,  String currency,  String? paymentMethod,  String? attachment,  DepositStatus status,  String? note,  Map<String, dynamic> metadata,  List<DepositHistory> history)?  $default,) {final _that = this;
switch (_that) {
case _Deposit() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.externalId,_that.userId,_that.amount,_that.currency,_that.paymentMethod,_that.attachment,_that.status,_that.note,_that.metadata,_that.history);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Deposit extends Deposit {
   _Deposit({required this.id, required this.createdAt, required this.updatedAt, this.externalId, required this.userId, required this.amount, required this.currency, this.paymentMethod, this.attachment, this.status = DepositStatus.pending, this.note, final  Map<String, dynamic> metadata = const {}, final  List<DepositHistory> history = const []}): _metadata = metadata,_history = history,super._();
  factory _Deposit.fromJson(Map<String, dynamic> json) => _$DepositFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String? externalId;
@override final  String userId;
@override final  num amount;
@override final  String currency;
@override final  String? paymentMethod;
@override final  String? attachment;
@override@JsonKey() final  DepositStatus status;
@override final  String? note;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

 final  List<DepositHistory> _history;
@override@JsonKey() List<DepositHistory> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of Deposit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepositCopyWith<_Deposit> get copyWith => __$DepositCopyWithImpl<_Deposit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepositToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Deposit&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.attachment, attachment) || other.attachment == attachment)&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._history, _history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,externalId,userId,amount,currency,paymentMethod,attachment,status,note,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'Deposit(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, externalId: $externalId, userId: $userId, amount: $amount, currency: $currency, paymentMethod: $paymentMethod, attachment: $attachment, status: $status, note: $note, metadata: $metadata, history: $history)';
}


}

/// @nodoc
abstract mixin class _$DepositCopyWith<$Res> implements $DepositCopyWith<$Res> {
  factory _$DepositCopyWith(_Deposit value, $Res Function(_Deposit) _then) = __$DepositCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String? externalId, String userId, num amount, String currency, String? paymentMethod, String? attachment, DepositStatus status, String? note, Map<String, dynamic> metadata, List<DepositHistory> history
});




}
/// @nodoc
class __$DepositCopyWithImpl<$Res>
    implements _$DepositCopyWith<$Res> {
  __$DepositCopyWithImpl(this._self, this._then);

  final _Deposit _self;
  final $Res Function(_Deposit) _then;

/// Create a copy of Deposit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? externalId = freezed,Object? userId = null,Object? amount = null,Object? currency = null,Object? paymentMethod = freezed,Object? attachment = freezed,Object? status = null,Object? note = freezed,Object? metadata = null,Object? history = null,}) {
  return _then(_Deposit(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DepositStatus,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<DepositHistory>,
  ));
}


}


/// @nodoc
mixin _$DepositCreate {

 String? get id; String? get externalId; String get userId; num get amount; String get currency; String? get paymentMethod; String? get attachment; DepositStatus get status; String? get note; Map<String, dynamic> get metadata;
/// Create a copy of DepositCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepositCreateCopyWith<DepositCreate> get copyWith => _$DepositCreateCopyWithImpl<DepositCreate>(this as DepositCreate, _$identity);

  /// Serializes this DepositCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepositCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.attachment, attachment) || other.attachment == attachment)&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,externalId,userId,amount,currency,paymentMethod,attachment,status,note,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'DepositCreate(id: $id, externalId: $externalId, userId: $userId, amount: $amount, currency: $currency, paymentMethod: $paymentMethod, attachment: $attachment, status: $status, note: $note, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $DepositCreateCopyWith<$Res>  {
  factory $DepositCreateCopyWith(DepositCreate value, $Res Function(DepositCreate) _then) = _$DepositCreateCopyWithImpl;
@useResult
$Res call({
 String? id, String? externalId, String userId, num amount, String currency, String? paymentMethod, String? attachment, DepositStatus status, String? note, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$DepositCreateCopyWithImpl<$Res>
    implements $DepositCreateCopyWith<$Res> {
  _$DepositCreateCopyWithImpl(this._self, this._then);

  final DepositCreate _self;
  final $Res Function(DepositCreate) _then;

/// Create a copy of DepositCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? externalId = freezed,Object? userId = null,Object? amount = null,Object? currency = null,Object? paymentMethod = freezed,Object? attachment = freezed,Object? status = null,Object? note = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DepositStatus,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [DepositCreate].
extension DepositCreatePatterns on DepositCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DepositCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DepositCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DepositCreate value)  $default,){
final _that = this;
switch (_that) {
case _DepositCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DepositCreate value)?  $default,){
final _that = this;
switch (_that) {
case _DepositCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? externalId,  String userId,  num amount,  String currency,  String? paymentMethod,  String? attachment,  DepositStatus status,  String? note,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DepositCreate() when $default != null:
return $default(_that.id,_that.externalId,_that.userId,_that.amount,_that.currency,_that.paymentMethod,_that.attachment,_that.status,_that.note,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? externalId,  String userId,  num amount,  String currency,  String? paymentMethod,  String? attachment,  DepositStatus status,  String? note,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _DepositCreate():
return $default(_that.id,_that.externalId,_that.userId,_that.amount,_that.currency,_that.paymentMethod,_that.attachment,_that.status,_that.note,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? externalId,  String userId,  num amount,  String currency,  String? paymentMethod,  String? attachment,  DepositStatus status,  String? note,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _DepositCreate() when $default != null:
return $default(_that.id,_that.externalId,_that.userId,_that.amount,_that.currency,_that.paymentMethod,_that.attachment,_that.status,_that.note,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DepositCreate implements DepositCreate {
  const _DepositCreate({this.id, this.externalId, required this.userId, required this.amount, required this.currency, this.paymentMethod, this.attachment, this.status = DepositStatus.pending, this.note, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata;
  factory _DepositCreate.fromJson(Map<String, dynamic> json) => _$DepositCreateFromJson(json);

@override final  String? id;
@override final  String? externalId;
@override final  String userId;
@override final  num amount;
@override final  String currency;
@override final  String? paymentMethod;
@override final  String? attachment;
@override@JsonKey() final  DepositStatus status;
@override final  String? note;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of DepositCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepositCreateCopyWith<_DepositCreate> get copyWith => __$DepositCreateCopyWithImpl<_DepositCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepositCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DepositCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.attachment, attachment) || other.attachment == attachment)&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,externalId,userId,amount,currency,paymentMethod,attachment,status,note,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'DepositCreate(id: $id, externalId: $externalId, userId: $userId, amount: $amount, currency: $currency, paymentMethod: $paymentMethod, attachment: $attachment, status: $status, note: $note, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$DepositCreateCopyWith<$Res> implements $DepositCreateCopyWith<$Res> {
  factory _$DepositCreateCopyWith(_DepositCreate value, $Res Function(_DepositCreate) _then) = __$DepositCreateCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? externalId, String userId, num amount, String currency, String? paymentMethod, String? attachment, DepositStatus status, String? note, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$DepositCreateCopyWithImpl<$Res>
    implements _$DepositCreateCopyWith<$Res> {
  __$DepositCreateCopyWithImpl(this._self, this._then);

  final _DepositCreate _self;
  final $Res Function(_DepositCreate) _then;

/// Create a copy of DepositCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? externalId = freezed,Object? userId = null,Object? amount = null,Object? currency = null,Object? paymentMethod = freezed,Object? attachment = freezed,Object? status = null,Object? note = freezed,Object? metadata = null,}) {
  return _then(_DepositCreate(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DepositStatus,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$DepositUpdate {

 String? get externalId; String? get userId; num? get amount; String? get currency; String? get paymentMethod; String? get attachment; DepositStatus? get status; String? get note; Map<String, dynamic>? get metadata; List<DepositHistory>? get history;@JsonKey(includeFromJson: false) List<String> get setToNull;
/// Create a copy of DepositUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepositUpdateCopyWith<DepositUpdate> get copyWith => _$DepositUpdateCopyWithImpl<DepositUpdate>(this as DepositUpdate, _$identity);

  /// Serializes this DepositUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepositUpdate&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.attachment, attachment) || other.attachment == attachment)&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.history, history)&&const DeepCollectionEquality().equals(other.setToNull, setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,externalId,userId,amount,currency,paymentMethod,attachment,status,note,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(history),const DeepCollectionEquality().hash(setToNull));

@override
String toString() {
  return 'DepositUpdate(externalId: $externalId, userId: $userId, amount: $amount, currency: $currency, paymentMethod: $paymentMethod, attachment: $attachment, status: $status, note: $note, metadata: $metadata, history: $history, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class $DepositUpdateCopyWith<$Res>  {
  factory $DepositUpdateCopyWith(DepositUpdate value, $Res Function(DepositUpdate) _then) = _$DepositUpdateCopyWithImpl;
@useResult
$Res call({
 String? externalId, String? userId, num? amount, String? currency, String? paymentMethod, String? attachment, DepositStatus? status, String? note, Map<String, dynamic>? metadata, List<DepositHistory>? history,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class _$DepositUpdateCopyWithImpl<$Res>
    implements $DepositUpdateCopyWith<$Res> {
  _$DepositUpdateCopyWithImpl(this._self, this._then);

  final DepositUpdate _self;
  final $Res Function(DepositUpdate) _then;

/// Create a copy of DepositUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? externalId = freezed,Object? userId = freezed,Object? amount = freezed,Object? currency = freezed,Object? paymentMethod = freezed,Object? attachment = freezed,Object? status = freezed,Object? note = freezed,Object? metadata = freezed,Object? history = freezed,Object? setToNull = null,}) {
  return _then(_self.copyWith(
externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DepositStatus?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,history: freezed == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<DepositHistory>?,setToNull: null == setToNull ? _self.setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [DepositUpdate].
extension DepositUpdatePatterns on DepositUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DepositUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DepositUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DepositUpdate value)  $default,){
final _that = this;
switch (_that) {
case _DepositUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DepositUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _DepositUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? externalId,  String? userId,  num? amount,  String? currency,  String? paymentMethod,  String? attachment,  DepositStatus? status,  String? note,  Map<String, dynamic>? metadata,  List<DepositHistory>? history, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DepositUpdate() when $default != null:
return $default(_that.externalId,_that.userId,_that.amount,_that.currency,_that.paymentMethod,_that.attachment,_that.status,_that.note,_that.metadata,_that.history,_that.setToNull);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? externalId,  String? userId,  num? amount,  String? currency,  String? paymentMethod,  String? attachment,  DepositStatus? status,  String? note,  Map<String, dynamic>? metadata,  List<DepositHistory>? history, @JsonKey(includeFromJson: false)  List<String> setToNull)  $default,) {final _that = this;
switch (_that) {
case _DepositUpdate():
return $default(_that.externalId,_that.userId,_that.amount,_that.currency,_that.paymentMethod,_that.attachment,_that.status,_that.note,_that.metadata,_that.history,_that.setToNull);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? externalId,  String? userId,  num? amount,  String? currency,  String? paymentMethod,  String? attachment,  DepositStatus? status,  String? note,  Map<String, dynamic>? metadata,  List<DepositHistory>? history, @JsonKey(includeFromJson: false)  List<String> setToNull)?  $default,) {final _that = this;
switch (_that) {
case _DepositUpdate() when $default != null:
return $default(_that.externalId,_that.userId,_that.amount,_that.currency,_that.paymentMethod,_that.attachment,_that.status,_that.note,_that.metadata,_that.history,_that.setToNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DepositUpdate implements DepositUpdate {
  const _DepositUpdate({this.externalId, this.userId, this.amount, this.currency, this.paymentMethod, this.attachment, this.status, this.note, final  Map<String, dynamic>? metadata, final  List<DepositHistory>? history, @JsonKey(includeFromJson: false) final  List<String> setToNull = const []}): _metadata = metadata,_history = history,_setToNull = setToNull;
  factory _DepositUpdate.fromJson(Map<String, dynamic> json) => _$DepositUpdateFromJson(json);

@override final  String? externalId;
@override final  String? userId;
@override final  num? amount;
@override final  String? currency;
@override final  String? paymentMethod;
@override final  String? attachment;
@override final  DepositStatus? status;
@override final  String? note;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<DepositHistory>? _history;
@override List<DepositHistory>? get history {
  final value = _history;
  if (value == null) return null;
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String> _setToNull;
@override@JsonKey(includeFromJson: false) List<String> get setToNull {
  if (_setToNull is EqualUnmodifiableListView) return _setToNull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_setToNull);
}


/// Create a copy of DepositUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepositUpdateCopyWith<_DepositUpdate> get copyWith => __$DepositUpdateCopyWithImpl<_DepositUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepositUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DepositUpdate&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.attachment, attachment) || other.attachment == attachment)&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._history, _history)&&const DeepCollectionEquality().equals(other._setToNull, _setToNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,externalId,userId,amount,currency,paymentMethod,attachment,status,note,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_history),const DeepCollectionEquality().hash(_setToNull));

@override
String toString() {
  return 'DepositUpdate(externalId: $externalId, userId: $userId, amount: $amount, currency: $currency, paymentMethod: $paymentMethod, attachment: $attachment, status: $status, note: $note, metadata: $metadata, history: $history, setToNull: $setToNull)';
}


}

/// @nodoc
abstract mixin class _$DepositUpdateCopyWith<$Res> implements $DepositUpdateCopyWith<$Res> {
  factory _$DepositUpdateCopyWith(_DepositUpdate value, $Res Function(_DepositUpdate) _then) = __$DepositUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? externalId, String? userId, num? amount, String? currency, String? paymentMethod, String? attachment, DepositStatus? status, String? note, Map<String, dynamic>? metadata, List<DepositHistory>? history,@JsonKey(includeFromJson: false) List<String> setToNull
});




}
/// @nodoc
class __$DepositUpdateCopyWithImpl<$Res>
    implements _$DepositUpdateCopyWith<$Res> {
  __$DepositUpdateCopyWithImpl(this._self, this._then);

  final _DepositUpdate _self;
  final $Res Function(_DepositUpdate) _then;

/// Create a copy of DepositUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? externalId = freezed,Object? userId = freezed,Object? amount = freezed,Object? currency = freezed,Object? paymentMethod = freezed,Object? attachment = freezed,Object? status = freezed,Object? note = freezed,Object? metadata = freezed,Object? history = freezed,Object? setToNull = null,}) {
  return _then(_DepositUpdate(
externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DepositStatus?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,history: freezed == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<DepositHistory>?,setToNull: null == setToNull ? _self._setToNull : setToNull // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$DepositHistory {

 String get status; DateTime get timestamp; String? get note;
/// Create a copy of DepositHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepositHistoryCopyWith<DepositHistory> get copyWith => _$DepositHistoryCopyWithImpl<DepositHistory>(this as DepositHistory, _$identity);

  /// Serializes this DepositHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepositHistory&&(identical(other.status, status) || other.status == status)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,timestamp,note);

@override
String toString() {
  return 'DepositHistory(status: $status, timestamp: $timestamp, note: $note)';
}


}

/// @nodoc
abstract mixin class $DepositHistoryCopyWith<$Res>  {
  factory $DepositHistoryCopyWith(DepositHistory value, $Res Function(DepositHistory) _then) = _$DepositHistoryCopyWithImpl;
@useResult
$Res call({
 String status, DateTime timestamp, String? note
});




}
/// @nodoc
class _$DepositHistoryCopyWithImpl<$Res>
    implements $DepositHistoryCopyWith<$Res> {
  _$DepositHistoryCopyWithImpl(this._self, this._then);

  final DepositHistory _self;
  final $Res Function(DepositHistory) _then;

/// Create a copy of DepositHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? timestamp = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DepositHistory].
extension DepositHistoryPatterns on DepositHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DepositHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DepositHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DepositHistory value)  $default,){
final _that = this;
switch (_that) {
case _DepositHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DepositHistory value)?  $default,){
final _that = this;
switch (_that) {
case _DepositHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  DateTime timestamp,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DepositHistory() when $default != null:
return $default(_that.status,_that.timestamp,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  DateTime timestamp,  String? note)  $default,) {final _that = this;
switch (_that) {
case _DepositHistory():
return $default(_that.status,_that.timestamp,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  DateTime timestamp,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _DepositHistory() when $default != null:
return $default(_that.status,_that.timestamp,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DepositHistory implements DepositHistory {
  const _DepositHistory({required this.status, required this.timestamp, this.note});
  factory _DepositHistory.fromJson(Map<String, dynamic> json) => _$DepositHistoryFromJson(json);

@override final  String status;
@override final  DateTime timestamp;
@override final  String? note;

/// Create a copy of DepositHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepositHistoryCopyWith<_DepositHistory> get copyWith => __$DepositHistoryCopyWithImpl<_DepositHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepositHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DepositHistory&&(identical(other.status, status) || other.status == status)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,timestamp,note);

@override
String toString() {
  return 'DepositHistory(status: $status, timestamp: $timestamp, note: $note)';
}


}

/// @nodoc
abstract mixin class _$DepositHistoryCopyWith<$Res> implements $DepositHistoryCopyWith<$Res> {
  factory _$DepositHistoryCopyWith(_DepositHistory value, $Res Function(_DepositHistory) _then) = __$DepositHistoryCopyWithImpl;
@override @useResult
$Res call({
 String status, DateTime timestamp, String? note
});




}
/// @nodoc
class __$DepositHistoryCopyWithImpl<$Res>
    implements _$DepositHistoryCopyWith<$Res> {
  __$DepositHistoryCopyWithImpl(this._self, this._then);

  final _DepositHistory _self;
  final $Res Function(_DepositHistory) _then;

/// Create a copy of DepositHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? timestamp = null,Object? note = freezed,}) {
  return _then(_DepositHistory(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
