// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messaging_integration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessagingIntegration {

 bool get active;/// The store's own WhatsApp sender in Cloud (`snd_…`); null = Feeef's shared senders.
 String? get senderId; List<MessagingRule> get rules; MessagingConfirmation? get confirmation;
/// Create a copy of MessagingIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessagingIntegrationCopyWith<MessagingIntegration> get copyWith => _$MessagingIntegrationCopyWithImpl<MessagingIntegration>(this as MessagingIntegration, _$identity);

  /// Serializes this MessagingIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MessagingIntegration;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessagingIntegration&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.senderId, _this.senderId) || other.senderId == _this.senderId)&&const DeepCollectionEquality().equals(other.rules, _this.rules)&&(identical(other.confirmation, _this.confirmation) || other.confirmation == _this.confirmation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MessagingIntegration;
  return Object.hash(runtimeType,_this.active,_this.senderId,const DeepCollectionEquality().hash(_this.rules),_this.confirmation);
}

@override
String toString() {
  final _this = this as MessagingIntegration;
  return 'MessagingIntegration(active: ${_this.active}, senderId: ${_this.senderId}, rules: ${_this.rules}, confirmation: ${_this.confirmation})';
}


}

/// @nodoc
abstract mixin class $MessagingIntegrationCopyWith<$Res>  {
  factory $MessagingIntegrationCopyWith(MessagingIntegration value, $Res Function(MessagingIntegration) _then) = _$MessagingIntegrationCopyWithImpl;
@useResult
$Res call({
 bool active, String? senderId, List<MessagingRule> rules, MessagingConfirmation? confirmation
});


$MessagingConfirmationCopyWith<$Res>? get confirmation;

}
/// @nodoc
class _$MessagingIntegrationCopyWithImpl<$Res>
    implements $MessagingIntegrationCopyWith<$Res> {
  _$MessagingIntegrationCopyWithImpl(this._self, this._then);

  final MessagingIntegration _self;
  final $Res Function(MessagingIntegration) _then;

/// Create a copy of MessagingIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? senderId = freezed,Object? rules = null,Object? confirmation = freezed,}) {
  return _then(MessagingIntegration(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,senderId: freezed == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String?,rules: null == rules ? _self.rules : rules // ignore: cast_nullable_to_non_nullable
as List<MessagingRule>,confirmation: freezed == confirmation ? _self.confirmation : confirmation // ignore: cast_nullable_to_non_nullable
as MessagingConfirmation?,
  ));
}
/// Create a copy of MessagingIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessagingConfirmationCopyWith<$Res>? get confirmation {
    if (_self.confirmation == null) {
    return null;
  }

  return $MessagingConfirmationCopyWith<$Res>(_self.confirmation!, (value) {
    return _then(_self.copyWith(confirmation: value));
  });
}
}


/// Adds pattern-matching-related methods to [MessagingIntegration].
extension MessagingIntegrationPatterns on MessagingIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessagingIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessagingIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessagingIntegration value)  $default,){
final _that = this;
switch (_that) {
case _MessagingIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessagingIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _MessagingIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  String? senderId,  List<MessagingRule> rules,  MessagingConfirmation? confirmation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessagingIntegration() when $default != null:
return $default(_that.active,_that.senderId,_that.rules,_that.confirmation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  String? senderId,  List<MessagingRule> rules,  MessagingConfirmation? confirmation)  $default,) {final _that = this;
switch (_that) {
case _MessagingIntegration():
return $default(_that.active,_that.senderId,_that.rules,_that.confirmation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  String? senderId,  List<MessagingRule> rules,  MessagingConfirmation? confirmation)?  $default,) {final _that = this;
switch (_that) {
case _MessagingIntegration() when $default != null:
return $default(_that.active,_that.senderId,_that.rules,_that.confirmation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessagingIntegration implements MessagingIntegration {
  const _MessagingIntegration({this.active = false, this.senderId,  List<MessagingRule> rules = const [], this.confirmation}): _rules = rules;
  factory _MessagingIntegration.fromJson(Map<String, dynamic> json) => _$MessagingIntegrationFromJson(json);

@override@JsonKey() final  bool active;
/// The store's own WhatsApp sender in Cloud (`snd_…`); null = Feeef's shared senders.
@override final  String? senderId;
 final  List<MessagingRule> _rules;
@override@JsonKey() List<MessagingRule> get rules {
  if (_rules is EqualUnmodifiableListView) return _rules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rules);
}

@override final  MessagingConfirmation? confirmation;

/// Create a copy of MessagingIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessagingIntegrationCopyWith<_MessagingIntegration> get copyWith => __$MessagingIntegrationCopyWithImpl<_MessagingIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessagingIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessagingIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&const DeepCollectionEquality().equals(other.rules, _rules)&&(identical(other.confirmation, confirmation) || other.confirmation == confirmation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,active,senderId,const DeepCollectionEquality().hash(_rules),confirmation);
}

@override
String toString() {
    return 'MessagingIntegration(active: $active, senderId: $senderId, rules: $rules, confirmation: $confirmation)';
}


}

/// @nodoc
abstract mixin class _$MessagingIntegrationCopyWith<$Res> implements $MessagingIntegrationCopyWith<$Res> {
  factory _$MessagingIntegrationCopyWith(_MessagingIntegration value, $Res Function(_MessagingIntegration) _then) = __$MessagingIntegrationCopyWithImpl;
@override @useResult
$Res call({
 bool active, String? senderId, List<MessagingRule> rules, MessagingConfirmation? confirmation
});


@override $MessagingConfirmationCopyWith<$Res>? get confirmation;

}
/// @nodoc
class __$MessagingIntegrationCopyWithImpl<$Res>
    implements _$MessagingIntegrationCopyWith<$Res> {
  __$MessagingIntegrationCopyWithImpl(this._self, this._then);

  final _MessagingIntegration _self;
  final $Res Function(_MessagingIntegration) _then;

/// Create a copy of MessagingIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? senderId = freezed,Object? rules = null,Object? confirmation = freezed,}) {
  return _then(_MessagingIntegration(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,senderId: freezed == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String?,rules: null == rules ? _self._rules : rules // ignore: cast_nullable_to_non_nullable
as List<MessagingRule>,confirmation: freezed == confirmation ? _self.confirmation : confirmation // ignore: cast_nullable_to_non_nullable
as MessagingConfirmation?,
  ));
}

/// Create a copy of MessagingIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessagingConfirmationCopyWith<$Res>? get confirmation {
    if (_self.confirmation == null) {
    return null;
  }

  return $MessagingConfirmationCopyWith<$Res>(_self.confirmation!, (value) {
    return _then(_self.copyWith(confirmation: value));
  });
}
}


/// @nodoc
mixin _$MessagingRule {

 String get id;/// `phase:<draft|open|pack|ship|done|fail>`, `status:<statusId>` or `paid`.
 String get on; String get template; String get locale;/// Slot values in the template's order (header, body, buttons): `{{chip}}` tokens or text.
 List<String> get variables;/// [MessagingChannels] values, 1–2, distinct; WhatsApp first is the usual choice.
 List<String> get channels;
/// Create a copy of MessagingRule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessagingRuleCopyWith<MessagingRule> get copyWith => _$MessagingRuleCopyWithImpl<MessagingRule>(this as MessagingRule, _$identity);

  /// Serializes this MessagingRule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MessagingRule;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessagingRule&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.on, _this.on) || other.on == _this.on)&&(identical(other.template, _this.template) || other.template == _this.template)&&(identical(other.locale, _this.locale) || other.locale == _this.locale)&&const DeepCollectionEquality().equals(other.variables, _this.variables)&&const DeepCollectionEquality().equals(other.channels, _this.channels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MessagingRule;
  return Object.hash(runtimeType,_this.id,_this.on,_this.template,_this.locale,const DeepCollectionEquality().hash(_this.variables),const DeepCollectionEquality().hash(_this.channels));
}

@override
String toString() {
  final _this = this as MessagingRule;
  return 'MessagingRule(id: ${_this.id}, on: ${_this.on}, template: ${_this.template}, locale: ${_this.locale}, variables: ${_this.variables}, channels: ${_this.channels})';
}


}

/// @nodoc
abstract mixin class $MessagingRuleCopyWith<$Res>  {
  factory $MessagingRuleCopyWith(MessagingRule value, $Res Function(MessagingRule) _then) = _$MessagingRuleCopyWithImpl;
@useResult
$Res call({
 String id, String on, String template, String locale, List<String> variables, List<String> channels
});




}
/// @nodoc
class _$MessagingRuleCopyWithImpl<$Res>
    implements $MessagingRuleCopyWith<$Res> {
  _$MessagingRuleCopyWithImpl(this._self, this._then);

  final MessagingRule _self;
  final $Res Function(MessagingRule) _then;

/// Create a copy of MessagingRule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? on = null,Object? template = null,Object? locale = null,Object? variables = null,Object? channels = null,}) {
  return _then(MessagingRule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,on: null == on ? _self.on : on // ignore: cast_nullable_to_non_nullable
as String,template: null == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,variables: null == variables ? _self.variables : variables // ignore: cast_nullable_to_non_nullable
as List<String>,channels: null == channels ? _self.channels : channels // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MessagingRule].
extension MessagingRulePatterns on MessagingRule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessagingRule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessagingRule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessagingRule value)  $default,){
final _that = this;
switch (_that) {
case _MessagingRule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessagingRule value)?  $default,){
final _that = this;
switch (_that) {
case _MessagingRule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String on,  String template,  String locale,  List<String> variables,  List<String> channels)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessagingRule() when $default != null:
return $default(_that.id,_that.on,_that.template,_that.locale,_that.variables,_that.channels);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String on,  String template,  String locale,  List<String> variables,  List<String> channels)  $default,) {final _that = this;
switch (_that) {
case _MessagingRule():
return $default(_that.id,_that.on,_that.template,_that.locale,_that.variables,_that.channels);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String on,  String template,  String locale,  List<String> variables,  List<String> channels)?  $default,) {final _that = this;
switch (_that) {
case _MessagingRule() when $default != null:
return $default(_that.id,_that.on,_that.template,_that.locale,_that.variables,_that.channels);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessagingRule extends MessagingRule {
  const _MessagingRule({required this.id, required this.on, required this.template, required this.locale,  List<String> variables = const [],  List<String> channels = const [MessagingChannels.whatsapp]}): _variables = variables,_channels = channels,super._();
  factory _MessagingRule.fromJson(Map<String, dynamic> json) => _$MessagingRuleFromJson(json);

@override final  String id;
/// `phase:<draft|open|pack|ship|done|fail>`, `status:<statusId>` or `paid`.
@override final  String on;
@override final  String template;
@override final  String locale;
/// Slot values in the template's order (header, body, buttons): `{{chip}}` tokens or text.
 final  List<String> _variables;
/// Slot values in the template's order (header, body, buttons): `{{chip}}` tokens or text.
@override@JsonKey() List<String> get variables {
  if (_variables is EqualUnmodifiableListView) return _variables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variables);
}

/// [MessagingChannels] values, 1–2, distinct; WhatsApp first is the usual choice.
 final  List<String> _channels;
/// [MessagingChannels] values, 1–2, distinct; WhatsApp first is the usual choice.
@override@JsonKey() List<String> get channels {
  if (_channels is EqualUnmodifiableListView) return _channels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_channels);
}


/// Create a copy of MessagingRule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessagingRuleCopyWith<_MessagingRule> get copyWith => __$MessagingRuleCopyWithImpl<_MessagingRule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessagingRuleToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessagingRule&&(identical(other.id, id) || other.id == id)&&(identical(other.on, on) || other.on == on)&&(identical(other.template, template) || other.template == template)&&(identical(other.locale, locale) || other.locale == locale)&&const DeepCollectionEquality().equals(other.variables, _variables)&&const DeepCollectionEquality().equals(other.channels, _channels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,on,template,locale,const DeepCollectionEquality().hash(_variables),const DeepCollectionEquality().hash(_channels));
}

@override
String toString() {
    return 'MessagingRule(id: $id, on: $on, template: $template, locale: $locale, variables: $variables, channels: $channels)';
}


}

/// @nodoc
abstract mixin class _$MessagingRuleCopyWith<$Res> implements $MessagingRuleCopyWith<$Res> {
  factory _$MessagingRuleCopyWith(_MessagingRule value, $Res Function(_MessagingRule) _then) = __$MessagingRuleCopyWithImpl;
@override @useResult
$Res call({
 String id, String on, String template, String locale, List<String> variables, List<String> channels
});




}
/// @nodoc
class __$MessagingRuleCopyWithImpl<$Res>
    implements _$MessagingRuleCopyWith<$Res> {
  __$MessagingRuleCopyWithImpl(this._self, this._then);

  final _MessagingRule _self;
  final $Res Function(_MessagingRule) _then;

/// Create a copy of MessagingRule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? on = null,Object? template = null,Object? locale = null,Object? variables = null,Object? channels = null,}) {
  return _then(_MessagingRule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,on: null == on ? _self.on : on // ignore: cast_nullable_to_non_nullable
as String,template: null == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,variables: null == variables ? _self._variables : variables // ignore: cast_nullable_to_non_nullable
as List<String>,channels: null == channels ? _self._channels : channels // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$MessagingConfirmation {

 bool get enabled;/// Always `phase:open` (placed orders; never drafts).
 String get on; String get template; String get locale; List<String> get variables;/// Quick-reply ids as Cloud reports them: `q` + position among all the template's buttons.
 String get confirmButton; String? get cancelButton;/// Catalog statuses to apply; null = the store's default confirmed / cancelled status.
 String? get confirmStatusId; String? get cancelStatusId;/// Taps after this many hours are recorded but not applied (0.25–72).
 double get waitHours;
/// Create a copy of MessagingConfirmation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessagingConfirmationCopyWith<MessagingConfirmation> get copyWith => _$MessagingConfirmationCopyWithImpl<MessagingConfirmation>(this as MessagingConfirmation, _$identity);

  /// Serializes this MessagingConfirmation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MessagingConfirmation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessagingConfirmation&&(identical(other.enabled, _this.enabled) || other.enabled == _this.enabled)&&(identical(other.on, _this.on) || other.on == _this.on)&&(identical(other.template, _this.template) || other.template == _this.template)&&(identical(other.locale, _this.locale) || other.locale == _this.locale)&&const DeepCollectionEquality().equals(other.variables, _this.variables)&&(identical(other.confirmButton, _this.confirmButton) || other.confirmButton == _this.confirmButton)&&(identical(other.cancelButton, _this.cancelButton) || other.cancelButton == _this.cancelButton)&&(identical(other.confirmStatusId, _this.confirmStatusId) || other.confirmStatusId == _this.confirmStatusId)&&(identical(other.cancelStatusId, _this.cancelStatusId) || other.cancelStatusId == _this.cancelStatusId)&&(identical(other.waitHours, _this.waitHours) || other.waitHours == _this.waitHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MessagingConfirmation;
  return Object.hash(runtimeType,_this.enabled,_this.on,_this.template,_this.locale,const DeepCollectionEquality().hash(_this.variables),_this.confirmButton,_this.cancelButton,_this.confirmStatusId,_this.cancelStatusId,_this.waitHours);
}

@override
String toString() {
  final _this = this as MessagingConfirmation;
  return 'MessagingConfirmation(enabled: ${_this.enabled}, on: ${_this.on}, template: ${_this.template}, locale: ${_this.locale}, variables: ${_this.variables}, confirmButton: ${_this.confirmButton}, cancelButton: ${_this.cancelButton}, confirmStatusId: ${_this.confirmStatusId}, cancelStatusId: ${_this.cancelStatusId}, waitHours: ${_this.waitHours})';
}


}

/// @nodoc
abstract mixin class $MessagingConfirmationCopyWith<$Res>  {
  factory $MessagingConfirmationCopyWith(MessagingConfirmation value, $Res Function(MessagingConfirmation) _then) = _$MessagingConfirmationCopyWithImpl;
@useResult
$Res call({
 bool enabled, String on, String template, String locale, List<String> variables, String confirmButton, String? cancelButton, String? confirmStatusId, String? cancelStatusId, double waitHours
});




}
/// @nodoc
class _$MessagingConfirmationCopyWithImpl<$Res>
    implements $MessagingConfirmationCopyWith<$Res> {
  _$MessagingConfirmationCopyWithImpl(this._self, this._then);

  final MessagingConfirmation _self;
  final $Res Function(MessagingConfirmation) _then;

/// Create a copy of MessagingConfirmation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,Object? on = null,Object? template = null,Object? locale = null,Object? variables = null,Object? confirmButton = null,Object? cancelButton = freezed,Object? confirmStatusId = freezed,Object? cancelStatusId = freezed,Object? waitHours = null,}) {
  return _then(MessagingConfirmation(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,on: null == on ? _self.on : on // ignore: cast_nullable_to_non_nullable
as String,template: null == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,variables: null == variables ? _self.variables : variables // ignore: cast_nullable_to_non_nullable
as List<String>,confirmButton: null == confirmButton ? _self.confirmButton : confirmButton // ignore: cast_nullable_to_non_nullable
as String,cancelButton: freezed == cancelButton ? _self.cancelButton : cancelButton // ignore: cast_nullable_to_non_nullable
as String?,confirmStatusId: freezed == confirmStatusId ? _self.confirmStatusId : confirmStatusId // ignore: cast_nullable_to_non_nullable
as String?,cancelStatusId: freezed == cancelStatusId ? _self.cancelStatusId : cancelStatusId // ignore: cast_nullable_to_non_nullable
as String?,waitHours: null == waitHours ? _self.waitHours : waitHours // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MessagingConfirmation].
extension MessagingConfirmationPatterns on MessagingConfirmation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessagingConfirmation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessagingConfirmation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessagingConfirmation value)  $default,){
final _that = this;
switch (_that) {
case _MessagingConfirmation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessagingConfirmation value)?  $default,){
final _that = this;
switch (_that) {
case _MessagingConfirmation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled,  String on,  String template,  String locale,  List<String> variables,  String confirmButton,  String? cancelButton,  String? confirmStatusId,  String? cancelStatusId,  double waitHours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessagingConfirmation() when $default != null:
return $default(_that.enabled,_that.on,_that.template,_that.locale,_that.variables,_that.confirmButton,_that.cancelButton,_that.confirmStatusId,_that.cancelStatusId,_that.waitHours);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled,  String on,  String template,  String locale,  List<String> variables,  String confirmButton,  String? cancelButton,  String? confirmStatusId,  String? cancelStatusId,  double waitHours)  $default,) {final _that = this;
switch (_that) {
case _MessagingConfirmation():
return $default(_that.enabled,_that.on,_that.template,_that.locale,_that.variables,_that.confirmButton,_that.cancelButton,_that.confirmStatusId,_that.cancelStatusId,_that.waitHours);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled,  String on,  String template,  String locale,  List<String> variables,  String confirmButton,  String? cancelButton,  String? confirmStatusId,  String? cancelStatusId,  double waitHours)?  $default,) {final _that = this;
switch (_that) {
case _MessagingConfirmation() when $default != null:
return $default(_that.enabled,_that.on,_that.template,_that.locale,_that.variables,_that.confirmButton,_that.cancelButton,_that.confirmStatusId,_that.cancelStatusId,_that.waitHours);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessagingConfirmation implements MessagingConfirmation {
  const _MessagingConfirmation({this.enabled = false, this.on = 'phase:open', required this.template, required this.locale,  List<String> variables = const [], required this.confirmButton, this.cancelButton, this.confirmStatusId, this.cancelStatusId, this.waitHours = 24}): _variables = variables;
  factory _MessagingConfirmation.fromJson(Map<String, dynamic> json) => _$MessagingConfirmationFromJson(json);

@override@JsonKey() final  bool enabled;
/// Always `phase:open` (placed orders; never drafts).
@override@JsonKey() final  String on;
@override final  String template;
@override final  String locale;
 final  List<String> _variables;
@override@JsonKey() List<String> get variables {
  if (_variables is EqualUnmodifiableListView) return _variables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variables);
}

/// Quick-reply ids as Cloud reports them: `q` + position among all the template's buttons.
@override final  String confirmButton;
@override final  String? cancelButton;
/// Catalog statuses to apply; null = the store's default confirmed / cancelled status.
@override final  String? confirmStatusId;
@override final  String? cancelStatusId;
/// Taps after this many hours are recorded but not applied (0.25–72).
@override@JsonKey() final  double waitHours;

/// Create a copy of MessagingConfirmation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessagingConfirmationCopyWith<_MessagingConfirmation> get copyWith => __$MessagingConfirmationCopyWithImpl<_MessagingConfirmation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessagingConfirmationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessagingConfirmation&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.on, on) || other.on == on)&&(identical(other.template, template) || other.template == template)&&(identical(other.locale, locale) || other.locale == locale)&&const DeepCollectionEquality().equals(other.variables, _variables)&&(identical(other.confirmButton, confirmButton) || other.confirmButton == confirmButton)&&(identical(other.cancelButton, cancelButton) || other.cancelButton == cancelButton)&&(identical(other.confirmStatusId, confirmStatusId) || other.confirmStatusId == confirmStatusId)&&(identical(other.cancelStatusId, cancelStatusId) || other.cancelStatusId == cancelStatusId)&&(identical(other.waitHours, waitHours) || other.waitHours == waitHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,enabled,on,template,locale,const DeepCollectionEquality().hash(_variables),confirmButton,cancelButton,confirmStatusId,cancelStatusId,waitHours);
}

@override
String toString() {
    return 'MessagingConfirmation(enabled: $enabled, on: $on, template: $template, locale: $locale, variables: $variables, confirmButton: $confirmButton, cancelButton: $cancelButton, confirmStatusId: $confirmStatusId, cancelStatusId: $cancelStatusId, waitHours: $waitHours)';
}


}

/// @nodoc
abstract mixin class _$MessagingConfirmationCopyWith<$Res> implements $MessagingConfirmationCopyWith<$Res> {
  factory _$MessagingConfirmationCopyWith(_MessagingConfirmation value, $Res Function(_MessagingConfirmation) _then) = __$MessagingConfirmationCopyWithImpl;
@override @useResult
$Res call({
 bool enabled, String on, String template, String locale, List<String> variables, String confirmButton, String? cancelButton, String? confirmStatusId, String? cancelStatusId, double waitHours
});




}
/// @nodoc
class __$MessagingConfirmationCopyWithImpl<$Res>
    implements _$MessagingConfirmationCopyWith<$Res> {
  __$MessagingConfirmationCopyWithImpl(this._self, this._then);

  final _MessagingConfirmation _self;
  final $Res Function(_MessagingConfirmation) _then;

/// Create a copy of MessagingConfirmation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,Object? on = null,Object? template = null,Object? locale = null,Object? variables = null,Object? confirmButton = null,Object? cancelButton = freezed,Object? confirmStatusId = freezed,Object? cancelStatusId = freezed,Object? waitHours = null,}) {
  return _then(_MessagingConfirmation(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,on: null == on ? _self.on : on // ignore: cast_nullable_to_non_nullable
as String,template: null == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,variables: null == variables ? _self._variables : variables // ignore: cast_nullable_to_non_nullable
as List<String>,confirmButton: null == confirmButton ? _self.confirmButton : confirmButton // ignore: cast_nullable_to_non_nullable
as String,cancelButton: freezed == cancelButton ? _self.cancelButton : cancelButton // ignore: cast_nullable_to_non_nullable
as String?,confirmStatusId: freezed == confirmStatusId ? _self.confirmStatusId : confirmStatusId // ignore: cast_nullable_to_non_nullable
as String?,cancelStatusId: freezed == cancelStatusId ? _self.cancelStatusId : cancelStatusId // ignore: cast_nullable_to_non_nullable
as String?,waitHours: null == waitHours ? _self.waitHours : waitHours // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
