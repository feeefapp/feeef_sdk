// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewHistogram {

@JsonKey(name: '1') int get one;@JsonKey(name: '2') int get two;@JsonKey(name: '3') int get three;@JsonKey(name: '4') int get four;@JsonKey(name: '5') int get five;
/// Create a copy of ReviewHistogram
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewHistogramCopyWith<ReviewHistogram> get copyWith => _$ReviewHistogramCopyWithImpl<ReviewHistogram>(this as ReviewHistogram, _$identity);

  /// Serializes this ReviewHistogram to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewHistogram;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewHistogram&&(identical(other.one, _this.one) || other.one == _this.one)&&(identical(other.two, _this.two) || other.two == _this.two)&&(identical(other.three, _this.three) || other.three == _this.three)&&(identical(other.four, _this.four) || other.four == _this.four)&&(identical(other.five, _this.five) || other.five == _this.five));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewHistogram;
  return Object.hash(runtimeType,_this.one,_this.two,_this.three,_this.four,_this.five);
}

@override
String toString() {
  final _this = this as ReviewHistogram;
  return 'ReviewHistogram(one: ${_this.one}, two: ${_this.two}, three: ${_this.three}, four: ${_this.four}, five: ${_this.five})';
}


}

/// @nodoc
abstract mixin class $ReviewHistogramCopyWith<$Res>  {
  factory $ReviewHistogramCopyWith(ReviewHistogram value, $Res Function(ReviewHistogram) _then) = _$ReviewHistogramCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '1') int one,@JsonKey(name: '2') int two,@JsonKey(name: '3') int three,@JsonKey(name: '4') int four,@JsonKey(name: '5') int five
});




}
/// @nodoc
class _$ReviewHistogramCopyWithImpl<$Res>
    implements $ReviewHistogramCopyWith<$Res> {
  _$ReviewHistogramCopyWithImpl(this._self, this._then);

  final ReviewHistogram _self;
  final $Res Function(ReviewHistogram) _then;

/// Create a copy of ReviewHistogram
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? one = null,Object? two = null,Object? three = null,Object? four = null,Object? five = null,}) {
  return _then(ReviewHistogram(
one: null == one ? _self.one : one // ignore: cast_nullable_to_non_nullable
as int,two: null == two ? _self.two : two // ignore: cast_nullable_to_non_nullable
as int,three: null == three ? _self.three : three // ignore: cast_nullable_to_non_nullable
as int,four: null == four ? _self.four : four // ignore: cast_nullable_to_non_nullable
as int,five: null == five ? _self.five : five // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewHistogram].
extension ReviewHistogramPatterns on ReviewHistogram {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewHistogram value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewHistogram() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewHistogram value)  $default,){
final _that = this;
switch (_that) {
case _ReviewHistogram():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewHistogram value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewHistogram() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '1')  int one, @JsonKey(name: '2')  int two, @JsonKey(name: '3')  int three, @JsonKey(name: '4')  int four, @JsonKey(name: '5')  int five)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewHistogram() when $default != null:
return $default(_that.one,_that.two,_that.three,_that.four,_that.five);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '1')  int one, @JsonKey(name: '2')  int two, @JsonKey(name: '3')  int three, @JsonKey(name: '4')  int four, @JsonKey(name: '5')  int five)  $default,) {final _that = this;
switch (_that) {
case _ReviewHistogram():
return $default(_that.one,_that.two,_that.three,_that.four,_that.five);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '1')  int one, @JsonKey(name: '2')  int two, @JsonKey(name: '3')  int three, @JsonKey(name: '4')  int four, @JsonKey(name: '5')  int five)?  $default,) {final _that = this;
switch (_that) {
case _ReviewHistogram() when $default != null:
return $default(_that.one,_that.two,_that.three,_that.four,_that.five);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewHistogram implements ReviewHistogram {
  const _ReviewHistogram({@JsonKey(name: '1') this.one = 0, @JsonKey(name: '2') this.two = 0, @JsonKey(name: '3') this.three = 0, @JsonKey(name: '4') this.four = 0, @JsonKey(name: '5') this.five = 0});
  factory _ReviewHistogram.fromJson(Map<String, dynamic> json) => _$ReviewHistogramFromJson(json);

@override@JsonKey(name: '1') final  int one;
@override@JsonKey(name: '2') final  int two;
@override@JsonKey(name: '3') final  int three;
@override@JsonKey(name: '4') final  int four;
@override@JsonKey(name: '5') final  int five;

/// Create a copy of ReviewHistogram
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewHistogramCopyWith<_ReviewHistogram> get copyWith => __$ReviewHistogramCopyWithImpl<_ReviewHistogram>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewHistogramToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewHistogram&&(identical(other.one, one) || other.one == one)&&(identical(other.two, two) || other.two == two)&&(identical(other.three, three) || other.three == three)&&(identical(other.four, four) || other.four == four)&&(identical(other.five, five) || other.five == five));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,one,two,three,four,five);
}

@override
String toString() {
    return 'ReviewHistogram(one: $one, two: $two, three: $three, four: $four, five: $five)';
}


}

/// @nodoc
abstract mixin class _$ReviewHistogramCopyWith<$Res> implements $ReviewHistogramCopyWith<$Res> {
  factory _$ReviewHistogramCopyWith(_ReviewHistogram value, $Res Function(_ReviewHistogram) _then) = __$ReviewHistogramCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '1') int one,@JsonKey(name: '2') int two,@JsonKey(name: '3') int three,@JsonKey(name: '4') int four,@JsonKey(name: '5') int five
});




}
/// @nodoc
class __$ReviewHistogramCopyWithImpl<$Res>
    implements _$ReviewHistogramCopyWith<$Res> {
  __$ReviewHistogramCopyWithImpl(this._self, this._then);

  final _ReviewHistogram _self;
  final $Res Function(_ReviewHistogram) _then;

/// Create a copy of ReviewHistogram
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? one = null,Object? two = null,Object? three = null,Object? four = null,Object? five = null,}) {
  return _then(_ReviewHistogram(
one: null == one ? _self.one : one // ignore: cast_nullable_to_non_nullable
as int,two: null == two ? _self.two : two // ignore: cast_nullable_to_non_nullable
as int,three: null == three ? _self.three : three // ignore: cast_nullable_to_non_nullable
as int,four: null == four ? _self.four : four // ignore: cast_nullable_to_non_nullable
as int,five: null == five ? _self.five : five // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ReviewSummary {

 double get avg; int get count; ReviewHistogram? get histogram; int? get total; int? get withPhotos;
/// Create a copy of ReviewSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewSummaryCopyWith<ReviewSummary> get copyWith => _$ReviewSummaryCopyWithImpl<ReviewSummary>(this as ReviewSummary, _$identity);

  /// Serializes this ReviewSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewSummary&&(identical(other.avg, _this.avg) || other.avg == _this.avg)&&(identical(other.count, _this.count) || other.count == _this.count)&&(identical(other.histogram, _this.histogram) || other.histogram == _this.histogram)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.withPhotos, _this.withPhotos) || other.withPhotos == _this.withPhotos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewSummary;
  return Object.hash(runtimeType,_this.avg,_this.count,_this.histogram,_this.total,_this.withPhotos);
}

@override
String toString() {
  final _this = this as ReviewSummary;
  return 'ReviewSummary(avg: ${_this.avg}, count: ${_this.count}, histogram: ${_this.histogram}, total: ${_this.total}, withPhotos: ${_this.withPhotos})';
}


}

/// @nodoc
abstract mixin class $ReviewSummaryCopyWith<$Res>  {
  factory $ReviewSummaryCopyWith(ReviewSummary value, $Res Function(ReviewSummary) _then) = _$ReviewSummaryCopyWithImpl;
@useResult
$Res call({
 double avg, int count, ReviewHistogram? histogram, int? total, int? withPhotos
});


$ReviewHistogramCopyWith<$Res>? get histogram;

}
/// @nodoc
class _$ReviewSummaryCopyWithImpl<$Res>
    implements $ReviewSummaryCopyWith<$Res> {
  _$ReviewSummaryCopyWithImpl(this._self, this._then);

  final ReviewSummary _self;
  final $Res Function(ReviewSummary) _then;

/// Create a copy of ReviewSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? avg = null,Object? count = null,Object? histogram = freezed,Object? total = freezed,Object? withPhotos = freezed,}) {
  return _then(ReviewSummary(
avg: null == avg ? _self.avg : avg // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,histogram: freezed == histogram ? _self.histogram : histogram // ignore: cast_nullable_to_non_nullable
as ReviewHistogram?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,withPhotos: freezed == withPhotos ? _self.withPhotos : withPhotos // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of ReviewSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewHistogramCopyWith<$Res>? get histogram {
    if (_self.histogram == null) {
    return null;
  }

  return $ReviewHistogramCopyWith<$Res>(_self.histogram!, (value) {
    return _then(_self.copyWith(histogram: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewSummary].
extension ReviewSummaryPatterns on ReviewSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewSummary value)  $default,){
final _that = this;
switch (_that) {
case _ReviewSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double avg,  int count,  ReviewHistogram? histogram,  int? total,  int? withPhotos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewSummary() when $default != null:
return $default(_that.avg,_that.count,_that.histogram,_that.total,_that.withPhotos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double avg,  int count,  ReviewHistogram? histogram,  int? total,  int? withPhotos)  $default,) {final _that = this;
switch (_that) {
case _ReviewSummary():
return $default(_that.avg,_that.count,_that.histogram,_that.total,_that.withPhotos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double avg,  int count,  ReviewHistogram? histogram,  int? total,  int? withPhotos)?  $default,) {final _that = this;
switch (_that) {
case _ReviewSummary() when $default != null:
return $default(_that.avg,_that.count,_that.histogram,_that.total,_that.withPhotos);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewSummary implements ReviewSummary {
  const _ReviewSummary({this.avg = 0, this.count = 0, this.histogram, this.total, this.withPhotos});
  factory _ReviewSummary.fromJson(Map<String, dynamic> json) => _$ReviewSummaryFromJson(json);

@override@JsonKey() final  double avg;
@override@JsonKey() final  int count;
@override final  ReviewHistogram? histogram;
@override final  int? total;
@override final  int? withPhotos;

/// Create a copy of ReviewSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewSummaryCopyWith<_ReviewSummary> get copyWith => __$ReviewSummaryCopyWithImpl<_ReviewSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewSummary&&(identical(other.avg, avg) || other.avg == avg)&&(identical(other.count, count) || other.count == count)&&(identical(other.histogram, histogram) || other.histogram == histogram)&&(identical(other.total, total) || other.total == total)&&(identical(other.withPhotos, withPhotos) || other.withPhotos == withPhotos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,avg,count,histogram,total,withPhotos);
}

@override
String toString() {
    return 'ReviewSummary(avg: $avg, count: $count, histogram: $histogram, total: $total, withPhotos: $withPhotos)';
}


}

/// @nodoc
abstract mixin class _$ReviewSummaryCopyWith<$Res> implements $ReviewSummaryCopyWith<$Res> {
  factory _$ReviewSummaryCopyWith(_ReviewSummary value, $Res Function(_ReviewSummary) _then) = __$ReviewSummaryCopyWithImpl;
@override @useResult
$Res call({
 double avg, int count, ReviewHistogram? histogram, int? total, int? withPhotos
});


@override $ReviewHistogramCopyWith<$Res>? get histogram;

}
/// @nodoc
class __$ReviewSummaryCopyWithImpl<$Res>
    implements _$ReviewSummaryCopyWith<$Res> {
  __$ReviewSummaryCopyWithImpl(this._self, this._then);

  final _ReviewSummary _self;
  final $Res Function(_ReviewSummary) _then;

/// Create a copy of ReviewSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? avg = null,Object? count = null,Object? histogram = freezed,Object? total = freezed,Object? withPhotos = freezed,}) {
  return _then(_ReviewSummary(
avg: null == avg ? _self.avg : avg // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,histogram: freezed == histogram ? _self.histogram : histogram // ignore: cast_nullable_to_non_nullable
as ReviewHistogram?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,withPhotos: freezed == withPhotos ? _self.withPhotos : withPhotos // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of ReviewSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewHistogramCopyWith<$Res>? get histogram {
    if (_self.histogram == null) {
    return null;
  }

  return $ReviewHistogramCopyWith<$Res>(_self.histogram!, (value) {
    return _then(_self.copyWith(histogram: value));
  });
}
}


/// @nodoc
mixin _$ReviewReply {

 String get body; String? get at;
/// Create a copy of ReviewReply
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewReplyCopyWith<ReviewReply> get copyWith => _$ReviewReplyCopyWithImpl<ReviewReply>(this as ReviewReply, _$identity);

  /// Serializes this ReviewReply to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewReply;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewReply&&(identical(other.body, _this.body) || other.body == _this.body)&&(identical(other.at, _this.at) || other.at == _this.at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewReply;
  return Object.hash(runtimeType,_this.body,_this.at);
}

@override
String toString() {
  final _this = this as ReviewReply;
  return 'ReviewReply(body: ${_this.body}, at: ${_this.at})';
}


}

/// @nodoc
abstract mixin class $ReviewReplyCopyWith<$Res>  {
  factory $ReviewReplyCopyWith(ReviewReply value, $Res Function(ReviewReply) _then) = _$ReviewReplyCopyWithImpl;
@useResult
$Res call({
 String body, String? at
});




}
/// @nodoc
class _$ReviewReplyCopyWithImpl<$Res>
    implements $ReviewReplyCopyWith<$Res> {
  _$ReviewReplyCopyWithImpl(this._self, this._then);

  final ReviewReply _self;
  final $Res Function(ReviewReply) _then;

/// Create a copy of ReviewReply
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = null,Object? at = freezed,}) {
  return _then(ReviewReply(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,at: freezed == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewReply].
extension ReviewReplyPatterns on ReviewReply {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewReply value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewReply() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewReply value)  $default,){
final _that = this;
switch (_that) {
case _ReviewReply():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewReply value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewReply() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String body,  String? at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewReply() when $default != null:
return $default(_that.body,_that.at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String body,  String? at)  $default,) {final _that = this;
switch (_that) {
case _ReviewReply():
return $default(_that.body,_that.at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String body,  String? at)?  $default,) {final _that = this;
switch (_that) {
case _ReviewReply() when $default != null:
return $default(_that.body,_that.at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewReply implements ReviewReply {
  const _ReviewReply({required this.body, this.at});
  factory _ReviewReply.fromJson(Map<String, dynamic> json) => _$ReviewReplyFromJson(json);

@override final  String body;
@override final  String? at;

/// Create a copy of ReviewReply
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewReplyCopyWith<_ReviewReply> get copyWith => __$ReviewReplyCopyWithImpl<_ReviewReply>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewReplyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewReply&&(identical(other.body, body) || other.body == body)&&(identical(other.at, at) || other.at == at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,body,at);
}

@override
String toString() {
    return 'ReviewReply(body: $body, at: $at)';
}


}

/// @nodoc
abstract mixin class _$ReviewReplyCopyWith<$Res> implements $ReviewReplyCopyWith<$Res> {
  factory _$ReviewReplyCopyWith(_ReviewReply value, $Res Function(_ReviewReply) _then) = __$ReviewReplyCopyWithImpl;
@override @useResult
$Res call({
 String body, String? at
});




}
/// @nodoc
class __$ReviewReplyCopyWithImpl<$Res>
    implements _$ReviewReplyCopyWith<$Res> {
  __$ReviewReplyCopyWithImpl(this._self, this._then);

  final _ReviewReply _self;
  final $Res Function(_ReviewReply) _then;

/// Create a copy of ReviewReply
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? body = null,Object? at = freezed,}) {
  return _then(_ReviewReply(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,at: freezed == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PublicReview {

 String get id; String get productId; int get rating; String? get title; String? get body; List<String> get photos;/// Empty when the customer chose to stay anonymous.
 String get authorName; String get source; bool get verified; String? get variantLabel; ReviewReply? get reply; String? get createdAt;
/// Create a copy of PublicReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicReviewCopyWith<PublicReview> get copyWith => _$PublicReviewCopyWithImpl<PublicReview>(this as PublicReview, _$identity);

  /// Serializes this PublicReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PublicReview;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicReview&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.body, _this.body) || other.body == _this.body)&&const DeepCollectionEquality().equals(other.photos, _this.photos)&&(identical(other.authorName, _this.authorName) || other.authorName == _this.authorName)&&(identical(other.source, _this.source) || other.source == _this.source)&&(identical(other.verified, _this.verified) || other.verified == _this.verified)&&(identical(other.variantLabel, _this.variantLabel) || other.variantLabel == _this.variantLabel)&&(identical(other.reply, _this.reply) || other.reply == _this.reply)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PublicReview;
  return Object.hash(runtimeType,_this.id,_this.productId,_this.rating,_this.title,_this.body,const DeepCollectionEquality().hash(_this.photos),_this.authorName,_this.source,_this.verified,_this.variantLabel,_this.reply,_this.createdAt);
}

@override
String toString() {
  final _this = this as PublicReview;
  return 'PublicReview(id: ${_this.id}, productId: ${_this.productId}, rating: ${_this.rating}, title: ${_this.title}, body: ${_this.body}, photos: ${_this.photos}, authorName: ${_this.authorName}, source: ${_this.source}, verified: ${_this.verified}, variantLabel: ${_this.variantLabel}, reply: ${_this.reply}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $PublicReviewCopyWith<$Res>  {
  factory $PublicReviewCopyWith(PublicReview value, $Res Function(PublicReview) _then) = _$PublicReviewCopyWithImpl;
@useResult
$Res call({
 String id, String productId, int rating, String? title, String? body, List<String> photos, String authorName, String source, bool verified, String? variantLabel, ReviewReply? reply, String? createdAt
});


$ReviewReplyCopyWith<$Res>? get reply;

}
/// @nodoc
class _$PublicReviewCopyWithImpl<$Res>
    implements $PublicReviewCopyWith<$Res> {
  _$PublicReviewCopyWithImpl(this._self, this._then);

  final PublicReview _self;
  final $Res Function(PublicReview) _then;

/// Create a copy of PublicReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? rating = null,Object? title = freezed,Object? body = freezed,Object? photos = null,Object? authorName = null,Object? source = null,Object? verified = null,Object? variantLabel = freezed,Object? reply = freezed,Object? createdAt = freezed,}) {
  return _then(PublicReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,variantLabel: freezed == variantLabel ? _self.variantLabel : variantLabel // ignore: cast_nullable_to_non_nullable
as String?,reply: freezed == reply ? _self.reply : reply // ignore: cast_nullable_to_non_nullable
as ReviewReply?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PublicReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewReplyCopyWith<$Res>? get reply {
    if (_self.reply == null) {
    return null;
  }

  return $ReviewReplyCopyWith<$Res>(_self.reply!, (value) {
    return _then(_self.copyWith(reply: value));
  });
}
}


/// Adds pattern-matching-related methods to [PublicReview].
extension PublicReviewPatterns on PublicReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicReview value)  $default,){
final _that = this;
switch (_that) {
case _PublicReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicReview value)?  $default,){
final _that = this;
switch (_that) {
case _PublicReview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  int rating,  String? title,  String? body,  List<String> photos,  String authorName,  String source,  bool verified,  String? variantLabel,  ReviewReply? reply,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicReview() when $default != null:
return $default(_that.id,_that.productId,_that.rating,_that.title,_that.body,_that.photos,_that.authorName,_that.source,_that.verified,_that.variantLabel,_that.reply,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  int rating,  String? title,  String? body,  List<String> photos,  String authorName,  String source,  bool verified,  String? variantLabel,  ReviewReply? reply,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PublicReview():
return $default(_that.id,_that.productId,_that.rating,_that.title,_that.body,_that.photos,_that.authorName,_that.source,_that.verified,_that.variantLabel,_that.reply,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  int rating,  String? title,  String? body,  List<String> photos,  String authorName,  String source,  bool verified,  String? variantLabel,  ReviewReply? reply,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PublicReview() when $default != null:
return $default(_that.id,_that.productId,_that.rating,_that.title,_that.body,_that.photos,_that.authorName,_that.source,_that.verified,_that.variantLabel,_that.reply,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicReview implements PublicReview {
  const _PublicReview({required this.id, required this.productId, required this.rating, this.title, this.body,  List<String> photos = const <String>[], this.authorName = '', this.source = ReviewSource.order, this.verified = false, this.variantLabel, this.reply, this.createdAt}): _photos = photos;
  factory _PublicReview.fromJson(Map<String, dynamic> json) => _$PublicReviewFromJson(json);

@override final  String id;
@override final  String productId;
@override final  int rating;
@override final  String? title;
@override final  String? body;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

/// Empty when the customer chose to stay anonymous.
@override@JsonKey() final  String authorName;
@override@JsonKey() final  String source;
@override@JsonKey() final  bool verified;
@override final  String? variantLabel;
@override final  ReviewReply? reply;
@override final  String? createdAt;

/// Create a copy of PublicReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicReviewCopyWith<_PublicReview> get copyWith => __$PublicReviewCopyWithImpl<_PublicReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicReviewToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicReview&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.photos, _photos)&&(identical(other.authorName, authorName) || other.authorName == authorName)&&(identical(other.source, source) || other.source == source)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.variantLabel, variantLabel) || other.variantLabel == variantLabel)&&(identical(other.reply, reply) || other.reply == reply)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,productId,rating,title,body,const DeepCollectionEquality().hash(_photos),authorName,source,verified,variantLabel,reply,createdAt);
}

@override
String toString() {
    return 'PublicReview(id: $id, productId: $productId, rating: $rating, title: $title, body: $body, photos: $photos, authorName: $authorName, source: $source, verified: $verified, variantLabel: $variantLabel, reply: $reply, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PublicReviewCopyWith<$Res> implements $PublicReviewCopyWith<$Res> {
  factory _$PublicReviewCopyWith(_PublicReview value, $Res Function(_PublicReview) _then) = __$PublicReviewCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, int rating, String? title, String? body, List<String> photos, String authorName, String source, bool verified, String? variantLabel, ReviewReply? reply, String? createdAt
});


@override $ReviewReplyCopyWith<$Res>? get reply;

}
/// @nodoc
class __$PublicReviewCopyWithImpl<$Res>
    implements _$PublicReviewCopyWith<$Res> {
  __$PublicReviewCopyWithImpl(this._self, this._then);

  final _PublicReview _self;
  final $Res Function(_PublicReview) _then;

/// Create a copy of PublicReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? rating = null,Object? title = freezed,Object? body = freezed,Object? photos = null,Object? authorName = null,Object? source = null,Object? verified = null,Object? variantLabel = freezed,Object? reply = freezed,Object? createdAt = freezed,}) {
  return _then(_PublicReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,variantLabel: freezed == variantLabel ? _self.variantLabel : variantLabel // ignore: cast_nullable_to_non_nullable
as String?,reply: freezed == reply ? _self.reply : reply // ignore: cast_nullable_to_non_nullable
as ReviewReply?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PublicReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewReplyCopyWith<$Res>? get reply {
    if (_self.reply == null) {
    return null;
  }

  return $ReviewReplyCopyWith<$Res>(_self.reply!, (value) {
    return _then(_self.copyWith(reply: value));
  });
}
}


/// @nodoc
mixin _$OwnReview {

 String get id; String get productId; int get rating; String? get title; String? get body; List<String> get photos; String get authorName; String get source; bool get verified; String? get variantLabel; ReviewReply? get reply; String? get createdAt; String get status; bool get editable;
/// Create a copy of OwnReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnReviewCopyWith<OwnReview> get copyWith => _$OwnReviewCopyWithImpl<OwnReview>(this as OwnReview, _$identity);

  /// Serializes this OwnReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OwnReview;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OwnReview&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.body, _this.body) || other.body == _this.body)&&const DeepCollectionEquality().equals(other.photos, _this.photos)&&(identical(other.authorName, _this.authorName) || other.authorName == _this.authorName)&&(identical(other.source, _this.source) || other.source == _this.source)&&(identical(other.verified, _this.verified) || other.verified == _this.verified)&&(identical(other.variantLabel, _this.variantLabel) || other.variantLabel == _this.variantLabel)&&(identical(other.reply, _this.reply) || other.reply == _this.reply)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.editable, _this.editable) || other.editable == _this.editable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OwnReview;
  return Object.hash(runtimeType,_this.id,_this.productId,_this.rating,_this.title,_this.body,const DeepCollectionEquality().hash(_this.photos),_this.authorName,_this.source,_this.verified,_this.variantLabel,_this.reply,_this.createdAt,_this.status,_this.editable);
}

@override
String toString() {
  final _this = this as OwnReview;
  return 'OwnReview(id: ${_this.id}, productId: ${_this.productId}, rating: ${_this.rating}, title: ${_this.title}, body: ${_this.body}, photos: ${_this.photos}, authorName: ${_this.authorName}, source: ${_this.source}, verified: ${_this.verified}, variantLabel: ${_this.variantLabel}, reply: ${_this.reply}, createdAt: ${_this.createdAt}, status: ${_this.status}, editable: ${_this.editable})';
}


}

/// @nodoc
abstract mixin class $OwnReviewCopyWith<$Res>  {
  factory $OwnReviewCopyWith(OwnReview value, $Res Function(OwnReview) _then) = _$OwnReviewCopyWithImpl;
@useResult
$Res call({
 String id, String productId, int rating, String? title, String? body, List<String> photos, String authorName, String source, bool verified, String? variantLabel, ReviewReply? reply, String? createdAt, String status, bool editable
});


$ReviewReplyCopyWith<$Res>? get reply;

}
/// @nodoc
class _$OwnReviewCopyWithImpl<$Res>
    implements $OwnReviewCopyWith<$Res> {
  _$OwnReviewCopyWithImpl(this._self, this._then);

  final OwnReview _self;
  final $Res Function(OwnReview) _then;

/// Create a copy of OwnReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? rating = null,Object? title = freezed,Object? body = freezed,Object? photos = null,Object? authorName = null,Object? source = null,Object? verified = null,Object? variantLabel = freezed,Object? reply = freezed,Object? createdAt = freezed,Object? status = null,Object? editable = null,}) {
  return _then(OwnReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,variantLabel: freezed == variantLabel ? _self.variantLabel : variantLabel // ignore: cast_nullable_to_non_nullable
as String?,reply: freezed == reply ? _self.reply : reply // ignore: cast_nullable_to_non_nullable
as ReviewReply?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,editable: null == editable ? _self.editable : editable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of OwnReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewReplyCopyWith<$Res>? get reply {
    if (_self.reply == null) {
    return null;
  }

  return $ReviewReplyCopyWith<$Res>(_self.reply!, (value) {
    return _then(_self.copyWith(reply: value));
  });
}
}


/// Adds pattern-matching-related methods to [OwnReview].
extension OwnReviewPatterns on OwnReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OwnReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OwnReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OwnReview value)  $default,){
final _that = this;
switch (_that) {
case _OwnReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OwnReview value)?  $default,){
final _that = this;
switch (_that) {
case _OwnReview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  int rating,  String? title,  String? body,  List<String> photos,  String authorName,  String source,  bool verified,  String? variantLabel,  ReviewReply? reply,  String? createdAt,  String status,  bool editable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OwnReview() when $default != null:
return $default(_that.id,_that.productId,_that.rating,_that.title,_that.body,_that.photos,_that.authorName,_that.source,_that.verified,_that.variantLabel,_that.reply,_that.createdAt,_that.status,_that.editable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  int rating,  String? title,  String? body,  List<String> photos,  String authorName,  String source,  bool verified,  String? variantLabel,  ReviewReply? reply,  String? createdAt,  String status,  bool editable)  $default,) {final _that = this;
switch (_that) {
case _OwnReview():
return $default(_that.id,_that.productId,_that.rating,_that.title,_that.body,_that.photos,_that.authorName,_that.source,_that.verified,_that.variantLabel,_that.reply,_that.createdAt,_that.status,_that.editable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  int rating,  String? title,  String? body,  List<String> photos,  String authorName,  String source,  bool verified,  String? variantLabel,  ReviewReply? reply,  String? createdAt,  String status,  bool editable)?  $default,) {final _that = this;
switch (_that) {
case _OwnReview() when $default != null:
return $default(_that.id,_that.productId,_that.rating,_that.title,_that.body,_that.photos,_that.authorName,_that.source,_that.verified,_that.variantLabel,_that.reply,_that.createdAt,_that.status,_that.editable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OwnReview implements OwnReview {
  const _OwnReview({required this.id, required this.productId, required this.rating, this.title, this.body,  List<String> photos = const <String>[], this.authorName = '', this.source = ReviewSource.order, this.verified = false, this.variantLabel, this.reply, this.createdAt, this.status = ReviewStatus.published, this.editable = false}): _photos = photos;
  factory _OwnReview.fromJson(Map<String, dynamic> json) => _$OwnReviewFromJson(json);

@override final  String id;
@override final  String productId;
@override final  int rating;
@override final  String? title;
@override final  String? body;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override@JsonKey() final  String authorName;
@override@JsonKey() final  String source;
@override@JsonKey() final  bool verified;
@override final  String? variantLabel;
@override final  ReviewReply? reply;
@override final  String? createdAt;
@override@JsonKey() final  String status;
@override@JsonKey() final  bool editable;

/// Create a copy of OwnReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OwnReviewCopyWith<_OwnReview> get copyWith => __$OwnReviewCopyWithImpl<_OwnReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OwnReviewToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OwnReview&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.photos, _photos)&&(identical(other.authorName, authorName) || other.authorName == authorName)&&(identical(other.source, source) || other.source == source)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.variantLabel, variantLabel) || other.variantLabel == variantLabel)&&(identical(other.reply, reply) || other.reply == reply)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.editable, editable) || other.editable == editable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,productId,rating,title,body,const DeepCollectionEquality().hash(_photos),authorName,source,verified,variantLabel,reply,createdAt,status,editable);
}

@override
String toString() {
    return 'OwnReview(id: $id, productId: $productId, rating: $rating, title: $title, body: $body, photos: $photos, authorName: $authorName, source: $source, verified: $verified, variantLabel: $variantLabel, reply: $reply, createdAt: $createdAt, status: $status, editable: $editable)';
}


}

/// @nodoc
abstract mixin class _$OwnReviewCopyWith<$Res> implements $OwnReviewCopyWith<$Res> {
  factory _$OwnReviewCopyWith(_OwnReview value, $Res Function(_OwnReview) _then) = __$OwnReviewCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, int rating, String? title, String? body, List<String> photos, String authorName, String source, bool verified, String? variantLabel, ReviewReply? reply, String? createdAt, String status, bool editable
});


@override $ReviewReplyCopyWith<$Res>? get reply;

}
/// @nodoc
class __$OwnReviewCopyWithImpl<$Res>
    implements _$OwnReviewCopyWith<$Res> {
  __$OwnReviewCopyWithImpl(this._self, this._then);

  final _OwnReview _self;
  final $Res Function(_OwnReview) _then;

/// Create a copy of OwnReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? rating = null,Object? title = freezed,Object? body = freezed,Object? photos = null,Object? authorName = null,Object? source = null,Object? verified = null,Object? variantLabel = freezed,Object? reply = freezed,Object? createdAt = freezed,Object? status = null,Object? editable = null,}) {
  return _then(_OwnReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,variantLabel: freezed == variantLabel ? _self.variantLabel : variantLabel // ignore: cast_nullable_to_non_nullable
as String?,reply: freezed == reply ? _self.reply : reply // ignore: cast_nullable_to_non_nullable
as ReviewReply?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,editable: null == editable ? _self.editable : editable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of OwnReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewReplyCopyWith<$Res>? get reply {
    if (_self.reply == null) {
    return null;
  }

  return $ReviewReplyCopyWith<$Res>(_self.reply!, (value) {
    return _then(_self.copyWith(reply: value));
  });
}
}


/// @nodoc
mixin _$PublicReviewSettings {

 bool get active; bool get storefrontForm;
/// Create a copy of PublicReviewSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicReviewSettingsCopyWith<PublicReviewSettings> get copyWith => _$PublicReviewSettingsCopyWithImpl<PublicReviewSettings>(this as PublicReviewSettings, _$identity);

  /// Serializes this PublicReviewSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PublicReviewSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicReviewSettings&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.storefrontForm, _this.storefrontForm) || other.storefrontForm == _this.storefrontForm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PublicReviewSettings;
  return Object.hash(runtimeType,_this.active,_this.storefrontForm);
}

@override
String toString() {
  final _this = this as PublicReviewSettings;
  return 'PublicReviewSettings(active: ${_this.active}, storefrontForm: ${_this.storefrontForm})';
}


}

/// @nodoc
abstract mixin class $PublicReviewSettingsCopyWith<$Res>  {
  factory $PublicReviewSettingsCopyWith(PublicReviewSettings value, $Res Function(PublicReviewSettings) _then) = _$PublicReviewSettingsCopyWithImpl;
@useResult
$Res call({
 bool active, bool storefrontForm
});




}
/// @nodoc
class _$PublicReviewSettingsCopyWithImpl<$Res>
    implements $PublicReviewSettingsCopyWith<$Res> {
  _$PublicReviewSettingsCopyWithImpl(this._self, this._then);

  final PublicReviewSettings _self;
  final $Res Function(PublicReviewSettings) _then;

/// Create a copy of PublicReviewSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? storefrontForm = null,}) {
  return _then(PublicReviewSettings(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,storefrontForm: null == storefrontForm ? _self.storefrontForm : storefrontForm // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicReviewSettings].
extension PublicReviewSettingsPatterns on PublicReviewSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicReviewSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicReviewSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicReviewSettings value)  $default,){
final _that = this;
switch (_that) {
case _PublicReviewSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicReviewSettings value)?  $default,){
final _that = this;
switch (_that) {
case _PublicReviewSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  bool storefrontForm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicReviewSettings() when $default != null:
return $default(_that.active,_that.storefrontForm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  bool storefrontForm)  $default,) {final _that = this;
switch (_that) {
case _PublicReviewSettings():
return $default(_that.active,_that.storefrontForm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  bool storefrontForm)?  $default,) {final _that = this;
switch (_that) {
case _PublicReviewSettings() when $default != null:
return $default(_that.active,_that.storefrontForm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicReviewSettings implements PublicReviewSettings {
  const _PublicReviewSettings({this.active = true, this.storefrontForm = false});
  factory _PublicReviewSettings.fromJson(Map<String, dynamic> json) => _$PublicReviewSettingsFromJson(json);

@override@JsonKey() final  bool active;
@override@JsonKey() final  bool storefrontForm;

/// Create a copy of PublicReviewSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicReviewSettingsCopyWith<_PublicReviewSettings> get copyWith => __$PublicReviewSettingsCopyWithImpl<_PublicReviewSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicReviewSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicReviewSettings&&(identical(other.active, active) || other.active == active)&&(identical(other.storefrontForm, storefrontForm) || other.storefrontForm == storefrontForm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,active,storefrontForm);
}

@override
String toString() {
    return 'PublicReviewSettings(active: $active, storefrontForm: $storefrontForm)';
}


}

/// @nodoc
abstract mixin class _$PublicReviewSettingsCopyWith<$Res> implements $PublicReviewSettingsCopyWith<$Res> {
  factory _$PublicReviewSettingsCopyWith(_PublicReviewSettings value, $Res Function(_PublicReviewSettings) _then) = __$PublicReviewSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool active, bool storefrontForm
});




}
/// @nodoc
class __$PublicReviewSettingsCopyWithImpl<$Res>
    implements _$PublicReviewSettingsCopyWith<$Res> {
  __$PublicReviewSettingsCopyWithImpl(this._self, this._then);

  final _PublicReviewSettings _self;
  final $Res Function(_PublicReviewSettings) _then;

/// Create a copy of PublicReviewSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? storefrontForm = null,}) {
  return _then(_PublicReviewSettings(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,storefrontForm: null == storefrontForm ? _self.storefrontForm : storefrontForm // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ReviewPageMeta {

 int get total; int get perPage; int get currentPage; int get lastPage;
/// Create a copy of ReviewPageMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewPageMetaCopyWith<ReviewPageMeta> get copyWith => _$ReviewPageMetaCopyWithImpl<ReviewPageMeta>(this as ReviewPageMeta, _$identity);

  /// Serializes this ReviewPageMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewPageMeta;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewPageMeta&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.perPage, _this.perPage) || other.perPage == _this.perPage)&&(identical(other.currentPage, _this.currentPage) || other.currentPage == _this.currentPage)&&(identical(other.lastPage, _this.lastPage) || other.lastPage == _this.lastPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewPageMeta;
  return Object.hash(runtimeType,_this.total,_this.perPage,_this.currentPage,_this.lastPage);
}

@override
String toString() {
  final _this = this as ReviewPageMeta;
  return 'ReviewPageMeta(total: ${_this.total}, perPage: ${_this.perPage}, currentPage: ${_this.currentPage}, lastPage: ${_this.lastPage})';
}


}

/// @nodoc
abstract mixin class $ReviewPageMetaCopyWith<$Res>  {
  factory $ReviewPageMetaCopyWith(ReviewPageMeta value, $Res Function(ReviewPageMeta) _then) = _$ReviewPageMetaCopyWithImpl;
@useResult
$Res call({
 int total, int perPage, int currentPage, int lastPage
});




}
/// @nodoc
class _$ReviewPageMetaCopyWithImpl<$Res>
    implements $ReviewPageMetaCopyWith<$Res> {
  _$ReviewPageMetaCopyWithImpl(this._self, this._then);

  final ReviewPageMeta _self;
  final $Res Function(ReviewPageMeta) _then;

/// Create a copy of ReviewPageMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? perPage = null,Object? currentPage = null,Object? lastPage = null,}) {
  return _then(ReviewPageMeta(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewPageMeta].
extension ReviewPageMetaPatterns on ReviewPageMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewPageMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewPageMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewPageMeta value)  $default,){
final _that = this;
switch (_that) {
case _ReviewPageMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewPageMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewPageMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int perPage,  int currentPage,  int lastPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewPageMeta() when $default != null:
return $default(_that.total,_that.perPage,_that.currentPage,_that.lastPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int perPage,  int currentPage,  int lastPage)  $default,) {final _that = this;
switch (_that) {
case _ReviewPageMeta():
return $default(_that.total,_that.perPage,_that.currentPage,_that.lastPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int perPage,  int currentPage,  int lastPage)?  $default,) {final _that = this;
switch (_that) {
case _ReviewPageMeta() when $default != null:
return $default(_that.total,_that.perPage,_that.currentPage,_that.lastPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewPageMeta implements ReviewPageMeta {
  const _ReviewPageMeta({this.total = 0, this.perPage = 10, this.currentPage = 1, this.lastPage = 1});
  factory _ReviewPageMeta.fromJson(Map<String, dynamic> json) => _$ReviewPageMetaFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int perPage;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int lastPage;

/// Create a copy of ReviewPageMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewPageMetaCopyWith<_ReviewPageMeta> get copyWith => __$ReviewPageMetaCopyWithImpl<_ReviewPageMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewPageMetaToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewPageMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,perPage,currentPage,lastPage);
}

@override
String toString() {
    return 'ReviewPageMeta(total: $total, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage)';
}


}

/// @nodoc
abstract mixin class _$ReviewPageMetaCopyWith<$Res> implements $ReviewPageMetaCopyWith<$Res> {
  factory _$ReviewPageMetaCopyWith(_ReviewPageMeta value, $Res Function(_ReviewPageMeta) _then) = __$ReviewPageMetaCopyWithImpl;
@override @useResult
$Res call({
 int total, int perPage, int currentPage, int lastPage
});




}
/// @nodoc
class __$ReviewPageMetaCopyWithImpl<$Res>
    implements _$ReviewPageMetaCopyWith<$Res> {
  __$ReviewPageMetaCopyWithImpl(this._self, this._then);

  final _ReviewPageMeta _self;
  final $Res Function(_ReviewPageMeta) _then;

/// Create a copy of ReviewPageMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? perPage = null,Object? currentPage = null,Object? lastPage = null,}) {
  return _then(_ReviewPageMeta(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ProductReviewsPage {

 List<PublicReview> get data; ReviewPageMeta get meta; ReviewSummary get summary; PublicReviewSettings get settings;
/// Create a copy of ProductReviewsPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewsPageCopyWith<ProductReviewsPage> get copyWith => _$ProductReviewsPageCopyWithImpl<ProductReviewsPage>(this as ProductReviewsPage, _$identity);

  /// Serializes this ProductReviewsPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductReviewsPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReviewsPage&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.meta, _this.meta) || other.meta == _this.meta)&&(identical(other.summary, _this.summary) || other.summary == _this.summary)&&(identical(other.settings, _this.settings) || other.settings == _this.settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductReviewsPage;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),_this.meta,_this.summary,_this.settings);
}

@override
String toString() {
  final _this = this as ProductReviewsPage;
  return 'ProductReviewsPage(data: ${_this.data}, meta: ${_this.meta}, summary: ${_this.summary}, settings: ${_this.settings})';
}


}

/// @nodoc
abstract mixin class $ProductReviewsPageCopyWith<$Res>  {
  factory $ProductReviewsPageCopyWith(ProductReviewsPage value, $Res Function(ProductReviewsPage) _then) = _$ProductReviewsPageCopyWithImpl;
@useResult
$Res call({
 List<PublicReview> data, ReviewPageMeta meta, ReviewSummary summary, PublicReviewSettings settings
});


$ReviewPageMetaCopyWith<$Res> get meta;$ReviewSummaryCopyWith<$Res> get summary;$PublicReviewSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$ProductReviewsPageCopyWithImpl<$Res>
    implements $ProductReviewsPageCopyWith<$Res> {
  _$ProductReviewsPageCopyWithImpl(this._self, this._then);

  final ProductReviewsPage _self;
  final $Res Function(ProductReviewsPage) _then;

/// Create a copy of ProductReviewsPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,Object? summary = null,Object? settings = null,}) {
  return _then(ProductReviewsPage(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PublicReview>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ReviewPageMeta,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as ReviewSummary,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as PublicReviewSettings,
  ));
}
/// Create a copy of ProductReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewPageMetaCopyWith<$Res> get meta {
  
  return $ReviewPageMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of ProductReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewSummaryCopyWith<$Res> get summary {
  
  return $ReviewSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of ProductReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicReviewSettingsCopyWith<$Res> get settings {
  
  return $PublicReviewSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductReviewsPage].
extension ProductReviewsPagePatterns on ProductReviewsPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReviewsPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReviewsPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReviewsPage value)  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReviewsPage value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PublicReview> data,  ReviewPageMeta meta,  ReviewSummary summary,  PublicReviewSettings settings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReviewsPage() when $default != null:
return $default(_that.data,_that.meta,_that.summary,_that.settings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PublicReview> data,  ReviewPageMeta meta,  ReviewSummary summary,  PublicReviewSettings settings)  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsPage():
return $default(_that.data,_that.meta,_that.summary,_that.settings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PublicReview> data,  ReviewPageMeta meta,  ReviewSummary summary,  PublicReviewSettings settings)?  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsPage() when $default != null:
return $default(_that.data,_that.meta,_that.summary,_that.settings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductReviewsPage implements ProductReviewsPage {
  const _ProductReviewsPage({ List<PublicReview> data = const <PublicReview>[], required this.meta, required this.summary, required this.settings}): _data = data;
  factory _ProductReviewsPage.fromJson(Map<String, dynamic> json) => _$ProductReviewsPageFromJson(json);

 final  List<PublicReview> _data;
@override@JsonKey() List<PublicReview> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  ReviewPageMeta meta;
@override final  ReviewSummary summary;
@override final  PublicReviewSettings settings;

/// Create a copy of ProductReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewsPageCopyWith<_ProductReviewsPage> get copyWith => __$ProductReviewsPageCopyWithImpl<_ProductReviewsPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductReviewsPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReviewsPage&&const DeepCollectionEquality().equals(other.data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.settings, settings) || other.settings == settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,summary,settings);
}

@override
String toString() {
    return 'ProductReviewsPage(data: $data, meta: $meta, summary: $summary, settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewsPageCopyWith<$Res> implements $ProductReviewsPageCopyWith<$Res> {
  factory _$ProductReviewsPageCopyWith(_ProductReviewsPage value, $Res Function(_ProductReviewsPage) _then) = __$ProductReviewsPageCopyWithImpl;
@override @useResult
$Res call({
 List<PublicReview> data, ReviewPageMeta meta, ReviewSummary summary, PublicReviewSettings settings
});


@override $ReviewPageMetaCopyWith<$Res> get meta;@override $ReviewSummaryCopyWith<$Res> get summary;@override $PublicReviewSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class __$ProductReviewsPageCopyWithImpl<$Res>
    implements _$ProductReviewsPageCopyWith<$Res> {
  __$ProductReviewsPageCopyWithImpl(this._self, this._then);

  final _ProductReviewsPage _self;
  final $Res Function(_ProductReviewsPage) _then;

/// Create a copy of ProductReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? summary = null,Object? settings = null,}) {
  return _then(_ProductReviewsPage(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PublicReview>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ReviewPageMeta,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as ReviewSummary,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as PublicReviewSettings,
  ));
}

/// Create a copy of ProductReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewPageMetaCopyWith<$Res> get meta {
  
  return $ReviewPageMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of ProductReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewSummaryCopyWith<$Res> get summary {
  
  return $ReviewSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of ProductReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicReviewSettingsCopyWith<$Res> get settings {
  
  return $PublicReviewSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// @nodoc
mixin _$StorefrontReviewResult {

 String get id; String get status;
/// Create a copy of StorefrontReviewResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorefrontReviewResultCopyWith<StorefrontReviewResult> get copyWith => _$StorefrontReviewResultCopyWithImpl<StorefrontReviewResult>(this as StorefrontReviewResult, _$identity);

  /// Serializes this StorefrontReviewResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StorefrontReviewResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorefrontReviewResult&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StorefrontReviewResult;
  return Object.hash(runtimeType,_this.id,_this.status);
}

@override
String toString() {
  final _this = this as StorefrontReviewResult;
  return 'StorefrontReviewResult(id: ${_this.id}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $StorefrontReviewResultCopyWith<$Res>  {
  factory $StorefrontReviewResultCopyWith(StorefrontReviewResult value, $Res Function(StorefrontReviewResult) _then) = _$StorefrontReviewResultCopyWithImpl;
@useResult
$Res call({
 String id, String status
});




}
/// @nodoc
class _$StorefrontReviewResultCopyWithImpl<$Res>
    implements $StorefrontReviewResultCopyWith<$Res> {
  _$StorefrontReviewResultCopyWithImpl(this._self, this._then);

  final StorefrontReviewResult _self;
  final $Res Function(StorefrontReviewResult) _then;

/// Create a copy of StorefrontReviewResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,}) {
  return _then(StorefrontReviewResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StorefrontReviewResult].
extension StorefrontReviewResultPatterns on StorefrontReviewResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StorefrontReviewResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StorefrontReviewResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StorefrontReviewResult value)  $default,){
final _that = this;
switch (_that) {
case _StorefrontReviewResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StorefrontReviewResult value)?  $default,){
final _that = this;
switch (_that) {
case _StorefrontReviewResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StorefrontReviewResult() when $default != null:
return $default(_that.id,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status)  $default,) {final _that = this;
switch (_that) {
case _StorefrontReviewResult():
return $default(_that.id,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status)?  $default,) {final _that = this;
switch (_that) {
case _StorefrontReviewResult() when $default != null:
return $default(_that.id,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StorefrontReviewResult implements StorefrontReviewResult {
  const _StorefrontReviewResult({required this.id, this.status = ReviewStatus.pending});
  factory _StorefrontReviewResult.fromJson(Map<String, dynamic> json) => _$StorefrontReviewResultFromJson(json);

@override final  String id;
@override@JsonKey() final  String status;

/// Create a copy of StorefrontReviewResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StorefrontReviewResultCopyWith<_StorefrontReviewResult> get copyWith => __$StorefrontReviewResultCopyWithImpl<_StorefrontReviewResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StorefrontReviewResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StorefrontReviewResult&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,status);
}

@override
String toString() {
    return 'StorefrontReviewResult(id: $id, status: $status)';
}


}

/// @nodoc
abstract mixin class _$StorefrontReviewResultCopyWith<$Res> implements $StorefrontReviewResultCopyWith<$Res> {
  factory _$StorefrontReviewResultCopyWith(_StorefrontReviewResult value, $Res Function(_StorefrontReviewResult) _then) = __$StorefrontReviewResultCopyWithImpl;
@override @useResult
$Res call({
 String id, String status
});




}
/// @nodoc
class __$StorefrontReviewResultCopyWithImpl<$Res>
    implements _$StorefrontReviewResultCopyWith<$Res> {
  __$StorefrontReviewResultCopyWithImpl(this._self, this._then);

  final _StorefrontReviewResult _self;
  final $Res Function(_StorefrontReviewResult) _then;

/// Create a copy of StorefrontReviewResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,}) {
  return _then(_StorefrontReviewResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReviewLinkItemInput {

 String get productId; int get rating; String? get title; String? get body; List<String>? get photos;
/// Create a copy of ReviewLinkItemInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewLinkItemInputCopyWith<ReviewLinkItemInput> get copyWith => _$ReviewLinkItemInputCopyWithImpl<ReviewLinkItemInput>(this as ReviewLinkItemInput, _$identity);

  /// Serializes this ReviewLinkItemInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewLinkItemInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewLinkItemInput&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.body, _this.body) || other.body == _this.body)&&const DeepCollectionEquality().equals(other.photos, _this.photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewLinkItemInput;
  return Object.hash(runtimeType,_this.productId,_this.rating,_this.title,_this.body,const DeepCollectionEquality().hash(_this.photos));
}

@override
String toString() {
  final _this = this as ReviewLinkItemInput;
  return 'ReviewLinkItemInput(productId: ${_this.productId}, rating: ${_this.rating}, title: ${_this.title}, body: ${_this.body}, photos: ${_this.photos})';
}


}

/// @nodoc
abstract mixin class $ReviewLinkItemInputCopyWith<$Res>  {
  factory $ReviewLinkItemInputCopyWith(ReviewLinkItemInput value, $Res Function(ReviewLinkItemInput) _then) = _$ReviewLinkItemInputCopyWithImpl;
@useResult
$Res call({
 String productId, int rating, String? title, String? body, List<String>? photos
});




}
/// @nodoc
class _$ReviewLinkItemInputCopyWithImpl<$Res>
    implements $ReviewLinkItemInputCopyWith<$Res> {
  _$ReviewLinkItemInputCopyWithImpl(this._self, this._then);

  final ReviewLinkItemInput _self;
  final $Res Function(ReviewLinkItemInput) _then;

/// Create a copy of ReviewLinkItemInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? rating = null,Object? title = freezed,Object? body = freezed,Object? photos = freezed,}) {
  return _then(ReviewLinkItemInput(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewLinkItemInput].
extension ReviewLinkItemInputPatterns on ReviewLinkItemInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewLinkItemInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewLinkItemInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewLinkItemInput value)  $default,){
final _that = this;
switch (_that) {
case _ReviewLinkItemInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewLinkItemInput value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewLinkItemInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  int rating,  String? title,  String? body,  List<String>? photos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewLinkItemInput() when $default != null:
return $default(_that.productId,_that.rating,_that.title,_that.body,_that.photos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  int rating,  String? title,  String? body,  List<String>? photos)  $default,) {final _that = this;
switch (_that) {
case _ReviewLinkItemInput():
return $default(_that.productId,_that.rating,_that.title,_that.body,_that.photos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  int rating,  String? title,  String? body,  List<String>? photos)?  $default,) {final _that = this;
switch (_that) {
case _ReviewLinkItemInput() when $default != null:
return $default(_that.productId,_that.rating,_that.title,_that.body,_that.photos);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewLinkItemInput implements ReviewLinkItemInput {
  const _ReviewLinkItemInput({required this.productId, required this.rating, this.title, this.body,  List<String>? photos}): _photos = photos;
  factory _ReviewLinkItemInput.fromJson(Map<String, dynamic> json) => _$ReviewLinkItemInputFromJson(json);

@override final  String productId;
@override final  int rating;
@override final  String? title;
@override final  String? body;
 final  List<String>? _photos;
@override List<String>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ReviewLinkItemInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewLinkItemInputCopyWith<_ReviewLinkItemInput> get copyWith => __$ReviewLinkItemInputCopyWithImpl<_ReviewLinkItemInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewLinkItemInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewLinkItemInput&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.photos, _photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,rating,title,body,const DeepCollectionEquality().hash(_photos));
}

@override
String toString() {
    return 'ReviewLinkItemInput(productId: $productId, rating: $rating, title: $title, body: $body, photos: $photos)';
}


}

/// @nodoc
abstract mixin class _$ReviewLinkItemInputCopyWith<$Res> implements $ReviewLinkItemInputCopyWith<$Res> {
  factory _$ReviewLinkItemInputCopyWith(_ReviewLinkItemInput value, $Res Function(_ReviewLinkItemInput) _then) = __$ReviewLinkItemInputCopyWithImpl;
@override @useResult
$Res call({
 String productId, int rating, String? title, String? body, List<String>? photos
});




}
/// @nodoc
class __$ReviewLinkItemInputCopyWithImpl<$Res>
    implements _$ReviewLinkItemInputCopyWith<$Res> {
  __$ReviewLinkItemInputCopyWithImpl(this._self, this._then);

  final _ReviewLinkItemInput _self;
  final $Res Function(_ReviewLinkItemInput) _then;

/// Create a copy of ReviewLinkItemInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? rating = null,Object? title = freezed,Object? body = freezed,Object? photos = freezed,}) {
  return _then(_ReviewLinkItemInput(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$ReviewRequestItem {

 String get productId; String get name; String? get photoUrl; String? get variant; bool get active; OwnReview? get review;
/// Create a copy of ReviewRequestItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewRequestItemCopyWith<ReviewRequestItem> get copyWith => _$ReviewRequestItemCopyWithImpl<ReviewRequestItem>(this as ReviewRequestItem, _$identity);

  /// Serializes this ReviewRequestItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewRequestItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewRequestItem&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl)&&(identical(other.variant, _this.variant) || other.variant == _this.variant)&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.review, _this.review) || other.review == _this.review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewRequestItem;
  return Object.hash(runtimeType,_this.productId,_this.name,_this.photoUrl,_this.variant,_this.active,_this.review);
}

@override
String toString() {
  final _this = this as ReviewRequestItem;
  return 'ReviewRequestItem(productId: ${_this.productId}, name: ${_this.name}, photoUrl: ${_this.photoUrl}, variant: ${_this.variant}, active: ${_this.active}, review: ${_this.review})';
}


}

/// @nodoc
abstract mixin class $ReviewRequestItemCopyWith<$Res>  {
  factory $ReviewRequestItemCopyWith(ReviewRequestItem value, $Res Function(ReviewRequestItem) _then) = _$ReviewRequestItemCopyWithImpl;
@useResult
$Res call({
 String productId, String name, String? photoUrl, String? variant, bool active, OwnReview? review
});


$OwnReviewCopyWith<$Res>? get review;

}
/// @nodoc
class _$ReviewRequestItemCopyWithImpl<$Res>
    implements $ReviewRequestItemCopyWith<$Res> {
  _$ReviewRequestItemCopyWithImpl(this._self, this._then);

  final ReviewRequestItem _self;
  final $Res Function(ReviewRequestItem) _then;

/// Create a copy of ReviewRequestItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? name = null,Object? photoUrl = freezed,Object? variant = freezed,Object? active = null,Object? review = freezed,}) {
  return _then(ReviewRequestItem(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,review: freezed == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as OwnReview?,
  ));
}
/// Create a copy of ReviewRequestItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnReviewCopyWith<$Res>? get review {
    if (_self.review == null) {
    return null;
  }

  return $OwnReviewCopyWith<$Res>(_self.review!, (value) {
    return _then(_self.copyWith(review: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewRequestItem].
extension ReviewRequestItemPatterns on ReviewRequestItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewRequestItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewRequestItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewRequestItem value)  $default,){
final _that = this;
switch (_that) {
case _ReviewRequestItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewRequestItem value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewRequestItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String name,  String? photoUrl,  String? variant,  bool active,  OwnReview? review)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewRequestItem() when $default != null:
return $default(_that.productId,_that.name,_that.photoUrl,_that.variant,_that.active,_that.review);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String name,  String? photoUrl,  String? variant,  bool active,  OwnReview? review)  $default,) {final _that = this;
switch (_that) {
case _ReviewRequestItem():
return $default(_that.productId,_that.name,_that.photoUrl,_that.variant,_that.active,_that.review);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String name,  String? photoUrl,  String? variant,  bool active,  OwnReview? review)?  $default,) {final _that = this;
switch (_that) {
case _ReviewRequestItem() when $default != null:
return $default(_that.productId,_that.name,_that.photoUrl,_that.variant,_that.active,_that.review);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewRequestItem implements ReviewRequestItem {
  const _ReviewRequestItem({required this.productId, this.name = '', this.photoUrl, this.variant, this.active = true, this.review});
  factory _ReviewRequestItem.fromJson(Map<String, dynamic> json) => _$ReviewRequestItemFromJson(json);

@override final  String productId;
@override@JsonKey() final  String name;
@override final  String? photoUrl;
@override final  String? variant;
@override@JsonKey() final  bool active;
@override final  OwnReview? review;

/// Create a copy of ReviewRequestItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewRequestItemCopyWith<_ReviewRequestItem> get copyWith => __$ReviewRequestItemCopyWithImpl<_ReviewRequestItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewRequestItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewRequestItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.active, active) || other.active == active)&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,name,photoUrl,variant,active,review);
}

@override
String toString() {
    return 'ReviewRequestItem(productId: $productId, name: $name, photoUrl: $photoUrl, variant: $variant, active: $active, review: $review)';
}


}

/// @nodoc
abstract mixin class _$ReviewRequestItemCopyWith<$Res> implements $ReviewRequestItemCopyWith<$Res> {
  factory _$ReviewRequestItemCopyWith(_ReviewRequestItem value, $Res Function(_ReviewRequestItem) _then) = __$ReviewRequestItemCopyWithImpl;
@override @useResult
$Res call({
 String productId, String name, String? photoUrl, String? variant, bool active, OwnReview? review
});


@override $OwnReviewCopyWith<$Res>? get review;

}
/// @nodoc
class __$ReviewRequestItemCopyWithImpl<$Res>
    implements _$ReviewRequestItemCopyWith<$Res> {
  __$ReviewRequestItemCopyWithImpl(this._self, this._then);

  final _ReviewRequestItem _self;
  final $Res Function(_ReviewRequestItem) _then;

/// Create a copy of ReviewRequestItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? name = null,Object? photoUrl = freezed,Object? variant = freezed,Object? active = null,Object? review = freezed,}) {
  return _then(_ReviewRequestItem(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,review: freezed == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as OwnReview?,
  ));
}

/// Create a copy of ReviewRequestItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnReviewCopyWith<$Res>? get review {
    if (_self.review == null) {
    return null;
  }

  return $OwnReviewCopyWith<$Res>(_self.review!, (value) {
    return _then(_self.copyWith(review: value));
  });
}
}


/// @nodoc
mixin _$ReviewRequestStore {

 String get name; String? get logoUrl; String get url; String? get color; String? get phone; String? get whatsapp;
/// Create a copy of ReviewRequestStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewRequestStoreCopyWith<ReviewRequestStore> get copyWith => _$ReviewRequestStoreCopyWithImpl<ReviewRequestStore>(this as ReviewRequestStore, _$identity);

  /// Serializes this ReviewRequestStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewRequestStore;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewRequestStore&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.logoUrl, _this.logoUrl) || other.logoUrl == _this.logoUrl)&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.color, _this.color) || other.color == _this.color)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.whatsapp, _this.whatsapp) || other.whatsapp == _this.whatsapp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewRequestStore;
  return Object.hash(runtimeType,_this.name,_this.logoUrl,_this.url,_this.color,_this.phone,_this.whatsapp);
}

@override
String toString() {
  final _this = this as ReviewRequestStore;
  return 'ReviewRequestStore(name: ${_this.name}, logoUrl: ${_this.logoUrl}, url: ${_this.url}, color: ${_this.color}, phone: ${_this.phone}, whatsapp: ${_this.whatsapp})';
}


}

/// @nodoc
abstract mixin class $ReviewRequestStoreCopyWith<$Res>  {
  factory $ReviewRequestStoreCopyWith(ReviewRequestStore value, $Res Function(ReviewRequestStore) _then) = _$ReviewRequestStoreCopyWithImpl;
@useResult
$Res call({
 String name, String? logoUrl, String url, String? color, String? phone, String? whatsapp
});




}
/// @nodoc
class _$ReviewRequestStoreCopyWithImpl<$Res>
    implements $ReviewRequestStoreCopyWith<$Res> {
  _$ReviewRequestStoreCopyWithImpl(this._self, this._then);

  final ReviewRequestStore _self;
  final $Res Function(ReviewRequestStore) _then;

/// Create a copy of ReviewRequestStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? logoUrl = freezed,Object? url = null,Object? color = freezed,Object? phone = freezed,Object? whatsapp = freezed,}) {
  return _then(ReviewRequestStore(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,whatsapp: freezed == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewRequestStore].
extension ReviewRequestStorePatterns on ReviewRequestStore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewRequestStore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewRequestStore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewRequestStore value)  $default,){
final _that = this;
switch (_that) {
case _ReviewRequestStore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewRequestStore value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewRequestStore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? logoUrl,  String url,  String? color,  String? phone,  String? whatsapp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewRequestStore() when $default != null:
return $default(_that.name,_that.logoUrl,_that.url,_that.color,_that.phone,_that.whatsapp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? logoUrl,  String url,  String? color,  String? phone,  String? whatsapp)  $default,) {final _that = this;
switch (_that) {
case _ReviewRequestStore():
return $default(_that.name,_that.logoUrl,_that.url,_that.color,_that.phone,_that.whatsapp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? logoUrl,  String url,  String? color,  String? phone,  String? whatsapp)?  $default,) {final _that = this;
switch (_that) {
case _ReviewRequestStore() when $default != null:
return $default(_that.name,_that.logoUrl,_that.url,_that.color,_that.phone,_that.whatsapp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewRequestStore implements ReviewRequestStore {
  const _ReviewRequestStore({required this.name, this.logoUrl, required this.url, this.color, this.phone, this.whatsapp});
  factory _ReviewRequestStore.fromJson(Map<String, dynamic> json) => _$ReviewRequestStoreFromJson(json);

@override final  String name;
@override final  String? logoUrl;
@override final  String url;
@override final  String? color;
@override final  String? phone;
@override final  String? whatsapp;

/// Create a copy of ReviewRequestStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewRequestStoreCopyWith<_ReviewRequestStore> get copyWith => __$ReviewRequestStoreCopyWithImpl<_ReviewRequestStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewRequestStoreToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewRequestStore&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.url, url) || other.url == url)&&(identical(other.color, color) || other.color == color)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,logoUrl,url,color,phone,whatsapp);
}

@override
String toString() {
    return 'ReviewRequestStore(name: $name, logoUrl: $logoUrl, url: $url, color: $color, phone: $phone, whatsapp: $whatsapp)';
}


}

/// @nodoc
abstract mixin class _$ReviewRequestStoreCopyWith<$Res> implements $ReviewRequestStoreCopyWith<$Res> {
  factory _$ReviewRequestStoreCopyWith(_ReviewRequestStore value, $Res Function(_ReviewRequestStore) _then) = __$ReviewRequestStoreCopyWithImpl;
@override @useResult
$Res call({
 String name, String? logoUrl, String url, String? color, String? phone, String? whatsapp
});




}
/// @nodoc
class __$ReviewRequestStoreCopyWithImpl<$Res>
    implements _$ReviewRequestStoreCopyWith<$Res> {
  __$ReviewRequestStoreCopyWithImpl(this._self, this._then);

  final _ReviewRequestStore _self;
  final $Res Function(_ReviewRequestStore) _then;

/// Create a copy of ReviewRequestStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? logoUrl = freezed,Object? url = null,Object? color = freezed,Object? phone = freezed,Object? whatsapp = freezed,}) {
  return _then(_ReviewRequestStore(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,whatsapp: freezed == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReviewRequest {

 bool get active; bool get open;/// `disabled`, `not_delivered`, `window_closed` or null.
 String? get reason; String? get deliveredAt; String? get closesAt; String? get customerFirstName;/// The name a review shows when the customer does not stay anonymous.
 String? get authorPreview; bool get anonymous; ReviewRequestStore? get store; List<ReviewRequestItem> get items;
/// Create a copy of ReviewRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewRequestCopyWith<ReviewRequest> get copyWith => _$ReviewRequestCopyWithImpl<ReviewRequest>(this as ReviewRequest, _$identity);

  /// Serializes this ReviewRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewRequest&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.open, _this.open) || other.open == _this.open)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.deliveredAt, _this.deliveredAt) || other.deliveredAt == _this.deliveredAt)&&(identical(other.closesAt, _this.closesAt) || other.closesAt == _this.closesAt)&&(identical(other.customerFirstName, _this.customerFirstName) || other.customerFirstName == _this.customerFirstName)&&(identical(other.authorPreview, _this.authorPreview) || other.authorPreview == _this.authorPreview)&&(identical(other.anonymous, _this.anonymous) || other.anonymous == _this.anonymous)&&(identical(other.store, _this.store) || other.store == _this.store)&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewRequest;
  return Object.hash(runtimeType,_this.active,_this.open,_this.reason,_this.deliveredAt,_this.closesAt,_this.customerFirstName,_this.authorPreview,_this.anonymous,_this.store,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as ReviewRequest;
  return 'ReviewRequest(active: ${_this.active}, open: ${_this.open}, reason: ${_this.reason}, deliveredAt: ${_this.deliveredAt}, closesAt: ${_this.closesAt}, customerFirstName: ${_this.customerFirstName}, authorPreview: ${_this.authorPreview}, anonymous: ${_this.anonymous}, store: ${_this.store}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $ReviewRequestCopyWith<$Res>  {
  factory $ReviewRequestCopyWith(ReviewRequest value, $Res Function(ReviewRequest) _then) = _$ReviewRequestCopyWithImpl;
@useResult
$Res call({
 bool active, bool open, String? reason, String? deliveredAt, String? closesAt, String? customerFirstName, String? authorPreview, bool anonymous, ReviewRequestStore? store, List<ReviewRequestItem> items
});


$ReviewRequestStoreCopyWith<$Res>? get store;

}
/// @nodoc
class _$ReviewRequestCopyWithImpl<$Res>
    implements $ReviewRequestCopyWith<$Res> {
  _$ReviewRequestCopyWithImpl(this._self, this._then);

  final ReviewRequest _self;
  final $Res Function(ReviewRequest) _then;

/// Create a copy of ReviewRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? open = null,Object? reason = freezed,Object? deliveredAt = freezed,Object? closesAt = freezed,Object? customerFirstName = freezed,Object? authorPreview = freezed,Object? anonymous = null,Object? store = freezed,Object? items = null,}) {
  return _then(ReviewRequest(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as bool,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as String?,closesAt: freezed == closesAt ? _self.closesAt : closesAt // ignore: cast_nullable_to_non_nullable
as String?,customerFirstName: freezed == customerFirstName ? _self.customerFirstName : customerFirstName // ignore: cast_nullable_to_non_nullable
as String?,authorPreview: freezed == authorPreview ? _self.authorPreview : authorPreview // ignore: cast_nullable_to_non_nullable
as String?,anonymous: null == anonymous ? _self.anonymous : anonymous // ignore: cast_nullable_to_non_nullable
as bool,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as ReviewRequestStore?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ReviewRequestItem>,
  ));
}
/// Create a copy of ReviewRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewRequestStoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $ReviewRequestStoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewRequest].
extension ReviewRequestPatterns on ReviewRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReviewRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  bool open,  String? reason,  String? deliveredAt,  String? closesAt,  String? customerFirstName,  String? authorPreview,  bool anonymous,  ReviewRequestStore? store,  List<ReviewRequestItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewRequest() when $default != null:
return $default(_that.active,_that.open,_that.reason,_that.deliveredAt,_that.closesAt,_that.customerFirstName,_that.authorPreview,_that.anonymous,_that.store,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  bool open,  String? reason,  String? deliveredAt,  String? closesAt,  String? customerFirstName,  String? authorPreview,  bool anonymous,  ReviewRequestStore? store,  List<ReviewRequestItem> items)  $default,) {final _that = this;
switch (_that) {
case _ReviewRequest():
return $default(_that.active,_that.open,_that.reason,_that.deliveredAt,_that.closesAt,_that.customerFirstName,_that.authorPreview,_that.anonymous,_that.store,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  bool open,  String? reason,  String? deliveredAt,  String? closesAt,  String? customerFirstName,  String? authorPreview,  bool anonymous,  ReviewRequestStore? store,  List<ReviewRequestItem> items)?  $default,) {final _that = this;
switch (_that) {
case _ReviewRequest() when $default != null:
return $default(_that.active,_that.open,_that.reason,_that.deliveredAt,_that.closesAt,_that.customerFirstName,_that.authorPreview,_that.anonymous,_that.store,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewRequest implements ReviewRequest {
  const _ReviewRequest({this.active = true, this.open = false, this.reason, this.deliveredAt, this.closesAt, this.customerFirstName, this.authorPreview, this.anonymous = false, this.store,  List<ReviewRequestItem> items = const <ReviewRequestItem>[]}): _items = items;
  factory _ReviewRequest.fromJson(Map<String, dynamic> json) => _$ReviewRequestFromJson(json);

@override@JsonKey() final  bool active;
@override@JsonKey() final  bool open;
/// `disabled`, `not_delivered`, `window_closed` or null.
@override final  String? reason;
@override final  String? deliveredAt;
@override final  String? closesAt;
@override final  String? customerFirstName;
/// The name a review shows when the customer does not stay anonymous.
@override final  String? authorPreview;
@override@JsonKey() final  bool anonymous;
@override final  ReviewRequestStore? store;
 final  List<ReviewRequestItem> _items;
@override@JsonKey() List<ReviewRequestItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ReviewRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewRequestCopyWith<_ReviewRequest> get copyWith => __$ReviewRequestCopyWithImpl<_ReviewRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewRequest&&(identical(other.active, active) || other.active == active)&&(identical(other.open, open) || other.open == open)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.closesAt, closesAt) || other.closesAt == closesAt)&&(identical(other.customerFirstName, customerFirstName) || other.customerFirstName == customerFirstName)&&(identical(other.authorPreview, authorPreview) || other.authorPreview == authorPreview)&&(identical(other.anonymous, anonymous) || other.anonymous == anonymous)&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,active,open,reason,deliveredAt,closesAt,customerFirstName,authorPreview,anonymous,store,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'ReviewRequest(active: $active, open: $open, reason: $reason, deliveredAt: $deliveredAt, closesAt: $closesAt, customerFirstName: $customerFirstName, authorPreview: $authorPreview, anonymous: $anonymous, store: $store, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ReviewRequestCopyWith<$Res> implements $ReviewRequestCopyWith<$Res> {
  factory _$ReviewRequestCopyWith(_ReviewRequest value, $Res Function(_ReviewRequest) _then) = __$ReviewRequestCopyWithImpl;
@override @useResult
$Res call({
 bool active, bool open, String? reason, String? deliveredAt, String? closesAt, String? customerFirstName, String? authorPreview, bool anonymous, ReviewRequestStore? store, List<ReviewRequestItem> items
});


@override $ReviewRequestStoreCopyWith<$Res>? get store;

}
/// @nodoc
class __$ReviewRequestCopyWithImpl<$Res>
    implements _$ReviewRequestCopyWith<$Res> {
  __$ReviewRequestCopyWithImpl(this._self, this._then);

  final _ReviewRequest _self;
  final $Res Function(_ReviewRequest) _then;

/// Create a copy of ReviewRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? open = null,Object? reason = freezed,Object? deliveredAt = freezed,Object? closesAt = freezed,Object? customerFirstName = freezed,Object? authorPreview = freezed,Object? anonymous = null,Object? store = freezed,Object? items = null,}) {
  return _then(_ReviewRequest(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as bool,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as String?,closesAt: freezed == closesAt ? _self.closesAt : closesAt // ignore: cast_nullable_to_non_nullable
as String?,customerFirstName: freezed == customerFirstName ? _self.customerFirstName : customerFirstName // ignore: cast_nullable_to_non_nullable
as String?,authorPreview: freezed == authorPreview ? _self.authorPreview : authorPreview // ignore: cast_nullable_to_non_nullable
as String?,anonymous: null == anonymous ? _self.anonymous : anonymous // ignore: cast_nullable_to_non_nullable
as bool,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as ReviewRequestStore?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ReviewRequestItem>,
  ));
}

/// Create a copy of ReviewRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewRequestStoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $ReviewRequestStoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// @nodoc
mixin _$MerchantReviewProduct {

 String get id; String get name; String? get photoUrl; String get slug;
/// Create a copy of MerchantReviewProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantReviewProductCopyWith<MerchantReviewProduct> get copyWith => _$MerchantReviewProductCopyWithImpl<MerchantReviewProduct>(this as MerchantReviewProduct, _$identity);

  /// Serializes this MerchantReviewProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MerchantReviewProduct;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantReviewProduct&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl)&&(identical(other.slug, _this.slug) || other.slug == _this.slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MerchantReviewProduct;
  return Object.hash(runtimeType,_this.id,_this.name,_this.photoUrl,_this.slug);
}

@override
String toString() {
  final _this = this as MerchantReviewProduct;
  return 'MerchantReviewProduct(id: ${_this.id}, name: ${_this.name}, photoUrl: ${_this.photoUrl}, slug: ${_this.slug})';
}


}

/// @nodoc
abstract mixin class $MerchantReviewProductCopyWith<$Res>  {
  factory $MerchantReviewProductCopyWith(MerchantReviewProduct value, $Res Function(MerchantReviewProduct) _then) = _$MerchantReviewProductCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? photoUrl, String slug
});




}
/// @nodoc
class _$MerchantReviewProductCopyWithImpl<$Res>
    implements $MerchantReviewProductCopyWith<$Res> {
  _$MerchantReviewProductCopyWithImpl(this._self, this._then);

  final MerchantReviewProduct _self;
  final $Res Function(MerchantReviewProduct) _then;

/// Create a copy of MerchantReviewProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? photoUrl = freezed,Object? slug = null,}) {
  return _then(MerchantReviewProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantReviewProduct].
extension MerchantReviewProductPatterns on MerchantReviewProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantReviewProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantReviewProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantReviewProduct value)  $default,){
final _that = this;
switch (_that) {
case _MerchantReviewProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantReviewProduct value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantReviewProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? photoUrl,  String slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantReviewProduct() when $default != null:
return $default(_that.id,_that.name,_that.photoUrl,_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? photoUrl,  String slug)  $default,) {final _that = this;
switch (_that) {
case _MerchantReviewProduct():
return $default(_that.id,_that.name,_that.photoUrl,_that.slug);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? photoUrl,  String slug)?  $default,) {final _that = this;
switch (_that) {
case _MerchantReviewProduct() when $default != null:
return $default(_that.id,_that.name,_that.photoUrl,_that.slug);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantReviewProduct implements MerchantReviewProduct {
  const _MerchantReviewProduct({required this.id, this.name = '', this.photoUrl, this.slug = ''});
  factory _MerchantReviewProduct.fromJson(Map<String, dynamic> json) => _$MerchantReviewProductFromJson(json);

@override final  String id;
@override@JsonKey() final  String name;
@override final  String? photoUrl;
@override@JsonKey() final  String slug;

/// Create a copy of MerchantReviewProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantReviewProductCopyWith<_MerchantReviewProduct> get copyWith => __$MerchantReviewProductCopyWithImpl<_MerchantReviewProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantReviewProductToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantReviewProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,photoUrl,slug);
}

@override
String toString() {
    return 'MerchantReviewProduct(id: $id, name: $name, photoUrl: $photoUrl, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$MerchantReviewProductCopyWith<$Res> implements $MerchantReviewProductCopyWith<$Res> {
  factory _$MerchantReviewProductCopyWith(_MerchantReviewProduct value, $Res Function(_MerchantReviewProduct) _then) = __$MerchantReviewProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? photoUrl, String slug
});




}
/// @nodoc
class __$MerchantReviewProductCopyWithImpl<$Res>
    implements _$MerchantReviewProductCopyWith<$Res> {
  __$MerchantReviewProductCopyWithImpl(this._self, this._then);

  final _MerchantReviewProduct _self;
  final $Res Function(_MerchantReviewProduct) _then;

/// Create a copy of MerchantReviewProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? photoUrl = freezed,Object? slug = null,}) {
  return _then(_MerchantReviewProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MerchantReview {

 String get id; String get storeId; String get productId; String? get orderId; String get source; String get status; bool get verified; int get rating; String? get title; String? get body; List<String> get photos; String get authorName; String? get variantLabel; String? get locale; String? get replyBody; String? get replyAt; String? get moderatedBy; String? get publishedAt; String? get createdAt; String? get updatedAt; MerchantReviewProduct? get product;
/// Create a copy of MerchantReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantReviewCopyWith<MerchantReview> get copyWith => _$MerchantReviewCopyWithImpl<MerchantReview>(this as MerchantReview, _$identity);

  /// Serializes this MerchantReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MerchantReview;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantReview&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.storeId, _this.storeId) || other.storeId == _this.storeId)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.orderId, _this.orderId) || other.orderId == _this.orderId)&&(identical(other.source, _this.source) || other.source == _this.source)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.verified, _this.verified) || other.verified == _this.verified)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.body, _this.body) || other.body == _this.body)&&const DeepCollectionEquality().equals(other.photos, _this.photos)&&(identical(other.authorName, _this.authorName) || other.authorName == _this.authorName)&&(identical(other.variantLabel, _this.variantLabel) || other.variantLabel == _this.variantLabel)&&(identical(other.locale, _this.locale) || other.locale == _this.locale)&&(identical(other.replyBody, _this.replyBody) || other.replyBody == _this.replyBody)&&(identical(other.replyAt, _this.replyAt) || other.replyAt == _this.replyAt)&&(identical(other.moderatedBy, _this.moderatedBy) || other.moderatedBy == _this.moderatedBy)&&(identical(other.publishedAt, _this.publishedAt) || other.publishedAt == _this.publishedAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.product, _this.product) || other.product == _this.product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MerchantReview;
  return Object.hashAll([runtimeType,_this.id,_this.storeId,_this.productId,_this.orderId,_this.source,_this.status,_this.verified,_this.rating,_this.title,_this.body,const DeepCollectionEquality().hash(_this.photos),_this.authorName,_this.variantLabel,_this.locale,_this.replyBody,_this.replyAt,_this.moderatedBy,_this.publishedAt,_this.createdAt,_this.updatedAt,_this.product]);
}

@override
String toString() {
  final _this = this as MerchantReview;
  return 'MerchantReview(id: ${_this.id}, storeId: ${_this.storeId}, productId: ${_this.productId}, orderId: ${_this.orderId}, source: ${_this.source}, status: ${_this.status}, verified: ${_this.verified}, rating: ${_this.rating}, title: ${_this.title}, body: ${_this.body}, photos: ${_this.photos}, authorName: ${_this.authorName}, variantLabel: ${_this.variantLabel}, locale: ${_this.locale}, replyBody: ${_this.replyBody}, replyAt: ${_this.replyAt}, moderatedBy: ${_this.moderatedBy}, publishedAt: ${_this.publishedAt}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, product: ${_this.product})';
}


}

/// @nodoc
abstract mixin class $MerchantReviewCopyWith<$Res>  {
  factory $MerchantReviewCopyWith(MerchantReview value, $Res Function(MerchantReview) _then) = _$MerchantReviewCopyWithImpl;
@useResult
$Res call({
 String id, String storeId, String productId, String? orderId, String source, String status, bool verified, int rating, String? title, String? body, List<String> photos, String authorName, String? variantLabel, String? locale, String? replyBody, String? replyAt, String? moderatedBy, String? publishedAt, String? createdAt, String? updatedAt, MerchantReviewProduct? product
});


$MerchantReviewProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$MerchantReviewCopyWithImpl<$Res>
    implements $MerchantReviewCopyWith<$Res> {
  _$MerchantReviewCopyWithImpl(this._self, this._then);

  final MerchantReview _self;
  final $Res Function(MerchantReview) _then;

/// Create a copy of MerchantReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? productId = null,Object? orderId = freezed,Object? source = null,Object? status = null,Object? verified = null,Object? rating = null,Object? title = freezed,Object? body = freezed,Object? photos = null,Object? authorName = null,Object? variantLabel = freezed,Object? locale = freezed,Object? replyBody = freezed,Object? replyAt = freezed,Object? moderatedBy = freezed,Object? publishedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? product = freezed,}) {
  return _then(MerchantReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,variantLabel: freezed == variantLabel ? _self.variantLabel : variantLabel // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,replyBody: freezed == replyBody ? _self.replyBody : replyBody // ignore: cast_nullable_to_non_nullable
as String?,replyAt: freezed == replyAt ? _self.replyAt : replyAt // ignore: cast_nullable_to_non_nullable
as String?,moderatedBy: freezed == moderatedBy ? _self.moderatedBy : moderatedBy // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MerchantReviewProduct?,
  ));
}
/// Create a copy of MerchantReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MerchantReviewProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $MerchantReviewProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [MerchantReview].
extension MerchantReviewPatterns on MerchantReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantReview value)  $default,){
final _that = this;
switch (_that) {
case _MerchantReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantReview value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantReview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String storeId,  String productId,  String? orderId,  String source,  String status,  bool verified,  int rating,  String? title,  String? body,  List<String> photos,  String authorName,  String? variantLabel,  String? locale,  String? replyBody,  String? replyAt,  String? moderatedBy,  String? publishedAt,  String? createdAt,  String? updatedAt,  MerchantReviewProduct? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantReview() when $default != null:
return $default(_that.id,_that.storeId,_that.productId,_that.orderId,_that.source,_that.status,_that.verified,_that.rating,_that.title,_that.body,_that.photos,_that.authorName,_that.variantLabel,_that.locale,_that.replyBody,_that.replyAt,_that.moderatedBy,_that.publishedAt,_that.createdAt,_that.updatedAt,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String storeId,  String productId,  String? orderId,  String source,  String status,  bool verified,  int rating,  String? title,  String? body,  List<String> photos,  String authorName,  String? variantLabel,  String? locale,  String? replyBody,  String? replyAt,  String? moderatedBy,  String? publishedAt,  String? createdAt,  String? updatedAt,  MerchantReviewProduct? product)  $default,) {final _that = this;
switch (_that) {
case _MerchantReview():
return $default(_that.id,_that.storeId,_that.productId,_that.orderId,_that.source,_that.status,_that.verified,_that.rating,_that.title,_that.body,_that.photos,_that.authorName,_that.variantLabel,_that.locale,_that.replyBody,_that.replyAt,_that.moderatedBy,_that.publishedAt,_that.createdAt,_that.updatedAt,_that.product);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String storeId,  String productId,  String? orderId,  String source,  String status,  bool verified,  int rating,  String? title,  String? body,  List<String> photos,  String authorName,  String? variantLabel,  String? locale,  String? replyBody,  String? replyAt,  String? moderatedBy,  String? publishedAt,  String? createdAt,  String? updatedAt,  MerchantReviewProduct? product)?  $default,) {final _that = this;
switch (_that) {
case _MerchantReview() when $default != null:
return $default(_that.id,_that.storeId,_that.productId,_that.orderId,_that.source,_that.status,_that.verified,_that.rating,_that.title,_that.body,_that.photos,_that.authorName,_that.variantLabel,_that.locale,_that.replyBody,_that.replyAt,_that.moderatedBy,_that.publishedAt,_that.createdAt,_that.updatedAt,_that.product);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantReview implements MerchantReview {
  const _MerchantReview({required this.id, required this.storeId, required this.productId, this.orderId, this.source = ReviewSource.order, this.status = ReviewStatus.pending, this.verified = false, required this.rating, this.title, this.body,  List<String> photos = const <String>[], this.authorName = '', this.variantLabel, this.locale, this.replyBody, this.replyAt, this.moderatedBy, this.publishedAt, this.createdAt, this.updatedAt, this.product}): _photos = photos;
  factory _MerchantReview.fromJson(Map<String, dynamic> json) => _$MerchantReviewFromJson(json);

@override final  String id;
@override final  String storeId;
@override final  String productId;
@override final  String? orderId;
@override@JsonKey() final  String source;
@override@JsonKey() final  String status;
@override@JsonKey() final  bool verified;
@override final  int rating;
@override final  String? title;
@override final  String? body;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override@JsonKey() final  String authorName;
@override final  String? variantLabel;
@override final  String? locale;
@override final  String? replyBody;
@override final  String? replyAt;
@override final  String? moderatedBy;
@override final  String? publishedAt;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  MerchantReviewProduct? product;

/// Create a copy of MerchantReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantReviewCopyWith<_MerchantReview> get copyWith => __$MerchantReviewCopyWithImpl<_MerchantReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantReviewToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantReview&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.source, source) || other.source == source)&&(identical(other.status, status) || other.status == status)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.photos, _photos)&&(identical(other.authorName, authorName) || other.authorName == authorName)&&(identical(other.variantLabel, variantLabel) || other.variantLabel == variantLabel)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.replyBody, replyBody) || other.replyBody == replyBody)&&(identical(other.replyAt, replyAt) || other.replyAt == replyAt)&&(identical(other.moderatedBy, moderatedBy) || other.moderatedBy == moderatedBy)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,storeId,productId,orderId,source,status,verified,rating,title,body,const DeepCollectionEquality().hash(_photos),authorName,variantLabel,locale,replyBody,replyAt,moderatedBy,publishedAt,createdAt,updatedAt,product]);
}

@override
String toString() {
    return 'MerchantReview(id: $id, storeId: $storeId, productId: $productId, orderId: $orderId, source: $source, status: $status, verified: $verified, rating: $rating, title: $title, body: $body, photos: $photos, authorName: $authorName, variantLabel: $variantLabel, locale: $locale, replyBody: $replyBody, replyAt: $replyAt, moderatedBy: $moderatedBy, publishedAt: $publishedAt, createdAt: $createdAt, updatedAt: $updatedAt, product: $product)';
}


}

/// @nodoc
abstract mixin class _$MerchantReviewCopyWith<$Res> implements $MerchantReviewCopyWith<$Res> {
  factory _$MerchantReviewCopyWith(_MerchantReview value, $Res Function(_MerchantReview) _then) = __$MerchantReviewCopyWithImpl;
@override @useResult
$Res call({
 String id, String storeId, String productId, String? orderId, String source, String status, bool verified, int rating, String? title, String? body, List<String> photos, String authorName, String? variantLabel, String? locale, String? replyBody, String? replyAt, String? moderatedBy, String? publishedAt, String? createdAt, String? updatedAt, MerchantReviewProduct? product
});


@override $MerchantReviewProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$MerchantReviewCopyWithImpl<$Res>
    implements _$MerchantReviewCopyWith<$Res> {
  __$MerchantReviewCopyWithImpl(this._self, this._then);

  final _MerchantReview _self;
  final $Res Function(_MerchantReview) _then;

/// Create a copy of MerchantReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? productId = null,Object? orderId = freezed,Object? source = null,Object? status = null,Object? verified = null,Object? rating = null,Object? title = freezed,Object? body = freezed,Object? photos = null,Object? authorName = null,Object? variantLabel = freezed,Object? locale = freezed,Object? replyBody = freezed,Object? replyAt = freezed,Object? moderatedBy = freezed,Object? publishedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? product = freezed,}) {
  return _then(_MerchantReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,variantLabel: freezed == variantLabel ? _self.variantLabel : variantLabel // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,replyBody: freezed == replyBody ? _self.replyBody : replyBody // ignore: cast_nullable_to_non_nullable
as String?,replyAt: freezed == replyAt ? _self.replyAt : replyAt // ignore: cast_nullable_to_non_nullable
as String?,moderatedBy: freezed == moderatedBy ? _self.moderatedBy : moderatedBy // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MerchantReviewProduct?,
  ));
}

/// Create a copy of MerchantReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MerchantReviewProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $MerchantReviewProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$ReviewStatusCounts {

 int get pending; int get published; int get hidden; int get rejected;
/// Create a copy of ReviewStatusCounts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewStatusCountsCopyWith<ReviewStatusCounts> get copyWith => _$ReviewStatusCountsCopyWithImpl<ReviewStatusCounts>(this as ReviewStatusCounts, _$identity);

  /// Serializes this ReviewStatusCounts to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewStatusCounts;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewStatusCounts&&(identical(other.pending, _this.pending) || other.pending == _this.pending)&&(identical(other.published, _this.published) || other.published == _this.published)&&(identical(other.hidden, _this.hidden) || other.hidden == _this.hidden)&&(identical(other.rejected, _this.rejected) || other.rejected == _this.rejected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewStatusCounts;
  return Object.hash(runtimeType,_this.pending,_this.published,_this.hidden,_this.rejected);
}

@override
String toString() {
  final _this = this as ReviewStatusCounts;
  return 'ReviewStatusCounts(pending: ${_this.pending}, published: ${_this.published}, hidden: ${_this.hidden}, rejected: ${_this.rejected})';
}


}

/// @nodoc
abstract mixin class $ReviewStatusCountsCopyWith<$Res>  {
  factory $ReviewStatusCountsCopyWith(ReviewStatusCounts value, $Res Function(ReviewStatusCounts) _then) = _$ReviewStatusCountsCopyWithImpl;
@useResult
$Res call({
 int pending, int published, int hidden, int rejected
});




}
/// @nodoc
class _$ReviewStatusCountsCopyWithImpl<$Res>
    implements $ReviewStatusCountsCopyWith<$Res> {
  _$ReviewStatusCountsCopyWithImpl(this._self, this._then);

  final ReviewStatusCounts _self;
  final $Res Function(ReviewStatusCounts) _then;

/// Create a copy of ReviewStatusCounts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pending = null,Object? published = null,Object? hidden = null,Object? rejected = null,}) {
  return _then(ReviewStatusCounts(
pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int,published: null == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as int,hidden: null == hidden ? _self.hidden : hidden // ignore: cast_nullable_to_non_nullable
as int,rejected: null == rejected ? _self.rejected : rejected // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewStatusCounts].
extension ReviewStatusCountsPatterns on ReviewStatusCounts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewStatusCounts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewStatusCounts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewStatusCounts value)  $default,){
final _that = this;
switch (_that) {
case _ReviewStatusCounts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewStatusCounts value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewStatusCounts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int pending,  int published,  int hidden,  int rejected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewStatusCounts() when $default != null:
return $default(_that.pending,_that.published,_that.hidden,_that.rejected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int pending,  int published,  int hidden,  int rejected)  $default,) {final _that = this;
switch (_that) {
case _ReviewStatusCounts():
return $default(_that.pending,_that.published,_that.hidden,_that.rejected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int pending,  int published,  int hidden,  int rejected)?  $default,) {final _that = this;
switch (_that) {
case _ReviewStatusCounts() when $default != null:
return $default(_that.pending,_that.published,_that.hidden,_that.rejected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewStatusCounts implements ReviewStatusCounts {
  const _ReviewStatusCounts({this.pending = 0, this.published = 0, this.hidden = 0, this.rejected = 0});
  factory _ReviewStatusCounts.fromJson(Map<String, dynamic> json) => _$ReviewStatusCountsFromJson(json);

@override@JsonKey() final  int pending;
@override@JsonKey() final  int published;
@override@JsonKey() final  int hidden;
@override@JsonKey() final  int rejected;

/// Create a copy of ReviewStatusCounts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewStatusCountsCopyWith<_ReviewStatusCounts> get copyWith => __$ReviewStatusCountsCopyWithImpl<_ReviewStatusCounts>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewStatusCountsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewStatusCounts&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.published, published) || other.published == published)&&(identical(other.hidden, hidden) || other.hidden == hidden)&&(identical(other.rejected, rejected) || other.rejected == rejected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,pending,published,hidden,rejected);
}

@override
String toString() {
    return 'ReviewStatusCounts(pending: $pending, published: $published, hidden: $hidden, rejected: $rejected)';
}


}

/// @nodoc
abstract mixin class _$ReviewStatusCountsCopyWith<$Res> implements $ReviewStatusCountsCopyWith<$Res> {
  factory _$ReviewStatusCountsCopyWith(_ReviewStatusCounts value, $Res Function(_ReviewStatusCounts) _then) = __$ReviewStatusCountsCopyWithImpl;
@override @useResult
$Res call({
 int pending, int published, int hidden, int rejected
});




}
/// @nodoc
class __$ReviewStatusCountsCopyWithImpl<$Res>
    implements _$ReviewStatusCountsCopyWith<$Res> {
  __$ReviewStatusCountsCopyWithImpl(this._self, this._then);

  final _ReviewStatusCounts _self;
  final $Res Function(_ReviewStatusCounts) _then;

/// Create a copy of ReviewStatusCounts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pending = null,Object? published = null,Object? hidden = null,Object? rejected = null,}) {
  return _then(_ReviewStatusCounts(
pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int,published: null == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as int,hidden: null == hidden ? _self.hidden : hidden // ignore: cast_nullable_to_non_nullable
as int,rejected: null == rejected ? _self.rejected : rejected // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$MerchantReviewsPage {

 List<MerchantReview> get data; ReviewPageMeta get meta; ReviewStatusCounts get counts; ReviewSummary get summary;
/// Create a copy of MerchantReviewsPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantReviewsPageCopyWith<MerchantReviewsPage> get copyWith => _$MerchantReviewsPageCopyWithImpl<MerchantReviewsPage>(this as MerchantReviewsPage, _$identity);

  /// Serializes this MerchantReviewsPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MerchantReviewsPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantReviewsPage&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.meta, _this.meta) || other.meta == _this.meta)&&(identical(other.counts, _this.counts) || other.counts == _this.counts)&&(identical(other.summary, _this.summary) || other.summary == _this.summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MerchantReviewsPage;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),_this.meta,_this.counts,_this.summary);
}

@override
String toString() {
  final _this = this as MerchantReviewsPage;
  return 'MerchantReviewsPage(data: ${_this.data}, meta: ${_this.meta}, counts: ${_this.counts}, summary: ${_this.summary})';
}


}

/// @nodoc
abstract mixin class $MerchantReviewsPageCopyWith<$Res>  {
  factory $MerchantReviewsPageCopyWith(MerchantReviewsPage value, $Res Function(MerchantReviewsPage) _then) = _$MerchantReviewsPageCopyWithImpl;
@useResult
$Res call({
 List<MerchantReview> data, ReviewPageMeta meta, ReviewStatusCounts counts, ReviewSummary summary
});


$ReviewPageMetaCopyWith<$Res> get meta;$ReviewStatusCountsCopyWith<$Res> get counts;$ReviewSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class _$MerchantReviewsPageCopyWithImpl<$Res>
    implements $MerchantReviewsPageCopyWith<$Res> {
  _$MerchantReviewsPageCopyWithImpl(this._self, this._then);

  final MerchantReviewsPage _self;
  final $Res Function(MerchantReviewsPage) _then;

/// Create a copy of MerchantReviewsPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,Object? counts = null,Object? summary = null,}) {
  return _then(MerchantReviewsPage(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<MerchantReview>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ReviewPageMeta,counts: null == counts ? _self.counts : counts // ignore: cast_nullable_to_non_nullable
as ReviewStatusCounts,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as ReviewSummary,
  ));
}
/// Create a copy of MerchantReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewPageMetaCopyWith<$Res> get meta {
  
  return $ReviewPageMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of MerchantReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewStatusCountsCopyWith<$Res> get counts {
  
  return $ReviewStatusCountsCopyWith<$Res>(_self.counts, (value) {
    return _then(_self.copyWith(counts: value));
  });
}/// Create a copy of MerchantReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewSummaryCopyWith<$Res> get summary {
  
  return $ReviewSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [MerchantReviewsPage].
extension MerchantReviewsPagePatterns on MerchantReviewsPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantReviewsPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantReviewsPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantReviewsPage value)  $default,){
final _that = this;
switch (_that) {
case _MerchantReviewsPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantReviewsPage value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantReviewsPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MerchantReview> data,  ReviewPageMeta meta,  ReviewStatusCounts counts,  ReviewSummary summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantReviewsPage() when $default != null:
return $default(_that.data,_that.meta,_that.counts,_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MerchantReview> data,  ReviewPageMeta meta,  ReviewStatusCounts counts,  ReviewSummary summary)  $default,) {final _that = this;
switch (_that) {
case _MerchantReviewsPage():
return $default(_that.data,_that.meta,_that.counts,_that.summary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MerchantReview> data,  ReviewPageMeta meta,  ReviewStatusCounts counts,  ReviewSummary summary)?  $default,) {final _that = this;
switch (_that) {
case _MerchantReviewsPage() when $default != null:
return $default(_that.data,_that.meta,_that.counts,_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantReviewsPage implements MerchantReviewsPage {
  const _MerchantReviewsPage({ List<MerchantReview> data = const <MerchantReview>[], required this.meta, required this.counts, required this.summary}): _data = data;
  factory _MerchantReviewsPage.fromJson(Map<String, dynamic> json) => _$MerchantReviewsPageFromJson(json);

 final  List<MerchantReview> _data;
@override@JsonKey() List<MerchantReview> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  ReviewPageMeta meta;
@override final  ReviewStatusCounts counts;
@override final  ReviewSummary summary;

/// Create a copy of MerchantReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantReviewsPageCopyWith<_MerchantReviewsPage> get copyWith => __$MerchantReviewsPageCopyWithImpl<_MerchantReviewsPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantReviewsPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantReviewsPage&&const DeepCollectionEquality().equals(other.data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.counts, counts) || other.counts == counts)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,counts,summary);
}

@override
String toString() {
    return 'MerchantReviewsPage(data: $data, meta: $meta, counts: $counts, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$MerchantReviewsPageCopyWith<$Res> implements $MerchantReviewsPageCopyWith<$Res> {
  factory _$MerchantReviewsPageCopyWith(_MerchantReviewsPage value, $Res Function(_MerchantReviewsPage) _then) = __$MerchantReviewsPageCopyWithImpl;
@override @useResult
$Res call({
 List<MerchantReview> data, ReviewPageMeta meta, ReviewStatusCounts counts, ReviewSummary summary
});


@override $ReviewPageMetaCopyWith<$Res> get meta;@override $ReviewStatusCountsCopyWith<$Res> get counts;@override $ReviewSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class __$MerchantReviewsPageCopyWithImpl<$Res>
    implements _$MerchantReviewsPageCopyWith<$Res> {
  __$MerchantReviewsPageCopyWithImpl(this._self, this._then);

  final _MerchantReviewsPage _self;
  final $Res Function(_MerchantReviewsPage) _then;

/// Create a copy of MerchantReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? counts = null,Object? summary = null,}) {
  return _then(_MerchantReviewsPage(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MerchantReview>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ReviewPageMeta,counts: null == counts ? _self.counts : counts // ignore: cast_nullable_to_non_nullable
as ReviewStatusCounts,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as ReviewSummary,
  ));
}

/// Create a copy of MerchantReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewPageMetaCopyWith<$Res> get meta {
  
  return $ReviewPageMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of MerchantReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewStatusCountsCopyWith<$Res> get counts {
  
  return $ReviewStatusCountsCopyWith<$Res>(_self.counts, (value) {
    return _then(_self.copyWith(counts: value));
  });
}/// Create a copy of MerchantReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewSummaryCopyWith<$Res> get summary {
  
  return $ReviewSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$ReviewAskItem {

 String get productId; String get name; String? get photoUrl;
/// Create a copy of ReviewAskItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewAskItemCopyWith<ReviewAskItem> get copyWith => _$ReviewAskItemCopyWithImpl<ReviewAskItem>(this as ReviewAskItem, _$identity);

  /// Serializes this ReviewAskItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewAskItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewAskItem&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewAskItem;
  return Object.hash(runtimeType,_this.productId,_this.name,_this.photoUrl);
}

@override
String toString() {
  final _this = this as ReviewAskItem;
  return 'ReviewAskItem(productId: ${_this.productId}, name: ${_this.name}, photoUrl: ${_this.photoUrl})';
}


}

/// @nodoc
abstract mixin class $ReviewAskItemCopyWith<$Res>  {
  factory $ReviewAskItemCopyWith(ReviewAskItem value, $Res Function(ReviewAskItem) _then) = _$ReviewAskItemCopyWithImpl;
@useResult
$Res call({
 String productId, String name, String? photoUrl
});




}
/// @nodoc
class _$ReviewAskItemCopyWithImpl<$Res>
    implements $ReviewAskItemCopyWith<$Res> {
  _$ReviewAskItemCopyWithImpl(this._self, this._then);

  final ReviewAskItem _self;
  final $Res Function(ReviewAskItem) _then;

/// Create a copy of ReviewAskItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? name = null,Object? photoUrl = freezed,}) {
  return _then(ReviewAskItem(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewAskItem].
extension ReviewAskItemPatterns on ReviewAskItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewAskItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewAskItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewAskItem value)  $default,){
final _that = this;
switch (_that) {
case _ReviewAskItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewAskItem value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewAskItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String name,  String? photoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewAskItem() when $default != null:
return $default(_that.productId,_that.name,_that.photoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String name,  String? photoUrl)  $default,) {final _that = this;
switch (_that) {
case _ReviewAskItem():
return $default(_that.productId,_that.name,_that.photoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String name,  String? photoUrl)?  $default,) {final _that = this;
switch (_that) {
case _ReviewAskItem() when $default != null:
return $default(_that.productId,_that.name,_that.photoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewAskItem implements ReviewAskItem {
  const _ReviewAskItem({required this.productId, this.name = '', this.photoUrl});
  factory _ReviewAskItem.fromJson(Map<String, dynamic> json) => _$ReviewAskItemFromJson(json);

@override final  String productId;
@override@JsonKey() final  String name;
@override final  String? photoUrl;

/// Create a copy of ReviewAskItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewAskItemCopyWith<_ReviewAskItem> get copyWith => __$ReviewAskItemCopyWithImpl<_ReviewAskItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewAskItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewAskItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,name,photoUrl);
}

@override
String toString() {
    return 'ReviewAskItem(productId: $productId, name: $name, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class _$ReviewAskItemCopyWith<$Res> implements $ReviewAskItemCopyWith<$Res> {
  factory _$ReviewAskItemCopyWith(_ReviewAskItem value, $Res Function(_ReviewAskItem) _then) = __$ReviewAskItemCopyWithImpl;
@override @useResult
$Res call({
 String productId, String name, String? photoUrl
});




}
/// @nodoc
class __$ReviewAskItemCopyWithImpl<$Res>
    implements _$ReviewAskItemCopyWith<$Res> {
  __$ReviewAskItemCopyWithImpl(this._self, this._then);

  final _ReviewAskItem _self;
  final $Res Function(_ReviewAskItem) _then;

/// Create a copy of ReviewAskItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? name = null,Object? photoUrl = freezed,}) {
  return _then(_ReviewAskItem(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReviewAsk {

 String get orderId; String? get customerName; String? get customerPhone; String get deliveredAt; List<ReviewAskItem> get items; String get state; String? get sentAt; int get sentCount;
/// Create a copy of ReviewAsk
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewAskCopyWith<ReviewAsk> get copyWith => _$ReviewAskCopyWithImpl<ReviewAsk>(this as ReviewAsk, _$identity);

  /// Serializes this ReviewAsk to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewAsk;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewAsk&&(identical(other.orderId, _this.orderId) || other.orderId == _this.orderId)&&(identical(other.customerName, _this.customerName) || other.customerName == _this.customerName)&&(identical(other.customerPhone, _this.customerPhone) || other.customerPhone == _this.customerPhone)&&(identical(other.deliveredAt, _this.deliveredAt) || other.deliveredAt == _this.deliveredAt)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.state, _this.state) || other.state == _this.state)&&(identical(other.sentAt, _this.sentAt) || other.sentAt == _this.sentAt)&&(identical(other.sentCount, _this.sentCount) || other.sentCount == _this.sentCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewAsk;
  return Object.hash(runtimeType,_this.orderId,_this.customerName,_this.customerPhone,_this.deliveredAt,const DeepCollectionEquality().hash(_this.items),_this.state,_this.sentAt,_this.sentCount);
}

@override
String toString() {
  final _this = this as ReviewAsk;
  return 'ReviewAsk(orderId: ${_this.orderId}, customerName: ${_this.customerName}, customerPhone: ${_this.customerPhone}, deliveredAt: ${_this.deliveredAt}, items: ${_this.items}, state: ${_this.state}, sentAt: ${_this.sentAt}, sentCount: ${_this.sentCount})';
}


}

/// @nodoc
abstract mixin class $ReviewAskCopyWith<$Res>  {
  factory $ReviewAskCopyWith(ReviewAsk value, $Res Function(ReviewAsk) _then) = _$ReviewAskCopyWithImpl;
@useResult
$Res call({
 String orderId, String? customerName, String? customerPhone, String deliveredAt, List<ReviewAskItem> items, String state, String? sentAt, int sentCount
});




}
/// @nodoc
class _$ReviewAskCopyWithImpl<$Res>
    implements $ReviewAskCopyWith<$Res> {
  _$ReviewAskCopyWithImpl(this._self, this._then);

  final ReviewAsk _self;
  final $Res Function(ReviewAsk) _then;

/// Create a copy of ReviewAsk
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? customerName = freezed,Object? customerPhone = freezed,Object? deliveredAt = null,Object? items = null,Object? state = null,Object? sentAt = freezed,Object? sentCount = null,}) {
  return _then(ReviewAsk(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,deliveredAt: null == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ReviewAskItem>,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as String?,sentCount: null == sentCount ? _self.sentCount : sentCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewAsk].
extension ReviewAskPatterns on ReviewAsk {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewAsk value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewAsk() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewAsk value)  $default,){
final _that = this;
switch (_that) {
case _ReviewAsk():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewAsk value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewAsk() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  String? customerName,  String? customerPhone,  String deliveredAt,  List<ReviewAskItem> items,  String state,  String? sentAt,  int sentCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewAsk() when $default != null:
return $default(_that.orderId,_that.customerName,_that.customerPhone,_that.deliveredAt,_that.items,_that.state,_that.sentAt,_that.sentCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  String? customerName,  String? customerPhone,  String deliveredAt,  List<ReviewAskItem> items,  String state,  String? sentAt,  int sentCount)  $default,) {final _that = this;
switch (_that) {
case _ReviewAsk():
return $default(_that.orderId,_that.customerName,_that.customerPhone,_that.deliveredAt,_that.items,_that.state,_that.sentAt,_that.sentCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  String? customerName,  String? customerPhone,  String deliveredAt,  List<ReviewAskItem> items,  String state,  String? sentAt,  int sentCount)?  $default,) {final _that = this;
switch (_that) {
case _ReviewAsk() when $default != null:
return $default(_that.orderId,_that.customerName,_that.customerPhone,_that.deliveredAt,_that.items,_that.state,_that.sentAt,_that.sentCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewAsk implements ReviewAsk {
  const _ReviewAsk({required this.orderId, this.customerName, this.customerPhone, required this.deliveredAt,  List<ReviewAskItem> items = const <ReviewAskItem>[], this.state = ReviewAskState.todo, this.sentAt, this.sentCount = 0}): _items = items;
  factory _ReviewAsk.fromJson(Map<String, dynamic> json) => _$ReviewAskFromJson(json);

@override final  String orderId;
@override final  String? customerName;
@override final  String? customerPhone;
@override final  String deliveredAt;
 final  List<ReviewAskItem> _items;
@override@JsonKey() List<ReviewAskItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  String state;
@override final  String? sentAt;
@override@JsonKey() final  int sentCount;

/// Create a copy of ReviewAsk
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewAskCopyWith<_ReviewAsk> get copyWith => __$ReviewAskCopyWithImpl<_ReviewAsk>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewAskToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewAsk&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.state, state) || other.state == state)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.sentCount, sentCount) || other.sentCount == sentCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,orderId,customerName,customerPhone,deliveredAt,const DeepCollectionEquality().hash(_items),state,sentAt,sentCount);
}

@override
String toString() {
    return 'ReviewAsk(orderId: $orderId, customerName: $customerName, customerPhone: $customerPhone, deliveredAt: $deliveredAt, items: $items, state: $state, sentAt: $sentAt, sentCount: $sentCount)';
}


}

/// @nodoc
abstract mixin class _$ReviewAskCopyWith<$Res> implements $ReviewAskCopyWith<$Res> {
  factory _$ReviewAskCopyWith(_ReviewAsk value, $Res Function(_ReviewAsk) _then) = __$ReviewAskCopyWithImpl;
@override @useResult
$Res call({
 String orderId, String? customerName, String? customerPhone, String deliveredAt, List<ReviewAskItem> items, String state, String? sentAt, int sentCount
});




}
/// @nodoc
class __$ReviewAskCopyWithImpl<$Res>
    implements _$ReviewAskCopyWith<$Res> {
  __$ReviewAskCopyWithImpl(this._self, this._then);

  final _ReviewAsk _self;
  final $Res Function(_ReviewAsk) _then;

/// Create a copy of ReviewAsk
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? customerName = freezed,Object? customerPhone = freezed,Object? deliveredAt = null,Object? items = null,Object? state = null,Object? sentAt = freezed,Object? sentCount = null,}) {
  return _then(_ReviewAsk(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,deliveredAt: null == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ReviewAskItem>,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as String?,sentCount: null == sentCount ? _self.sentCount : sentCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ReviewAskCounts {

 int get todo; int get sent; int get reviewed;
/// Create a copy of ReviewAskCounts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewAskCountsCopyWith<ReviewAskCounts> get copyWith => _$ReviewAskCountsCopyWithImpl<ReviewAskCounts>(this as ReviewAskCounts, _$identity);

  /// Serializes this ReviewAskCounts to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewAskCounts;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewAskCounts&&(identical(other.todo, _this.todo) || other.todo == _this.todo)&&(identical(other.sent, _this.sent) || other.sent == _this.sent)&&(identical(other.reviewed, _this.reviewed) || other.reviewed == _this.reviewed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewAskCounts;
  return Object.hash(runtimeType,_this.todo,_this.sent,_this.reviewed);
}

@override
String toString() {
  final _this = this as ReviewAskCounts;
  return 'ReviewAskCounts(todo: ${_this.todo}, sent: ${_this.sent}, reviewed: ${_this.reviewed})';
}


}

/// @nodoc
abstract mixin class $ReviewAskCountsCopyWith<$Res>  {
  factory $ReviewAskCountsCopyWith(ReviewAskCounts value, $Res Function(ReviewAskCounts) _then) = _$ReviewAskCountsCopyWithImpl;
@useResult
$Res call({
 int todo, int sent, int reviewed
});




}
/// @nodoc
class _$ReviewAskCountsCopyWithImpl<$Res>
    implements $ReviewAskCountsCopyWith<$Res> {
  _$ReviewAskCountsCopyWithImpl(this._self, this._then);

  final ReviewAskCounts _self;
  final $Res Function(ReviewAskCounts) _then;

/// Create a copy of ReviewAskCounts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todo = null,Object? sent = null,Object? reviewed = null,}) {
  return _then(ReviewAskCounts(
todo: null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as int,sent: null == sent ? _self.sent : sent // ignore: cast_nullable_to_non_nullable
as int,reviewed: null == reviewed ? _self.reviewed : reviewed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewAskCounts].
extension ReviewAskCountsPatterns on ReviewAskCounts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewAskCounts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewAskCounts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewAskCounts value)  $default,){
final _that = this;
switch (_that) {
case _ReviewAskCounts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewAskCounts value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewAskCounts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int todo,  int sent,  int reviewed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewAskCounts() when $default != null:
return $default(_that.todo,_that.sent,_that.reviewed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int todo,  int sent,  int reviewed)  $default,) {final _that = this;
switch (_that) {
case _ReviewAskCounts():
return $default(_that.todo,_that.sent,_that.reviewed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int todo,  int sent,  int reviewed)?  $default,) {final _that = this;
switch (_that) {
case _ReviewAskCounts() when $default != null:
return $default(_that.todo,_that.sent,_that.reviewed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewAskCounts implements ReviewAskCounts {
  const _ReviewAskCounts({this.todo = 0, this.sent = 0, this.reviewed = 0});
  factory _ReviewAskCounts.fromJson(Map<String, dynamic> json) => _$ReviewAskCountsFromJson(json);

@override@JsonKey() final  int todo;
@override@JsonKey() final  int sent;
@override@JsonKey() final  int reviewed;

/// Create a copy of ReviewAskCounts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewAskCountsCopyWith<_ReviewAskCounts> get copyWith => __$ReviewAskCountsCopyWithImpl<_ReviewAskCounts>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewAskCountsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewAskCounts&&(identical(other.todo, todo) || other.todo == todo)&&(identical(other.sent, sent) || other.sent == sent)&&(identical(other.reviewed, reviewed) || other.reviewed == reviewed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,todo,sent,reviewed);
}

@override
String toString() {
    return 'ReviewAskCounts(todo: $todo, sent: $sent, reviewed: $reviewed)';
}


}

/// @nodoc
abstract mixin class _$ReviewAskCountsCopyWith<$Res> implements $ReviewAskCountsCopyWith<$Res> {
  factory _$ReviewAskCountsCopyWith(_ReviewAskCounts value, $Res Function(_ReviewAskCounts) _then) = __$ReviewAskCountsCopyWithImpl;
@override @useResult
$Res call({
 int todo, int sent, int reviewed
});




}
/// @nodoc
class __$ReviewAskCountsCopyWithImpl<$Res>
    implements _$ReviewAskCountsCopyWith<$Res> {
  __$ReviewAskCountsCopyWithImpl(this._self, this._then);

  final _ReviewAskCounts _self;
  final $Res Function(_ReviewAskCounts) _then;

/// Create a copy of ReviewAskCounts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todo = null,Object? sent = null,Object? reviewed = null,}) {
  return _then(_ReviewAskCounts(
todo: null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as int,sent: null == sent ? _self.sent : sent // ignore: cast_nullable_to_non_nullable
as int,reviewed: null == reviewed ? _self.reviewed : reviewed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ReviewAsksPage {

 List<ReviewAsk> get data; ReviewPageMeta get meta; ReviewAskCounts get counts;
/// Create a copy of ReviewAsksPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewAsksPageCopyWith<ReviewAsksPage> get copyWith => _$ReviewAsksPageCopyWithImpl<ReviewAsksPage>(this as ReviewAsksPage, _$identity);

  /// Serializes this ReviewAsksPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewAsksPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewAsksPage&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.meta, _this.meta) || other.meta == _this.meta)&&(identical(other.counts, _this.counts) || other.counts == _this.counts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewAsksPage;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),_this.meta,_this.counts);
}

@override
String toString() {
  final _this = this as ReviewAsksPage;
  return 'ReviewAsksPage(data: ${_this.data}, meta: ${_this.meta}, counts: ${_this.counts})';
}


}

/// @nodoc
abstract mixin class $ReviewAsksPageCopyWith<$Res>  {
  factory $ReviewAsksPageCopyWith(ReviewAsksPage value, $Res Function(ReviewAsksPage) _then) = _$ReviewAsksPageCopyWithImpl;
@useResult
$Res call({
 List<ReviewAsk> data, ReviewPageMeta meta, ReviewAskCounts counts
});


$ReviewPageMetaCopyWith<$Res> get meta;$ReviewAskCountsCopyWith<$Res> get counts;

}
/// @nodoc
class _$ReviewAsksPageCopyWithImpl<$Res>
    implements $ReviewAsksPageCopyWith<$Res> {
  _$ReviewAsksPageCopyWithImpl(this._self, this._then);

  final ReviewAsksPage _self;
  final $Res Function(ReviewAsksPage) _then;

/// Create a copy of ReviewAsksPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,Object? counts = null,}) {
  return _then(ReviewAsksPage(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ReviewAsk>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ReviewPageMeta,counts: null == counts ? _self.counts : counts // ignore: cast_nullable_to_non_nullable
as ReviewAskCounts,
  ));
}
/// Create a copy of ReviewAsksPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewPageMetaCopyWith<$Res> get meta {
  
  return $ReviewPageMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of ReviewAsksPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewAskCountsCopyWith<$Res> get counts {
  
  return $ReviewAskCountsCopyWith<$Res>(_self.counts, (value) {
    return _then(_self.copyWith(counts: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewAsksPage].
extension ReviewAsksPagePatterns on ReviewAsksPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewAsksPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewAsksPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewAsksPage value)  $default,){
final _that = this;
switch (_that) {
case _ReviewAsksPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewAsksPage value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewAsksPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReviewAsk> data,  ReviewPageMeta meta,  ReviewAskCounts counts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewAsksPage() when $default != null:
return $default(_that.data,_that.meta,_that.counts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReviewAsk> data,  ReviewPageMeta meta,  ReviewAskCounts counts)  $default,) {final _that = this;
switch (_that) {
case _ReviewAsksPage():
return $default(_that.data,_that.meta,_that.counts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReviewAsk> data,  ReviewPageMeta meta,  ReviewAskCounts counts)?  $default,) {final _that = this;
switch (_that) {
case _ReviewAsksPage() when $default != null:
return $default(_that.data,_that.meta,_that.counts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewAsksPage implements ReviewAsksPage {
  const _ReviewAsksPage({ List<ReviewAsk> data = const <ReviewAsk>[], required this.meta, required this.counts}): _data = data;
  factory _ReviewAsksPage.fromJson(Map<String, dynamic> json) => _$ReviewAsksPageFromJson(json);

 final  List<ReviewAsk> _data;
@override@JsonKey() List<ReviewAsk> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  ReviewPageMeta meta;
@override final  ReviewAskCounts counts;

/// Create a copy of ReviewAsksPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewAsksPageCopyWith<_ReviewAsksPage> get copyWith => __$ReviewAsksPageCopyWithImpl<_ReviewAsksPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewAsksPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewAsksPage&&const DeepCollectionEquality().equals(other.data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.counts, counts) || other.counts == counts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,counts);
}

@override
String toString() {
    return 'ReviewAsksPage(data: $data, meta: $meta, counts: $counts)';
}


}

/// @nodoc
abstract mixin class _$ReviewAsksPageCopyWith<$Res> implements $ReviewAsksPageCopyWith<$Res> {
  factory _$ReviewAsksPageCopyWith(_ReviewAsksPage value, $Res Function(_ReviewAsksPage) _then) = __$ReviewAsksPageCopyWithImpl;
@override @useResult
$Res call({
 List<ReviewAsk> data, ReviewPageMeta meta, ReviewAskCounts counts
});


@override $ReviewPageMetaCopyWith<$Res> get meta;@override $ReviewAskCountsCopyWith<$Res> get counts;

}
/// @nodoc
class __$ReviewAsksPageCopyWithImpl<$Res>
    implements _$ReviewAsksPageCopyWith<$Res> {
  __$ReviewAsksPageCopyWithImpl(this._self, this._then);

  final _ReviewAsksPage _self;
  final $Res Function(_ReviewAsksPage) _then;

/// Create a copy of ReviewAsksPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? counts = null,}) {
  return _then(_ReviewAsksPage(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ReviewAsk>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ReviewPageMeta,counts: null == counts ? _self.counts : counts // ignore: cast_nullable_to_non_nullable
as ReviewAskCounts,
  ));
}

/// Create a copy of ReviewAsksPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewPageMetaCopyWith<$Res> get meta {
  
  return $ReviewPageMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of ReviewAsksPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewAskCountsCopyWith<$Res> get counts {
  
  return $ReviewAskCountsCopyWith<$Res>(_self.counts, (value) {
    return _then(_self.copyWith(counts: value));
  });
}
}


/// @nodoc
mixin _$ReviewLink {

 bool get eligible; String? get reason; String get url; String? get deliveredAt; String? get closesAt; int get productCount; String? get sentAt; int get sentCount;
/// Create a copy of ReviewLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewLinkCopyWith<ReviewLink> get copyWith => _$ReviewLinkCopyWithImpl<ReviewLink>(this as ReviewLink, _$identity);

  /// Serializes this ReviewLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewLink;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewLink&&(identical(other.eligible, _this.eligible) || other.eligible == _this.eligible)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.deliveredAt, _this.deliveredAt) || other.deliveredAt == _this.deliveredAt)&&(identical(other.closesAt, _this.closesAt) || other.closesAt == _this.closesAt)&&(identical(other.productCount, _this.productCount) || other.productCount == _this.productCount)&&(identical(other.sentAt, _this.sentAt) || other.sentAt == _this.sentAt)&&(identical(other.sentCount, _this.sentCount) || other.sentCount == _this.sentCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewLink;
  return Object.hash(runtimeType,_this.eligible,_this.reason,_this.url,_this.deliveredAt,_this.closesAt,_this.productCount,_this.sentAt,_this.sentCount);
}

@override
String toString() {
  final _this = this as ReviewLink;
  return 'ReviewLink(eligible: ${_this.eligible}, reason: ${_this.reason}, url: ${_this.url}, deliveredAt: ${_this.deliveredAt}, closesAt: ${_this.closesAt}, productCount: ${_this.productCount}, sentAt: ${_this.sentAt}, sentCount: ${_this.sentCount})';
}


}

/// @nodoc
abstract mixin class $ReviewLinkCopyWith<$Res>  {
  factory $ReviewLinkCopyWith(ReviewLink value, $Res Function(ReviewLink) _then) = _$ReviewLinkCopyWithImpl;
@useResult
$Res call({
 bool eligible, String? reason, String url, String? deliveredAt, String? closesAt, int productCount, String? sentAt, int sentCount
});




}
/// @nodoc
class _$ReviewLinkCopyWithImpl<$Res>
    implements $ReviewLinkCopyWith<$Res> {
  _$ReviewLinkCopyWithImpl(this._self, this._then);

  final ReviewLink _self;
  final $Res Function(ReviewLink) _then;

/// Create a copy of ReviewLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eligible = null,Object? reason = freezed,Object? url = null,Object? deliveredAt = freezed,Object? closesAt = freezed,Object? productCount = null,Object? sentAt = freezed,Object? sentCount = null,}) {
  return _then(ReviewLink(
eligible: null == eligible ? _self.eligible : eligible // ignore: cast_nullable_to_non_nullable
as bool,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as String?,closesAt: freezed == closesAt ? _self.closesAt : closesAt // ignore: cast_nullable_to_non_nullable
as String?,productCount: null == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as String?,sentCount: null == sentCount ? _self.sentCount : sentCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewLink].
extension ReviewLinkPatterns on ReviewLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewLink value)  $default,){
final _that = this;
switch (_that) {
case _ReviewLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewLink value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool eligible,  String? reason,  String url,  String? deliveredAt,  String? closesAt,  int productCount,  String? sentAt,  int sentCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewLink() when $default != null:
return $default(_that.eligible,_that.reason,_that.url,_that.deliveredAt,_that.closesAt,_that.productCount,_that.sentAt,_that.sentCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool eligible,  String? reason,  String url,  String? deliveredAt,  String? closesAt,  int productCount,  String? sentAt,  int sentCount)  $default,) {final _that = this;
switch (_that) {
case _ReviewLink():
return $default(_that.eligible,_that.reason,_that.url,_that.deliveredAt,_that.closesAt,_that.productCount,_that.sentAt,_that.sentCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool eligible,  String? reason,  String url,  String? deliveredAt,  String? closesAt,  int productCount,  String? sentAt,  int sentCount)?  $default,) {final _that = this;
switch (_that) {
case _ReviewLink() when $default != null:
return $default(_that.eligible,_that.reason,_that.url,_that.deliveredAt,_that.closesAt,_that.productCount,_that.sentAt,_that.sentCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewLink implements ReviewLink {
  const _ReviewLink({this.eligible = false, this.reason, required this.url, this.deliveredAt, this.closesAt, this.productCount = 0, this.sentAt, this.sentCount = 0});
  factory _ReviewLink.fromJson(Map<String, dynamic> json) => _$ReviewLinkFromJson(json);

@override@JsonKey() final  bool eligible;
@override final  String? reason;
@override final  String url;
@override final  String? deliveredAt;
@override final  String? closesAt;
@override@JsonKey() final  int productCount;
@override final  String? sentAt;
@override@JsonKey() final  int sentCount;

/// Create a copy of ReviewLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewLinkCopyWith<_ReviewLink> get copyWith => __$ReviewLinkCopyWithImpl<_ReviewLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewLinkToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewLink&&(identical(other.eligible, eligible) || other.eligible == eligible)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.url, url) || other.url == url)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.closesAt, closesAt) || other.closesAt == closesAt)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.sentCount, sentCount) || other.sentCount == sentCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,eligible,reason,url,deliveredAt,closesAt,productCount,sentAt,sentCount);
}

@override
String toString() {
    return 'ReviewLink(eligible: $eligible, reason: $reason, url: $url, deliveredAt: $deliveredAt, closesAt: $closesAt, productCount: $productCount, sentAt: $sentAt, sentCount: $sentCount)';
}


}

/// @nodoc
abstract mixin class _$ReviewLinkCopyWith<$Res> implements $ReviewLinkCopyWith<$Res> {
  factory _$ReviewLinkCopyWith(_ReviewLink value, $Res Function(_ReviewLink) _then) = __$ReviewLinkCopyWithImpl;
@override @useResult
$Res call({
 bool eligible, String? reason, String url, String? deliveredAt, String? closesAt, int productCount, String? sentAt, int sentCount
});




}
/// @nodoc
class __$ReviewLinkCopyWithImpl<$Res>
    implements _$ReviewLinkCopyWith<$Res> {
  __$ReviewLinkCopyWithImpl(this._self, this._then);

  final _ReviewLink _self;
  final $Res Function(_ReviewLink) _then;

/// Create a copy of ReviewLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eligible = null,Object? reason = freezed,Object? url = null,Object? deliveredAt = freezed,Object? closesAt = freezed,Object? productCount = null,Object? sentAt = freezed,Object? sentCount = null,}) {
  return _then(_ReviewLink(
eligible: null == eligible ? _self.eligible : eligible // ignore: cast_nullable_to_non_nullable
as bool,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as String?,closesAt: freezed == closesAt ? _self.closesAt : closesAt // ignore: cast_nullable_to_non_nullable
as String?,productCount: null == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as String?,sentCount: null == sentCount ? _self.sentCount : sentCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ReviewAiSummary {

 String get text; List<String> get pros; List<String> get cons; int get basedOn; String? get locale; String? get generatedAt;
/// Create a copy of ReviewAiSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewAiSummaryCopyWith<ReviewAiSummary> get copyWith => _$ReviewAiSummaryCopyWithImpl<ReviewAiSummary>(this as ReviewAiSummary, _$identity);

  /// Serializes this ReviewAiSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewAiSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewAiSummary&&(identical(other.text, _this.text) || other.text == _this.text)&&const DeepCollectionEquality().equals(other.pros, _this.pros)&&const DeepCollectionEquality().equals(other.cons, _this.cons)&&(identical(other.basedOn, _this.basedOn) || other.basedOn == _this.basedOn)&&(identical(other.locale, _this.locale) || other.locale == _this.locale)&&(identical(other.generatedAt, _this.generatedAt) || other.generatedAt == _this.generatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewAiSummary;
  return Object.hash(runtimeType,_this.text,const DeepCollectionEquality().hash(_this.pros),const DeepCollectionEquality().hash(_this.cons),_this.basedOn,_this.locale,_this.generatedAt);
}

@override
String toString() {
  final _this = this as ReviewAiSummary;
  return 'ReviewAiSummary(text: ${_this.text}, pros: ${_this.pros}, cons: ${_this.cons}, basedOn: ${_this.basedOn}, locale: ${_this.locale}, generatedAt: ${_this.generatedAt})';
}


}

/// @nodoc
abstract mixin class $ReviewAiSummaryCopyWith<$Res>  {
  factory $ReviewAiSummaryCopyWith(ReviewAiSummary value, $Res Function(ReviewAiSummary) _then) = _$ReviewAiSummaryCopyWithImpl;
@useResult
$Res call({
 String text, List<String> pros, List<String> cons, int basedOn, String? locale, String? generatedAt
});




}
/// @nodoc
class _$ReviewAiSummaryCopyWithImpl<$Res>
    implements $ReviewAiSummaryCopyWith<$Res> {
  _$ReviewAiSummaryCopyWithImpl(this._self, this._then);

  final ReviewAiSummary _self;
  final $Res Function(ReviewAiSummary) _then;

/// Create a copy of ReviewAiSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? pros = null,Object? cons = null,Object? basedOn = null,Object? locale = freezed,Object? generatedAt = freezed,}) {
  return _then(ReviewAiSummary(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,pros: null == pros ? _self.pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self.cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,basedOn: null == basedOn ? _self.basedOn : basedOn // ignore: cast_nullable_to_non_nullable
as int,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,generatedAt: freezed == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewAiSummary].
extension ReviewAiSummaryPatterns on ReviewAiSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewAiSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewAiSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewAiSummary value)  $default,){
final _that = this;
switch (_that) {
case _ReviewAiSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewAiSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewAiSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  List<String> pros,  List<String> cons,  int basedOn,  String? locale,  String? generatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewAiSummary() when $default != null:
return $default(_that.text,_that.pros,_that.cons,_that.basedOn,_that.locale,_that.generatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  List<String> pros,  List<String> cons,  int basedOn,  String? locale,  String? generatedAt)  $default,) {final _that = this;
switch (_that) {
case _ReviewAiSummary():
return $default(_that.text,_that.pros,_that.cons,_that.basedOn,_that.locale,_that.generatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  List<String> pros,  List<String> cons,  int basedOn,  String? locale,  String? generatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ReviewAiSummary() when $default != null:
return $default(_that.text,_that.pros,_that.cons,_that.basedOn,_that.locale,_that.generatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewAiSummary implements ReviewAiSummary {
  const _ReviewAiSummary({required this.text,  List<String> pros = const <String>[],  List<String> cons = const <String>[], this.basedOn = 0, this.locale, this.generatedAt}): _pros = pros,_cons = cons;
  factory _ReviewAiSummary.fromJson(Map<String, dynamic> json) => _$ReviewAiSummaryFromJson(json);

@override final  String text;
 final  List<String> _pros;
@override@JsonKey() List<String> get pros {
  if (_pros is EqualUnmodifiableListView) return _pros;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pros);
}

 final  List<String> _cons;
@override@JsonKey() List<String> get cons {
  if (_cons is EqualUnmodifiableListView) return _cons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cons);
}

@override@JsonKey() final  int basedOn;
@override final  String? locale;
@override final  String? generatedAt;

/// Create a copy of ReviewAiSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewAiSummaryCopyWith<_ReviewAiSummary> get copyWith => __$ReviewAiSummaryCopyWithImpl<_ReviewAiSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewAiSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewAiSummary&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.pros, _pros)&&const DeepCollectionEquality().equals(other.cons, _cons)&&(identical(other.basedOn, basedOn) || other.basedOn == basedOn)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,text,const DeepCollectionEquality().hash(_pros),const DeepCollectionEquality().hash(_cons),basedOn,locale,generatedAt);
}

@override
String toString() {
    return 'ReviewAiSummary(text: $text, pros: $pros, cons: $cons, basedOn: $basedOn, locale: $locale, generatedAt: $generatedAt)';
}


}

/// @nodoc
abstract mixin class _$ReviewAiSummaryCopyWith<$Res> implements $ReviewAiSummaryCopyWith<$Res> {
  factory _$ReviewAiSummaryCopyWith(_ReviewAiSummary value, $Res Function(_ReviewAiSummary) _then) = __$ReviewAiSummaryCopyWithImpl;
@override @useResult
$Res call({
 String text, List<String> pros, List<String> cons, int basedOn, String? locale, String? generatedAt
});




}
/// @nodoc
class __$ReviewAiSummaryCopyWithImpl<$Res>
    implements _$ReviewAiSummaryCopyWith<$Res> {
  __$ReviewAiSummaryCopyWithImpl(this._self, this._then);

  final _ReviewAiSummary _self;
  final $Res Function(_ReviewAiSummary) _then;

/// Create a copy of ReviewAiSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? pros = null,Object? cons = null,Object? basedOn = null,Object? locale = freezed,Object? generatedAt = freezed,}) {
  return _then(_ReviewAiSummary(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,pros: null == pros ? _self._pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self._cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,basedOn: null == basedOn ? _self.basedOn : basedOn // ignore: cast_nullable_to_non_nullable
as int,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,generatedAt: freezed == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReviewsIntegration {

 bool? get active; bool? get autoPublishVerified; bool? get storefrontForm; bool? get autoPublishStorefront; bool? get showReplies;/// Store-only: push the team on new customer reviews.
 bool? get notifyNewReviews;/// Store-only: WhatsApp text for "Ask for a review" (max 500 chars).
 String? get requestMessage;
/// Create a copy of ReviewsIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsIntegrationCopyWith<ReviewsIntegration> get copyWith => _$ReviewsIntegrationCopyWithImpl<ReviewsIntegration>(this as ReviewsIntegration, _$identity);

  /// Serializes this ReviewsIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewsIntegration;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsIntegration&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.autoPublishVerified, _this.autoPublishVerified) || other.autoPublishVerified == _this.autoPublishVerified)&&(identical(other.storefrontForm, _this.storefrontForm) || other.storefrontForm == _this.storefrontForm)&&(identical(other.autoPublishStorefront, _this.autoPublishStorefront) || other.autoPublishStorefront == _this.autoPublishStorefront)&&(identical(other.showReplies, _this.showReplies) || other.showReplies == _this.showReplies)&&(identical(other.notifyNewReviews, _this.notifyNewReviews) || other.notifyNewReviews == _this.notifyNewReviews)&&(identical(other.requestMessage, _this.requestMessage) || other.requestMessage == _this.requestMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewsIntegration;
  return Object.hash(runtimeType,_this.active,_this.autoPublishVerified,_this.storefrontForm,_this.autoPublishStorefront,_this.showReplies,_this.notifyNewReviews,_this.requestMessage);
}

@override
String toString() {
  final _this = this as ReviewsIntegration;
  return 'ReviewsIntegration(active: ${_this.active}, autoPublishVerified: ${_this.autoPublishVerified}, storefrontForm: ${_this.storefrontForm}, autoPublishStorefront: ${_this.autoPublishStorefront}, showReplies: ${_this.showReplies}, notifyNewReviews: ${_this.notifyNewReviews}, requestMessage: ${_this.requestMessage})';
}


}

/// @nodoc
abstract mixin class $ReviewsIntegrationCopyWith<$Res>  {
  factory $ReviewsIntegrationCopyWith(ReviewsIntegration value, $Res Function(ReviewsIntegration) _then) = _$ReviewsIntegrationCopyWithImpl;
@useResult
$Res call({
 bool? active, bool? autoPublishVerified, bool? storefrontForm, bool? autoPublishStorefront, bool? showReplies, bool? notifyNewReviews, String? requestMessage
});




}
/// @nodoc
class _$ReviewsIntegrationCopyWithImpl<$Res>
    implements $ReviewsIntegrationCopyWith<$Res> {
  _$ReviewsIntegrationCopyWithImpl(this._self, this._then);

  final ReviewsIntegration _self;
  final $Res Function(ReviewsIntegration) _then;

/// Create a copy of ReviewsIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = freezed,Object? autoPublishVerified = freezed,Object? storefrontForm = freezed,Object? autoPublishStorefront = freezed,Object? showReplies = freezed,Object? notifyNewReviews = freezed,Object? requestMessage = freezed,}) {
  return _then(ReviewsIntegration(
active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,autoPublishVerified: freezed == autoPublishVerified ? _self.autoPublishVerified : autoPublishVerified // ignore: cast_nullable_to_non_nullable
as bool?,storefrontForm: freezed == storefrontForm ? _self.storefrontForm : storefrontForm // ignore: cast_nullable_to_non_nullable
as bool?,autoPublishStorefront: freezed == autoPublishStorefront ? _self.autoPublishStorefront : autoPublishStorefront // ignore: cast_nullable_to_non_nullable
as bool?,showReplies: freezed == showReplies ? _self.showReplies : showReplies // ignore: cast_nullable_to_non_nullable
as bool?,notifyNewReviews: freezed == notifyNewReviews ? _self.notifyNewReviews : notifyNewReviews // ignore: cast_nullable_to_non_nullable
as bool?,requestMessage: freezed == requestMessage ? _self.requestMessage : requestMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewsIntegration].
extension ReviewsIntegrationPatterns on ReviewsIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewsIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewsIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewsIntegration value)  $default,){
final _that = this;
switch (_that) {
case _ReviewsIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewsIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewsIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? active,  bool? autoPublishVerified,  bool? storefrontForm,  bool? autoPublishStorefront,  bool? showReplies,  bool? notifyNewReviews,  String? requestMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewsIntegration() when $default != null:
return $default(_that.active,_that.autoPublishVerified,_that.storefrontForm,_that.autoPublishStorefront,_that.showReplies,_that.notifyNewReviews,_that.requestMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? active,  bool? autoPublishVerified,  bool? storefrontForm,  bool? autoPublishStorefront,  bool? showReplies,  bool? notifyNewReviews,  String? requestMessage)  $default,) {final _that = this;
switch (_that) {
case _ReviewsIntegration():
return $default(_that.active,_that.autoPublishVerified,_that.storefrontForm,_that.autoPublishStorefront,_that.showReplies,_that.notifyNewReviews,_that.requestMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? active,  bool? autoPublishVerified,  bool? storefrontForm,  bool? autoPublishStorefront,  bool? showReplies,  bool? notifyNewReviews,  String? requestMessage)?  $default,) {final _that = this;
switch (_that) {
case _ReviewsIntegration() when $default != null:
return $default(_that.active,_that.autoPublishVerified,_that.storefrontForm,_that.autoPublishStorefront,_that.showReplies,_that.notifyNewReviews,_that.requestMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewsIntegration implements ReviewsIntegration {
  const _ReviewsIntegration({this.active, this.autoPublishVerified, this.storefrontForm, this.autoPublishStorefront, this.showReplies, this.notifyNewReviews, this.requestMessage});
  factory _ReviewsIntegration.fromJson(Map<String, dynamic> json) => _$ReviewsIntegrationFromJson(json);

@override final  bool? active;
@override final  bool? autoPublishVerified;
@override final  bool? storefrontForm;
@override final  bool? autoPublishStorefront;
@override final  bool? showReplies;
/// Store-only: push the team on new customer reviews.
@override final  bool? notifyNewReviews;
/// Store-only: WhatsApp text for "Ask for a review" (max 500 chars).
@override final  String? requestMessage;

/// Create a copy of ReviewsIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewsIntegrationCopyWith<_ReviewsIntegration> get copyWith => __$ReviewsIntegrationCopyWithImpl<_ReviewsIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewsIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewsIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.autoPublishVerified, autoPublishVerified) || other.autoPublishVerified == autoPublishVerified)&&(identical(other.storefrontForm, storefrontForm) || other.storefrontForm == storefrontForm)&&(identical(other.autoPublishStorefront, autoPublishStorefront) || other.autoPublishStorefront == autoPublishStorefront)&&(identical(other.showReplies, showReplies) || other.showReplies == showReplies)&&(identical(other.notifyNewReviews, notifyNewReviews) || other.notifyNewReviews == notifyNewReviews)&&(identical(other.requestMessage, requestMessage) || other.requestMessage == requestMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,active,autoPublishVerified,storefrontForm,autoPublishStorefront,showReplies,notifyNewReviews,requestMessage);
}

@override
String toString() {
    return 'ReviewsIntegration(active: $active, autoPublishVerified: $autoPublishVerified, storefrontForm: $storefrontForm, autoPublishStorefront: $autoPublishStorefront, showReplies: $showReplies, notifyNewReviews: $notifyNewReviews, requestMessage: $requestMessage)';
}


}

/// @nodoc
abstract mixin class _$ReviewsIntegrationCopyWith<$Res> implements $ReviewsIntegrationCopyWith<$Res> {
  factory _$ReviewsIntegrationCopyWith(_ReviewsIntegration value, $Res Function(_ReviewsIntegration) _then) = __$ReviewsIntegrationCopyWithImpl;
@override @useResult
$Res call({
 bool? active, bool? autoPublishVerified, bool? storefrontForm, bool? autoPublishStorefront, bool? showReplies, bool? notifyNewReviews, String? requestMessage
});




}
/// @nodoc
class __$ReviewsIntegrationCopyWithImpl<$Res>
    implements _$ReviewsIntegrationCopyWith<$Res> {
  __$ReviewsIntegrationCopyWithImpl(this._self, this._then);

  final _ReviewsIntegration _self;
  final $Res Function(_ReviewsIntegration) _then;

/// Create a copy of ReviewsIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = freezed,Object? autoPublishVerified = freezed,Object? storefrontForm = freezed,Object? autoPublishStorefront = freezed,Object? showReplies = freezed,Object? notifyNewReviews = freezed,Object? requestMessage = freezed,}) {
  return _then(_ReviewsIntegration(
active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,autoPublishVerified: freezed == autoPublishVerified ? _self.autoPublishVerified : autoPublishVerified // ignore: cast_nullable_to_non_nullable
as bool?,storefrontForm: freezed == storefrontForm ? _self.storefrontForm : storefrontForm // ignore: cast_nullable_to_non_nullable
as bool?,autoPublishStorefront: freezed == autoPublishStorefront ? _self.autoPublishStorefront : autoPublishStorefront // ignore: cast_nullable_to_non_nullable
as bool?,showReplies: freezed == showReplies ? _self.showReplies : showReplies // ignore: cast_nullable_to_non_nullable
as bool?,notifyNewReviews: freezed == notifyNewReviews ? _self.notifyNewReviews : notifyNewReviews // ignore: cast_nullable_to_non_nullable
as bool?,requestMessage: freezed == requestMessage ? _self.requestMessage : requestMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductReviewsData {

 bool get useProductSettings; bool? get active; bool? get autoPublishVerified; bool? get storefrontForm; bool? get autoPublishStorefront; bool? get showReplies;
/// Create a copy of ProductReviewsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewsDataCopyWith<ProductReviewsData> get copyWith => _$ProductReviewsDataCopyWithImpl<ProductReviewsData>(this as ProductReviewsData, _$identity);

  /// Serializes this ProductReviewsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductReviewsData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReviewsData&&(identical(other.useProductSettings, _this.useProductSettings) || other.useProductSettings == _this.useProductSettings)&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.autoPublishVerified, _this.autoPublishVerified) || other.autoPublishVerified == _this.autoPublishVerified)&&(identical(other.storefrontForm, _this.storefrontForm) || other.storefrontForm == _this.storefrontForm)&&(identical(other.autoPublishStorefront, _this.autoPublishStorefront) || other.autoPublishStorefront == _this.autoPublishStorefront)&&(identical(other.showReplies, _this.showReplies) || other.showReplies == _this.showReplies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductReviewsData;
  return Object.hash(runtimeType,_this.useProductSettings,_this.active,_this.autoPublishVerified,_this.storefrontForm,_this.autoPublishStorefront,_this.showReplies);
}

@override
String toString() {
  final _this = this as ProductReviewsData;
  return 'ProductReviewsData(useProductSettings: ${_this.useProductSettings}, active: ${_this.active}, autoPublishVerified: ${_this.autoPublishVerified}, storefrontForm: ${_this.storefrontForm}, autoPublishStorefront: ${_this.autoPublishStorefront}, showReplies: ${_this.showReplies})';
}


}

/// @nodoc
abstract mixin class $ProductReviewsDataCopyWith<$Res>  {
  factory $ProductReviewsDataCopyWith(ProductReviewsData value, $Res Function(ProductReviewsData) _then) = _$ProductReviewsDataCopyWithImpl;
@useResult
$Res call({
 bool useProductSettings, bool? active, bool? autoPublishVerified, bool? storefrontForm, bool? autoPublishStorefront, bool? showReplies
});




}
/// @nodoc
class _$ProductReviewsDataCopyWithImpl<$Res>
    implements $ProductReviewsDataCopyWith<$Res> {
  _$ProductReviewsDataCopyWithImpl(this._self, this._then);

  final ProductReviewsData _self;
  final $Res Function(ProductReviewsData) _then;

/// Create a copy of ProductReviewsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? useProductSettings = null,Object? active = freezed,Object? autoPublishVerified = freezed,Object? storefrontForm = freezed,Object? autoPublishStorefront = freezed,Object? showReplies = freezed,}) {
  return _then(ProductReviewsData(
useProductSettings: null == useProductSettings ? _self.useProductSettings : useProductSettings // ignore: cast_nullable_to_non_nullable
as bool,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,autoPublishVerified: freezed == autoPublishVerified ? _self.autoPublishVerified : autoPublishVerified // ignore: cast_nullable_to_non_nullable
as bool?,storefrontForm: freezed == storefrontForm ? _self.storefrontForm : storefrontForm // ignore: cast_nullable_to_non_nullable
as bool?,autoPublishStorefront: freezed == autoPublishStorefront ? _self.autoPublishStorefront : autoPublishStorefront // ignore: cast_nullable_to_non_nullable
as bool?,showReplies: freezed == showReplies ? _self.showReplies : showReplies // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductReviewsData].
extension ProductReviewsDataPatterns on ProductReviewsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReviewsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReviewsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReviewsData value)  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReviewsData value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool useProductSettings,  bool? active,  bool? autoPublishVerified,  bool? storefrontForm,  bool? autoPublishStorefront,  bool? showReplies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReviewsData() when $default != null:
return $default(_that.useProductSettings,_that.active,_that.autoPublishVerified,_that.storefrontForm,_that.autoPublishStorefront,_that.showReplies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool useProductSettings,  bool? active,  bool? autoPublishVerified,  bool? storefrontForm,  bool? autoPublishStorefront,  bool? showReplies)  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsData():
return $default(_that.useProductSettings,_that.active,_that.autoPublishVerified,_that.storefrontForm,_that.autoPublishStorefront,_that.showReplies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool useProductSettings,  bool? active,  bool? autoPublishVerified,  bool? storefrontForm,  bool? autoPublishStorefront,  bool? showReplies)?  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsData() when $default != null:
return $default(_that.useProductSettings,_that.active,_that.autoPublishVerified,_that.storefrontForm,_that.autoPublishStorefront,_that.showReplies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductReviewsData implements ProductReviewsData {
  const _ProductReviewsData({this.useProductSettings = false, this.active, this.autoPublishVerified, this.storefrontForm, this.autoPublishStorefront, this.showReplies});
  factory _ProductReviewsData.fromJson(Map<String, dynamic> json) => _$ProductReviewsDataFromJson(json);

@override@JsonKey() final  bool useProductSettings;
@override final  bool? active;
@override final  bool? autoPublishVerified;
@override final  bool? storefrontForm;
@override final  bool? autoPublishStorefront;
@override final  bool? showReplies;

/// Create a copy of ProductReviewsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewsDataCopyWith<_ProductReviewsData> get copyWith => __$ProductReviewsDataCopyWithImpl<_ProductReviewsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductReviewsDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReviewsData&&(identical(other.useProductSettings, useProductSettings) || other.useProductSettings == useProductSettings)&&(identical(other.active, active) || other.active == active)&&(identical(other.autoPublishVerified, autoPublishVerified) || other.autoPublishVerified == autoPublishVerified)&&(identical(other.storefrontForm, storefrontForm) || other.storefrontForm == storefrontForm)&&(identical(other.autoPublishStorefront, autoPublishStorefront) || other.autoPublishStorefront == autoPublishStorefront)&&(identical(other.showReplies, showReplies) || other.showReplies == showReplies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,useProductSettings,active,autoPublishVerified,storefrontForm,autoPublishStorefront,showReplies);
}

@override
String toString() {
    return 'ProductReviewsData(useProductSettings: $useProductSettings, active: $active, autoPublishVerified: $autoPublishVerified, storefrontForm: $storefrontForm, autoPublishStorefront: $autoPublishStorefront, showReplies: $showReplies)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewsDataCopyWith<$Res> implements $ProductReviewsDataCopyWith<$Res> {
  factory _$ProductReviewsDataCopyWith(_ProductReviewsData value, $Res Function(_ProductReviewsData) _then) = __$ProductReviewsDataCopyWithImpl;
@override @useResult
$Res call({
 bool useProductSettings, bool? active, bool? autoPublishVerified, bool? storefrontForm, bool? autoPublishStorefront, bool? showReplies
});




}
/// @nodoc
class __$ProductReviewsDataCopyWithImpl<$Res>
    implements _$ProductReviewsDataCopyWith<$Res> {
  __$ProductReviewsDataCopyWithImpl(this._self, this._then);

  final _ProductReviewsData _self;
  final $Res Function(_ProductReviewsData) _then;

/// Create a copy of ProductReviewsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? useProductSettings = null,Object? active = freezed,Object? autoPublishVerified = freezed,Object? storefrontForm = freezed,Object? autoPublishStorefront = freezed,Object? showReplies = freezed,}) {
  return _then(_ProductReviewsData(
useProductSettings: null == useProductSettings ? _self.useProductSettings : useProductSettings // ignore: cast_nullable_to_non_nullable
as bool,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,autoPublishVerified: freezed == autoPublishVerified ? _self.autoPublishVerified : autoPublishVerified // ignore: cast_nullable_to_non_nullable
as bool?,storefrontForm: freezed == storefrontForm ? _self.storefrontForm : storefrontForm // ignore: cast_nullable_to_non_nullable
as bool?,autoPublishStorefront: freezed == autoPublishStorefront ? _self.autoPublishStorefront : autoPublishStorefront // ignore: cast_nullable_to_non_nullable
as bool?,showReplies: freezed == showReplies ? _self.showReplies : showReplies // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
