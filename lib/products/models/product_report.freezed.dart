// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductReport {

/// Hourly data for today with metrics for each hour.
 DayMetrics get today;/// Hourly data for yesterday with metrics for each hour.
 DayMetrics get yesterday;/// Weekly data with metrics for each day of the current week.
 WeekMetrics get week;/// Monthly data with metrics for each day of the current month.
 MonthMetrics get month;/// Aggregated totals for views, sales, revenue, and profit.
 Totals get totals;
/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReportCopyWith<ProductReport> get copyWith => _$ProductReportCopyWithImpl<ProductReport>(this as ProductReport, _$identity);

  /// Serializes this ProductReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReport&&(identical(other.today, today) || other.today == today)&&(identical(other.yesterday, yesterday) || other.yesterday == yesterday)&&(identical(other.week, week) || other.week == week)&&(identical(other.month, month) || other.month == month)&&(identical(other.totals, totals) || other.totals == totals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,today,yesterday,week,month,totals);

@override
String toString() {
  return 'ProductReport(today: $today, yesterday: $yesterday, week: $week, month: $month, totals: $totals)';
}


}

/// @nodoc
abstract mixin class $ProductReportCopyWith<$Res>  {
  factory $ProductReportCopyWith(ProductReport value, $Res Function(ProductReport) _then) = _$ProductReportCopyWithImpl;
@useResult
$Res call({
 DayMetrics today, DayMetrics yesterday, WeekMetrics week, MonthMetrics month, Totals totals
});


$DayMetricsCopyWith<$Res> get today;$DayMetricsCopyWith<$Res> get yesterday;$WeekMetricsCopyWith<$Res> get week;$MonthMetricsCopyWith<$Res> get month;$TotalsCopyWith<$Res> get totals;

}
/// @nodoc
class _$ProductReportCopyWithImpl<$Res>
    implements $ProductReportCopyWith<$Res> {
  _$ProductReportCopyWithImpl(this._self, this._then);

  final ProductReport _self;
  final $Res Function(ProductReport) _then;

/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? today = null,Object? yesterday = null,Object? week = null,Object? month = null,Object? totals = null,}) {
  return _then(_self.copyWith(
today: null == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as DayMetrics,yesterday: null == yesterday ? _self.yesterday : yesterday // ignore: cast_nullable_to_non_nullable
as DayMetrics,week: null == week ? _self.week : week // ignore: cast_nullable_to_non_nullable
as WeekMetrics,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as MonthMetrics,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as Totals,
  ));
}
/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayMetricsCopyWith<$Res> get today {
  
  return $DayMetricsCopyWith<$Res>(_self.today, (value) {
    return _then(_self.copyWith(today: value));
  });
}/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayMetricsCopyWith<$Res> get yesterday {
  
  return $DayMetricsCopyWith<$Res>(_self.yesterday, (value) {
    return _then(_self.copyWith(yesterday: value));
  });
}/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeekMetricsCopyWith<$Res> get week {
  
  return $WeekMetricsCopyWith<$Res>(_self.week, (value) {
    return _then(_self.copyWith(week: value));
  });
}/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonthMetricsCopyWith<$Res> get month {
  
  return $MonthMetricsCopyWith<$Res>(_self.month, (value) {
    return _then(_self.copyWith(month: value));
  });
}/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TotalsCopyWith<$Res> get totals {
  
  return $TotalsCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductReport].
extension ProductReportPatterns on ProductReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReport value)  $default,){
final _that = this;
switch (_that) {
case _ProductReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReport value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DayMetrics today,  DayMetrics yesterday,  WeekMetrics week,  MonthMetrics month,  Totals totals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReport() when $default != null:
return $default(_that.today,_that.yesterday,_that.week,_that.month,_that.totals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DayMetrics today,  DayMetrics yesterday,  WeekMetrics week,  MonthMetrics month,  Totals totals)  $default,) {final _that = this;
switch (_that) {
case _ProductReport():
return $default(_that.today,_that.yesterday,_that.week,_that.month,_that.totals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DayMetrics today,  DayMetrics yesterday,  WeekMetrics week,  MonthMetrics month,  Totals totals)?  $default,) {final _that = this;
switch (_that) {
case _ProductReport() when $default != null:
return $default(_that.today,_that.yesterday,_that.week,_that.month,_that.totals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductReport implements ProductReport {
  const _ProductReport({required this.today, required this.yesterday, required this.week, required this.month, required this.totals});
  factory _ProductReport.fromJson(Map<String, dynamic> json) => _$ProductReportFromJson(json);

/// Hourly data for today with metrics for each hour.
@override final  DayMetrics today;
/// Hourly data for yesterday with metrics for each hour.
@override final  DayMetrics yesterday;
/// Weekly data with metrics for each day of the current week.
@override final  WeekMetrics week;
/// Monthly data with metrics for each day of the current month.
@override final  MonthMetrics month;
/// Aggregated totals for views, sales, revenue, and profit.
@override final  Totals totals;

/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReportCopyWith<_ProductReport> get copyWith => __$ProductReportCopyWithImpl<_ProductReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReport&&(identical(other.today, today) || other.today == today)&&(identical(other.yesterday, yesterday) || other.yesterday == yesterday)&&(identical(other.week, week) || other.week == week)&&(identical(other.month, month) || other.month == month)&&(identical(other.totals, totals) || other.totals == totals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,today,yesterday,week,month,totals);

@override
String toString() {
  return 'ProductReport(today: $today, yesterday: $yesterday, week: $week, month: $month, totals: $totals)';
}


}

/// @nodoc
abstract mixin class _$ProductReportCopyWith<$Res> implements $ProductReportCopyWith<$Res> {
  factory _$ProductReportCopyWith(_ProductReport value, $Res Function(_ProductReport) _then) = __$ProductReportCopyWithImpl;
@override @useResult
$Res call({
 DayMetrics today, DayMetrics yesterday, WeekMetrics week, MonthMetrics month, Totals totals
});


@override $DayMetricsCopyWith<$Res> get today;@override $DayMetricsCopyWith<$Res> get yesterday;@override $WeekMetricsCopyWith<$Res> get week;@override $MonthMetricsCopyWith<$Res> get month;@override $TotalsCopyWith<$Res> get totals;

}
/// @nodoc
class __$ProductReportCopyWithImpl<$Res>
    implements _$ProductReportCopyWith<$Res> {
  __$ProductReportCopyWithImpl(this._self, this._then);

  final _ProductReport _self;
  final $Res Function(_ProductReport) _then;

/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? today = null,Object? yesterday = null,Object? week = null,Object? month = null,Object? totals = null,}) {
  return _then(_ProductReport(
today: null == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as DayMetrics,yesterday: null == yesterday ? _self.yesterday : yesterday // ignore: cast_nullable_to_non_nullable
as DayMetrics,week: null == week ? _self.week : week // ignore: cast_nullable_to_non_nullable
as WeekMetrics,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as MonthMetrics,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as Totals,
  ));
}

/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayMetricsCopyWith<$Res> get today {
  
  return $DayMetricsCopyWith<$Res>(_self.today, (value) {
    return _then(_self.copyWith(today: value));
  });
}/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayMetricsCopyWith<$Res> get yesterday {
  
  return $DayMetricsCopyWith<$Res>(_self.yesterday, (value) {
    return _then(_self.copyWith(yesterday: value));
  });
}/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeekMetricsCopyWith<$Res> get week {
  
  return $WeekMetricsCopyWith<$Res>(_self.week, (value) {
    return _then(_self.copyWith(week: value));
  });
}/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonthMetricsCopyWith<$Res> get month {
  
  return $MonthMetricsCopyWith<$Res>(_self.month, (value) {
    return _then(_self.copyWith(month: value));
  });
}/// Create a copy of ProductReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TotalsCopyWith<$Res> get totals {
  
  return $TotalsCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// @nodoc
mixin _$DayMetrics {

/// Sales data for each hour (00:00 to 23:00).
 Map<String, int> get sales;/// Revenue data for each hour (00:00 to 23:00).
 Map<String, int> get revenue;/// Profit data for each hour (00:00 to 23:00).
 Map<String, int> get profit;/// Views data for each hour (00:00 to 23:00).
 Map<String, int> get views;/// State distribution data for each hour (00:00 to 23:00).
 Map<String, Map<String, int>> get states;
/// Create a copy of DayMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayMetricsCopyWith<DayMetrics> get copyWith => _$DayMetricsCopyWithImpl<DayMetrics>(this as DayMetrics, _$identity);

  /// Serializes this DayMetrics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayMetrics&&const DeepCollectionEquality().equals(other.sales, sales)&&const DeepCollectionEquality().equals(other.revenue, revenue)&&const DeepCollectionEquality().equals(other.profit, profit)&&const DeepCollectionEquality().equals(other.views, views)&&const DeepCollectionEquality().equals(other.states, states));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sales),const DeepCollectionEquality().hash(revenue),const DeepCollectionEquality().hash(profit),const DeepCollectionEquality().hash(views),const DeepCollectionEquality().hash(states));

@override
String toString() {
  return 'DayMetrics(sales: $sales, revenue: $revenue, profit: $profit, views: $views, states: $states)';
}


}

/// @nodoc
abstract mixin class $DayMetricsCopyWith<$Res>  {
  factory $DayMetricsCopyWith(DayMetrics value, $Res Function(DayMetrics) _then) = _$DayMetricsCopyWithImpl;
@useResult
$Res call({
 Map<String, int> sales, Map<String, int> revenue, Map<String, int> profit, Map<String, int> views, Map<String, Map<String, int>> states
});




}
/// @nodoc
class _$DayMetricsCopyWithImpl<$Res>
    implements $DayMetricsCopyWith<$Res> {
  _$DayMetricsCopyWithImpl(this._self, this._then);

  final DayMetrics _self;
  final $Res Function(DayMetrics) _then;

/// Create a copy of DayMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sales = null,Object? revenue = null,Object? profit = null,Object? views = null,Object? states = null,}) {
  return _then(_self.copyWith(
sales: null == sales ? _self.sales : sales // ignore: cast_nullable_to_non_nullable
as Map<String, int>,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as Map<String, int>,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as Map<String, int>,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as Map<String, int>,states: null == states ? _self.states : states // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, int>>,
  ));
}

}


/// Adds pattern-matching-related methods to [DayMetrics].
extension DayMetricsPatterns on DayMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayMetrics value)  $default,){
final _that = this;
switch (_that) {
case _DayMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _DayMetrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, int> sales,  Map<String, int> revenue,  Map<String, int> profit,  Map<String, int> views,  Map<String, Map<String, int>> states)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayMetrics() when $default != null:
return $default(_that.sales,_that.revenue,_that.profit,_that.views,_that.states);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, int> sales,  Map<String, int> revenue,  Map<String, int> profit,  Map<String, int> views,  Map<String, Map<String, int>> states)  $default,) {final _that = this;
switch (_that) {
case _DayMetrics():
return $default(_that.sales,_that.revenue,_that.profit,_that.views,_that.states);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, int> sales,  Map<String, int> revenue,  Map<String, int> profit,  Map<String, int> views,  Map<String, Map<String, int>> states)?  $default,) {final _that = this;
switch (_that) {
case _DayMetrics() when $default != null:
return $default(_that.sales,_that.revenue,_that.profit,_that.views,_that.states);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayMetrics implements DayMetrics {
  const _DayMetrics({required final  Map<String, int> sales, required final  Map<String, int> revenue, required final  Map<String, int> profit, required final  Map<String, int> views, required final  Map<String, Map<String, int>> states}): _sales = sales,_revenue = revenue,_profit = profit,_views = views,_states = states;
  factory _DayMetrics.fromJson(Map<String, dynamic> json) => _$DayMetricsFromJson(json);

/// Sales data for each hour (00:00 to 23:00).
 final  Map<String, int> _sales;
/// Sales data for each hour (00:00 to 23:00).
@override Map<String, int> get sales {
  if (_sales is EqualUnmodifiableMapView) return _sales;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sales);
}

/// Revenue data for each hour (00:00 to 23:00).
 final  Map<String, int> _revenue;
/// Revenue data for each hour (00:00 to 23:00).
@override Map<String, int> get revenue {
  if (_revenue is EqualUnmodifiableMapView) return _revenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_revenue);
}

/// Profit data for each hour (00:00 to 23:00).
 final  Map<String, int> _profit;
/// Profit data for each hour (00:00 to 23:00).
@override Map<String, int> get profit {
  if (_profit is EqualUnmodifiableMapView) return _profit;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_profit);
}

/// Views data for each hour (00:00 to 23:00).
 final  Map<String, int> _views;
/// Views data for each hour (00:00 to 23:00).
@override Map<String, int> get views {
  if (_views is EqualUnmodifiableMapView) return _views;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_views);
}

/// State distribution data for each hour (00:00 to 23:00).
 final  Map<String, Map<String, int>> _states;
/// State distribution data for each hour (00:00 to 23:00).
@override Map<String, Map<String, int>> get states {
  if (_states is EqualUnmodifiableMapView) return _states;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_states);
}


/// Create a copy of DayMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayMetricsCopyWith<_DayMetrics> get copyWith => __$DayMetricsCopyWithImpl<_DayMetrics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayMetricsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayMetrics&&const DeepCollectionEquality().equals(other._sales, _sales)&&const DeepCollectionEquality().equals(other._revenue, _revenue)&&const DeepCollectionEquality().equals(other._profit, _profit)&&const DeepCollectionEquality().equals(other._views, _views)&&const DeepCollectionEquality().equals(other._states, _states));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sales),const DeepCollectionEquality().hash(_revenue),const DeepCollectionEquality().hash(_profit),const DeepCollectionEquality().hash(_views),const DeepCollectionEquality().hash(_states));

@override
String toString() {
  return 'DayMetrics(sales: $sales, revenue: $revenue, profit: $profit, views: $views, states: $states)';
}


}

/// @nodoc
abstract mixin class _$DayMetricsCopyWith<$Res> implements $DayMetricsCopyWith<$Res> {
  factory _$DayMetricsCopyWith(_DayMetrics value, $Res Function(_DayMetrics) _then) = __$DayMetricsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, int> sales, Map<String, int> revenue, Map<String, int> profit, Map<String, int> views, Map<String, Map<String, int>> states
});




}
/// @nodoc
class __$DayMetricsCopyWithImpl<$Res>
    implements _$DayMetricsCopyWith<$Res> {
  __$DayMetricsCopyWithImpl(this._self, this._then);

  final _DayMetrics _self;
  final $Res Function(_DayMetrics) _then;

/// Create a copy of DayMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sales = null,Object? revenue = null,Object? profit = null,Object? views = null,Object? states = null,}) {
  return _then(_DayMetrics(
sales: null == sales ? _self._sales : sales // ignore: cast_nullable_to_non_nullable
as Map<String, int>,revenue: null == revenue ? _self._revenue : revenue // ignore: cast_nullable_to_non_nullable
as Map<String, int>,profit: null == profit ? _self._profit : profit // ignore: cast_nullable_to_non_nullable
as Map<String, int>,views: null == views ? _self._views : views // ignore: cast_nullable_to_non_nullable
as Map<String, int>,states: null == states ? _self._states : states // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, int>>,
  ));
}


}


/// @nodoc
mixin _$WeekMetrics {

/// Sales data for each day of the week (YYYY-MM-DD format).
 Map<String, int> get sales;/// Revenue data for each day of the week (YYYY-MM-DD format).
 Map<String, int> get revenue;/// Profit data for each day of the week (YYYY-MM-DD format).
 Map<String, int> get profit;/// Views data for each day of the week (YYYY-MM-DD format).
 Map<String, int> get views;/// State distribution data for each day of the week (YYYY-MM-DD format).
 Map<String, Map<String, int>> get states;
/// Create a copy of WeekMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeekMetricsCopyWith<WeekMetrics> get copyWith => _$WeekMetricsCopyWithImpl<WeekMetrics>(this as WeekMetrics, _$identity);

  /// Serializes this WeekMetrics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeekMetrics&&const DeepCollectionEquality().equals(other.sales, sales)&&const DeepCollectionEquality().equals(other.revenue, revenue)&&const DeepCollectionEquality().equals(other.profit, profit)&&const DeepCollectionEquality().equals(other.views, views)&&const DeepCollectionEquality().equals(other.states, states));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sales),const DeepCollectionEquality().hash(revenue),const DeepCollectionEquality().hash(profit),const DeepCollectionEquality().hash(views),const DeepCollectionEquality().hash(states));

@override
String toString() {
  return 'WeekMetrics(sales: $sales, revenue: $revenue, profit: $profit, views: $views, states: $states)';
}


}

/// @nodoc
abstract mixin class $WeekMetricsCopyWith<$Res>  {
  factory $WeekMetricsCopyWith(WeekMetrics value, $Res Function(WeekMetrics) _then) = _$WeekMetricsCopyWithImpl;
@useResult
$Res call({
 Map<String, int> sales, Map<String, int> revenue, Map<String, int> profit, Map<String, int> views, Map<String, Map<String, int>> states
});




}
/// @nodoc
class _$WeekMetricsCopyWithImpl<$Res>
    implements $WeekMetricsCopyWith<$Res> {
  _$WeekMetricsCopyWithImpl(this._self, this._then);

  final WeekMetrics _self;
  final $Res Function(WeekMetrics) _then;

/// Create a copy of WeekMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sales = null,Object? revenue = null,Object? profit = null,Object? views = null,Object? states = null,}) {
  return _then(_self.copyWith(
sales: null == sales ? _self.sales : sales // ignore: cast_nullable_to_non_nullable
as Map<String, int>,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as Map<String, int>,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as Map<String, int>,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as Map<String, int>,states: null == states ? _self.states : states // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, int>>,
  ));
}

}


/// Adds pattern-matching-related methods to [WeekMetrics].
extension WeekMetricsPatterns on WeekMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeekMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeekMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeekMetrics value)  $default,){
final _that = this;
switch (_that) {
case _WeekMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeekMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _WeekMetrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, int> sales,  Map<String, int> revenue,  Map<String, int> profit,  Map<String, int> views,  Map<String, Map<String, int>> states)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeekMetrics() when $default != null:
return $default(_that.sales,_that.revenue,_that.profit,_that.views,_that.states);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, int> sales,  Map<String, int> revenue,  Map<String, int> profit,  Map<String, int> views,  Map<String, Map<String, int>> states)  $default,) {final _that = this;
switch (_that) {
case _WeekMetrics():
return $default(_that.sales,_that.revenue,_that.profit,_that.views,_that.states);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, int> sales,  Map<String, int> revenue,  Map<String, int> profit,  Map<String, int> views,  Map<String, Map<String, int>> states)?  $default,) {final _that = this;
switch (_that) {
case _WeekMetrics() when $default != null:
return $default(_that.sales,_that.revenue,_that.profit,_that.views,_that.states);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeekMetrics implements WeekMetrics {
  const _WeekMetrics({required final  Map<String, int> sales, required final  Map<String, int> revenue, required final  Map<String, int> profit, required final  Map<String, int> views, required final  Map<String, Map<String, int>> states}): _sales = sales,_revenue = revenue,_profit = profit,_views = views,_states = states;
  factory _WeekMetrics.fromJson(Map<String, dynamic> json) => _$WeekMetricsFromJson(json);

/// Sales data for each day of the week (YYYY-MM-DD format).
 final  Map<String, int> _sales;
/// Sales data for each day of the week (YYYY-MM-DD format).
@override Map<String, int> get sales {
  if (_sales is EqualUnmodifiableMapView) return _sales;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sales);
}

/// Revenue data for each day of the week (YYYY-MM-DD format).
 final  Map<String, int> _revenue;
/// Revenue data for each day of the week (YYYY-MM-DD format).
@override Map<String, int> get revenue {
  if (_revenue is EqualUnmodifiableMapView) return _revenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_revenue);
}

/// Profit data for each day of the week (YYYY-MM-DD format).
 final  Map<String, int> _profit;
/// Profit data for each day of the week (YYYY-MM-DD format).
@override Map<String, int> get profit {
  if (_profit is EqualUnmodifiableMapView) return _profit;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_profit);
}

/// Views data for each day of the week (YYYY-MM-DD format).
 final  Map<String, int> _views;
/// Views data for each day of the week (YYYY-MM-DD format).
@override Map<String, int> get views {
  if (_views is EqualUnmodifiableMapView) return _views;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_views);
}

/// State distribution data for each day of the week (YYYY-MM-DD format).
 final  Map<String, Map<String, int>> _states;
/// State distribution data for each day of the week (YYYY-MM-DD format).
@override Map<String, Map<String, int>> get states {
  if (_states is EqualUnmodifiableMapView) return _states;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_states);
}


/// Create a copy of WeekMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeekMetricsCopyWith<_WeekMetrics> get copyWith => __$WeekMetricsCopyWithImpl<_WeekMetrics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeekMetricsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeekMetrics&&const DeepCollectionEquality().equals(other._sales, _sales)&&const DeepCollectionEquality().equals(other._revenue, _revenue)&&const DeepCollectionEquality().equals(other._profit, _profit)&&const DeepCollectionEquality().equals(other._views, _views)&&const DeepCollectionEquality().equals(other._states, _states));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sales),const DeepCollectionEquality().hash(_revenue),const DeepCollectionEquality().hash(_profit),const DeepCollectionEquality().hash(_views),const DeepCollectionEquality().hash(_states));

@override
String toString() {
  return 'WeekMetrics(sales: $sales, revenue: $revenue, profit: $profit, views: $views, states: $states)';
}


}

/// @nodoc
abstract mixin class _$WeekMetricsCopyWith<$Res> implements $WeekMetricsCopyWith<$Res> {
  factory _$WeekMetricsCopyWith(_WeekMetrics value, $Res Function(_WeekMetrics) _then) = __$WeekMetricsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, int> sales, Map<String, int> revenue, Map<String, int> profit, Map<String, int> views, Map<String, Map<String, int>> states
});




}
/// @nodoc
class __$WeekMetricsCopyWithImpl<$Res>
    implements _$WeekMetricsCopyWith<$Res> {
  __$WeekMetricsCopyWithImpl(this._self, this._then);

  final _WeekMetrics _self;
  final $Res Function(_WeekMetrics) _then;

/// Create a copy of WeekMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sales = null,Object? revenue = null,Object? profit = null,Object? views = null,Object? states = null,}) {
  return _then(_WeekMetrics(
sales: null == sales ? _self._sales : sales // ignore: cast_nullable_to_non_nullable
as Map<String, int>,revenue: null == revenue ? _self._revenue : revenue // ignore: cast_nullable_to_non_nullable
as Map<String, int>,profit: null == profit ? _self._profit : profit // ignore: cast_nullable_to_non_nullable
as Map<String, int>,views: null == views ? _self._views : views // ignore: cast_nullable_to_non_nullable
as Map<String, int>,states: null == states ? _self._states : states // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, int>>,
  ));
}


}


/// @nodoc
mixin _$MonthMetrics {

/// Sales data for each day of the month (YYYY-MM-DD format).
 Map<String, int> get sales;/// Revenue data for each day of the month (YYYY-MM-DD format).
 Map<String, int> get revenue;/// Profit data for each day of the month (YYYY-MM-DD format).
 Map<String, int> get profit;/// Views data for each day of the month (YYYY-MM-DD format).
 Map<String, int> get views;/// State distribution data for each day of the month (YYYY-MM-DD format).
 Map<String, Map<String, int>> get states;
/// Create a copy of MonthMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthMetricsCopyWith<MonthMetrics> get copyWith => _$MonthMetricsCopyWithImpl<MonthMetrics>(this as MonthMetrics, _$identity);

  /// Serializes this MonthMetrics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthMetrics&&const DeepCollectionEquality().equals(other.sales, sales)&&const DeepCollectionEquality().equals(other.revenue, revenue)&&const DeepCollectionEquality().equals(other.profit, profit)&&const DeepCollectionEquality().equals(other.views, views)&&const DeepCollectionEquality().equals(other.states, states));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sales),const DeepCollectionEquality().hash(revenue),const DeepCollectionEquality().hash(profit),const DeepCollectionEquality().hash(views),const DeepCollectionEquality().hash(states));

@override
String toString() {
  return 'MonthMetrics(sales: $sales, revenue: $revenue, profit: $profit, views: $views, states: $states)';
}


}

/// @nodoc
abstract mixin class $MonthMetricsCopyWith<$Res>  {
  factory $MonthMetricsCopyWith(MonthMetrics value, $Res Function(MonthMetrics) _then) = _$MonthMetricsCopyWithImpl;
@useResult
$Res call({
 Map<String, int> sales, Map<String, int> revenue, Map<String, int> profit, Map<String, int> views, Map<String, Map<String, int>> states
});




}
/// @nodoc
class _$MonthMetricsCopyWithImpl<$Res>
    implements $MonthMetricsCopyWith<$Res> {
  _$MonthMetricsCopyWithImpl(this._self, this._then);

  final MonthMetrics _self;
  final $Res Function(MonthMetrics) _then;

/// Create a copy of MonthMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sales = null,Object? revenue = null,Object? profit = null,Object? views = null,Object? states = null,}) {
  return _then(_self.copyWith(
sales: null == sales ? _self.sales : sales // ignore: cast_nullable_to_non_nullable
as Map<String, int>,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as Map<String, int>,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as Map<String, int>,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as Map<String, int>,states: null == states ? _self.states : states // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, int>>,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthMetrics].
extension MonthMetricsPatterns on MonthMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthMetrics value)  $default,){
final _that = this;
switch (_that) {
case _MonthMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _MonthMetrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, int> sales,  Map<String, int> revenue,  Map<String, int> profit,  Map<String, int> views,  Map<String, Map<String, int>> states)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthMetrics() when $default != null:
return $default(_that.sales,_that.revenue,_that.profit,_that.views,_that.states);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, int> sales,  Map<String, int> revenue,  Map<String, int> profit,  Map<String, int> views,  Map<String, Map<String, int>> states)  $default,) {final _that = this;
switch (_that) {
case _MonthMetrics():
return $default(_that.sales,_that.revenue,_that.profit,_that.views,_that.states);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, int> sales,  Map<String, int> revenue,  Map<String, int> profit,  Map<String, int> views,  Map<String, Map<String, int>> states)?  $default,) {final _that = this;
switch (_that) {
case _MonthMetrics() when $default != null:
return $default(_that.sales,_that.revenue,_that.profit,_that.views,_that.states);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthMetrics implements MonthMetrics {
  const _MonthMetrics({required final  Map<String, int> sales, required final  Map<String, int> revenue, required final  Map<String, int> profit, required final  Map<String, int> views, required final  Map<String, Map<String, int>> states}): _sales = sales,_revenue = revenue,_profit = profit,_views = views,_states = states;
  factory _MonthMetrics.fromJson(Map<String, dynamic> json) => _$MonthMetricsFromJson(json);

/// Sales data for each day of the month (YYYY-MM-DD format).
 final  Map<String, int> _sales;
/// Sales data for each day of the month (YYYY-MM-DD format).
@override Map<String, int> get sales {
  if (_sales is EqualUnmodifiableMapView) return _sales;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sales);
}

/// Revenue data for each day of the month (YYYY-MM-DD format).
 final  Map<String, int> _revenue;
/// Revenue data for each day of the month (YYYY-MM-DD format).
@override Map<String, int> get revenue {
  if (_revenue is EqualUnmodifiableMapView) return _revenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_revenue);
}

/// Profit data for each day of the month (YYYY-MM-DD format).
 final  Map<String, int> _profit;
/// Profit data for each day of the month (YYYY-MM-DD format).
@override Map<String, int> get profit {
  if (_profit is EqualUnmodifiableMapView) return _profit;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_profit);
}

/// Views data for each day of the month (YYYY-MM-DD format).
 final  Map<String, int> _views;
/// Views data for each day of the month (YYYY-MM-DD format).
@override Map<String, int> get views {
  if (_views is EqualUnmodifiableMapView) return _views;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_views);
}

/// State distribution data for each day of the month (YYYY-MM-DD format).
 final  Map<String, Map<String, int>> _states;
/// State distribution data for each day of the month (YYYY-MM-DD format).
@override Map<String, Map<String, int>> get states {
  if (_states is EqualUnmodifiableMapView) return _states;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_states);
}


/// Create a copy of MonthMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthMetricsCopyWith<_MonthMetrics> get copyWith => __$MonthMetricsCopyWithImpl<_MonthMetrics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthMetricsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthMetrics&&const DeepCollectionEquality().equals(other._sales, _sales)&&const DeepCollectionEquality().equals(other._revenue, _revenue)&&const DeepCollectionEquality().equals(other._profit, _profit)&&const DeepCollectionEquality().equals(other._views, _views)&&const DeepCollectionEquality().equals(other._states, _states));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sales),const DeepCollectionEquality().hash(_revenue),const DeepCollectionEquality().hash(_profit),const DeepCollectionEquality().hash(_views),const DeepCollectionEquality().hash(_states));

@override
String toString() {
  return 'MonthMetrics(sales: $sales, revenue: $revenue, profit: $profit, views: $views, states: $states)';
}


}

/// @nodoc
abstract mixin class _$MonthMetricsCopyWith<$Res> implements $MonthMetricsCopyWith<$Res> {
  factory _$MonthMetricsCopyWith(_MonthMetrics value, $Res Function(_MonthMetrics) _then) = __$MonthMetricsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, int> sales, Map<String, int> revenue, Map<String, int> profit, Map<String, int> views, Map<String, Map<String, int>> states
});




}
/// @nodoc
class __$MonthMetricsCopyWithImpl<$Res>
    implements _$MonthMetricsCopyWith<$Res> {
  __$MonthMetricsCopyWithImpl(this._self, this._then);

  final _MonthMetrics _self;
  final $Res Function(_MonthMetrics) _then;

/// Create a copy of MonthMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sales = null,Object? revenue = null,Object? profit = null,Object? views = null,Object? states = null,}) {
  return _then(_MonthMetrics(
sales: null == sales ? _self._sales : sales // ignore: cast_nullable_to_non_nullable
as Map<String, int>,revenue: null == revenue ? _self._revenue : revenue // ignore: cast_nullable_to_non_nullable
as Map<String, int>,profit: null == profit ? _self._profit : profit // ignore: cast_nullable_to_non_nullable
as Map<String, int>,views: null == views ? _self._views : views // ignore: cast_nullable_to_non_nullable
as Map<String, int>,states: null == states ? _self._states : states // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, int>>,
  ));
}


}


/// @nodoc
mixin _$Totals {

/// Total views for different time frames.
 TimeFrameTotals get views;/// Total sales for different time frames.
 TimeFrameTotals get sales;/// Total revenue for different time frames.
 TimeFrameTotals get revenue;/// Total profit for different time frames.
 TimeFrameTotals get profit;/// State distribution totals for different time frames.
 StateFrameTotals get states;
/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TotalsCopyWith<Totals> get copyWith => _$TotalsCopyWithImpl<Totals>(this as Totals, _$identity);

  /// Serializes this Totals to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Totals&&(identical(other.views, views) || other.views == views)&&(identical(other.sales, sales) || other.sales == sales)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.profit, profit) || other.profit == profit)&&(identical(other.states, states) || other.states == states));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,views,sales,revenue,profit,states);

@override
String toString() {
  return 'Totals(views: $views, sales: $sales, revenue: $revenue, profit: $profit, states: $states)';
}


}

/// @nodoc
abstract mixin class $TotalsCopyWith<$Res>  {
  factory $TotalsCopyWith(Totals value, $Res Function(Totals) _then) = _$TotalsCopyWithImpl;
@useResult
$Res call({
 TimeFrameTotals views, TimeFrameTotals sales, TimeFrameTotals revenue, TimeFrameTotals profit, StateFrameTotals states
});


$TimeFrameTotalsCopyWith<$Res> get views;$TimeFrameTotalsCopyWith<$Res> get sales;$TimeFrameTotalsCopyWith<$Res> get revenue;$TimeFrameTotalsCopyWith<$Res> get profit;$StateFrameTotalsCopyWith<$Res> get states;

}
/// @nodoc
class _$TotalsCopyWithImpl<$Res>
    implements $TotalsCopyWith<$Res> {
  _$TotalsCopyWithImpl(this._self, this._then);

  final Totals _self;
  final $Res Function(Totals) _then;

/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? views = null,Object? sales = null,Object? revenue = null,Object? profit = null,Object? states = null,}) {
  return _then(_self.copyWith(
views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as TimeFrameTotals,sales: null == sales ? _self.sales : sales // ignore: cast_nullable_to_non_nullable
as TimeFrameTotals,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as TimeFrameTotals,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as TimeFrameTotals,states: null == states ? _self.states : states // ignore: cast_nullable_to_non_nullable
as StateFrameTotals,
  ));
}
/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeFrameTotalsCopyWith<$Res> get views {
  
  return $TimeFrameTotalsCopyWith<$Res>(_self.views, (value) {
    return _then(_self.copyWith(views: value));
  });
}/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeFrameTotalsCopyWith<$Res> get sales {
  
  return $TimeFrameTotalsCopyWith<$Res>(_self.sales, (value) {
    return _then(_self.copyWith(sales: value));
  });
}/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeFrameTotalsCopyWith<$Res> get revenue {
  
  return $TimeFrameTotalsCopyWith<$Res>(_self.revenue, (value) {
    return _then(_self.copyWith(revenue: value));
  });
}/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeFrameTotalsCopyWith<$Res> get profit {
  
  return $TimeFrameTotalsCopyWith<$Res>(_self.profit, (value) {
    return _then(_self.copyWith(profit: value));
  });
}/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StateFrameTotalsCopyWith<$Res> get states {
  
  return $StateFrameTotalsCopyWith<$Res>(_self.states, (value) {
    return _then(_self.copyWith(states: value));
  });
}
}


/// Adds pattern-matching-related methods to [Totals].
extension TotalsPatterns on Totals {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Totals value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Totals() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Totals value)  $default,){
final _that = this;
switch (_that) {
case _Totals():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Totals value)?  $default,){
final _that = this;
switch (_that) {
case _Totals() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TimeFrameTotals views,  TimeFrameTotals sales,  TimeFrameTotals revenue,  TimeFrameTotals profit,  StateFrameTotals states)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Totals() when $default != null:
return $default(_that.views,_that.sales,_that.revenue,_that.profit,_that.states);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TimeFrameTotals views,  TimeFrameTotals sales,  TimeFrameTotals revenue,  TimeFrameTotals profit,  StateFrameTotals states)  $default,) {final _that = this;
switch (_that) {
case _Totals():
return $default(_that.views,_that.sales,_that.revenue,_that.profit,_that.states);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TimeFrameTotals views,  TimeFrameTotals sales,  TimeFrameTotals revenue,  TimeFrameTotals profit,  StateFrameTotals states)?  $default,) {final _that = this;
switch (_that) {
case _Totals() when $default != null:
return $default(_that.views,_that.sales,_that.revenue,_that.profit,_that.states);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Totals implements Totals {
  const _Totals({required this.views, required this.sales, required this.revenue, required this.profit, required this.states});
  factory _Totals.fromJson(Map<String, dynamic> json) => _$TotalsFromJson(json);

/// Total views for different time frames.
@override final  TimeFrameTotals views;
/// Total sales for different time frames.
@override final  TimeFrameTotals sales;
/// Total revenue for different time frames.
@override final  TimeFrameTotals revenue;
/// Total profit for different time frames.
@override final  TimeFrameTotals profit;
/// State distribution totals for different time frames.
@override final  StateFrameTotals states;

/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TotalsCopyWith<_Totals> get copyWith => __$TotalsCopyWithImpl<_Totals>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TotalsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Totals&&(identical(other.views, views) || other.views == views)&&(identical(other.sales, sales) || other.sales == sales)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.profit, profit) || other.profit == profit)&&(identical(other.states, states) || other.states == states));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,views,sales,revenue,profit,states);

@override
String toString() {
  return 'Totals(views: $views, sales: $sales, revenue: $revenue, profit: $profit, states: $states)';
}


}

/// @nodoc
abstract mixin class _$TotalsCopyWith<$Res> implements $TotalsCopyWith<$Res> {
  factory _$TotalsCopyWith(_Totals value, $Res Function(_Totals) _then) = __$TotalsCopyWithImpl;
@override @useResult
$Res call({
 TimeFrameTotals views, TimeFrameTotals sales, TimeFrameTotals revenue, TimeFrameTotals profit, StateFrameTotals states
});


@override $TimeFrameTotalsCopyWith<$Res> get views;@override $TimeFrameTotalsCopyWith<$Res> get sales;@override $TimeFrameTotalsCopyWith<$Res> get revenue;@override $TimeFrameTotalsCopyWith<$Res> get profit;@override $StateFrameTotalsCopyWith<$Res> get states;

}
/// @nodoc
class __$TotalsCopyWithImpl<$Res>
    implements _$TotalsCopyWith<$Res> {
  __$TotalsCopyWithImpl(this._self, this._then);

  final _Totals _self;
  final $Res Function(_Totals) _then;

/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? views = null,Object? sales = null,Object? revenue = null,Object? profit = null,Object? states = null,}) {
  return _then(_Totals(
views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as TimeFrameTotals,sales: null == sales ? _self.sales : sales // ignore: cast_nullable_to_non_nullable
as TimeFrameTotals,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as TimeFrameTotals,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as TimeFrameTotals,states: null == states ? _self.states : states // ignore: cast_nullable_to_non_nullable
as StateFrameTotals,
  ));
}

/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeFrameTotalsCopyWith<$Res> get views {
  
  return $TimeFrameTotalsCopyWith<$Res>(_self.views, (value) {
    return _then(_self.copyWith(views: value));
  });
}/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeFrameTotalsCopyWith<$Res> get sales {
  
  return $TimeFrameTotalsCopyWith<$Res>(_self.sales, (value) {
    return _then(_self.copyWith(sales: value));
  });
}/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeFrameTotalsCopyWith<$Res> get revenue {
  
  return $TimeFrameTotalsCopyWith<$Res>(_self.revenue, (value) {
    return _then(_self.copyWith(revenue: value));
  });
}/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeFrameTotalsCopyWith<$Res> get profit {
  
  return $TimeFrameTotalsCopyWith<$Res>(_self.profit, (value) {
    return _then(_self.copyWith(profit: value));
  });
}/// Create a copy of Totals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StateFrameTotalsCopyWith<$Res> get states {
  
  return $StateFrameTotalsCopyWith<$Res>(_self.states, (value) {
    return _then(_self.copyWith(states: value));
  });
}
}


/// @nodoc
mixin _$TimeFrameTotals {

/// Total count for today.
 int get today;/// Total count for yesterday.
 int get yesterday;/// Total count for the week.
 int get week;/// Total count for the month.
 int get month;
/// Create a copy of TimeFrameTotals
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeFrameTotalsCopyWith<TimeFrameTotals> get copyWith => _$TimeFrameTotalsCopyWithImpl<TimeFrameTotals>(this as TimeFrameTotals, _$identity);

  /// Serializes this TimeFrameTotals to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeFrameTotals&&(identical(other.today, today) || other.today == today)&&(identical(other.yesterday, yesterday) || other.yesterday == yesterday)&&(identical(other.week, week) || other.week == week)&&(identical(other.month, month) || other.month == month));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,today,yesterday,week,month);

@override
String toString() {
  return 'TimeFrameTotals(today: $today, yesterday: $yesterday, week: $week, month: $month)';
}


}

/// @nodoc
abstract mixin class $TimeFrameTotalsCopyWith<$Res>  {
  factory $TimeFrameTotalsCopyWith(TimeFrameTotals value, $Res Function(TimeFrameTotals) _then) = _$TimeFrameTotalsCopyWithImpl;
@useResult
$Res call({
 int today, int yesterday, int week, int month
});




}
/// @nodoc
class _$TimeFrameTotalsCopyWithImpl<$Res>
    implements $TimeFrameTotalsCopyWith<$Res> {
  _$TimeFrameTotalsCopyWithImpl(this._self, this._then);

  final TimeFrameTotals _self;
  final $Res Function(TimeFrameTotals) _then;

/// Create a copy of TimeFrameTotals
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? today = null,Object? yesterday = null,Object? week = null,Object? month = null,}) {
  return _then(_self.copyWith(
today: null == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as int,yesterday: null == yesterday ? _self.yesterday : yesterday // ignore: cast_nullable_to_non_nullable
as int,week: null == week ? _self.week : week // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeFrameTotals].
extension TimeFrameTotalsPatterns on TimeFrameTotals {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeFrameTotals value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeFrameTotals() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeFrameTotals value)  $default,){
final _that = this;
switch (_that) {
case _TimeFrameTotals():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeFrameTotals value)?  $default,){
final _that = this;
switch (_that) {
case _TimeFrameTotals() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int today,  int yesterday,  int week,  int month)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeFrameTotals() when $default != null:
return $default(_that.today,_that.yesterday,_that.week,_that.month);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int today,  int yesterday,  int week,  int month)  $default,) {final _that = this;
switch (_that) {
case _TimeFrameTotals():
return $default(_that.today,_that.yesterday,_that.week,_that.month);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int today,  int yesterday,  int week,  int month)?  $default,) {final _that = this;
switch (_that) {
case _TimeFrameTotals() when $default != null:
return $default(_that.today,_that.yesterday,_that.week,_that.month);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeFrameTotals implements TimeFrameTotals {
  const _TimeFrameTotals({required this.today, required this.yesterday, required this.week, required this.month});
  factory _TimeFrameTotals.fromJson(Map<String, dynamic> json) => _$TimeFrameTotalsFromJson(json);

/// Total count for today.
@override final  int today;
/// Total count for yesterday.
@override final  int yesterday;
/// Total count for the week.
@override final  int week;
/// Total count for the month.
@override final  int month;

/// Create a copy of TimeFrameTotals
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeFrameTotalsCopyWith<_TimeFrameTotals> get copyWith => __$TimeFrameTotalsCopyWithImpl<_TimeFrameTotals>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeFrameTotalsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeFrameTotals&&(identical(other.today, today) || other.today == today)&&(identical(other.yesterday, yesterday) || other.yesterday == yesterday)&&(identical(other.week, week) || other.week == week)&&(identical(other.month, month) || other.month == month));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,today,yesterday,week,month);

@override
String toString() {
  return 'TimeFrameTotals(today: $today, yesterday: $yesterday, week: $week, month: $month)';
}


}

/// @nodoc
abstract mixin class _$TimeFrameTotalsCopyWith<$Res> implements $TimeFrameTotalsCopyWith<$Res> {
  factory _$TimeFrameTotalsCopyWith(_TimeFrameTotals value, $Res Function(_TimeFrameTotals) _then) = __$TimeFrameTotalsCopyWithImpl;
@override @useResult
$Res call({
 int today, int yesterday, int week, int month
});




}
/// @nodoc
class __$TimeFrameTotalsCopyWithImpl<$Res>
    implements _$TimeFrameTotalsCopyWith<$Res> {
  __$TimeFrameTotalsCopyWithImpl(this._self, this._then);

  final _TimeFrameTotals _self;
  final $Res Function(_TimeFrameTotals) _then;

/// Create a copy of TimeFrameTotals
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? today = null,Object? yesterday = null,Object? week = null,Object? month = null,}) {
  return _then(_TimeFrameTotals(
today: null == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as int,yesterday: null == yesterday ? _self.yesterday : yesterday // ignore: cast_nullable_to_non_nullable
as int,week: null == week ? _self.week : week // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$StateFrameTotals {

/// State distribution for today.
 Map<String, int> get today;/// State distribution for yesterday.
 Map<String, int> get yesterday;/// State distribution for the week.
 Map<String, int> get week;/// State distribution for the month.
 Map<String, int> get month;
/// Create a copy of StateFrameTotals
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StateFrameTotalsCopyWith<StateFrameTotals> get copyWith => _$StateFrameTotalsCopyWithImpl<StateFrameTotals>(this as StateFrameTotals, _$identity);

  /// Serializes this StateFrameTotals to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StateFrameTotals&&const DeepCollectionEquality().equals(other.today, today)&&const DeepCollectionEquality().equals(other.yesterday, yesterday)&&const DeepCollectionEquality().equals(other.week, week)&&const DeepCollectionEquality().equals(other.month, month));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(today),const DeepCollectionEquality().hash(yesterday),const DeepCollectionEquality().hash(week),const DeepCollectionEquality().hash(month));

@override
String toString() {
  return 'StateFrameTotals(today: $today, yesterday: $yesterday, week: $week, month: $month)';
}


}

/// @nodoc
abstract mixin class $StateFrameTotalsCopyWith<$Res>  {
  factory $StateFrameTotalsCopyWith(StateFrameTotals value, $Res Function(StateFrameTotals) _then) = _$StateFrameTotalsCopyWithImpl;
@useResult
$Res call({
 Map<String, int> today, Map<String, int> yesterday, Map<String, int> week, Map<String, int> month
});




}
/// @nodoc
class _$StateFrameTotalsCopyWithImpl<$Res>
    implements $StateFrameTotalsCopyWith<$Res> {
  _$StateFrameTotalsCopyWithImpl(this._self, this._then);

  final StateFrameTotals _self;
  final $Res Function(StateFrameTotals) _then;

/// Create a copy of StateFrameTotals
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? today = null,Object? yesterday = null,Object? week = null,Object? month = null,}) {
  return _then(_self.copyWith(
today: null == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as Map<String, int>,yesterday: null == yesterday ? _self.yesterday : yesterday // ignore: cast_nullable_to_non_nullable
as Map<String, int>,week: null == week ? _self.week : week // ignore: cast_nullable_to_non_nullable
as Map<String, int>,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [StateFrameTotals].
extension StateFrameTotalsPatterns on StateFrameTotals {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StateFrameTotals value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StateFrameTotals() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StateFrameTotals value)  $default,){
final _that = this;
switch (_that) {
case _StateFrameTotals():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StateFrameTotals value)?  $default,){
final _that = this;
switch (_that) {
case _StateFrameTotals() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, int> today,  Map<String, int> yesterday,  Map<String, int> week,  Map<String, int> month)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StateFrameTotals() when $default != null:
return $default(_that.today,_that.yesterday,_that.week,_that.month);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, int> today,  Map<String, int> yesterday,  Map<String, int> week,  Map<String, int> month)  $default,) {final _that = this;
switch (_that) {
case _StateFrameTotals():
return $default(_that.today,_that.yesterday,_that.week,_that.month);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, int> today,  Map<String, int> yesterday,  Map<String, int> week,  Map<String, int> month)?  $default,) {final _that = this;
switch (_that) {
case _StateFrameTotals() when $default != null:
return $default(_that.today,_that.yesterday,_that.week,_that.month);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StateFrameTotals implements StateFrameTotals {
  const _StateFrameTotals({required final  Map<String, int> today, required final  Map<String, int> yesterday, required final  Map<String, int> week, required final  Map<String, int> month}): _today = today,_yesterday = yesterday,_week = week,_month = month;
  factory _StateFrameTotals.fromJson(Map<String, dynamic> json) => _$StateFrameTotalsFromJson(json);

/// State distribution for today.
 final  Map<String, int> _today;
/// State distribution for today.
@override Map<String, int> get today {
  if (_today is EqualUnmodifiableMapView) return _today;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_today);
}

/// State distribution for yesterday.
 final  Map<String, int> _yesterday;
/// State distribution for yesterday.
@override Map<String, int> get yesterday {
  if (_yesterday is EqualUnmodifiableMapView) return _yesterday;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_yesterday);
}

/// State distribution for the week.
 final  Map<String, int> _week;
/// State distribution for the week.
@override Map<String, int> get week {
  if (_week is EqualUnmodifiableMapView) return _week;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_week);
}

/// State distribution for the month.
 final  Map<String, int> _month;
/// State distribution for the month.
@override Map<String, int> get month {
  if (_month is EqualUnmodifiableMapView) return _month;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_month);
}


/// Create a copy of StateFrameTotals
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateFrameTotalsCopyWith<_StateFrameTotals> get copyWith => __$StateFrameTotalsCopyWithImpl<_StateFrameTotals>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StateFrameTotalsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StateFrameTotals&&const DeepCollectionEquality().equals(other._today, _today)&&const DeepCollectionEquality().equals(other._yesterday, _yesterday)&&const DeepCollectionEquality().equals(other._week, _week)&&const DeepCollectionEquality().equals(other._month, _month));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_today),const DeepCollectionEquality().hash(_yesterday),const DeepCollectionEquality().hash(_week),const DeepCollectionEquality().hash(_month));

@override
String toString() {
  return 'StateFrameTotals(today: $today, yesterday: $yesterday, week: $week, month: $month)';
}


}

/// @nodoc
abstract mixin class _$StateFrameTotalsCopyWith<$Res> implements $StateFrameTotalsCopyWith<$Res> {
  factory _$StateFrameTotalsCopyWith(_StateFrameTotals value, $Res Function(_StateFrameTotals) _then) = __$StateFrameTotalsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, int> today, Map<String, int> yesterday, Map<String, int> week, Map<String, int> month
});




}
/// @nodoc
class __$StateFrameTotalsCopyWithImpl<$Res>
    implements _$StateFrameTotalsCopyWith<$Res> {
  __$StateFrameTotalsCopyWithImpl(this._self, this._then);

  final _StateFrameTotals _self;
  final $Res Function(_StateFrameTotals) _then;

/// Create a copy of StateFrameTotals
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? today = null,Object? yesterday = null,Object? week = null,Object? month = null,}) {
  return _then(_StateFrameTotals(
today: null == today ? _self._today : today // ignore: cast_nullable_to_non_nullable
as Map<String, int>,yesterday: null == yesterday ? _self._yesterday : yesterday // ignore: cast_nullable_to_non_nullable
as Map<String, int>,week: null == week ? _self._week : week // ignore: cast_nullable_to_non_nullable
as Map<String, int>,month: null == month ? _self._month : month // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}

// dart format on
