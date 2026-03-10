// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_integrations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreIntegrations {

 Map<String, dynamic>? get metadata;// Analytics Integrations
 MetaPixelIntegration? get metaPixel; TiktokPixelIntegration? get tiktokPixel; GoogleAnalyticsIntegration? get googleAnalytics; GoogleTagsIntegration? get googleTags; AiIntegration? get ai;// Delivery Integrations
 YalidineDeliveryIntegration? get yalidine; EcotrackDeliveryIntegration? get ecotrack; EcomanagerDeliveryIntegration? get ecomanager; ProcolisDeliveryIntegration? get procolis; NoestDeliveryIntegration? get noest; OrderdzDeliveryIntegration? get orderdz; ZimouExpressDeliveryIntegration? get zimou; ZrexpressDeliveryIntegration? get zrexpress; MaystroDeliveryIntegration? get maystroDelivery;// Google Sheets Integration
 GoogleSheetsIntegration? get googleSheet;// Webhooks Integration
 WebhooksIntegration? get webhooks;// Security Integration
 SecurityIntegration? get security;// Custom Fields Integration
 CustomFieldsIntegration? get customFields;// Payment Integration
 PaymentIntegration? get payment;// Dispatcher Integration (order assignment to confirmers)
 DispatcherIntegration? get dispatcher;// Communication Integrations
 Map<String, dynamic>? get sms; Map<String, dynamic>? get telegram;
/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreIntegrationsCopyWith<StoreIntegrations> get copyWith => _$StoreIntegrationsCopyWithImpl<StoreIntegrations>(this as StoreIntegrations, _$identity);

  /// Serializes this StoreIntegrations to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreIntegrations&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.metaPixel, metaPixel) || other.metaPixel == metaPixel)&&(identical(other.tiktokPixel, tiktokPixel) || other.tiktokPixel == tiktokPixel)&&(identical(other.googleAnalytics, googleAnalytics) || other.googleAnalytics == googleAnalytics)&&(identical(other.googleTags, googleTags) || other.googleTags == googleTags)&&(identical(other.ai, ai) || other.ai == ai)&&(identical(other.yalidine, yalidine) || other.yalidine == yalidine)&&(identical(other.ecotrack, ecotrack) || other.ecotrack == ecotrack)&&(identical(other.ecomanager, ecomanager) || other.ecomanager == ecomanager)&&(identical(other.procolis, procolis) || other.procolis == procolis)&&(identical(other.noest, noest) || other.noest == noest)&&(identical(other.orderdz, orderdz) || other.orderdz == orderdz)&&(identical(other.zimou, zimou) || other.zimou == zimou)&&(identical(other.zrexpress, zrexpress) || other.zrexpress == zrexpress)&&(identical(other.maystroDelivery, maystroDelivery) || other.maystroDelivery == maystroDelivery)&&(identical(other.googleSheet, googleSheet) || other.googleSheet == googleSheet)&&(identical(other.webhooks, webhooks) || other.webhooks == webhooks)&&(identical(other.security, security) || other.security == security)&&(identical(other.customFields, customFields) || other.customFields == customFields)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.dispatcher, dispatcher) || other.dispatcher == dispatcher)&&const DeepCollectionEquality().equals(other.sms, sms)&&const DeepCollectionEquality().equals(other.telegram, telegram));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(metadata),metaPixel,tiktokPixel,googleAnalytics,googleTags,ai,yalidine,ecotrack,ecomanager,procolis,noest,orderdz,zimou,zrexpress,maystroDelivery,googleSheet,webhooks,security,customFields,payment,dispatcher,const DeepCollectionEquality().hash(sms),const DeepCollectionEquality().hash(telegram)]);

@override
String toString() {
  return 'StoreIntegrations(metadata: $metadata, metaPixel: $metaPixel, tiktokPixel: $tiktokPixel, googleAnalytics: $googleAnalytics, googleTags: $googleTags, ai: $ai, yalidine: $yalidine, ecotrack: $ecotrack, ecomanager: $ecomanager, procolis: $procolis, noest: $noest, orderdz: $orderdz, zimou: $zimou, zrexpress: $zrexpress, maystroDelivery: $maystroDelivery, googleSheet: $googleSheet, webhooks: $webhooks, security: $security, customFields: $customFields, payment: $payment, dispatcher: $dispatcher, sms: $sms, telegram: $telegram)';
}


}

/// @nodoc
abstract mixin class $StoreIntegrationsCopyWith<$Res>  {
  factory $StoreIntegrationsCopyWith(StoreIntegrations value, $Res Function(StoreIntegrations) _then) = _$StoreIntegrationsCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? metadata, MetaPixelIntegration? metaPixel, TiktokPixelIntegration? tiktokPixel, GoogleAnalyticsIntegration? googleAnalytics, GoogleTagsIntegration? googleTags, AiIntegration? ai, YalidineDeliveryIntegration? yalidine, EcotrackDeliveryIntegration? ecotrack, EcomanagerDeliveryIntegration? ecomanager, ProcolisDeliveryIntegration? procolis, NoestDeliveryIntegration? noest, OrderdzDeliveryIntegration? orderdz, ZimouExpressDeliveryIntegration? zimou, ZrexpressDeliveryIntegration? zrexpress, MaystroDeliveryIntegration? maystroDelivery, GoogleSheetsIntegration? googleSheet, WebhooksIntegration? webhooks, SecurityIntegration? security, CustomFieldsIntegration? customFields, PaymentIntegration? payment, DispatcherIntegration? dispatcher, Map<String, dynamic>? sms, Map<String, dynamic>? telegram
});


$MetaPixelIntegrationCopyWith<$Res>? get metaPixel;$TiktokPixelIntegrationCopyWith<$Res>? get tiktokPixel;$GoogleAnalyticsIntegrationCopyWith<$Res>? get googleAnalytics;$GoogleTagsIntegrationCopyWith<$Res>? get googleTags;$AiIntegrationCopyWith<$Res>? get ai;$YalidineDeliveryIntegrationCopyWith<$Res>? get yalidine;$EcotrackDeliveryIntegrationCopyWith<$Res>? get ecotrack;$EcomanagerDeliveryIntegrationCopyWith<$Res>? get ecomanager;$ProcolisDeliveryIntegrationCopyWith<$Res>? get procolis;$NoestDeliveryIntegrationCopyWith<$Res>? get noest;$OrderdzDeliveryIntegrationCopyWith<$Res>? get orderdz;$ZimouExpressDeliveryIntegrationCopyWith<$Res>? get zimou;$ZrexpressDeliveryIntegrationCopyWith<$Res>? get zrexpress;$MaystroDeliveryIntegrationCopyWith<$Res>? get maystroDelivery;$GoogleSheetsIntegrationCopyWith<$Res>? get googleSheet;$WebhooksIntegrationCopyWith<$Res>? get webhooks;$SecurityIntegrationCopyWith<$Res>? get security;$CustomFieldsIntegrationCopyWith<$Res>? get customFields;$PaymentIntegrationCopyWith<$Res>? get payment;$DispatcherIntegrationCopyWith<$Res>? get dispatcher;

}
/// @nodoc
class _$StoreIntegrationsCopyWithImpl<$Res>
    implements $StoreIntegrationsCopyWith<$Res> {
  _$StoreIntegrationsCopyWithImpl(this._self, this._then);

  final StoreIntegrations _self;
  final $Res Function(StoreIntegrations) _then;

/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = freezed,Object? metaPixel = freezed,Object? tiktokPixel = freezed,Object? googleAnalytics = freezed,Object? googleTags = freezed,Object? ai = freezed,Object? yalidine = freezed,Object? ecotrack = freezed,Object? ecomanager = freezed,Object? procolis = freezed,Object? noest = freezed,Object? orderdz = freezed,Object? zimou = freezed,Object? zrexpress = freezed,Object? maystroDelivery = freezed,Object? googleSheet = freezed,Object? webhooks = freezed,Object? security = freezed,Object? customFields = freezed,Object? payment = freezed,Object? dispatcher = freezed,Object? sms = freezed,Object? telegram = freezed,}) {
  return _then(_self.copyWith(
metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,metaPixel: freezed == metaPixel ? _self.metaPixel : metaPixel // ignore: cast_nullable_to_non_nullable
as MetaPixelIntegration?,tiktokPixel: freezed == tiktokPixel ? _self.tiktokPixel : tiktokPixel // ignore: cast_nullable_to_non_nullable
as TiktokPixelIntegration?,googleAnalytics: freezed == googleAnalytics ? _self.googleAnalytics : googleAnalytics // ignore: cast_nullable_to_non_nullable
as GoogleAnalyticsIntegration?,googleTags: freezed == googleTags ? _self.googleTags : googleTags // ignore: cast_nullable_to_non_nullable
as GoogleTagsIntegration?,ai: freezed == ai ? _self.ai : ai // ignore: cast_nullable_to_non_nullable
as AiIntegration?,yalidine: freezed == yalidine ? _self.yalidine : yalidine // ignore: cast_nullable_to_non_nullable
as YalidineDeliveryIntegration?,ecotrack: freezed == ecotrack ? _self.ecotrack : ecotrack // ignore: cast_nullable_to_non_nullable
as EcotrackDeliveryIntegration?,ecomanager: freezed == ecomanager ? _self.ecomanager : ecomanager // ignore: cast_nullable_to_non_nullable
as EcomanagerDeliveryIntegration?,procolis: freezed == procolis ? _self.procolis : procolis // ignore: cast_nullable_to_non_nullable
as ProcolisDeliveryIntegration?,noest: freezed == noest ? _self.noest : noest // ignore: cast_nullable_to_non_nullable
as NoestDeliveryIntegration?,orderdz: freezed == orderdz ? _self.orderdz : orderdz // ignore: cast_nullable_to_non_nullable
as OrderdzDeliveryIntegration?,zimou: freezed == zimou ? _self.zimou : zimou // ignore: cast_nullable_to_non_nullable
as ZimouExpressDeliveryIntegration?,zrexpress: freezed == zrexpress ? _self.zrexpress : zrexpress // ignore: cast_nullable_to_non_nullable
as ZrexpressDeliveryIntegration?,maystroDelivery: freezed == maystroDelivery ? _self.maystroDelivery : maystroDelivery // ignore: cast_nullable_to_non_nullable
as MaystroDeliveryIntegration?,googleSheet: freezed == googleSheet ? _self.googleSheet : googleSheet // ignore: cast_nullable_to_non_nullable
as GoogleSheetsIntegration?,webhooks: freezed == webhooks ? _self.webhooks : webhooks // ignore: cast_nullable_to_non_nullable
as WebhooksIntegration?,security: freezed == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as SecurityIntegration?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as CustomFieldsIntegration?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentIntegration?,dispatcher: freezed == dispatcher ? _self.dispatcher : dispatcher // ignore: cast_nullable_to_non_nullable
as DispatcherIntegration?,sms: freezed == sms ? _self.sms : sms // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,telegram: freezed == telegram ? _self.telegram : telegram // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaPixelIntegrationCopyWith<$Res>? get metaPixel {
    if (_self.metaPixel == null) {
    return null;
  }

  return $MetaPixelIntegrationCopyWith<$Res>(_self.metaPixel!, (value) {
    return _then(_self.copyWith(metaPixel: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TiktokPixelIntegrationCopyWith<$Res>? get tiktokPixel {
    if (_self.tiktokPixel == null) {
    return null;
  }

  return $TiktokPixelIntegrationCopyWith<$Res>(_self.tiktokPixel!, (value) {
    return _then(_self.copyWith(tiktokPixel: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoogleAnalyticsIntegrationCopyWith<$Res>? get googleAnalytics {
    if (_self.googleAnalytics == null) {
    return null;
  }

  return $GoogleAnalyticsIntegrationCopyWith<$Res>(_self.googleAnalytics!, (value) {
    return _then(_self.copyWith(googleAnalytics: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoogleTagsIntegrationCopyWith<$Res>? get googleTags {
    if (_self.googleTags == null) {
    return null;
  }

  return $GoogleTagsIntegrationCopyWith<$Res>(_self.googleTags!, (value) {
    return _then(_self.copyWith(googleTags: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiIntegrationCopyWith<$Res>? get ai {
    if (_self.ai == null) {
    return null;
  }

  return $AiIntegrationCopyWith<$Res>(_self.ai!, (value) {
    return _then(_self.copyWith(ai: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YalidineDeliveryIntegrationCopyWith<$Res>? get yalidine {
    if (_self.yalidine == null) {
    return null;
  }

  return $YalidineDeliveryIntegrationCopyWith<$Res>(_self.yalidine!, (value) {
    return _then(_self.copyWith(yalidine: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EcotrackDeliveryIntegrationCopyWith<$Res>? get ecotrack {
    if (_self.ecotrack == null) {
    return null;
  }

  return $EcotrackDeliveryIntegrationCopyWith<$Res>(_self.ecotrack!, (value) {
    return _then(_self.copyWith(ecotrack: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EcomanagerDeliveryIntegrationCopyWith<$Res>? get ecomanager {
    if (_self.ecomanager == null) {
    return null;
  }

  return $EcomanagerDeliveryIntegrationCopyWith<$Res>(_self.ecomanager!, (value) {
    return _then(_self.copyWith(ecomanager: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcolisDeliveryIntegrationCopyWith<$Res>? get procolis {
    if (_self.procolis == null) {
    return null;
  }

  return $ProcolisDeliveryIntegrationCopyWith<$Res>(_self.procolis!, (value) {
    return _then(_self.copyWith(procolis: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoestDeliveryIntegrationCopyWith<$Res>? get noest {
    if (_self.noest == null) {
    return null;
  }

  return $NoestDeliveryIntegrationCopyWith<$Res>(_self.noest!, (value) {
    return _then(_self.copyWith(noest: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderdzDeliveryIntegrationCopyWith<$Res>? get orderdz {
    if (_self.orderdz == null) {
    return null;
  }

  return $OrderdzDeliveryIntegrationCopyWith<$Res>(_self.orderdz!, (value) {
    return _then(_self.copyWith(orderdz: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZimouExpressDeliveryIntegrationCopyWith<$Res>? get zimou {
    if (_self.zimou == null) {
    return null;
  }

  return $ZimouExpressDeliveryIntegrationCopyWith<$Res>(_self.zimou!, (value) {
    return _then(_self.copyWith(zimou: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZrexpressDeliveryIntegrationCopyWith<$Res>? get zrexpress {
    if (_self.zrexpress == null) {
    return null;
  }

  return $ZrexpressDeliveryIntegrationCopyWith<$Res>(_self.zrexpress!, (value) {
    return _then(_self.copyWith(zrexpress: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaystroDeliveryIntegrationCopyWith<$Res>? get maystroDelivery {
    if (_self.maystroDelivery == null) {
    return null;
  }

  return $MaystroDeliveryIntegrationCopyWith<$Res>(_self.maystroDelivery!, (value) {
    return _then(_self.copyWith(maystroDelivery: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoogleSheetsIntegrationCopyWith<$Res>? get googleSheet {
    if (_self.googleSheet == null) {
    return null;
  }

  return $GoogleSheetsIntegrationCopyWith<$Res>(_self.googleSheet!, (value) {
    return _then(_self.copyWith(googleSheet: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WebhooksIntegrationCopyWith<$Res>? get webhooks {
    if (_self.webhooks == null) {
    return null;
  }

  return $WebhooksIntegrationCopyWith<$Res>(_self.webhooks!, (value) {
    return _then(_self.copyWith(webhooks: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityIntegrationCopyWith<$Res>? get security {
    if (_self.security == null) {
    return null;
  }

  return $SecurityIntegrationCopyWith<$Res>(_self.security!, (value) {
    return _then(_self.copyWith(security: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomFieldsIntegrationCopyWith<$Res>? get customFields {
    if (_self.customFields == null) {
    return null;
  }

  return $CustomFieldsIntegrationCopyWith<$Res>(_self.customFields!, (value) {
    return _then(_self.copyWith(customFields: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentIntegrationCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentIntegrationCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DispatcherIntegrationCopyWith<$Res>? get dispatcher {
    if (_self.dispatcher == null) {
    return null;
  }

  return $DispatcherIntegrationCopyWith<$Res>(_self.dispatcher!, (value) {
    return _then(_self.copyWith(dispatcher: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreIntegrations].
extension StoreIntegrationsPatterns on StoreIntegrations {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreIntegrations value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreIntegrations() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreIntegrations value)  $default,){
final _that = this;
switch (_that) {
case _StoreIntegrations():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreIntegrations value)?  $default,){
final _that = this;
switch (_that) {
case _StoreIntegrations() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic>? metadata,  MetaPixelIntegration? metaPixel,  TiktokPixelIntegration? tiktokPixel,  GoogleAnalyticsIntegration? googleAnalytics,  GoogleTagsIntegration? googleTags,  AiIntegration? ai,  YalidineDeliveryIntegration? yalidine,  EcotrackDeliveryIntegration? ecotrack,  EcomanagerDeliveryIntegration? ecomanager,  ProcolisDeliveryIntegration? procolis,  NoestDeliveryIntegration? noest,  OrderdzDeliveryIntegration? orderdz,  ZimouExpressDeliveryIntegration? zimou,  ZrexpressDeliveryIntegration? zrexpress,  MaystroDeliveryIntegration? maystroDelivery,  GoogleSheetsIntegration? googleSheet,  WebhooksIntegration? webhooks,  SecurityIntegration? security,  CustomFieldsIntegration? customFields,  PaymentIntegration? payment,  DispatcherIntegration? dispatcher,  Map<String, dynamic>? sms,  Map<String, dynamic>? telegram)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreIntegrations() when $default != null:
return $default(_that.metadata,_that.metaPixel,_that.tiktokPixel,_that.googleAnalytics,_that.googleTags,_that.ai,_that.yalidine,_that.ecotrack,_that.ecomanager,_that.procolis,_that.noest,_that.orderdz,_that.zimou,_that.zrexpress,_that.maystroDelivery,_that.googleSheet,_that.webhooks,_that.security,_that.customFields,_that.payment,_that.dispatcher,_that.sms,_that.telegram);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic>? metadata,  MetaPixelIntegration? metaPixel,  TiktokPixelIntegration? tiktokPixel,  GoogleAnalyticsIntegration? googleAnalytics,  GoogleTagsIntegration? googleTags,  AiIntegration? ai,  YalidineDeliveryIntegration? yalidine,  EcotrackDeliveryIntegration? ecotrack,  EcomanagerDeliveryIntegration? ecomanager,  ProcolisDeliveryIntegration? procolis,  NoestDeliveryIntegration? noest,  OrderdzDeliveryIntegration? orderdz,  ZimouExpressDeliveryIntegration? zimou,  ZrexpressDeliveryIntegration? zrexpress,  MaystroDeliveryIntegration? maystroDelivery,  GoogleSheetsIntegration? googleSheet,  WebhooksIntegration? webhooks,  SecurityIntegration? security,  CustomFieldsIntegration? customFields,  PaymentIntegration? payment,  DispatcherIntegration? dispatcher,  Map<String, dynamic>? sms,  Map<String, dynamic>? telegram)  $default,) {final _that = this;
switch (_that) {
case _StoreIntegrations():
return $default(_that.metadata,_that.metaPixel,_that.tiktokPixel,_that.googleAnalytics,_that.googleTags,_that.ai,_that.yalidine,_that.ecotrack,_that.ecomanager,_that.procolis,_that.noest,_that.orderdz,_that.zimou,_that.zrexpress,_that.maystroDelivery,_that.googleSheet,_that.webhooks,_that.security,_that.customFields,_that.payment,_that.dispatcher,_that.sms,_that.telegram);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic>? metadata,  MetaPixelIntegration? metaPixel,  TiktokPixelIntegration? tiktokPixel,  GoogleAnalyticsIntegration? googleAnalytics,  GoogleTagsIntegration? googleTags,  AiIntegration? ai,  YalidineDeliveryIntegration? yalidine,  EcotrackDeliveryIntegration? ecotrack,  EcomanagerDeliveryIntegration? ecomanager,  ProcolisDeliveryIntegration? procolis,  NoestDeliveryIntegration? noest,  OrderdzDeliveryIntegration? orderdz,  ZimouExpressDeliveryIntegration? zimou,  ZrexpressDeliveryIntegration? zrexpress,  MaystroDeliveryIntegration? maystroDelivery,  GoogleSheetsIntegration? googleSheet,  WebhooksIntegration? webhooks,  SecurityIntegration? security,  CustomFieldsIntegration? customFields,  PaymentIntegration? payment,  DispatcherIntegration? dispatcher,  Map<String, dynamic>? sms,  Map<String, dynamic>? telegram)?  $default,) {final _that = this;
switch (_that) {
case _StoreIntegrations() when $default != null:
return $default(_that.metadata,_that.metaPixel,_that.tiktokPixel,_that.googleAnalytics,_that.googleTags,_that.ai,_that.yalidine,_that.ecotrack,_that.ecomanager,_that.procolis,_that.noest,_that.orderdz,_that.zimou,_that.zrexpress,_that.maystroDelivery,_that.googleSheet,_that.webhooks,_that.security,_that.customFields,_that.payment,_that.dispatcher,_that.sms,_that.telegram);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreIntegrations extends StoreIntegrations {
  const _StoreIntegrations({final  Map<String, dynamic>? metadata = const {}, this.metaPixel, this.tiktokPixel, this.googleAnalytics, this.googleTags, this.ai, this.yalidine, this.ecotrack, this.ecomanager, this.procolis, this.noest, this.orderdz, this.zimou, this.zrexpress, this.maystroDelivery, this.googleSheet, this.webhooks, this.security, this.customFields, this.payment, this.dispatcher, final  Map<String, dynamic>? sms = const {}, final  Map<String, dynamic>? telegram = const {}}): _metadata = metadata,_sms = sms,_telegram = telegram,super._();
  factory _StoreIntegrations.fromJson(Map<String, dynamic> json) => _$StoreIntegrationsFromJson(json);

 final  Map<String, dynamic>? _metadata;
@override@JsonKey() Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

// Analytics Integrations
@override final  MetaPixelIntegration? metaPixel;
@override final  TiktokPixelIntegration? tiktokPixel;
@override final  GoogleAnalyticsIntegration? googleAnalytics;
@override final  GoogleTagsIntegration? googleTags;
@override final  AiIntegration? ai;
// Delivery Integrations
@override final  YalidineDeliveryIntegration? yalidine;
@override final  EcotrackDeliveryIntegration? ecotrack;
@override final  EcomanagerDeliveryIntegration? ecomanager;
@override final  ProcolisDeliveryIntegration? procolis;
@override final  NoestDeliveryIntegration? noest;
@override final  OrderdzDeliveryIntegration? orderdz;
@override final  ZimouExpressDeliveryIntegration? zimou;
@override final  ZrexpressDeliveryIntegration? zrexpress;
@override final  MaystroDeliveryIntegration? maystroDelivery;
// Google Sheets Integration
@override final  GoogleSheetsIntegration? googleSheet;
// Webhooks Integration
@override final  WebhooksIntegration? webhooks;
// Security Integration
@override final  SecurityIntegration? security;
// Custom Fields Integration
@override final  CustomFieldsIntegration? customFields;
// Payment Integration
@override final  PaymentIntegration? payment;
// Dispatcher Integration (order assignment to confirmers)
@override final  DispatcherIntegration? dispatcher;
// Communication Integrations
 final  Map<String, dynamic>? _sms;
// Communication Integrations
@override@JsonKey() Map<String, dynamic>? get sms {
  final value = _sms;
  if (value == null) return null;
  if (_sms is EqualUnmodifiableMapView) return _sms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _telegram;
@override@JsonKey() Map<String, dynamic>? get telegram {
  final value = _telegram;
  if (value == null) return null;
  if (_telegram is EqualUnmodifiableMapView) return _telegram;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreIntegrationsCopyWith<_StoreIntegrations> get copyWith => __$StoreIntegrationsCopyWithImpl<_StoreIntegrations>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreIntegrationsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreIntegrations&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.metaPixel, metaPixel) || other.metaPixel == metaPixel)&&(identical(other.tiktokPixel, tiktokPixel) || other.tiktokPixel == tiktokPixel)&&(identical(other.googleAnalytics, googleAnalytics) || other.googleAnalytics == googleAnalytics)&&(identical(other.googleTags, googleTags) || other.googleTags == googleTags)&&(identical(other.ai, ai) || other.ai == ai)&&(identical(other.yalidine, yalidine) || other.yalidine == yalidine)&&(identical(other.ecotrack, ecotrack) || other.ecotrack == ecotrack)&&(identical(other.ecomanager, ecomanager) || other.ecomanager == ecomanager)&&(identical(other.procolis, procolis) || other.procolis == procolis)&&(identical(other.noest, noest) || other.noest == noest)&&(identical(other.orderdz, orderdz) || other.orderdz == orderdz)&&(identical(other.zimou, zimou) || other.zimou == zimou)&&(identical(other.zrexpress, zrexpress) || other.zrexpress == zrexpress)&&(identical(other.maystroDelivery, maystroDelivery) || other.maystroDelivery == maystroDelivery)&&(identical(other.googleSheet, googleSheet) || other.googleSheet == googleSheet)&&(identical(other.webhooks, webhooks) || other.webhooks == webhooks)&&(identical(other.security, security) || other.security == security)&&(identical(other.customFields, customFields) || other.customFields == customFields)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.dispatcher, dispatcher) || other.dispatcher == dispatcher)&&const DeepCollectionEquality().equals(other._sms, _sms)&&const DeepCollectionEquality().equals(other._telegram, _telegram));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_metadata),metaPixel,tiktokPixel,googleAnalytics,googleTags,ai,yalidine,ecotrack,ecomanager,procolis,noest,orderdz,zimou,zrexpress,maystroDelivery,googleSheet,webhooks,security,customFields,payment,dispatcher,const DeepCollectionEquality().hash(_sms),const DeepCollectionEquality().hash(_telegram)]);

@override
String toString() {
  return 'StoreIntegrations(metadata: $metadata, metaPixel: $metaPixel, tiktokPixel: $tiktokPixel, googleAnalytics: $googleAnalytics, googleTags: $googleTags, ai: $ai, yalidine: $yalidine, ecotrack: $ecotrack, ecomanager: $ecomanager, procolis: $procolis, noest: $noest, orderdz: $orderdz, zimou: $zimou, zrexpress: $zrexpress, maystroDelivery: $maystroDelivery, googleSheet: $googleSheet, webhooks: $webhooks, security: $security, customFields: $customFields, payment: $payment, dispatcher: $dispatcher, sms: $sms, telegram: $telegram)';
}


}

/// @nodoc
abstract mixin class _$StoreIntegrationsCopyWith<$Res> implements $StoreIntegrationsCopyWith<$Res> {
  factory _$StoreIntegrationsCopyWith(_StoreIntegrations value, $Res Function(_StoreIntegrations) _then) = __$StoreIntegrationsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic>? metadata, MetaPixelIntegration? metaPixel, TiktokPixelIntegration? tiktokPixel, GoogleAnalyticsIntegration? googleAnalytics, GoogleTagsIntegration? googleTags, AiIntegration? ai, YalidineDeliveryIntegration? yalidine, EcotrackDeliveryIntegration? ecotrack, EcomanagerDeliveryIntegration? ecomanager, ProcolisDeliveryIntegration? procolis, NoestDeliveryIntegration? noest, OrderdzDeliveryIntegration? orderdz, ZimouExpressDeliveryIntegration? zimou, ZrexpressDeliveryIntegration? zrexpress, MaystroDeliveryIntegration? maystroDelivery, GoogleSheetsIntegration? googleSheet, WebhooksIntegration? webhooks, SecurityIntegration? security, CustomFieldsIntegration? customFields, PaymentIntegration? payment, DispatcherIntegration? dispatcher, Map<String, dynamic>? sms, Map<String, dynamic>? telegram
});


@override $MetaPixelIntegrationCopyWith<$Res>? get metaPixel;@override $TiktokPixelIntegrationCopyWith<$Res>? get tiktokPixel;@override $GoogleAnalyticsIntegrationCopyWith<$Res>? get googleAnalytics;@override $GoogleTagsIntegrationCopyWith<$Res>? get googleTags;@override $AiIntegrationCopyWith<$Res>? get ai;@override $YalidineDeliveryIntegrationCopyWith<$Res>? get yalidine;@override $EcotrackDeliveryIntegrationCopyWith<$Res>? get ecotrack;@override $EcomanagerDeliveryIntegrationCopyWith<$Res>? get ecomanager;@override $ProcolisDeliveryIntegrationCopyWith<$Res>? get procolis;@override $NoestDeliveryIntegrationCopyWith<$Res>? get noest;@override $OrderdzDeliveryIntegrationCopyWith<$Res>? get orderdz;@override $ZimouExpressDeliveryIntegrationCopyWith<$Res>? get zimou;@override $ZrexpressDeliveryIntegrationCopyWith<$Res>? get zrexpress;@override $MaystroDeliveryIntegrationCopyWith<$Res>? get maystroDelivery;@override $GoogleSheetsIntegrationCopyWith<$Res>? get googleSheet;@override $WebhooksIntegrationCopyWith<$Res>? get webhooks;@override $SecurityIntegrationCopyWith<$Res>? get security;@override $CustomFieldsIntegrationCopyWith<$Res>? get customFields;@override $PaymentIntegrationCopyWith<$Res>? get payment;@override $DispatcherIntegrationCopyWith<$Res>? get dispatcher;

}
/// @nodoc
class __$StoreIntegrationsCopyWithImpl<$Res>
    implements _$StoreIntegrationsCopyWith<$Res> {
  __$StoreIntegrationsCopyWithImpl(this._self, this._then);

  final _StoreIntegrations _self;
  final $Res Function(_StoreIntegrations) _then;

/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = freezed,Object? metaPixel = freezed,Object? tiktokPixel = freezed,Object? googleAnalytics = freezed,Object? googleTags = freezed,Object? ai = freezed,Object? yalidine = freezed,Object? ecotrack = freezed,Object? ecomanager = freezed,Object? procolis = freezed,Object? noest = freezed,Object? orderdz = freezed,Object? zimou = freezed,Object? zrexpress = freezed,Object? maystroDelivery = freezed,Object? googleSheet = freezed,Object? webhooks = freezed,Object? security = freezed,Object? customFields = freezed,Object? payment = freezed,Object? dispatcher = freezed,Object? sms = freezed,Object? telegram = freezed,}) {
  return _then(_StoreIntegrations(
metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,metaPixel: freezed == metaPixel ? _self.metaPixel : metaPixel // ignore: cast_nullable_to_non_nullable
as MetaPixelIntegration?,tiktokPixel: freezed == tiktokPixel ? _self.tiktokPixel : tiktokPixel // ignore: cast_nullable_to_non_nullable
as TiktokPixelIntegration?,googleAnalytics: freezed == googleAnalytics ? _self.googleAnalytics : googleAnalytics // ignore: cast_nullable_to_non_nullable
as GoogleAnalyticsIntegration?,googleTags: freezed == googleTags ? _self.googleTags : googleTags // ignore: cast_nullable_to_non_nullable
as GoogleTagsIntegration?,ai: freezed == ai ? _self.ai : ai // ignore: cast_nullable_to_non_nullable
as AiIntegration?,yalidine: freezed == yalidine ? _self.yalidine : yalidine // ignore: cast_nullable_to_non_nullable
as YalidineDeliveryIntegration?,ecotrack: freezed == ecotrack ? _self.ecotrack : ecotrack // ignore: cast_nullable_to_non_nullable
as EcotrackDeliveryIntegration?,ecomanager: freezed == ecomanager ? _self.ecomanager : ecomanager // ignore: cast_nullable_to_non_nullable
as EcomanagerDeliveryIntegration?,procolis: freezed == procolis ? _self.procolis : procolis // ignore: cast_nullable_to_non_nullable
as ProcolisDeliveryIntegration?,noest: freezed == noest ? _self.noest : noest // ignore: cast_nullable_to_non_nullable
as NoestDeliveryIntegration?,orderdz: freezed == orderdz ? _self.orderdz : orderdz // ignore: cast_nullable_to_non_nullable
as OrderdzDeliveryIntegration?,zimou: freezed == zimou ? _self.zimou : zimou // ignore: cast_nullable_to_non_nullable
as ZimouExpressDeliveryIntegration?,zrexpress: freezed == zrexpress ? _self.zrexpress : zrexpress // ignore: cast_nullable_to_non_nullable
as ZrexpressDeliveryIntegration?,maystroDelivery: freezed == maystroDelivery ? _self.maystroDelivery : maystroDelivery // ignore: cast_nullable_to_non_nullable
as MaystroDeliveryIntegration?,googleSheet: freezed == googleSheet ? _self.googleSheet : googleSheet // ignore: cast_nullable_to_non_nullable
as GoogleSheetsIntegration?,webhooks: freezed == webhooks ? _self.webhooks : webhooks // ignore: cast_nullable_to_non_nullable
as WebhooksIntegration?,security: freezed == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as SecurityIntegration?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as CustomFieldsIntegration?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentIntegration?,dispatcher: freezed == dispatcher ? _self.dispatcher : dispatcher // ignore: cast_nullable_to_non_nullable
as DispatcherIntegration?,sms: freezed == sms ? _self._sms : sms // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,telegram: freezed == telegram ? _self._telegram : telegram // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaPixelIntegrationCopyWith<$Res>? get metaPixel {
    if (_self.metaPixel == null) {
    return null;
  }

  return $MetaPixelIntegrationCopyWith<$Res>(_self.metaPixel!, (value) {
    return _then(_self.copyWith(metaPixel: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TiktokPixelIntegrationCopyWith<$Res>? get tiktokPixel {
    if (_self.tiktokPixel == null) {
    return null;
  }

  return $TiktokPixelIntegrationCopyWith<$Res>(_self.tiktokPixel!, (value) {
    return _then(_self.copyWith(tiktokPixel: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoogleAnalyticsIntegrationCopyWith<$Res>? get googleAnalytics {
    if (_self.googleAnalytics == null) {
    return null;
  }

  return $GoogleAnalyticsIntegrationCopyWith<$Res>(_self.googleAnalytics!, (value) {
    return _then(_self.copyWith(googleAnalytics: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoogleTagsIntegrationCopyWith<$Res>? get googleTags {
    if (_self.googleTags == null) {
    return null;
  }

  return $GoogleTagsIntegrationCopyWith<$Res>(_self.googleTags!, (value) {
    return _then(_self.copyWith(googleTags: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiIntegrationCopyWith<$Res>? get ai {
    if (_self.ai == null) {
    return null;
  }

  return $AiIntegrationCopyWith<$Res>(_self.ai!, (value) {
    return _then(_self.copyWith(ai: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YalidineDeliveryIntegrationCopyWith<$Res>? get yalidine {
    if (_self.yalidine == null) {
    return null;
  }

  return $YalidineDeliveryIntegrationCopyWith<$Res>(_self.yalidine!, (value) {
    return _then(_self.copyWith(yalidine: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EcotrackDeliveryIntegrationCopyWith<$Res>? get ecotrack {
    if (_self.ecotrack == null) {
    return null;
  }

  return $EcotrackDeliveryIntegrationCopyWith<$Res>(_self.ecotrack!, (value) {
    return _then(_self.copyWith(ecotrack: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EcomanagerDeliveryIntegrationCopyWith<$Res>? get ecomanager {
    if (_self.ecomanager == null) {
    return null;
  }

  return $EcomanagerDeliveryIntegrationCopyWith<$Res>(_self.ecomanager!, (value) {
    return _then(_self.copyWith(ecomanager: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcolisDeliveryIntegrationCopyWith<$Res>? get procolis {
    if (_self.procolis == null) {
    return null;
  }

  return $ProcolisDeliveryIntegrationCopyWith<$Res>(_self.procolis!, (value) {
    return _then(_self.copyWith(procolis: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoestDeliveryIntegrationCopyWith<$Res>? get noest {
    if (_self.noest == null) {
    return null;
  }

  return $NoestDeliveryIntegrationCopyWith<$Res>(_self.noest!, (value) {
    return _then(_self.copyWith(noest: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderdzDeliveryIntegrationCopyWith<$Res>? get orderdz {
    if (_self.orderdz == null) {
    return null;
  }

  return $OrderdzDeliveryIntegrationCopyWith<$Res>(_self.orderdz!, (value) {
    return _then(_self.copyWith(orderdz: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZimouExpressDeliveryIntegrationCopyWith<$Res>? get zimou {
    if (_self.zimou == null) {
    return null;
  }

  return $ZimouExpressDeliveryIntegrationCopyWith<$Res>(_self.zimou!, (value) {
    return _then(_self.copyWith(zimou: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZrexpressDeliveryIntegrationCopyWith<$Res>? get zrexpress {
    if (_self.zrexpress == null) {
    return null;
  }

  return $ZrexpressDeliveryIntegrationCopyWith<$Res>(_self.zrexpress!, (value) {
    return _then(_self.copyWith(zrexpress: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaystroDeliveryIntegrationCopyWith<$Res>? get maystroDelivery {
    if (_self.maystroDelivery == null) {
    return null;
  }

  return $MaystroDeliveryIntegrationCopyWith<$Res>(_self.maystroDelivery!, (value) {
    return _then(_self.copyWith(maystroDelivery: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoogleSheetsIntegrationCopyWith<$Res>? get googleSheet {
    if (_self.googleSheet == null) {
    return null;
  }

  return $GoogleSheetsIntegrationCopyWith<$Res>(_self.googleSheet!, (value) {
    return _then(_self.copyWith(googleSheet: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WebhooksIntegrationCopyWith<$Res>? get webhooks {
    if (_self.webhooks == null) {
    return null;
  }

  return $WebhooksIntegrationCopyWith<$Res>(_self.webhooks!, (value) {
    return _then(_self.copyWith(webhooks: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityIntegrationCopyWith<$Res>? get security {
    if (_self.security == null) {
    return null;
  }

  return $SecurityIntegrationCopyWith<$Res>(_self.security!, (value) {
    return _then(_self.copyWith(security: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomFieldsIntegrationCopyWith<$Res>? get customFields {
    if (_self.customFields == null) {
    return null;
  }

  return $CustomFieldsIntegrationCopyWith<$Res>(_self.customFields!, (value) {
    return _then(_self.copyWith(customFields: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentIntegrationCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentIntegrationCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DispatcherIntegrationCopyWith<$Res>? get dispatcher {
    if (_self.dispatcher == null) {
    return null;
  }

  return $DispatcherIntegrationCopyWith<$Res>(_self.dispatcher!, (value) {
    return _then(_self.copyWith(dispatcher: value));
  });
}
}


/// @nodoc
mixin _$FacebookMarketingOAuth {

 String get accessToken; String get tokenType; int? get expiresIn; String? get expiresAt; List<String> get scopes;
/// Create a copy of FacebookMarketingOAuth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacebookMarketingOAuthCopyWith<FacebookMarketingOAuth> get copyWith => _$FacebookMarketingOAuthCopyWithImpl<FacebookMarketingOAuth>(this as FacebookMarketingOAuth, _$identity);

  /// Serializes this FacebookMarketingOAuth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacebookMarketingOAuth&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other.scopes, scopes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,tokenType,expiresIn,expiresAt,const DeepCollectionEquality().hash(scopes));

@override
String toString() {
  return 'FacebookMarketingOAuth(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, expiresAt: $expiresAt, scopes: $scopes)';
}


}

/// @nodoc
abstract mixin class $FacebookMarketingOAuthCopyWith<$Res>  {
  factory $FacebookMarketingOAuthCopyWith(FacebookMarketingOAuth value, $Res Function(FacebookMarketingOAuth) _then) = _$FacebookMarketingOAuthCopyWithImpl;
@useResult
$Res call({
 String accessToken, String tokenType, int? expiresIn, String? expiresAt, List<String> scopes
});




}
/// @nodoc
class _$FacebookMarketingOAuthCopyWithImpl<$Res>
    implements $FacebookMarketingOAuthCopyWith<$Res> {
  _$FacebookMarketingOAuthCopyWithImpl(this._self, this._then);

  final FacebookMarketingOAuth _self;
  final $Res Function(FacebookMarketingOAuth) _then;

/// Create a copy of FacebookMarketingOAuth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? tokenType = null,Object? expiresIn = freezed,Object? expiresAt = freezed,Object? scopes = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,scopes: null == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [FacebookMarketingOAuth].
extension FacebookMarketingOAuthPatterns on FacebookMarketingOAuth {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FacebookMarketingOAuth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FacebookMarketingOAuth() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FacebookMarketingOAuth value)  $default,){
final _that = this;
switch (_that) {
case _FacebookMarketingOAuth():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FacebookMarketingOAuth value)?  $default,){
final _that = this;
switch (_that) {
case _FacebookMarketingOAuth() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String tokenType,  int? expiresIn,  String? expiresAt,  List<String> scopes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FacebookMarketingOAuth() when $default != null:
return $default(_that.accessToken,_that.tokenType,_that.expiresIn,_that.expiresAt,_that.scopes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String tokenType,  int? expiresIn,  String? expiresAt,  List<String> scopes)  $default,) {final _that = this;
switch (_that) {
case _FacebookMarketingOAuth():
return $default(_that.accessToken,_that.tokenType,_that.expiresIn,_that.expiresAt,_that.scopes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String tokenType,  int? expiresIn,  String? expiresAt,  List<String> scopes)?  $default,) {final _that = this;
switch (_that) {
case _FacebookMarketingOAuth() when $default != null:
return $default(_that.accessToken,_that.tokenType,_that.expiresIn,_that.expiresAt,_that.scopes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FacebookMarketingOAuth extends FacebookMarketingOAuth {
  const _FacebookMarketingOAuth({required this.accessToken, this.tokenType = 'bearer', this.expiresIn, this.expiresAt, final  List<String> scopes = const []}): _scopes = scopes,super._();
  factory _FacebookMarketingOAuth.fromJson(Map<String, dynamic> json) => _$FacebookMarketingOAuthFromJson(json);

@override final  String accessToken;
@override@JsonKey() final  String tokenType;
@override final  int? expiresIn;
@override final  String? expiresAt;
 final  List<String> _scopes;
@override@JsonKey() List<String> get scopes {
  if (_scopes is EqualUnmodifiableListView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scopes);
}


/// Create a copy of FacebookMarketingOAuth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FacebookMarketingOAuthCopyWith<_FacebookMarketingOAuth> get copyWith => __$FacebookMarketingOAuthCopyWithImpl<_FacebookMarketingOAuth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FacebookMarketingOAuthToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FacebookMarketingOAuth&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other._scopes, _scopes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,tokenType,expiresIn,expiresAt,const DeepCollectionEquality().hash(_scopes));

@override
String toString() {
  return 'FacebookMarketingOAuth(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, expiresAt: $expiresAt, scopes: $scopes)';
}


}

/// @nodoc
abstract mixin class _$FacebookMarketingOAuthCopyWith<$Res> implements $FacebookMarketingOAuthCopyWith<$Res> {
  factory _$FacebookMarketingOAuthCopyWith(_FacebookMarketingOAuth value, $Res Function(_FacebookMarketingOAuth) _then) = __$FacebookMarketingOAuthCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String tokenType, int? expiresIn, String? expiresAt, List<String> scopes
});




}
/// @nodoc
class __$FacebookMarketingOAuthCopyWithImpl<$Res>
    implements _$FacebookMarketingOAuthCopyWith<$Res> {
  __$FacebookMarketingOAuthCopyWithImpl(this._self, this._then);

  final _FacebookMarketingOAuth _self;
  final $Res Function(_FacebookMarketingOAuth) _then;

/// Create a copy of FacebookMarketingOAuth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? tokenType = null,Object? expiresIn = freezed,Object? expiresAt = freezed,Object? scopes = null,}) {
  return _then(_FacebookMarketingOAuth(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,scopes: null == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$MetaPixelIntegration {

 String get id; List<MetaPixel> get pixels; MetaPixelEvent get objective; MetaPixelEvent get draftObjective; bool get active; Map<String, dynamic> get metadata;/// Facebook Marketing OAuth data - for accessing pixels via API
 FacebookMarketingOAuth? get oauth2;/// Where to send events: server (CAPI), client (store frontend), or both. Null = auto.
 PixelReportMode? get mode;
/// Create a copy of MetaPixelIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaPixelIntegrationCopyWith<MetaPixelIntegration> get copyWith => _$MetaPixelIntegrationCopyWithImpl<MetaPixelIntegration>(this as MetaPixelIntegration, _$identity);

  /// Serializes this MetaPixelIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaPixelIntegration&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.pixels, pixels)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.draftObjective, draftObjective) || other.draftObjective == draftObjective)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.oauth2, oauth2) || other.oauth2 == oauth2)&&(identical(other.mode, mode) || other.mode == mode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(pixels),objective,draftObjective,active,const DeepCollectionEquality().hash(metadata),oauth2,mode);

@override
String toString() {
  return 'MetaPixelIntegration(id: $id, pixels: $pixels, objective: $objective, draftObjective: $draftObjective, active: $active, metadata: $metadata, oauth2: $oauth2, mode: $mode)';
}


}

/// @nodoc
abstract mixin class $MetaPixelIntegrationCopyWith<$Res>  {
  factory $MetaPixelIntegrationCopyWith(MetaPixelIntegration value, $Res Function(MetaPixelIntegration) _then) = _$MetaPixelIntegrationCopyWithImpl;
@useResult
$Res call({
 String id, List<MetaPixel> pixels, MetaPixelEvent objective, MetaPixelEvent draftObjective, bool active, Map<String, dynamic> metadata, FacebookMarketingOAuth? oauth2, PixelReportMode? mode
});


$FacebookMarketingOAuthCopyWith<$Res>? get oauth2;

}
/// @nodoc
class _$MetaPixelIntegrationCopyWithImpl<$Res>
    implements $MetaPixelIntegrationCopyWith<$Res> {
  _$MetaPixelIntegrationCopyWithImpl(this._self, this._then);

  final MetaPixelIntegration _self;
  final $Res Function(MetaPixelIntegration) _then;

/// Create a copy of MetaPixelIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? pixels = null,Object? objective = null,Object? draftObjective = null,Object? active = null,Object? metadata = null,Object? oauth2 = freezed,Object? mode = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pixels: null == pixels ? _self.pixels : pixels // ignore: cast_nullable_to_non_nullable
as List<MetaPixel>,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent,draftObjective: null == draftObjective ? _self.draftObjective : draftObjective // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,oauth2: freezed == oauth2 ? _self.oauth2 : oauth2 // ignore: cast_nullable_to_non_nullable
as FacebookMarketingOAuth?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as PixelReportMode?,
  ));
}
/// Create a copy of MetaPixelIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FacebookMarketingOAuthCopyWith<$Res>? get oauth2 {
    if (_self.oauth2 == null) {
    return null;
  }

  return $FacebookMarketingOAuthCopyWith<$Res>(_self.oauth2!, (value) {
    return _then(_self.copyWith(oauth2: value));
  });
}
}


/// Adds pattern-matching-related methods to [MetaPixelIntegration].
extension MetaPixelIntegrationPatterns on MetaPixelIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetaPixelIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaPixelIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetaPixelIntegration value)  $default,){
final _that = this;
switch (_that) {
case _MetaPixelIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetaPixelIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _MetaPixelIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<MetaPixel> pixels,  MetaPixelEvent objective,  MetaPixelEvent draftObjective,  bool active,  Map<String, dynamic> metadata,  FacebookMarketingOAuth? oauth2,  PixelReportMode? mode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaPixelIntegration() when $default != null:
return $default(_that.id,_that.pixels,_that.objective,_that.draftObjective,_that.active,_that.metadata,_that.oauth2,_that.mode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<MetaPixel> pixels,  MetaPixelEvent objective,  MetaPixelEvent draftObjective,  bool active,  Map<String, dynamic> metadata,  FacebookMarketingOAuth? oauth2,  PixelReportMode? mode)  $default,) {final _that = this;
switch (_that) {
case _MetaPixelIntegration():
return $default(_that.id,_that.pixels,_that.objective,_that.draftObjective,_that.active,_that.metadata,_that.oauth2,_that.mode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<MetaPixel> pixels,  MetaPixelEvent objective,  MetaPixelEvent draftObjective,  bool active,  Map<String, dynamic> metadata,  FacebookMarketingOAuth? oauth2,  PixelReportMode? mode)?  $default,) {final _that = this;
switch (_that) {
case _MetaPixelIntegration() when $default != null:
return $default(_that.id,_that.pixels,_that.objective,_that.draftObjective,_that.active,_that.metadata,_that.oauth2,_that.mode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetaPixelIntegration extends MetaPixelIntegration {
  const _MetaPixelIntegration({this.id = 'default', final  List<MetaPixel> pixels = const [], this.objective = MetaPixelEvent.purchase, this.draftObjective = MetaPixelEvent.lead, this.active = true, final  Map<String, dynamic> metadata = const {}, this.oauth2, this.mode}): _pixels = pixels,_metadata = metadata,super._();
  factory _MetaPixelIntegration.fromJson(Map<String, dynamic> json) => _$MetaPixelIntegrationFromJson(json);

@override@JsonKey() final  String id;
 final  List<MetaPixel> _pixels;
@override@JsonKey() List<MetaPixel> get pixels {
  if (_pixels is EqualUnmodifiableListView) return _pixels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pixels);
}

@override@JsonKey() final  MetaPixelEvent objective;
@override@JsonKey() final  MetaPixelEvent draftObjective;
@override@JsonKey() final  bool active;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

/// Facebook Marketing OAuth data - for accessing pixels via API
@override final  FacebookMarketingOAuth? oauth2;
/// Where to send events: server (CAPI), client (store frontend), or both. Null = auto.
@override final  PixelReportMode? mode;

/// Create a copy of MetaPixelIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaPixelIntegrationCopyWith<_MetaPixelIntegration> get copyWith => __$MetaPixelIntegrationCopyWithImpl<_MetaPixelIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaPixelIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaPixelIntegration&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._pixels, _pixels)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.draftObjective, draftObjective) || other.draftObjective == draftObjective)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.oauth2, oauth2) || other.oauth2 == oauth2)&&(identical(other.mode, mode) || other.mode == mode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_pixels),objective,draftObjective,active,const DeepCollectionEquality().hash(_metadata),oauth2,mode);

@override
String toString() {
  return 'MetaPixelIntegration(id: $id, pixels: $pixels, objective: $objective, draftObjective: $draftObjective, active: $active, metadata: $metadata, oauth2: $oauth2, mode: $mode)';
}


}

/// @nodoc
abstract mixin class _$MetaPixelIntegrationCopyWith<$Res> implements $MetaPixelIntegrationCopyWith<$Res> {
  factory _$MetaPixelIntegrationCopyWith(_MetaPixelIntegration value, $Res Function(_MetaPixelIntegration) _then) = __$MetaPixelIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String id, List<MetaPixel> pixels, MetaPixelEvent objective, MetaPixelEvent draftObjective, bool active, Map<String, dynamic> metadata, FacebookMarketingOAuth? oauth2, PixelReportMode? mode
});


@override $FacebookMarketingOAuthCopyWith<$Res>? get oauth2;

}
/// @nodoc
class __$MetaPixelIntegrationCopyWithImpl<$Res>
    implements _$MetaPixelIntegrationCopyWith<$Res> {
  __$MetaPixelIntegrationCopyWithImpl(this._self, this._then);

  final _MetaPixelIntegration _self;
  final $Res Function(_MetaPixelIntegration) _then;

/// Create a copy of MetaPixelIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pixels = null,Object? objective = null,Object? draftObjective = null,Object? active = null,Object? metadata = null,Object? oauth2 = freezed,Object? mode = freezed,}) {
  return _then(_MetaPixelIntegration(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pixels: null == pixels ? _self._pixels : pixels // ignore: cast_nullable_to_non_nullable
as List<MetaPixel>,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent,draftObjective: null == draftObjective ? _self.draftObjective : draftObjective // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,oauth2: freezed == oauth2 ? _self.oauth2 : oauth2 // ignore: cast_nullable_to_non_nullable
as FacebookMarketingOAuth?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as PixelReportMode?,
  ));
}

/// Create a copy of MetaPixelIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FacebookMarketingOAuthCopyWith<$Res>? get oauth2 {
    if (_self.oauth2 == null) {
    return null;
  }

  return $FacebookMarketingOAuthCopyWith<$Res>(_self.oauth2!, (value) {
    return _then(_self.copyWith(oauth2: value));
  });
}
}


/// @nodoc
mixin _$MetaPixel {

 String get name; String get id; String? get key;
/// Create a copy of MetaPixel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaPixelCopyWith<MetaPixel> get copyWith => _$MetaPixelCopyWithImpl<MetaPixel>(this as MetaPixel, _$identity);

  /// Serializes this MetaPixel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaPixel&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.key, key) || other.key == key));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,key);

@override
String toString() {
  return 'MetaPixel(name: $name, id: $id, key: $key)';
}


}

/// @nodoc
abstract mixin class $MetaPixelCopyWith<$Res>  {
  factory $MetaPixelCopyWith(MetaPixel value, $Res Function(MetaPixel) _then) = _$MetaPixelCopyWithImpl;
@useResult
$Res call({
 String name, String id, String? key
});




}
/// @nodoc
class _$MetaPixelCopyWithImpl<$Res>
    implements $MetaPixelCopyWith<$Res> {
  _$MetaPixelCopyWithImpl(this._self, this._then);

  final MetaPixel _self;
  final $Res Function(MetaPixel) _then;

/// Create a copy of MetaPixel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = null,Object? key = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MetaPixel].
extension MetaPixelPatterns on MetaPixel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetaPixel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaPixel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetaPixel value)  $default,){
final _that = this;
switch (_that) {
case _MetaPixel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetaPixel value)?  $default,){
final _that = this;
switch (_that) {
case _MetaPixel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String id,  String? key)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaPixel() when $default != null:
return $default(_that.name,_that.id,_that.key);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String id,  String? key)  $default,) {final _that = this;
switch (_that) {
case _MetaPixel():
return $default(_that.name,_that.id,_that.key);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String id,  String? key)?  $default,) {final _that = this;
switch (_that) {
case _MetaPixel() when $default != null:
return $default(_that.name,_that.id,_that.key);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetaPixel extends MetaPixel {
  const _MetaPixel({this.name = 'إسم البكسل', required this.id, this.key}): super._();
  factory _MetaPixel.fromJson(Map<String, dynamic> json) => _$MetaPixelFromJson(json);

@override@JsonKey() final  String name;
@override final  String id;
@override final  String? key;

/// Create a copy of MetaPixel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaPixelCopyWith<_MetaPixel> get copyWith => __$MetaPixelCopyWithImpl<_MetaPixel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaPixelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaPixel&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.key, key) || other.key == key));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,key);

@override
String toString() {
  return 'MetaPixel(name: $name, id: $id, key: $key)';
}


}

/// @nodoc
abstract mixin class _$MetaPixelCopyWith<$Res> implements $MetaPixelCopyWith<$Res> {
  factory _$MetaPixelCopyWith(_MetaPixel value, $Res Function(_MetaPixel) _then) = __$MetaPixelCopyWithImpl;
@override @useResult
$Res call({
 String name, String id, String? key
});




}
/// @nodoc
class __$MetaPixelCopyWithImpl<$Res>
    implements _$MetaPixelCopyWith<$Res> {
  __$MetaPixelCopyWithImpl(this._self, this._then);

  final _MetaPixel _self;
  final $Res Function(_MetaPixel) _then;

/// Create a copy of MetaPixel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = null,Object? key = freezed,}) {
  return _then(_MetaPixel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TiktokPixelIntegration {

 String get id; List<TiktokPixel> get pixels; TiktokPixelEvent get objective; TiktokPixelEvent get draftObjective; bool get active; Map<String, dynamic> get metadata;/// Where to send events: server, client, or both. Null = auto.
 PixelReportMode? get mode;
/// Create a copy of TiktokPixelIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TiktokPixelIntegrationCopyWith<TiktokPixelIntegration> get copyWith => _$TiktokPixelIntegrationCopyWithImpl<TiktokPixelIntegration>(this as TiktokPixelIntegration, _$identity);

  /// Serializes this TiktokPixelIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TiktokPixelIntegration&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.pixels, pixels)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.draftObjective, draftObjective) || other.draftObjective == draftObjective)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.mode, mode) || other.mode == mode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(pixels),objective,draftObjective,active,const DeepCollectionEquality().hash(metadata),mode);

@override
String toString() {
  return 'TiktokPixelIntegration(id: $id, pixels: $pixels, objective: $objective, draftObjective: $draftObjective, active: $active, metadata: $metadata, mode: $mode)';
}


}

/// @nodoc
abstract mixin class $TiktokPixelIntegrationCopyWith<$Res>  {
  factory $TiktokPixelIntegrationCopyWith(TiktokPixelIntegration value, $Res Function(TiktokPixelIntegration) _then) = _$TiktokPixelIntegrationCopyWithImpl;
@useResult
$Res call({
 String id, List<TiktokPixel> pixels, TiktokPixelEvent objective, TiktokPixelEvent draftObjective, bool active, Map<String, dynamic> metadata, PixelReportMode? mode
});




}
/// @nodoc
class _$TiktokPixelIntegrationCopyWithImpl<$Res>
    implements $TiktokPixelIntegrationCopyWith<$Res> {
  _$TiktokPixelIntegrationCopyWithImpl(this._self, this._then);

  final TiktokPixelIntegration _self;
  final $Res Function(TiktokPixelIntegration) _then;

/// Create a copy of TiktokPixelIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? pixels = null,Object? objective = null,Object? draftObjective = null,Object? active = null,Object? metadata = null,Object? mode = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pixels: null == pixels ? _self.pixels : pixels // ignore: cast_nullable_to_non_nullable
as List<TiktokPixel>,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent,draftObjective: null == draftObjective ? _self.draftObjective : draftObjective // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as PixelReportMode?,
  ));
}

}


/// Adds pattern-matching-related methods to [TiktokPixelIntegration].
extension TiktokPixelIntegrationPatterns on TiktokPixelIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TiktokPixelIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TiktokPixelIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TiktokPixelIntegration value)  $default,){
final _that = this;
switch (_that) {
case _TiktokPixelIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TiktokPixelIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _TiktokPixelIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<TiktokPixel> pixels,  TiktokPixelEvent objective,  TiktokPixelEvent draftObjective,  bool active,  Map<String, dynamic> metadata,  PixelReportMode? mode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TiktokPixelIntegration() when $default != null:
return $default(_that.id,_that.pixels,_that.objective,_that.draftObjective,_that.active,_that.metadata,_that.mode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<TiktokPixel> pixels,  TiktokPixelEvent objective,  TiktokPixelEvent draftObjective,  bool active,  Map<String, dynamic> metadata,  PixelReportMode? mode)  $default,) {final _that = this;
switch (_that) {
case _TiktokPixelIntegration():
return $default(_that.id,_that.pixels,_that.objective,_that.draftObjective,_that.active,_that.metadata,_that.mode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<TiktokPixel> pixels,  TiktokPixelEvent objective,  TiktokPixelEvent draftObjective,  bool active,  Map<String, dynamic> metadata,  PixelReportMode? mode)?  $default,) {final _that = this;
switch (_that) {
case _TiktokPixelIntegration() when $default != null:
return $default(_that.id,_that.pixels,_that.objective,_that.draftObjective,_that.active,_that.metadata,_that.mode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TiktokPixelIntegration extends TiktokPixelIntegration {
  const _TiktokPixelIntegration({this.id = 'default', final  List<TiktokPixel> pixels = const [], this.objective = TiktokPixelEvent.purchase, this.draftObjective = TiktokPixelEvent.purchase, this.active = true, final  Map<String, dynamic> metadata = const {}, this.mode}): _pixels = pixels,_metadata = metadata,super._();
  factory _TiktokPixelIntegration.fromJson(Map<String, dynamic> json) => _$TiktokPixelIntegrationFromJson(json);

@override@JsonKey() final  String id;
 final  List<TiktokPixel> _pixels;
@override@JsonKey() List<TiktokPixel> get pixels {
  if (_pixels is EqualUnmodifiableListView) return _pixels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pixels);
}

@override@JsonKey() final  TiktokPixelEvent objective;
@override@JsonKey() final  TiktokPixelEvent draftObjective;
@override@JsonKey() final  bool active;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

/// Where to send events: server, client, or both. Null = auto.
@override final  PixelReportMode? mode;

/// Create a copy of TiktokPixelIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TiktokPixelIntegrationCopyWith<_TiktokPixelIntegration> get copyWith => __$TiktokPixelIntegrationCopyWithImpl<_TiktokPixelIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TiktokPixelIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TiktokPixelIntegration&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._pixels, _pixels)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.draftObjective, draftObjective) || other.draftObjective == draftObjective)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.mode, mode) || other.mode == mode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_pixels),objective,draftObjective,active,const DeepCollectionEquality().hash(_metadata),mode);

@override
String toString() {
  return 'TiktokPixelIntegration(id: $id, pixels: $pixels, objective: $objective, draftObjective: $draftObjective, active: $active, metadata: $metadata, mode: $mode)';
}


}

/// @nodoc
abstract mixin class _$TiktokPixelIntegrationCopyWith<$Res> implements $TiktokPixelIntegrationCopyWith<$Res> {
  factory _$TiktokPixelIntegrationCopyWith(_TiktokPixelIntegration value, $Res Function(_TiktokPixelIntegration) _then) = __$TiktokPixelIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String id, List<TiktokPixel> pixels, TiktokPixelEvent objective, TiktokPixelEvent draftObjective, bool active, Map<String, dynamic> metadata, PixelReportMode? mode
});




}
/// @nodoc
class __$TiktokPixelIntegrationCopyWithImpl<$Res>
    implements _$TiktokPixelIntegrationCopyWith<$Res> {
  __$TiktokPixelIntegrationCopyWithImpl(this._self, this._then);

  final _TiktokPixelIntegration _self;
  final $Res Function(_TiktokPixelIntegration) _then;

/// Create a copy of TiktokPixelIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pixels = null,Object? objective = null,Object? draftObjective = null,Object? active = null,Object? metadata = null,Object? mode = freezed,}) {
  return _then(_TiktokPixelIntegration(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pixels: null == pixels ? _self._pixels : pixels // ignore: cast_nullable_to_non_nullable
as List<TiktokPixel>,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent,draftObjective: null == draftObjective ? _self.draftObjective : draftObjective // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as PixelReportMode?,
  ));
}


}


/// @nodoc
mixin _$TiktokPixel {

 String get name; String get id; String? get accessToken;
/// Create a copy of TiktokPixel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TiktokPixelCopyWith<TiktokPixel> get copyWith => _$TiktokPixelCopyWithImpl<TiktokPixel>(this as TiktokPixel, _$identity);

  /// Serializes this TiktokPixel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TiktokPixel&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,accessToken);

@override
String toString() {
  return 'TiktokPixel(name: $name, id: $id, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $TiktokPixelCopyWith<$Res>  {
  factory $TiktokPixelCopyWith(TiktokPixel value, $Res Function(TiktokPixel) _then) = _$TiktokPixelCopyWithImpl;
@useResult
$Res call({
 String name, String id, String? accessToken
});




}
/// @nodoc
class _$TiktokPixelCopyWithImpl<$Res>
    implements $TiktokPixelCopyWith<$Res> {
  _$TiktokPixelCopyWithImpl(this._self, this._then);

  final TiktokPixel _self;
  final $Res Function(TiktokPixel) _then;

/// Create a copy of TiktokPixel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = null,Object? accessToken = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TiktokPixel].
extension TiktokPixelPatterns on TiktokPixel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TiktokPixel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TiktokPixel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TiktokPixel value)  $default,){
final _that = this;
switch (_that) {
case _TiktokPixel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TiktokPixel value)?  $default,){
final _that = this;
switch (_that) {
case _TiktokPixel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String id,  String? accessToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TiktokPixel() when $default != null:
return $default(_that.name,_that.id,_that.accessToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String id,  String? accessToken)  $default,) {final _that = this;
switch (_that) {
case _TiktokPixel():
return $default(_that.name,_that.id,_that.accessToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String id,  String? accessToken)?  $default,) {final _that = this;
switch (_that) {
case _TiktokPixel() when $default != null:
return $default(_that.name,_that.id,_that.accessToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TiktokPixel extends TiktokPixel {
  const _TiktokPixel({this.name = 'TikTok Pixel', required this.id, this.accessToken}): super._();
  factory _TiktokPixel.fromJson(Map<String, dynamic> json) => _$TiktokPixelFromJson(json);

@override@JsonKey() final  String name;
@override final  String id;
@override final  String? accessToken;

/// Create a copy of TiktokPixel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TiktokPixelCopyWith<_TiktokPixel> get copyWith => __$TiktokPixelCopyWithImpl<_TiktokPixel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TiktokPixelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TiktokPixel&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,accessToken);

@override
String toString() {
  return 'TiktokPixel(name: $name, id: $id, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$TiktokPixelCopyWith<$Res> implements $TiktokPixelCopyWith<$Res> {
  factory _$TiktokPixelCopyWith(_TiktokPixel value, $Res Function(_TiktokPixel) _then) = __$TiktokPixelCopyWithImpl;
@override @useResult
$Res call({
 String name, String id, String? accessToken
});




}
/// @nodoc
class __$TiktokPixelCopyWithImpl<$Res>
    implements _$TiktokPixelCopyWith<$Res> {
  __$TiktokPixelCopyWithImpl(this._self, this._then);

  final _TiktokPixel _self;
  final $Res Function(_TiktokPixel) _then;

/// Create a copy of TiktokPixel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = null,Object? accessToken = freezed,}) {
  return _then(_TiktokPixel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GoogleAnalyticsIntegration {

 String get id; bool get active; Map<String, dynamic> get metadata;
/// Create a copy of GoogleAnalyticsIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleAnalyticsIntegrationCopyWith<GoogleAnalyticsIntegration> get copyWith => _$GoogleAnalyticsIntegrationCopyWithImpl<GoogleAnalyticsIntegration>(this as GoogleAnalyticsIntegration, _$identity);

  /// Serializes this GoogleAnalyticsIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleAnalyticsIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'GoogleAnalyticsIntegration(id: $id, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $GoogleAnalyticsIntegrationCopyWith<$Res>  {
  factory $GoogleAnalyticsIntegrationCopyWith(GoogleAnalyticsIntegration value, $Res Function(GoogleAnalyticsIntegration) _then) = _$GoogleAnalyticsIntegrationCopyWithImpl;
@useResult
$Res call({
 String id, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$GoogleAnalyticsIntegrationCopyWithImpl<$Res>
    implements $GoogleAnalyticsIntegrationCopyWith<$Res> {
  _$GoogleAnalyticsIntegrationCopyWithImpl(this._self, this._then);

  final GoogleAnalyticsIntegration _self;
  final $Res Function(GoogleAnalyticsIntegration) _then;

/// Create a copy of GoogleAnalyticsIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [GoogleAnalyticsIntegration].
extension GoogleAnalyticsIntegrationPatterns on GoogleAnalyticsIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleAnalyticsIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleAnalyticsIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleAnalyticsIntegration value)  $default,){
final _that = this;
switch (_that) {
case _GoogleAnalyticsIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleAnalyticsIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleAnalyticsIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleAnalyticsIntegration() when $default != null:
return $default(_that.id,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _GoogleAnalyticsIntegration():
return $default(_that.id,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _GoogleAnalyticsIntegration() when $default != null:
return $default(_that.id,_that.active,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoogleAnalyticsIntegration extends GoogleAnalyticsIntegration {
  const _GoogleAnalyticsIntegration({this.id = "EMPTY", this.active = false, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _GoogleAnalyticsIntegration.fromJson(Map<String, dynamic> json) => _$GoogleAnalyticsIntegrationFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  bool active;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of GoogleAnalyticsIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleAnalyticsIntegrationCopyWith<_GoogleAnalyticsIntegration> get copyWith => __$GoogleAnalyticsIntegrationCopyWithImpl<_GoogleAnalyticsIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoogleAnalyticsIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleAnalyticsIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'GoogleAnalyticsIntegration(id: $id, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$GoogleAnalyticsIntegrationCopyWith<$Res> implements $GoogleAnalyticsIntegrationCopyWith<$Res> {
  factory _$GoogleAnalyticsIntegrationCopyWith(_GoogleAnalyticsIntegration value, $Res Function(_GoogleAnalyticsIntegration) _then) = __$GoogleAnalyticsIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$GoogleAnalyticsIntegrationCopyWithImpl<$Res>
    implements _$GoogleAnalyticsIntegrationCopyWith<$Res> {
  __$GoogleAnalyticsIntegrationCopyWithImpl(this._self, this._then);

  final _GoogleAnalyticsIntegration _self;
  final $Res Function(_GoogleAnalyticsIntegration) _then;

/// Create a copy of GoogleAnalyticsIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? metadata = null,}) {
  return _then(_GoogleAnalyticsIntegration(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$GoogleTagsIntegration {

 String get key; bool get active; Map<String, dynamic> get metadata;
/// Create a copy of GoogleTagsIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleTagsIntegrationCopyWith<GoogleTagsIntegration> get copyWith => _$GoogleTagsIntegrationCopyWithImpl<GoogleTagsIntegration>(this as GoogleTagsIntegration, _$identity);

  /// Serializes this GoogleTagsIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleTagsIntegration&&(identical(other.key, key) || other.key == key)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,active,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'GoogleTagsIntegration(key: $key, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $GoogleTagsIntegrationCopyWith<$Res>  {
  factory $GoogleTagsIntegrationCopyWith(GoogleTagsIntegration value, $Res Function(GoogleTagsIntegration) _then) = _$GoogleTagsIntegrationCopyWithImpl;
@useResult
$Res call({
 String key, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$GoogleTagsIntegrationCopyWithImpl<$Res>
    implements $GoogleTagsIntegrationCopyWith<$Res> {
  _$GoogleTagsIntegrationCopyWithImpl(this._self, this._then);

  final GoogleTagsIntegration _self;
  final $Res Function(GoogleTagsIntegration) _then;

/// Create a copy of GoogleTagsIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? active = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [GoogleTagsIntegration].
extension GoogleTagsIntegrationPatterns on GoogleTagsIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleTagsIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleTagsIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleTagsIntegration value)  $default,){
final _that = this;
switch (_that) {
case _GoogleTagsIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleTagsIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleTagsIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  bool active,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleTagsIntegration() when $default != null:
return $default(_that.key,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  bool active,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _GoogleTagsIntegration():
return $default(_that.key,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  bool active,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _GoogleTagsIntegration() when $default != null:
return $default(_that.key,_that.active,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoogleTagsIntegration extends GoogleTagsIntegration {
  const _GoogleTagsIntegration({required this.key, this.active = true, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _GoogleTagsIntegration.fromJson(Map<String, dynamic> json) => _$GoogleTagsIntegrationFromJson(json);

@override final  String key;
@override@JsonKey() final  bool active;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of GoogleTagsIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleTagsIntegrationCopyWith<_GoogleTagsIntegration> get copyWith => __$GoogleTagsIntegrationCopyWithImpl<_GoogleTagsIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoogleTagsIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleTagsIntegration&&(identical(other.key, key) || other.key == key)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,active,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'GoogleTagsIntegration(key: $key, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$GoogleTagsIntegrationCopyWith<$Res> implements $GoogleTagsIntegrationCopyWith<$Res> {
  factory _$GoogleTagsIntegrationCopyWith(_GoogleTagsIntegration value, $Res Function(_GoogleTagsIntegration) _then) = __$GoogleTagsIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String key, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$GoogleTagsIntegrationCopyWithImpl<$Res>
    implements _$GoogleTagsIntegrationCopyWith<$Res> {
  __$GoogleTagsIntegrationCopyWithImpl(this._self, this._then);

  final _GoogleTagsIntegration _self;
  final $Res Function(_GoogleTagsIntegration) _then;

/// Create a copy of GoogleTagsIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? active = null,Object? metadata = null,}) {
  return _then(_GoogleTagsIntegration(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$AiIntegration {

 bool get active; String? get apiKey; String get planningModel; String get textModel; String get imageModel; Map<String, dynamic> get metadata;
/// Create a copy of AiIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiIntegrationCopyWith<AiIntegration> get copyWith => _$AiIntegrationCopyWithImpl<AiIntegration>(this as AiIntegration, _$identity);

  /// Serializes this AiIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.planningModel, planningModel) || other.planningModel == planningModel)&&(identical(other.textModel, textModel) || other.textModel == textModel)&&(identical(other.imageModel, imageModel) || other.imageModel == imageModel)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,apiKey,planningModel,textModel,imageModel,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'AiIntegration(active: $active, apiKey: $apiKey, planningModel: $planningModel, textModel: $textModel, imageModel: $imageModel, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $AiIntegrationCopyWith<$Res>  {
  factory $AiIntegrationCopyWith(AiIntegration value, $Res Function(AiIntegration) _then) = _$AiIntegrationCopyWithImpl;
@useResult
$Res call({
 bool active, String? apiKey, String planningModel, String textModel, String imageModel, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$AiIntegrationCopyWithImpl<$Res>
    implements $AiIntegrationCopyWith<$Res> {
  _$AiIntegrationCopyWithImpl(this._self, this._then);

  final AiIntegration _self;
  final $Res Function(AiIntegration) _then;

/// Create a copy of AiIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? apiKey = freezed,Object? planningModel = null,Object? textModel = null,Object? imageModel = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,planningModel: null == planningModel ? _self.planningModel : planningModel // ignore: cast_nullable_to_non_nullable
as String,textModel: null == textModel ? _self.textModel : textModel // ignore: cast_nullable_to_non_nullable
as String,imageModel: null == imageModel ? _self.imageModel : imageModel // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [AiIntegration].
extension AiIntegrationPatterns on AiIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiIntegration value)  $default,){
final _that = this;
switch (_that) {
case _AiIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _AiIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  String? apiKey,  String planningModel,  String textModel,  String imageModel,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiIntegration() when $default != null:
return $default(_that.active,_that.apiKey,_that.planningModel,_that.textModel,_that.imageModel,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  String? apiKey,  String planningModel,  String textModel,  String imageModel,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _AiIntegration():
return $default(_that.active,_that.apiKey,_that.planningModel,_that.textModel,_that.imageModel,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  String? apiKey,  String planningModel,  String textModel,  String imageModel,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _AiIntegration() when $default != null:
return $default(_that.active,_that.apiKey,_that.planningModel,_that.textModel,_that.imageModel,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AiIntegration extends AiIntegration {
  const _AiIntegration({this.active = true, this.apiKey, this.planningModel = 'gemini-3.1-pro-preview', this.textModel = 'gemini-flash-lite-latest', this.imageModel = 'gemini-3.1-flash-image-preview', final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _AiIntegration.fromJson(Map<String, dynamic> json) => _$AiIntegrationFromJson(json);

@override@JsonKey() final  bool active;
@override final  String? apiKey;
@override@JsonKey() final  String planningModel;
@override@JsonKey() final  String textModel;
@override@JsonKey() final  String imageModel;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of AiIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiIntegrationCopyWith<_AiIntegration> get copyWith => __$AiIntegrationCopyWithImpl<_AiIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AiIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.planningModel, planningModel) || other.planningModel == planningModel)&&(identical(other.textModel, textModel) || other.textModel == textModel)&&(identical(other.imageModel, imageModel) || other.imageModel == imageModel)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,apiKey,planningModel,textModel,imageModel,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'AiIntegration(active: $active, apiKey: $apiKey, planningModel: $planningModel, textModel: $textModel, imageModel: $imageModel, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$AiIntegrationCopyWith<$Res> implements $AiIntegrationCopyWith<$Res> {
  factory _$AiIntegrationCopyWith(_AiIntegration value, $Res Function(_AiIntegration) _then) = __$AiIntegrationCopyWithImpl;
@override @useResult
$Res call({
 bool active, String? apiKey, String planningModel, String textModel, String imageModel, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$AiIntegrationCopyWithImpl<$Res>
    implements _$AiIntegrationCopyWith<$Res> {
  __$AiIntegrationCopyWithImpl(this._self, this._then);

  final _AiIntegration _self;
  final $Res Function(_AiIntegration) _then;

/// Create a copy of AiIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? apiKey = freezed,Object? planningModel = null,Object? textModel = null,Object? imageModel = null,Object? metadata = null,}) {
  return _then(_AiIntegration(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,planningModel: null == planningModel ? _self.planningModel : planningModel // ignore: cast_nullable_to_non_nullable
as String,textModel: null == textModel ? _self.textModel : textModel // ignore: cast_nullable_to_non_nullable
as String,imageModel: null == imageModel ? _self.imageModel : imageModel // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$YalidineDeliveryIntegration {

 String get id; String get token; YalidineAgent get agent; bool get active;/// Whether to automatically send orders to Yalidine when order status becomes "sent"
 bool get autoSend; bool get forceFreeShipping; Map<String, dynamic> get metadata;
/// Create a copy of YalidineDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YalidineDeliveryIntegrationCopyWith<YalidineDeliveryIntegration> get copyWith => _$YalidineDeliveryIntegrationCopyWithImpl<YalidineDeliveryIntegration>(this as YalidineDeliveryIntegration, _$identity);

  /// Serializes this YalidineDeliveryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YalidineDeliveryIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.token, token) || other.token == token)&&(identical(other.agent, agent) || other.agent == agent)&&(identical(other.active, active) || other.active == active)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&(identical(other.forceFreeShipping, forceFreeShipping) || other.forceFreeShipping == forceFreeShipping)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,token,agent,active,autoSend,forceFreeShipping,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'YalidineDeliveryIntegration(id: $id, token: $token, agent: $agent, active: $active, autoSend: $autoSend, forceFreeShipping: $forceFreeShipping, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $YalidineDeliveryIntegrationCopyWith<$Res>  {
  factory $YalidineDeliveryIntegrationCopyWith(YalidineDeliveryIntegration value, $Res Function(YalidineDeliveryIntegration) _then) = _$YalidineDeliveryIntegrationCopyWithImpl;
@useResult
$Res call({
 String id, String token, YalidineAgent agent, bool active, bool autoSend, bool forceFreeShipping, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$YalidineDeliveryIntegrationCopyWithImpl<$Res>
    implements $YalidineDeliveryIntegrationCopyWith<$Res> {
  _$YalidineDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final YalidineDeliveryIntegration _self;
  final $Res Function(YalidineDeliveryIntegration) _then;

/// Create a copy of YalidineDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? token = null,Object? agent = null,Object? active = null,Object? autoSend = null,Object? forceFreeShipping = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,agent: null == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as YalidineAgent,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,forceFreeShipping: null == forceFreeShipping ? _self.forceFreeShipping : forceFreeShipping // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [YalidineDeliveryIntegration].
extension YalidineDeliveryIntegrationPatterns on YalidineDeliveryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YalidineDeliveryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YalidineDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YalidineDeliveryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _YalidineDeliveryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YalidineDeliveryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _YalidineDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String token,  YalidineAgent agent,  bool active,  bool autoSend,  bool forceFreeShipping,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YalidineDeliveryIntegration() when $default != null:
return $default(_that.id,_that.token,_that.agent,_that.active,_that.autoSend,_that.forceFreeShipping,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String token,  YalidineAgent agent,  bool active,  bool autoSend,  bool forceFreeShipping,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _YalidineDeliveryIntegration():
return $default(_that.id,_that.token,_that.agent,_that.active,_that.autoSend,_that.forceFreeShipping,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String token,  YalidineAgent agent,  bool active,  bool autoSend,  bool forceFreeShipping,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _YalidineDeliveryIntegration() when $default != null:
return $default(_that.id,_that.token,_that.agent,_that.active,_that.autoSend,_that.forceFreeShipping,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _YalidineDeliveryIntegration extends YalidineDeliveryIntegration {
  const _YalidineDeliveryIntegration({required this.id, required this.token, this.agent = YalidineAgent.yalidine, this.active = true, this.autoSend = false, this.forceFreeShipping = false, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _YalidineDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$YalidineDeliveryIntegrationFromJson(json);

@override final  String id;
@override final  String token;
@override@JsonKey() final  YalidineAgent agent;
@override@JsonKey() final  bool active;
/// Whether to automatically send orders to Yalidine when order status becomes "sent"
@override@JsonKey() final  bool autoSend;
@override@JsonKey() final  bool forceFreeShipping;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of YalidineDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YalidineDeliveryIntegrationCopyWith<_YalidineDeliveryIntegration> get copyWith => __$YalidineDeliveryIntegrationCopyWithImpl<_YalidineDeliveryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YalidineDeliveryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YalidineDeliveryIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.token, token) || other.token == token)&&(identical(other.agent, agent) || other.agent == agent)&&(identical(other.active, active) || other.active == active)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&(identical(other.forceFreeShipping, forceFreeShipping) || other.forceFreeShipping == forceFreeShipping)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,token,agent,active,autoSend,forceFreeShipping,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'YalidineDeliveryIntegration(id: $id, token: $token, agent: $agent, active: $active, autoSend: $autoSend, forceFreeShipping: $forceFreeShipping, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$YalidineDeliveryIntegrationCopyWith<$Res> implements $YalidineDeliveryIntegrationCopyWith<$Res> {
  factory _$YalidineDeliveryIntegrationCopyWith(_YalidineDeliveryIntegration value, $Res Function(_YalidineDeliveryIntegration) _then) = __$YalidineDeliveryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String id, String token, YalidineAgent agent, bool active, bool autoSend, bool forceFreeShipping, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$YalidineDeliveryIntegrationCopyWithImpl<$Res>
    implements _$YalidineDeliveryIntegrationCopyWith<$Res> {
  __$YalidineDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final _YalidineDeliveryIntegration _self;
  final $Res Function(_YalidineDeliveryIntegration) _then;

/// Create a copy of YalidineDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? token = null,Object? agent = null,Object? active = null,Object? autoSend = null,Object? forceFreeShipping = null,Object? metadata = null,}) {
  return _then(_YalidineDeliveryIntegration(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,agent: null == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as YalidineAgent,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,forceFreeShipping: null == forceFreeShipping ? _self.forceFreeShipping : forceFreeShipping // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$EcotrackDeliveryIntegration {

 String get baseUrl; String get token; bool get active; Map<String, dynamic> get metadata;
/// Create a copy of EcotrackDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EcotrackDeliveryIntegrationCopyWith<EcotrackDeliveryIntegration> get copyWith => _$EcotrackDeliveryIntegrationCopyWithImpl<EcotrackDeliveryIntegration>(this as EcotrackDeliveryIntegration, _$identity);

  /// Serializes this EcotrackDeliveryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EcotrackDeliveryIntegration&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.token, token) || other.token == token)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseUrl,token,active,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'EcotrackDeliveryIntegration(baseUrl: $baseUrl, token: $token, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $EcotrackDeliveryIntegrationCopyWith<$Res>  {
  factory $EcotrackDeliveryIntegrationCopyWith(EcotrackDeliveryIntegration value, $Res Function(EcotrackDeliveryIntegration) _then) = _$EcotrackDeliveryIntegrationCopyWithImpl;
@useResult
$Res call({
 String baseUrl, String token, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$EcotrackDeliveryIntegrationCopyWithImpl<$Res>
    implements $EcotrackDeliveryIntegrationCopyWith<$Res> {
  _$EcotrackDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final EcotrackDeliveryIntegration _self;
  final $Res Function(EcotrackDeliveryIntegration) _then;

/// Create a copy of EcotrackDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseUrl = null,Object? token = null,Object? active = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [EcotrackDeliveryIntegration].
extension EcotrackDeliveryIntegrationPatterns on EcotrackDeliveryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EcotrackDeliveryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EcotrackDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EcotrackDeliveryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _EcotrackDeliveryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EcotrackDeliveryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _EcotrackDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String baseUrl,  String token,  bool active,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EcotrackDeliveryIntegration() when $default != null:
return $default(_that.baseUrl,_that.token,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String baseUrl,  String token,  bool active,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _EcotrackDeliveryIntegration():
return $default(_that.baseUrl,_that.token,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String baseUrl,  String token,  bool active,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _EcotrackDeliveryIntegration() when $default != null:
return $default(_that.baseUrl,_that.token,_that.active,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EcotrackDeliveryIntegration extends EcotrackDeliveryIntegration {
  const _EcotrackDeliveryIntegration({required this.baseUrl, required this.token, this.active = true, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _EcotrackDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$EcotrackDeliveryIntegrationFromJson(json);

@override final  String baseUrl;
@override final  String token;
@override@JsonKey() final  bool active;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of EcotrackDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EcotrackDeliveryIntegrationCopyWith<_EcotrackDeliveryIntegration> get copyWith => __$EcotrackDeliveryIntegrationCopyWithImpl<_EcotrackDeliveryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EcotrackDeliveryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EcotrackDeliveryIntegration&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.token, token) || other.token == token)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseUrl,token,active,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'EcotrackDeliveryIntegration(baseUrl: $baseUrl, token: $token, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$EcotrackDeliveryIntegrationCopyWith<$Res> implements $EcotrackDeliveryIntegrationCopyWith<$Res> {
  factory _$EcotrackDeliveryIntegrationCopyWith(_EcotrackDeliveryIntegration value, $Res Function(_EcotrackDeliveryIntegration) _then) = __$EcotrackDeliveryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String baseUrl, String token, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$EcotrackDeliveryIntegrationCopyWithImpl<$Res>
    implements _$EcotrackDeliveryIntegrationCopyWith<$Res> {
  __$EcotrackDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final _EcotrackDeliveryIntegration _self;
  final $Res Function(_EcotrackDeliveryIntegration) _then;

/// Create a copy of EcotrackDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseUrl = null,Object? token = null,Object? active = null,Object? metadata = null,}) {
  return _then(_EcotrackDeliveryIntegration(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$EcomanagerDeliveryIntegration {

 String get baseUrl; String get token; bool get active; bool get autoSend; Map<String, dynamic> get metadata;
/// Create a copy of EcomanagerDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EcomanagerDeliveryIntegrationCopyWith<EcomanagerDeliveryIntegration> get copyWith => _$EcomanagerDeliveryIntegrationCopyWithImpl<EcomanagerDeliveryIntegration>(this as EcomanagerDeliveryIntegration, _$identity);

  /// Serializes this EcomanagerDeliveryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EcomanagerDeliveryIntegration&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.token, token) || other.token == token)&&(identical(other.active, active) || other.active == active)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseUrl,token,active,autoSend,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'EcomanagerDeliveryIntegration(baseUrl: $baseUrl, token: $token, active: $active, autoSend: $autoSend, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $EcomanagerDeliveryIntegrationCopyWith<$Res>  {
  factory $EcomanagerDeliveryIntegrationCopyWith(EcomanagerDeliveryIntegration value, $Res Function(EcomanagerDeliveryIntegration) _then) = _$EcomanagerDeliveryIntegrationCopyWithImpl;
@useResult
$Res call({
 String baseUrl, String token, bool active, bool autoSend, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$EcomanagerDeliveryIntegrationCopyWithImpl<$Res>
    implements $EcomanagerDeliveryIntegrationCopyWith<$Res> {
  _$EcomanagerDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final EcomanagerDeliveryIntegration _self;
  final $Res Function(EcomanagerDeliveryIntegration) _then;

/// Create a copy of EcomanagerDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseUrl = null,Object? token = null,Object? active = null,Object? autoSend = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [EcomanagerDeliveryIntegration].
extension EcomanagerDeliveryIntegrationPatterns on EcomanagerDeliveryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EcomanagerDeliveryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EcomanagerDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EcomanagerDeliveryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _EcomanagerDeliveryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EcomanagerDeliveryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _EcomanagerDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String baseUrl,  String token,  bool active,  bool autoSend,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EcomanagerDeliveryIntegration() when $default != null:
return $default(_that.baseUrl,_that.token,_that.active,_that.autoSend,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String baseUrl,  String token,  bool active,  bool autoSend,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _EcomanagerDeliveryIntegration():
return $default(_that.baseUrl,_that.token,_that.active,_that.autoSend,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String baseUrl,  String token,  bool active,  bool autoSend,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _EcomanagerDeliveryIntegration() when $default != null:
return $default(_that.baseUrl,_that.token,_that.active,_that.autoSend,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EcomanagerDeliveryIntegration extends EcomanagerDeliveryIntegration {
  const _EcomanagerDeliveryIntegration({required this.baseUrl, required this.token, this.active = true, this.autoSend = true, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _EcomanagerDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$EcomanagerDeliveryIntegrationFromJson(json);

@override final  String baseUrl;
@override final  String token;
@override@JsonKey() final  bool active;
@override@JsonKey() final  bool autoSend;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of EcomanagerDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EcomanagerDeliveryIntegrationCopyWith<_EcomanagerDeliveryIntegration> get copyWith => __$EcomanagerDeliveryIntegrationCopyWithImpl<_EcomanagerDeliveryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EcomanagerDeliveryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EcomanagerDeliveryIntegration&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.token, token) || other.token == token)&&(identical(other.active, active) || other.active == active)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseUrl,token,active,autoSend,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'EcomanagerDeliveryIntegration(baseUrl: $baseUrl, token: $token, active: $active, autoSend: $autoSend, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$EcomanagerDeliveryIntegrationCopyWith<$Res> implements $EcomanagerDeliveryIntegrationCopyWith<$Res> {
  factory _$EcomanagerDeliveryIntegrationCopyWith(_EcomanagerDeliveryIntegration value, $Res Function(_EcomanagerDeliveryIntegration) _then) = __$EcomanagerDeliveryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String baseUrl, String token, bool active, bool autoSend, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$EcomanagerDeliveryIntegrationCopyWithImpl<$Res>
    implements _$EcomanagerDeliveryIntegrationCopyWith<$Res> {
  __$EcomanagerDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final _EcomanagerDeliveryIntegration _self;
  final $Res Function(_EcomanagerDeliveryIntegration) _then;

/// Create a copy of EcomanagerDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseUrl = null,Object? token = null,Object? active = null,Object? autoSend = null,Object? metadata = null,}) {
  return _then(_EcomanagerDeliveryIntegration(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$ProcolisDeliveryIntegration {

 String get key; String get token; bool get active; Map<String, dynamic> get metadata;
/// Create a copy of ProcolisDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcolisDeliveryIntegrationCopyWith<ProcolisDeliveryIntegration> get copyWith => _$ProcolisDeliveryIntegrationCopyWithImpl<ProcolisDeliveryIntegration>(this as ProcolisDeliveryIntegration, _$identity);

  /// Serializes this ProcolisDeliveryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcolisDeliveryIntegration&&(identical(other.key, key) || other.key == key)&&(identical(other.token, token) || other.token == token)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,token,active,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ProcolisDeliveryIntegration(key: $key, token: $token, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ProcolisDeliveryIntegrationCopyWith<$Res>  {
  factory $ProcolisDeliveryIntegrationCopyWith(ProcolisDeliveryIntegration value, $Res Function(ProcolisDeliveryIntegration) _then) = _$ProcolisDeliveryIntegrationCopyWithImpl;
@useResult
$Res call({
 String key, String token, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$ProcolisDeliveryIntegrationCopyWithImpl<$Res>
    implements $ProcolisDeliveryIntegrationCopyWith<$Res> {
  _$ProcolisDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final ProcolisDeliveryIntegration _self;
  final $Res Function(ProcolisDeliveryIntegration) _then;

/// Create a copy of ProcolisDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? token = null,Object? active = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProcolisDeliveryIntegration].
extension ProcolisDeliveryIntegrationPatterns on ProcolisDeliveryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProcolisDeliveryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProcolisDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProcolisDeliveryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _ProcolisDeliveryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProcolisDeliveryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _ProcolisDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String token,  bool active,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProcolisDeliveryIntegration() when $default != null:
return $default(_that.key,_that.token,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String token,  bool active,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _ProcolisDeliveryIntegration():
return $default(_that.key,_that.token,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String token,  bool active,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _ProcolisDeliveryIntegration() when $default != null:
return $default(_that.key,_that.token,_that.active,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProcolisDeliveryIntegration extends ProcolisDeliveryIntegration {
  const _ProcolisDeliveryIntegration({required this.key, required this.token, this.active = true, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _ProcolisDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$ProcolisDeliveryIntegrationFromJson(json);

@override final  String key;
@override final  String token;
@override@JsonKey() final  bool active;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of ProcolisDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcolisDeliveryIntegrationCopyWith<_ProcolisDeliveryIntegration> get copyWith => __$ProcolisDeliveryIntegrationCopyWithImpl<_ProcolisDeliveryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProcolisDeliveryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcolisDeliveryIntegration&&(identical(other.key, key) || other.key == key)&&(identical(other.token, token) || other.token == token)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,token,active,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ProcolisDeliveryIntegration(key: $key, token: $token, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ProcolisDeliveryIntegrationCopyWith<$Res> implements $ProcolisDeliveryIntegrationCopyWith<$Res> {
  factory _$ProcolisDeliveryIntegrationCopyWith(_ProcolisDeliveryIntegration value, $Res Function(_ProcolisDeliveryIntegration) _then) = __$ProcolisDeliveryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String key, String token, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$ProcolisDeliveryIntegrationCopyWithImpl<$Res>
    implements _$ProcolisDeliveryIntegrationCopyWith<$Res> {
  __$ProcolisDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final _ProcolisDeliveryIntegration _self;
  final $Res Function(_ProcolisDeliveryIntegration) _then;

/// Create a copy of ProcolisDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? token = null,Object? active = null,Object? metadata = null,}) {
  return _then(_ProcolisDeliveryIntegration(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$NoestDeliveryIntegration {

 String get guid; String get token; bool get active; Map<String, dynamic> get metadata;
/// Create a copy of NoestDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoestDeliveryIntegrationCopyWith<NoestDeliveryIntegration> get copyWith => _$NoestDeliveryIntegrationCopyWithImpl<NoestDeliveryIntegration>(this as NoestDeliveryIntegration, _$identity);

  /// Serializes this NoestDeliveryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoestDeliveryIntegration&&(identical(other.guid, guid) || other.guid == guid)&&(identical(other.token, token) || other.token == token)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,guid,token,active,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'NoestDeliveryIntegration(guid: $guid, token: $token, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $NoestDeliveryIntegrationCopyWith<$Res>  {
  factory $NoestDeliveryIntegrationCopyWith(NoestDeliveryIntegration value, $Res Function(NoestDeliveryIntegration) _then) = _$NoestDeliveryIntegrationCopyWithImpl;
@useResult
$Res call({
 String guid, String token, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$NoestDeliveryIntegrationCopyWithImpl<$Res>
    implements $NoestDeliveryIntegrationCopyWith<$Res> {
  _$NoestDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final NoestDeliveryIntegration _self;
  final $Res Function(NoestDeliveryIntegration) _then;

/// Create a copy of NoestDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? guid = null,Object? token = null,Object? active = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
guid: null == guid ? _self.guid : guid // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [NoestDeliveryIntegration].
extension NoestDeliveryIntegrationPatterns on NoestDeliveryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoestDeliveryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoestDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoestDeliveryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _NoestDeliveryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoestDeliveryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _NoestDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String guid,  String token,  bool active,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoestDeliveryIntegration() when $default != null:
return $default(_that.guid,_that.token,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String guid,  String token,  bool active,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _NoestDeliveryIntegration():
return $default(_that.guid,_that.token,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String guid,  String token,  bool active,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _NoestDeliveryIntegration() when $default != null:
return $default(_that.guid,_that.token,_that.active,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NoestDeliveryIntegration extends NoestDeliveryIntegration {
  const _NoestDeliveryIntegration({required this.guid, required this.token, this.active = true, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _NoestDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$NoestDeliveryIntegrationFromJson(json);

@override final  String guid;
@override final  String token;
@override@JsonKey() final  bool active;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of NoestDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoestDeliveryIntegrationCopyWith<_NoestDeliveryIntegration> get copyWith => __$NoestDeliveryIntegrationCopyWithImpl<_NoestDeliveryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoestDeliveryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoestDeliveryIntegration&&(identical(other.guid, guid) || other.guid == guid)&&(identical(other.token, token) || other.token == token)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,guid,token,active,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'NoestDeliveryIntegration(guid: $guid, token: $token, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$NoestDeliveryIntegrationCopyWith<$Res> implements $NoestDeliveryIntegrationCopyWith<$Res> {
  factory _$NoestDeliveryIntegrationCopyWith(_NoestDeliveryIntegration value, $Res Function(_NoestDeliveryIntegration) _then) = __$NoestDeliveryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String guid, String token, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$NoestDeliveryIntegrationCopyWithImpl<$Res>
    implements _$NoestDeliveryIntegrationCopyWith<$Res> {
  __$NoestDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final _NoestDeliveryIntegration _self;
  final $Res Function(_NoestDeliveryIntegration) _then;

/// Create a copy of NoestDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? guid = null,Object? token = null,Object? active = null,Object? metadata = null,}) {
  return _then(_NoestDeliveryIntegration(
guid: null == guid ? _self.guid : guid // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$OrderdzDeliveryIntegration {

 String? get url; String get token; bool get active; bool get autoSend; Map<String, dynamic> get metadata;
/// Create a copy of OrderdzDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderdzDeliveryIntegrationCopyWith<OrderdzDeliveryIntegration> get copyWith => _$OrderdzDeliveryIntegrationCopyWithImpl<OrderdzDeliveryIntegration>(this as OrderdzDeliveryIntegration, _$identity);

  /// Serializes this OrderdzDeliveryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderdzDeliveryIntegration&&(identical(other.url, url) || other.url == url)&&(identical(other.token, token) || other.token == token)&&(identical(other.active, active) || other.active == active)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,token,active,autoSend,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'OrderdzDeliveryIntegration(url: $url, token: $token, active: $active, autoSend: $autoSend, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $OrderdzDeliveryIntegrationCopyWith<$Res>  {
  factory $OrderdzDeliveryIntegrationCopyWith(OrderdzDeliveryIntegration value, $Res Function(OrderdzDeliveryIntegration) _then) = _$OrderdzDeliveryIntegrationCopyWithImpl;
@useResult
$Res call({
 String? url, String token, bool active, bool autoSend, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$OrderdzDeliveryIntegrationCopyWithImpl<$Res>
    implements $OrderdzDeliveryIntegrationCopyWith<$Res> {
  _$OrderdzDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final OrderdzDeliveryIntegration _self;
  final $Res Function(OrderdzDeliveryIntegration) _then;

/// Create a copy of OrderdzDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,Object? token = null,Object? active = null,Object? autoSend = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderdzDeliveryIntegration].
extension OrderdzDeliveryIntegrationPatterns on OrderdzDeliveryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderdzDeliveryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderdzDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderdzDeliveryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _OrderdzDeliveryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderdzDeliveryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _OrderdzDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? url,  String token,  bool active,  bool autoSend,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderdzDeliveryIntegration() when $default != null:
return $default(_that.url,_that.token,_that.active,_that.autoSend,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? url,  String token,  bool active,  bool autoSend,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _OrderdzDeliveryIntegration():
return $default(_that.url,_that.token,_that.active,_that.autoSend,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? url,  String token,  bool active,  bool autoSend,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _OrderdzDeliveryIntegration() when $default != null:
return $default(_that.url,_that.token,_that.active,_that.autoSend,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderdzDeliveryIntegration extends OrderdzDeliveryIntegration {
  const _OrderdzDeliveryIntegration({this.url, required this.token, this.active = true, this.autoSend = false, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _OrderdzDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$OrderdzDeliveryIntegrationFromJson(json);

@override final  String? url;
@override final  String token;
@override@JsonKey() final  bool active;
@override@JsonKey() final  bool autoSend;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of OrderdzDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderdzDeliveryIntegrationCopyWith<_OrderdzDeliveryIntegration> get copyWith => __$OrderdzDeliveryIntegrationCopyWithImpl<_OrderdzDeliveryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderdzDeliveryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderdzDeliveryIntegration&&(identical(other.url, url) || other.url == url)&&(identical(other.token, token) || other.token == token)&&(identical(other.active, active) || other.active == active)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,token,active,autoSend,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'OrderdzDeliveryIntegration(url: $url, token: $token, active: $active, autoSend: $autoSend, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$OrderdzDeliveryIntegrationCopyWith<$Res> implements $OrderdzDeliveryIntegrationCopyWith<$Res> {
  factory _$OrderdzDeliveryIntegrationCopyWith(_OrderdzDeliveryIntegration value, $Res Function(_OrderdzDeliveryIntegration) _then) = __$OrderdzDeliveryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String? url, String token, bool active, bool autoSend, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$OrderdzDeliveryIntegrationCopyWithImpl<$Res>
    implements _$OrderdzDeliveryIntegrationCopyWith<$Res> {
  __$OrderdzDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final _OrderdzDeliveryIntegration _self;
  final $Res Function(_OrderdzDeliveryIntegration) _then;

/// Create a copy of OrderdzDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,Object? token = null,Object? active = null,Object? autoSend = null,Object? metadata = null,}) {
  return _then(_OrderdzDeliveryIntegration(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$ZimouExpressDeliveryIntegration {

 String get id; String get apiKey; bool get active; bool get silentMode; bool get autoSend; Map<String, dynamic> get metadata;
/// Create a copy of ZimouExpressDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZimouExpressDeliveryIntegrationCopyWith<ZimouExpressDeliveryIntegration> get copyWith => _$ZimouExpressDeliveryIntegrationCopyWithImpl<ZimouExpressDeliveryIntegration>(this as ZimouExpressDeliveryIntegration, _$identity);

  /// Serializes this ZimouExpressDeliveryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZimouExpressDeliveryIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.active, active) || other.active == active)&&(identical(other.silentMode, silentMode) || other.silentMode == silentMode)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,apiKey,active,silentMode,autoSend,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ZimouExpressDeliveryIntegration(id: $id, apiKey: $apiKey, active: $active, silentMode: $silentMode, autoSend: $autoSend, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ZimouExpressDeliveryIntegrationCopyWith<$Res>  {
  factory $ZimouExpressDeliveryIntegrationCopyWith(ZimouExpressDeliveryIntegration value, $Res Function(ZimouExpressDeliveryIntegration) _then) = _$ZimouExpressDeliveryIntegrationCopyWithImpl;
@useResult
$Res call({
 String id, String apiKey, bool active, bool silentMode, bool autoSend, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$ZimouExpressDeliveryIntegrationCopyWithImpl<$Res>
    implements $ZimouExpressDeliveryIntegrationCopyWith<$Res> {
  _$ZimouExpressDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final ZimouExpressDeliveryIntegration _self;
  final $Res Function(ZimouExpressDeliveryIntegration) _then;

/// Create a copy of ZimouExpressDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? apiKey = null,Object? active = null,Object? silentMode = null,Object? autoSend = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,silentMode: null == silentMode ? _self.silentMode : silentMode // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ZimouExpressDeliveryIntegration].
extension ZimouExpressDeliveryIntegrationPatterns on ZimouExpressDeliveryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZimouExpressDeliveryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZimouExpressDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZimouExpressDeliveryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _ZimouExpressDeliveryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZimouExpressDeliveryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _ZimouExpressDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String apiKey,  bool active,  bool silentMode,  bool autoSend,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZimouExpressDeliveryIntegration() when $default != null:
return $default(_that.id,_that.apiKey,_that.active,_that.silentMode,_that.autoSend,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String apiKey,  bool active,  bool silentMode,  bool autoSend,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _ZimouExpressDeliveryIntegration():
return $default(_that.id,_that.apiKey,_that.active,_that.silentMode,_that.autoSend,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String apiKey,  bool active,  bool silentMode,  bool autoSend,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _ZimouExpressDeliveryIntegration() when $default != null:
return $default(_that.id,_that.apiKey,_that.active,_that.silentMode,_that.autoSend,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZimouExpressDeliveryIntegration extends ZimouExpressDeliveryIntegration {
  const _ZimouExpressDeliveryIntegration({required this.id, required this.apiKey, this.active = true, this.silentMode = false, this.autoSend = false, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _ZimouExpressDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$ZimouExpressDeliveryIntegrationFromJson(json);

@override final  String id;
@override final  String apiKey;
@override@JsonKey() final  bool active;
@override@JsonKey() final  bool silentMode;
@override@JsonKey() final  bool autoSend;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of ZimouExpressDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZimouExpressDeliveryIntegrationCopyWith<_ZimouExpressDeliveryIntegration> get copyWith => __$ZimouExpressDeliveryIntegrationCopyWithImpl<_ZimouExpressDeliveryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZimouExpressDeliveryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZimouExpressDeliveryIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.active, active) || other.active == active)&&(identical(other.silentMode, silentMode) || other.silentMode == silentMode)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,apiKey,active,silentMode,autoSend,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ZimouExpressDeliveryIntegration(id: $id, apiKey: $apiKey, active: $active, silentMode: $silentMode, autoSend: $autoSend, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ZimouExpressDeliveryIntegrationCopyWith<$Res> implements $ZimouExpressDeliveryIntegrationCopyWith<$Res> {
  factory _$ZimouExpressDeliveryIntegrationCopyWith(_ZimouExpressDeliveryIntegration value, $Res Function(_ZimouExpressDeliveryIntegration) _then) = __$ZimouExpressDeliveryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String id, String apiKey, bool active, bool silentMode, bool autoSend, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$ZimouExpressDeliveryIntegrationCopyWithImpl<$Res>
    implements _$ZimouExpressDeliveryIntegrationCopyWith<$Res> {
  __$ZimouExpressDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final _ZimouExpressDeliveryIntegration _self;
  final $Res Function(_ZimouExpressDeliveryIntegration) _then;

/// Create a copy of ZimouExpressDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? apiKey = null,Object? active = null,Object? silentMode = null,Object? autoSend = null,Object? metadata = null,}) {
  return _then(_ZimouExpressDeliveryIntegration(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,silentMode: null == silentMode ? _self.silentMode : silentMode // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$ZrexpressDeliveryIntegration {

 String get id;/// API key for ZR Express (x-api-key header)
 String get apiKey;/// Tenant UUID for ZR Express (x-tenant header)
 String get tenantId;/// Webhook signing secret for Svix webhook verification (optional)
 String? get webhookSecret; bool get active; bool get silentMode; bool get autoSend; Map<String, dynamic> get metadata;
/// Create a copy of ZrexpressDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZrexpressDeliveryIntegrationCopyWith<ZrexpressDeliveryIntegration> get copyWith => _$ZrexpressDeliveryIntegrationCopyWithImpl<ZrexpressDeliveryIntegration>(this as ZrexpressDeliveryIntegration, _$identity);

  /// Serializes this ZrexpressDeliveryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZrexpressDeliveryIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.webhookSecret, webhookSecret) || other.webhookSecret == webhookSecret)&&(identical(other.active, active) || other.active == active)&&(identical(other.silentMode, silentMode) || other.silentMode == silentMode)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,apiKey,tenantId,webhookSecret,active,silentMode,autoSend,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ZrexpressDeliveryIntegration(id: $id, apiKey: $apiKey, tenantId: $tenantId, webhookSecret: $webhookSecret, active: $active, silentMode: $silentMode, autoSend: $autoSend, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ZrexpressDeliveryIntegrationCopyWith<$Res>  {
  factory $ZrexpressDeliveryIntegrationCopyWith(ZrexpressDeliveryIntegration value, $Res Function(ZrexpressDeliveryIntegration) _then) = _$ZrexpressDeliveryIntegrationCopyWithImpl;
@useResult
$Res call({
 String id, String apiKey, String tenantId, String? webhookSecret, bool active, bool silentMode, bool autoSend, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$ZrexpressDeliveryIntegrationCopyWithImpl<$Res>
    implements $ZrexpressDeliveryIntegrationCopyWith<$Res> {
  _$ZrexpressDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final ZrexpressDeliveryIntegration _self;
  final $Res Function(ZrexpressDeliveryIntegration) _then;

/// Create a copy of ZrexpressDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? apiKey = null,Object? tenantId = null,Object? webhookSecret = freezed,Object? active = null,Object? silentMode = null,Object? autoSend = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,tenantId: null == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as String,webhookSecret: freezed == webhookSecret ? _self.webhookSecret : webhookSecret // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,silentMode: null == silentMode ? _self.silentMode : silentMode // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ZrexpressDeliveryIntegration].
extension ZrexpressDeliveryIntegrationPatterns on ZrexpressDeliveryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZrexpressDeliveryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZrexpressDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZrexpressDeliveryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _ZrexpressDeliveryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZrexpressDeliveryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _ZrexpressDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String apiKey,  String tenantId,  String? webhookSecret,  bool active,  bool silentMode,  bool autoSend,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZrexpressDeliveryIntegration() when $default != null:
return $default(_that.id,_that.apiKey,_that.tenantId,_that.webhookSecret,_that.active,_that.silentMode,_that.autoSend,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String apiKey,  String tenantId,  String? webhookSecret,  bool active,  bool silentMode,  bool autoSend,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _ZrexpressDeliveryIntegration():
return $default(_that.id,_that.apiKey,_that.tenantId,_that.webhookSecret,_that.active,_that.silentMode,_that.autoSend,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String apiKey,  String tenantId,  String? webhookSecret,  bool active,  bool silentMode,  bool autoSend,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _ZrexpressDeliveryIntegration() when $default != null:
return $default(_that.id,_that.apiKey,_that.tenantId,_that.webhookSecret,_that.active,_that.silentMode,_that.autoSend,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZrexpressDeliveryIntegration extends ZrexpressDeliveryIntegration {
  const _ZrexpressDeliveryIntegration({required this.id, required this.apiKey, required this.tenantId, this.webhookSecret, this.active = true, this.silentMode = false, this.autoSend = false, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _ZrexpressDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$ZrexpressDeliveryIntegrationFromJson(json);

@override final  String id;
/// API key for ZR Express (x-api-key header)
@override final  String apiKey;
/// Tenant UUID for ZR Express (x-tenant header)
@override final  String tenantId;
/// Webhook signing secret for Svix webhook verification (optional)
@override final  String? webhookSecret;
@override@JsonKey() final  bool active;
@override@JsonKey() final  bool silentMode;
@override@JsonKey() final  bool autoSend;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of ZrexpressDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZrexpressDeliveryIntegrationCopyWith<_ZrexpressDeliveryIntegration> get copyWith => __$ZrexpressDeliveryIntegrationCopyWithImpl<_ZrexpressDeliveryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZrexpressDeliveryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZrexpressDeliveryIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.webhookSecret, webhookSecret) || other.webhookSecret == webhookSecret)&&(identical(other.active, active) || other.active == active)&&(identical(other.silentMode, silentMode) || other.silentMode == silentMode)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,apiKey,tenantId,webhookSecret,active,silentMode,autoSend,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ZrexpressDeliveryIntegration(id: $id, apiKey: $apiKey, tenantId: $tenantId, webhookSecret: $webhookSecret, active: $active, silentMode: $silentMode, autoSend: $autoSend, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ZrexpressDeliveryIntegrationCopyWith<$Res> implements $ZrexpressDeliveryIntegrationCopyWith<$Res> {
  factory _$ZrexpressDeliveryIntegrationCopyWith(_ZrexpressDeliveryIntegration value, $Res Function(_ZrexpressDeliveryIntegration) _then) = __$ZrexpressDeliveryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String id, String apiKey, String tenantId, String? webhookSecret, bool active, bool silentMode, bool autoSend, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$ZrexpressDeliveryIntegrationCopyWithImpl<$Res>
    implements _$ZrexpressDeliveryIntegrationCopyWith<$Res> {
  __$ZrexpressDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final _ZrexpressDeliveryIntegration _self;
  final $Res Function(_ZrexpressDeliveryIntegration) _then;

/// Create a copy of ZrexpressDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? apiKey = null,Object? tenantId = null,Object? webhookSecret = freezed,Object? active = null,Object? silentMode = null,Object? autoSend = null,Object? metadata = null,}) {
  return _then(_ZrexpressDeliveryIntegration(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,tenantId: null == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as String,webhookSecret: freezed == webhookSecret ? _self.webhookSecret : webhookSecret // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,silentMode: null == silentMode ? _self.silentMode : silentMode // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$MaystroDeliveryIntegration {

 String get token; String? get baseUrl; String? get webhookSecret; bool get active; bool get autoSend; Map<String, dynamic> get metadata;
/// Create a copy of MaystroDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaystroDeliveryIntegrationCopyWith<MaystroDeliveryIntegration> get copyWith => _$MaystroDeliveryIntegrationCopyWithImpl<MaystroDeliveryIntegration>(this as MaystroDeliveryIntegration, _$identity);

  /// Serializes this MaystroDeliveryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaystroDeliveryIntegration&&(identical(other.token, token) || other.token == token)&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.webhookSecret, webhookSecret) || other.webhookSecret == webhookSecret)&&(identical(other.active, active) || other.active == active)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,baseUrl,webhookSecret,active,autoSend,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'MaystroDeliveryIntegration(token: $token, baseUrl: $baseUrl, webhookSecret: $webhookSecret, active: $active, autoSend: $autoSend, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $MaystroDeliveryIntegrationCopyWith<$Res>  {
  factory $MaystroDeliveryIntegrationCopyWith(MaystroDeliveryIntegration value, $Res Function(MaystroDeliveryIntegration) _then) = _$MaystroDeliveryIntegrationCopyWithImpl;
@useResult
$Res call({
 String token, String? baseUrl, String? webhookSecret, bool active, bool autoSend, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$MaystroDeliveryIntegrationCopyWithImpl<$Res>
    implements $MaystroDeliveryIntegrationCopyWith<$Res> {
  _$MaystroDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final MaystroDeliveryIntegration _self;
  final $Res Function(MaystroDeliveryIntegration) _then;

/// Create a copy of MaystroDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? baseUrl = freezed,Object? webhookSecret = freezed,Object? active = null,Object? autoSend = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,baseUrl: freezed == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String?,webhookSecret: freezed == webhookSecret ? _self.webhookSecret : webhookSecret // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [MaystroDeliveryIntegration].
extension MaystroDeliveryIntegrationPatterns on MaystroDeliveryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaystroDeliveryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaystroDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaystroDeliveryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _MaystroDeliveryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaystroDeliveryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _MaystroDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  String? baseUrl,  String? webhookSecret,  bool active,  bool autoSend,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaystroDeliveryIntegration() when $default != null:
return $default(_that.token,_that.baseUrl,_that.webhookSecret,_that.active,_that.autoSend,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  String? baseUrl,  String? webhookSecret,  bool active,  bool autoSend,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _MaystroDeliveryIntegration():
return $default(_that.token,_that.baseUrl,_that.webhookSecret,_that.active,_that.autoSend,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  String? baseUrl,  String? webhookSecret,  bool active,  bool autoSend,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _MaystroDeliveryIntegration() when $default != null:
return $default(_that.token,_that.baseUrl,_that.webhookSecret,_that.active,_that.autoSend,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaystroDeliveryIntegration extends MaystroDeliveryIntegration {
  const _MaystroDeliveryIntegration({required this.token, this.baseUrl, this.webhookSecret, this.active = true, this.autoSend = false, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _MaystroDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$MaystroDeliveryIntegrationFromJson(json);

@override final  String token;
@override final  String? baseUrl;
@override final  String? webhookSecret;
@override@JsonKey() final  bool active;
@override@JsonKey() final  bool autoSend;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of MaystroDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaystroDeliveryIntegrationCopyWith<_MaystroDeliveryIntegration> get copyWith => __$MaystroDeliveryIntegrationCopyWithImpl<_MaystroDeliveryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaystroDeliveryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaystroDeliveryIntegration&&(identical(other.token, token) || other.token == token)&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.webhookSecret, webhookSecret) || other.webhookSecret == webhookSecret)&&(identical(other.active, active) || other.active == active)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,baseUrl,webhookSecret,active,autoSend,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'MaystroDeliveryIntegration(token: $token, baseUrl: $baseUrl, webhookSecret: $webhookSecret, active: $active, autoSend: $autoSend, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$MaystroDeliveryIntegrationCopyWith<$Res> implements $MaystroDeliveryIntegrationCopyWith<$Res> {
  factory _$MaystroDeliveryIntegrationCopyWith(_MaystroDeliveryIntegration value, $Res Function(_MaystroDeliveryIntegration) _then) = __$MaystroDeliveryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String token, String? baseUrl, String? webhookSecret, bool active, bool autoSend, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$MaystroDeliveryIntegrationCopyWithImpl<$Res>
    implements _$MaystroDeliveryIntegrationCopyWith<$Res> {
  __$MaystroDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final _MaystroDeliveryIntegration _self;
  final $Res Function(_MaystroDeliveryIntegration) _then;

/// Create a copy of MaystroDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? baseUrl = freezed,Object? webhookSecret = freezed,Object? active = null,Object? autoSend = null,Object? metadata = null,}) {
  return _then(_MaystroDeliveryIntegration(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,baseUrl: freezed == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String?,webhookSecret: freezed == webhookSecret ? _self.webhookSecret : webhookSecret // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$SecurityIntegration {

 String? get key; bool get active; int? get ordersRateLimit; int? get ordersRateLimitDuration; bool? get hideProducts; SecurityIntegrationOrdersProtection? get orders; Map<String, dynamic> get metadata;
/// Create a copy of SecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityIntegrationCopyWith<SecurityIntegration> get copyWith => _$SecurityIntegrationCopyWithImpl<SecurityIntegration>(this as SecurityIntegration, _$identity);

  /// Serializes this SecurityIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityIntegration&&(identical(other.key, key) || other.key == key)&&(identical(other.active, active) || other.active == active)&&(identical(other.ordersRateLimit, ordersRateLimit) || other.ordersRateLimit == ordersRateLimit)&&(identical(other.ordersRateLimitDuration, ordersRateLimitDuration) || other.ordersRateLimitDuration == ordersRateLimitDuration)&&(identical(other.hideProducts, hideProducts) || other.hideProducts == hideProducts)&&(identical(other.orders, orders) || other.orders == orders)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,active,ordersRateLimit,ordersRateLimitDuration,hideProducts,orders,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'SecurityIntegration(key: $key, active: $active, ordersRateLimit: $ordersRateLimit, ordersRateLimitDuration: $ordersRateLimitDuration, hideProducts: $hideProducts, orders: $orders, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $SecurityIntegrationCopyWith<$Res>  {
  factory $SecurityIntegrationCopyWith(SecurityIntegration value, $Res Function(SecurityIntegration) _then) = _$SecurityIntegrationCopyWithImpl;
@useResult
$Res call({
 String? key, bool active, int? ordersRateLimit, int? ordersRateLimitDuration, bool? hideProducts, SecurityIntegrationOrdersProtection? orders, Map<String, dynamic> metadata
});


$SecurityIntegrationOrdersProtectionCopyWith<$Res>? get orders;

}
/// @nodoc
class _$SecurityIntegrationCopyWithImpl<$Res>
    implements $SecurityIntegrationCopyWith<$Res> {
  _$SecurityIntegrationCopyWithImpl(this._self, this._then);

  final SecurityIntegration _self;
  final $Res Function(SecurityIntegration) _then;

/// Create a copy of SecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = freezed,Object? active = null,Object? ordersRateLimit = freezed,Object? ordersRateLimitDuration = freezed,Object? hideProducts = freezed,Object? orders = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,ordersRateLimit: freezed == ordersRateLimit ? _self.ordersRateLimit : ordersRateLimit // ignore: cast_nullable_to_non_nullable
as int?,ordersRateLimitDuration: freezed == ordersRateLimitDuration ? _self.ordersRateLimitDuration : ordersRateLimitDuration // ignore: cast_nullable_to_non_nullable
as int?,hideProducts: freezed == hideProducts ? _self.hideProducts : hideProducts // ignore: cast_nullable_to_non_nullable
as bool?,orders: freezed == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as SecurityIntegrationOrdersProtection?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of SecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityIntegrationOrdersProtectionCopyWith<$Res>? get orders {
    if (_self.orders == null) {
    return null;
  }

  return $SecurityIntegrationOrdersProtectionCopyWith<$Res>(_self.orders!, (value) {
    return _then(_self.copyWith(orders: value));
  });
}
}


/// Adds pattern-matching-related methods to [SecurityIntegration].
extension SecurityIntegrationPatterns on SecurityIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityIntegration value)  $default,){
final _that = this;
switch (_that) {
case _SecurityIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? key,  bool active,  int? ordersRateLimit,  int? ordersRateLimitDuration,  bool? hideProducts,  SecurityIntegrationOrdersProtection? orders,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityIntegration() when $default != null:
return $default(_that.key,_that.active,_that.ordersRateLimit,_that.ordersRateLimitDuration,_that.hideProducts,_that.orders,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? key,  bool active,  int? ordersRateLimit,  int? ordersRateLimitDuration,  bool? hideProducts,  SecurityIntegrationOrdersProtection? orders,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _SecurityIntegration():
return $default(_that.key,_that.active,_that.ordersRateLimit,_that.ordersRateLimitDuration,_that.hideProducts,_that.orders,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? key,  bool active,  int? ordersRateLimit,  int? ordersRateLimitDuration,  bool? hideProducts,  SecurityIntegrationOrdersProtection? orders,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _SecurityIntegration() when $default != null:
return $default(_that.key,_that.active,_that.ordersRateLimit,_that.ordersRateLimitDuration,_that.hideProducts,_that.orders,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityIntegration extends SecurityIntegration {
  const _SecurityIntegration({this.key, this.active = true, this.ordersRateLimit, this.ordersRateLimitDuration, this.hideProducts, this.orders, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _SecurityIntegration.fromJson(Map<String, dynamic> json) => _$SecurityIntegrationFromJson(json);

@override final  String? key;
@override@JsonKey() final  bool active;
@override final  int? ordersRateLimit;
@override final  int? ordersRateLimitDuration;
@override final  bool? hideProducts;
@override final  SecurityIntegrationOrdersProtection? orders;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of SecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityIntegrationCopyWith<_SecurityIntegration> get copyWith => __$SecurityIntegrationCopyWithImpl<_SecurityIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecurityIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityIntegration&&(identical(other.key, key) || other.key == key)&&(identical(other.active, active) || other.active == active)&&(identical(other.ordersRateLimit, ordersRateLimit) || other.ordersRateLimit == ordersRateLimit)&&(identical(other.ordersRateLimitDuration, ordersRateLimitDuration) || other.ordersRateLimitDuration == ordersRateLimitDuration)&&(identical(other.hideProducts, hideProducts) || other.hideProducts == hideProducts)&&(identical(other.orders, orders) || other.orders == orders)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,active,ordersRateLimit,ordersRateLimitDuration,hideProducts,orders,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'SecurityIntegration(key: $key, active: $active, ordersRateLimit: $ordersRateLimit, ordersRateLimitDuration: $ordersRateLimitDuration, hideProducts: $hideProducts, orders: $orders, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$SecurityIntegrationCopyWith<$Res> implements $SecurityIntegrationCopyWith<$Res> {
  factory _$SecurityIntegrationCopyWith(_SecurityIntegration value, $Res Function(_SecurityIntegration) _then) = __$SecurityIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String? key, bool active, int? ordersRateLimit, int? ordersRateLimitDuration, bool? hideProducts, SecurityIntegrationOrdersProtection? orders, Map<String, dynamic> metadata
});


@override $SecurityIntegrationOrdersProtectionCopyWith<$Res>? get orders;

}
/// @nodoc
class __$SecurityIntegrationCopyWithImpl<$Res>
    implements _$SecurityIntegrationCopyWith<$Res> {
  __$SecurityIntegrationCopyWithImpl(this._self, this._then);

  final _SecurityIntegration _self;
  final $Res Function(_SecurityIntegration) _then;

/// Create a copy of SecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = freezed,Object? active = null,Object? ordersRateLimit = freezed,Object? ordersRateLimitDuration = freezed,Object? hideProducts = freezed,Object? orders = freezed,Object? metadata = null,}) {
  return _then(_SecurityIntegration(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,ordersRateLimit: freezed == ordersRateLimit ? _self.ordersRateLimit : ordersRateLimit // ignore: cast_nullable_to_non_nullable
as int?,ordersRateLimitDuration: freezed == ordersRateLimitDuration ? _self.ordersRateLimitDuration : ordersRateLimitDuration // ignore: cast_nullable_to_non_nullable
as int?,hideProducts: freezed == hideProducts ? _self.hideProducts : hideProducts // ignore: cast_nullable_to_non_nullable
as bool?,orders: freezed == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as SecurityIntegrationOrdersProtection?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of SecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityIntegrationOrdersProtectionCopyWith<$Res>? get orders {
    if (_self.orders == null) {
    return null;
  }

  return $SecurityIntegrationOrdersProtectionCopyWith<$Res>(_self.orders!, (value) {
    return _then(_self.copyWith(orders: value));
  });
}
}


/// @nodoc
mixin _$SecurityIntegrationOrdersProtection {

 SecurityIntegrationFrontendProtection? get frontend; SecurityIntegrationBackendProtection? get backend;
/// Create a copy of SecurityIntegrationOrdersProtection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityIntegrationOrdersProtectionCopyWith<SecurityIntegrationOrdersProtection> get copyWith => _$SecurityIntegrationOrdersProtectionCopyWithImpl<SecurityIntegrationOrdersProtection>(this as SecurityIntegrationOrdersProtection, _$identity);

  /// Serializes this SecurityIntegrationOrdersProtection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityIntegrationOrdersProtection&&(identical(other.frontend, frontend) || other.frontend == frontend)&&(identical(other.backend, backend) || other.backend == backend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontend,backend);

@override
String toString() {
  return 'SecurityIntegrationOrdersProtection(frontend: $frontend, backend: $backend)';
}


}

/// @nodoc
abstract mixin class $SecurityIntegrationOrdersProtectionCopyWith<$Res>  {
  factory $SecurityIntegrationOrdersProtectionCopyWith(SecurityIntegrationOrdersProtection value, $Res Function(SecurityIntegrationOrdersProtection) _then) = _$SecurityIntegrationOrdersProtectionCopyWithImpl;
@useResult
$Res call({
 SecurityIntegrationFrontendProtection? frontend, SecurityIntegrationBackendProtection? backend
});


$SecurityIntegrationFrontendProtectionCopyWith<$Res>? get frontend;$SecurityIntegrationBackendProtectionCopyWith<$Res>? get backend;

}
/// @nodoc
class _$SecurityIntegrationOrdersProtectionCopyWithImpl<$Res>
    implements $SecurityIntegrationOrdersProtectionCopyWith<$Res> {
  _$SecurityIntegrationOrdersProtectionCopyWithImpl(this._self, this._then);

  final SecurityIntegrationOrdersProtection _self;
  final $Res Function(SecurityIntegrationOrdersProtection) _then;

/// Create a copy of SecurityIntegrationOrdersProtection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontend = freezed,Object? backend = freezed,}) {
  return _then(_self.copyWith(
frontend: freezed == frontend ? _self.frontend : frontend // ignore: cast_nullable_to_non_nullable
as SecurityIntegrationFrontendProtection?,backend: freezed == backend ? _self.backend : backend // ignore: cast_nullable_to_non_nullable
as SecurityIntegrationBackendProtection?,
  ));
}
/// Create a copy of SecurityIntegrationOrdersProtection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityIntegrationFrontendProtectionCopyWith<$Res>? get frontend {
    if (_self.frontend == null) {
    return null;
  }

  return $SecurityIntegrationFrontendProtectionCopyWith<$Res>(_self.frontend!, (value) {
    return _then(_self.copyWith(frontend: value));
  });
}/// Create a copy of SecurityIntegrationOrdersProtection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityIntegrationBackendProtectionCopyWith<$Res>? get backend {
    if (_self.backend == null) {
    return null;
  }

  return $SecurityIntegrationBackendProtectionCopyWith<$Res>(_self.backend!, (value) {
    return _then(_self.copyWith(backend: value));
  });
}
}


/// Adds pattern-matching-related methods to [SecurityIntegrationOrdersProtection].
extension SecurityIntegrationOrdersProtectionPatterns on SecurityIntegrationOrdersProtection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityIntegrationOrdersProtection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityIntegrationOrdersProtection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityIntegrationOrdersProtection value)  $default,){
final _that = this;
switch (_that) {
case _SecurityIntegrationOrdersProtection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityIntegrationOrdersProtection value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityIntegrationOrdersProtection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SecurityIntegrationFrontendProtection? frontend,  SecurityIntegrationBackendProtection? backend)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityIntegrationOrdersProtection() when $default != null:
return $default(_that.frontend,_that.backend);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SecurityIntegrationFrontendProtection? frontend,  SecurityIntegrationBackendProtection? backend)  $default,) {final _that = this;
switch (_that) {
case _SecurityIntegrationOrdersProtection():
return $default(_that.frontend,_that.backend);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SecurityIntegrationFrontendProtection? frontend,  SecurityIntegrationBackendProtection? backend)?  $default,) {final _that = this;
switch (_that) {
case _SecurityIntegrationOrdersProtection() when $default != null:
return $default(_that.frontend,_that.backend);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityIntegrationOrdersProtection implements SecurityIntegrationOrdersProtection {
  const _SecurityIntegrationOrdersProtection({this.frontend, this.backend});
  factory _SecurityIntegrationOrdersProtection.fromJson(Map<String, dynamic> json) => _$SecurityIntegrationOrdersProtectionFromJson(json);

@override final  SecurityIntegrationFrontendProtection? frontend;
@override final  SecurityIntegrationBackendProtection? backend;

/// Create a copy of SecurityIntegrationOrdersProtection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityIntegrationOrdersProtectionCopyWith<_SecurityIntegrationOrdersProtection> get copyWith => __$SecurityIntegrationOrdersProtectionCopyWithImpl<_SecurityIntegrationOrdersProtection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecurityIntegrationOrdersProtectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityIntegrationOrdersProtection&&(identical(other.frontend, frontend) || other.frontend == frontend)&&(identical(other.backend, backend) || other.backend == backend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontend,backend);

@override
String toString() {
  return 'SecurityIntegrationOrdersProtection(frontend: $frontend, backend: $backend)';
}


}

/// @nodoc
abstract mixin class _$SecurityIntegrationOrdersProtectionCopyWith<$Res> implements $SecurityIntegrationOrdersProtectionCopyWith<$Res> {
  factory _$SecurityIntegrationOrdersProtectionCopyWith(_SecurityIntegrationOrdersProtection value, $Res Function(_SecurityIntegrationOrdersProtection) _then) = __$SecurityIntegrationOrdersProtectionCopyWithImpl;
@override @useResult
$Res call({
 SecurityIntegrationFrontendProtection? frontend, SecurityIntegrationBackendProtection? backend
});


@override $SecurityIntegrationFrontendProtectionCopyWith<$Res>? get frontend;@override $SecurityIntegrationBackendProtectionCopyWith<$Res>? get backend;

}
/// @nodoc
class __$SecurityIntegrationOrdersProtectionCopyWithImpl<$Res>
    implements _$SecurityIntegrationOrdersProtectionCopyWith<$Res> {
  __$SecurityIntegrationOrdersProtectionCopyWithImpl(this._self, this._then);

  final _SecurityIntegrationOrdersProtection _self;
  final $Res Function(_SecurityIntegrationOrdersProtection) _then;

/// Create a copy of SecurityIntegrationOrdersProtection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontend = freezed,Object? backend = freezed,}) {
  return _then(_SecurityIntegrationOrdersProtection(
frontend: freezed == frontend ? _self.frontend : frontend // ignore: cast_nullable_to_non_nullable
as SecurityIntegrationFrontendProtection?,backend: freezed == backend ? _self.backend : backend // ignore: cast_nullable_to_non_nullable
as SecurityIntegrationBackendProtection?,
  ));
}

/// Create a copy of SecurityIntegrationOrdersProtection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityIntegrationFrontendProtectionCopyWith<$Res>? get frontend {
    if (_self.frontend == null) {
    return null;
  }

  return $SecurityIntegrationFrontendProtectionCopyWith<$Res>(_self.frontend!, (value) {
    return _then(_self.copyWith(frontend: value));
  });
}/// Create a copy of SecurityIntegrationOrdersProtection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityIntegrationBackendProtectionCopyWith<$Res>? get backend {
    if (_self.backend == null) {
    return null;
  }

  return $SecurityIntegrationBackendProtectionCopyWith<$Res>(_self.backend!, (value) {
    return _then(_self.copyWith(backend: value));
  });
}
}


/// @nodoc
mixin _$SecurityIntegrationFrontendProtection {

 bool get active;
/// Create a copy of SecurityIntegrationFrontendProtection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityIntegrationFrontendProtectionCopyWith<SecurityIntegrationFrontendProtection> get copyWith => _$SecurityIntegrationFrontendProtectionCopyWithImpl<SecurityIntegrationFrontendProtection>(this as SecurityIntegrationFrontendProtection, _$identity);

  /// Serializes this SecurityIntegrationFrontendProtection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityIntegrationFrontendProtection&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active);

@override
String toString() {
  return 'SecurityIntegrationFrontendProtection(active: $active)';
}


}

/// @nodoc
abstract mixin class $SecurityIntegrationFrontendProtectionCopyWith<$Res>  {
  factory $SecurityIntegrationFrontendProtectionCopyWith(SecurityIntegrationFrontendProtection value, $Res Function(SecurityIntegrationFrontendProtection) _then) = _$SecurityIntegrationFrontendProtectionCopyWithImpl;
@useResult
$Res call({
 bool active
});




}
/// @nodoc
class _$SecurityIntegrationFrontendProtectionCopyWithImpl<$Res>
    implements $SecurityIntegrationFrontendProtectionCopyWith<$Res> {
  _$SecurityIntegrationFrontendProtectionCopyWithImpl(this._self, this._then);

  final SecurityIntegrationFrontendProtection _self;
  final $Res Function(SecurityIntegrationFrontendProtection) _then;

/// Create a copy of SecurityIntegrationFrontendProtection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SecurityIntegrationFrontendProtection].
extension SecurityIntegrationFrontendProtectionPatterns on SecurityIntegrationFrontendProtection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityIntegrationFrontendProtection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityIntegrationFrontendProtection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityIntegrationFrontendProtection value)  $default,){
final _that = this;
switch (_that) {
case _SecurityIntegrationFrontendProtection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityIntegrationFrontendProtection value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityIntegrationFrontendProtection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityIntegrationFrontendProtection() when $default != null:
return $default(_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active)  $default,) {final _that = this;
switch (_that) {
case _SecurityIntegrationFrontendProtection():
return $default(_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active)?  $default,) {final _that = this;
switch (_that) {
case _SecurityIntegrationFrontendProtection() when $default != null:
return $default(_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityIntegrationFrontendProtection implements SecurityIntegrationFrontendProtection {
  const _SecurityIntegrationFrontendProtection({this.active = false});
  factory _SecurityIntegrationFrontendProtection.fromJson(Map<String, dynamic> json) => _$SecurityIntegrationFrontendProtectionFromJson(json);

@override@JsonKey() final  bool active;

/// Create a copy of SecurityIntegrationFrontendProtection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityIntegrationFrontendProtectionCopyWith<_SecurityIntegrationFrontendProtection> get copyWith => __$SecurityIntegrationFrontendProtectionCopyWithImpl<_SecurityIntegrationFrontendProtection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecurityIntegrationFrontendProtectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityIntegrationFrontendProtection&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active);

@override
String toString() {
  return 'SecurityIntegrationFrontendProtection(active: $active)';
}


}

/// @nodoc
abstract mixin class _$SecurityIntegrationFrontendProtectionCopyWith<$Res> implements $SecurityIntegrationFrontendProtectionCopyWith<$Res> {
  factory _$SecurityIntegrationFrontendProtectionCopyWith(_SecurityIntegrationFrontendProtection value, $Res Function(_SecurityIntegrationFrontendProtection) _then) = __$SecurityIntegrationFrontendProtectionCopyWithImpl;
@override @useResult
$Res call({
 bool active
});




}
/// @nodoc
class __$SecurityIntegrationFrontendProtectionCopyWithImpl<$Res>
    implements _$SecurityIntegrationFrontendProtectionCopyWith<$Res> {
  __$SecurityIntegrationFrontendProtectionCopyWithImpl(this._self, this._then);

  final _SecurityIntegrationFrontendProtection _self;
  final $Res Function(_SecurityIntegrationFrontendProtection) _then;

/// Create a copy of SecurityIntegrationFrontendProtection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,}) {
  return _then(_SecurityIntegrationFrontendProtection(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SecurityIntegrationBackendProtection {

 bool get active; int? get phoneTtl; int? get ipTtl; bool get blockDirectOrders; bool get adsOnlyMode;
/// Create a copy of SecurityIntegrationBackendProtection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityIntegrationBackendProtectionCopyWith<SecurityIntegrationBackendProtection> get copyWith => _$SecurityIntegrationBackendProtectionCopyWithImpl<SecurityIntegrationBackendProtection>(this as SecurityIntegrationBackendProtection, _$identity);

  /// Serializes this SecurityIntegrationBackendProtection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityIntegrationBackendProtection&&(identical(other.active, active) || other.active == active)&&(identical(other.phoneTtl, phoneTtl) || other.phoneTtl == phoneTtl)&&(identical(other.ipTtl, ipTtl) || other.ipTtl == ipTtl)&&(identical(other.blockDirectOrders, blockDirectOrders) || other.blockDirectOrders == blockDirectOrders)&&(identical(other.adsOnlyMode, adsOnlyMode) || other.adsOnlyMode == adsOnlyMode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,phoneTtl,ipTtl,blockDirectOrders,adsOnlyMode);

@override
String toString() {
  return 'SecurityIntegrationBackendProtection(active: $active, phoneTtl: $phoneTtl, ipTtl: $ipTtl, blockDirectOrders: $blockDirectOrders, adsOnlyMode: $adsOnlyMode)';
}


}

/// @nodoc
abstract mixin class $SecurityIntegrationBackendProtectionCopyWith<$Res>  {
  factory $SecurityIntegrationBackendProtectionCopyWith(SecurityIntegrationBackendProtection value, $Res Function(SecurityIntegrationBackendProtection) _then) = _$SecurityIntegrationBackendProtectionCopyWithImpl;
@useResult
$Res call({
 bool active, int? phoneTtl, int? ipTtl, bool blockDirectOrders, bool adsOnlyMode
});




}
/// @nodoc
class _$SecurityIntegrationBackendProtectionCopyWithImpl<$Res>
    implements $SecurityIntegrationBackendProtectionCopyWith<$Res> {
  _$SecurityIntegrationBackendProtectionCopyWithImpl(this._self, this._then);

  final SecurityIntegrationBackendProtection _self;
  final $Res Function(SecurityIntegrationBackendProtection) _then;

/// Create a copy of SecurityIntegrationBackendProtection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? phoneTtl = freezed,Object? ipTtl = freezed,Object? blockDirectOrders = null,Object? adsOnlyMode = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,phoneTtl: freezed == phoneTtl ? _self.phoneTtl : phoneTtl // ignore: cast_nullable_to_non_nullable
as int?,ipTtl: freezed == ipTtl ? _self.ipTtl : ipTtl // ignore: cast_nullable_to_non_nullable
as int?,blockDirectOrders: null == blockDirectOrders ? _self.blockDirectOrders : blockDirectOrders // ignore: cast_nullable_to_non_nullable
as bool,adsOnlyMode: null == adsOnlyMode ? _self.adsOnlyMode : adsOnlyMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SecurityIntegrationBackendProtection].
extension SecurityIntegrationBackendProtectionPatterns on SecurityIntegrationBackendProtection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityIntegrationBackendProtection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityIntegrationBackendProtection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityIntegrationBackendProtection value)  $default,){
final _that = this;
switch (_that) {
case _SecurityIntegrationBackendProtection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityIntegrationBackendProtection value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityIntegrationBackendProtection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  int? phoneTtl,  int? ipTtl,  bool blockDirectOrders,  bool adsOnlyMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityIntegrationBackendProtection() when $default != null:
return $default(_that.active,_that.phoneTtl,_that.ipTtl,_that.blockDirectOrders,_that.adsOnlyMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  int? phoneTtl,  int? ipTtl,  bool blockDirectOrders,  bool adsOnlyMode)  $default,) {final _that = this;
switch (_that) {
case _SecurityIntegrationBackendProtection():
return $default(_that.active,_that.phoneTtl,_that.ipTtl,_that.blockDirectOrders,_that.adsOnlyMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  int? phoneTtl,  int? ipTtl,  bool blockDirectOrders,  bool adsOnlyMode)?  $default,) {final _that = this;
switch (_that) {
case _SecurityIntegrationBackendProtection() when $default != null:
return $default(_that.active,_that.phoneTtl,_that.ipTtl,_that.blockDirectOrders,_that.adsOnlyMode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityIntegrationBackendProtection implements SecurityIntegrationBackendProtection {
  const _SecurityIntegrationBackendProtection({this.active = false, this.phoneTtl, this.ipTtl, this.blockDirectOrders = false, this.adsOnlyMode = false});
  factory _SecurityIntegrationBackendProtection.fromJson(Map<String, dynamic> json) => _$SecurityIntegrationBackendProtectionFromJson(json);

@override@JsonKey() final  bool active;
@override final  int? phoneTtl;
@override final  int? ipTtl;
@override@JsonKey() final  bool blockDirectOrders;
@override@JsonKey() final  bool adsOnlyMode;

/// Create a copy of SecurityIntegrationBackendProtection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityIntegrationBackendProtectionCopyWith<_SecurityIntegrationBackendProtection> get copyWith => __$SecurityIntegrationBackendProtectionCopyWithImpl<_SecurityIntegrationBackendProtection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecurityIntegrationBackendProtectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityIntegrationBackendProtection&&(identical(other.active, active) || other.active == active)&&(identical(other.phoneTtl, phoneTtl) || other.phoneTtl == phoneTtl)&&(identical(other.ipTtl, ipTtl) || other.ipTtl == ipTtl)&&(identical(other.blockDirectOrders, blockDirectOrders) || other.blockDirectOrders == blockDirectOrders)&&(identical(other.adsOnlyMode, adsOnlyMode) || other.adsOnlyMode == adsOnlyMode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,phoneTtl,ipTtl,blockDirectOrders,adsOnlyMode);

@override
String toString() {
  return 'SecurityIntegrationBackendProtection(active: $active, phoneTtl: $phoneTtl, ipTtl: $ipTtl, blockDirectOrders: $blockDirectOrders, adsOnlyMode: $adsOnlyMode)';
}


}

/// @nodoc
abstract mixin class _$SecurityIntegrationBackendProtectionCopyWith<$Res> implements $SecurityIntegrationBackendProtectionCopyWith<$Res> {
  factory _$SecurityIntegrationBackendProtectionCopyWith(_SecurityIntegrationBackendProtection value, $Res Function(_SecurityIntegrationBackendProtection) _then) = __$SecurityIntegrationBackendProtectionCopyWithImpl;
@override @useResult
$Res call({
 bool active, int? phoneTtl, int? ipTtl, bool blockDirectOrders, bool adsOnlyMode
});




}
/// @nodoc
class __$SecurityIntegrationBackendProtectionCopyWithImpl<$Res>
    implements _$SecurityIntegrationBackendProtectionCopyWith<$Res> {
  __$SecurityIntegrationBackendProtectionCopyWithImpl(this._self, this._then);

  final _SecurityIntegrationBackendProtection _self;
  final $Res Function(_SecurityIntegrationBackendProtection) _then;

/// Create a copy of SecurityIntegrationBackendProtection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? phoneTtl = freezed,Object? ipTtl = freezed,Object? blockDirectOrders = null,Object? adsOnlyMode = null,}) {
  return _then(_SecurityIntegrationBackendProtection(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,phoneTtl: freezed == phoneTtl ? _self.phoneTtl : phoneTtl // ignore: cast_nullable_to_non_nullable
as int?,ipTtl: freezed == ipTtl ? _self.ipTtl : ipTtl // ignore: cast_nullable_to_non_nullable
as int?,blockDirectOrders: null == blockDirectOrders ? _self.blockDirectOrders : blockDirectOrders // ignore: cast_nullable_to_non_nullable
as bool,adsOnlyMode: null == adsOnlyMode ? _self.adsOnlyMode : adsOnlyMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$GoogleSheetsColumn {

 String? get field;// OrderEntity field name
 String get name; bool get enabled; dynamic get defaultValue;
/// Create a copy of GoogleSheetsColumn
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleSheetsColumnCopyWith<GoogleSheetsColumn> get copyWith => _$GoogleSheetsColumnCopyWithImpl<GoogleSheetsColumn>(this as GoogleSheetsColumn, _$identity);

  /// Serializes this GoogleSheetsColumn to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleSheetsColumn&&(identical(other.field, field) || other.field == field)&&(identical(other.name, name) || other.name == name)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.defaultValue, defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,name,enabled,const DeepCollectionEquality().hash(defaultValue));

@override
String toString() {
  return 'GoogleSheetsColumn(field: $field, name: $name, enabled: $enabled, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $GoogleSheetsColumnCopyWith<$Res>  {
  factory $GoogleSheetsColumnCopyWith(GoogleSheetsColumn value, $Res Function(GoogleSheetsColumn) _then) = _$GoogleSheetsColumnCopyWithImpl;
@useResult
$Res call({
 String? field, String name, bool enabled, dynamic defaultValue
});




}
/// @nodoc
class _$GoogleSheetsColumnCopyWithImpl<$Res>
    implements $GoogleSheetsColumnCopyWith<$Res> {
  _$GoogleSheetsColumnCopyWithImpl(this._self, this._then);

  final GoogleSheetsColumn _self;
  final $Res Function(GoogleSheetsColumn) _then;

/// Create a copy of GoogleSheetsColumn
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? field = freezed,Object? name = null,Object? enabled = null,Object? defaultValue = freezed,}) {
  return _then(_self.copyWith(
field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [GoogleSheetsColumn].
extension GoogleSheetsColumnPatterns on GoogleSheetsColumn {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleSheetsColumn value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleSheetsColumn() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleSheetsColumn value)  $default,){
final _that = this;
switch (_that) {
case _GoogleSheetsColumn():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleSheetsColumn value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleSheetsColumn() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? field,  String name,  bool enabled,  dynamic defaultValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleSheetsColumn() when $default != null:
return $default(_that.field,_that.name,_that.enabled,_that.defaultValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? field,  String name,  bool enabled,  dynamic defaultValue)  $default,) {final _that = this;
switch (_that) {
case _GoogleSheetsColumn():
return $default(_that.field,_that.name,_that.enabled,_that.defaultValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? field,  String name,  bool enabled,  dynamic defaultValue)?  $default,) {final _that = this;
switch (_that) {
case _GoogleSheetsColumn() when $default != null:
return $default(_that.field,_that.name,_that.enabled,_that.defaultValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoogleSheetsColumn implements GoogleSheetsColumn {
  const _GoogleSheetsColumn({required this.field, required this.name, required this.enabled, this.defaultValue});
  factory _GoogleSheetsColumn.fromJson(Map<String, dynamic> json) => _$GoogleSheetsColumnFromJson(json);

@override final  String? field;
// OrderEntity field name
@override final  String name;
@override final  bool enabled;
@override final  dynamic defaultValue;

/// Create a copy of GoogleSheetsColumn
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleSheetsColumnCopyWith<_GoogleSheetsColumn> get copyWith => __$GoogleSheetsColumnCopyWithImpl<_GoogleSheetsColumn>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoogleSheetsColumnToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleSheetsColumn&&(identical(other.field, field) || other.field == field)&&(identical(other.name, name) || other.name == name)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.defaultValue, defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,name,enabled,const DeepCollectionEquality().hash(defaultValue));

@override
String toString() {
  return 'GoogleSheetsColumn(field: $field, name: $name, enabled: $enabled, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class _$GoogleSheetsColumnCopyWith<$Res> implements $GoogleSheetsColumnCopyWith<$Res> {
  factory _$GoogleSheetsColumnCopyWith(_GoogleSheetsColumn value, $Res Function(_GoogleSheetsColumn) _then) = __$GoogleSheetsColumnCopyWithImpl;
@override @useResult
$Res call({
 String? field, String name, bool enabled, dynamic defaultValue
});




}
/// @nodoc
class __$GoogleSheetsColumnCopyWithImpl<$Res>
    implements _$GoogleSheetsColumnCopyWith<$Res> {
  __$GoogleSheetsColumnCopyWithImpl(this._self, this._then);

  final _GoogleSheetsColumn _self;
  final $Res Function(_GoogleSheetsColumn) _then;

/// Create a copy of GoogleSheetsColumn
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? field = freezed,Object? name = null,Object? enabled = null,Object? defaultValue = freezed,}) {
  return _then(_GoogleSheetsColumn(
field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$GoogleSheetsIntegration {

 String? get id; String? get name; bool get active; Map<String, dynamic>? get oauth2; List<GoogleSheetsColumn>? get columns; Map<String, dynamic> get metadata;
/// Create a copy of GoogleSheetsIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleSheetsIntegrationCopyWith<GoogleSheetsIntegration> get copyWith => _$GoogleSheetsIntegrationCopyWithImpl<GoogleSheetsIntegration>(this as GoogleSheetsIntegration, _$identity);

  /// Serializes this GoogleSheetsIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleSheetsIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.oauth2, oauth2)&&const DeepCollectionEquality().equals(other.columns, columns)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,active,const DeepCollectionEquality().hash(oauth2),const DeepCollectionEquality().hash(columns),const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'GoogleSheetsIntegration(id: $id, name: $name, active: $active, oauth2: $oauth2, columns: $columns, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $GoogleSheetsIntegrationCopyWith<$Res>  {
  factory $GoogleSheetsIntegrationCopyWith(GoogleSheetsIntegration value, $Res Function(GoogleSheetsIntegration) _then) = _$GoogleSheetsIntegrationCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, bool active, Map<String, dynamic>? oauth2, List<GoogleSheetsColumn>? columns, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$GoogleSheetsIntegrationCopyWithImpl<$Res>
    implements $GoogleSheetsIntegrationCopyWith<$Res> {
  _$GoogleSheetsIntegrationCopyWithImpl(this._self, this._then);

  final GoogleSheetsIntegration _self;
  final $Res Function(GoogleSheetsIntegration) _then;

/// Create a copy of GoogleSheetsIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? active = null,Object? oauth2 = freezed,Object? columns = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,oauth2: freezed == oauth2 ? _self.oauth2 : oauth2 // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,columns: freezed == columns ? _self.columns : columns // ignore: cast_nullable_to_non_nullable
as List<GoogleSheetsColumn>?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [GoogleSheetsIntegration].
extension GoogleSheetsIntegrationPatterns on GoogleSheetsIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleSheetsIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleSheetsIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleSheetsIntegration value)  $default,){
final _that = this;
switch (_that) {
case _GoogleSheetsIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleSheetsIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleSheetsIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  bool active,  Map<String, dynamic>? oauth2,  List<GoogleSheetsColumn>? columns,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleSheetsIntegration() when $default != null:
return $default(_that.id,_that.name,_that.active,_that.oauth2,_that.columns,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  bool active,  Map<String, dynamic>? oauth2,  List<GoogleSheetsColumn>? columns,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _GoogleSheetsIntegration():
return $default(_that.id,_that.name,_that.active,_that.oauth2,_that.columns,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  bool active,  Map<String, dynamic>? oauth2,  List<GoogleSheetsColumn>? columns,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _GoogleSheetsIntegration() when $default != null:
return $default(_that.id,_that.name,_that.active,_that.oauth2,_that.columns,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoogleSheetsIntegration implements GoogleSheetsIntegration {
  const _GoogleSheetsIntegration({this.id, this.name, this.active = true, final  Map<String, dynamic>? oauth2, final  List<GoogleSheetsColumn>? columns = defaultOrderColumns, final  Map<String, dynamic> metadata = const {}}): _oauth2 = oauth2,_columns = columns,_metadata = metadata;
  factory _GoogleSheetsIntegration.fromJson(Map<String, dynamic> json) => _$GoogleSheetsIntegrationFromJson(json);

@override final  String? id;
@override final  String? name;
@override@JsonKey() final  bool active;
 final  Map<String, dynamic>? _oauth2;
@override Map<String, dynamic>? get oauth2 {
  final value = _oauth2;
  if (value == null) return null;
  if (_oauth2 is EqualUnmodifiableMapView) return _oauth2;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<GoogleSheetsColumn>? _columns;
@override@JsonKey() List<GoogleSheetsColumn>? get columns {
  final value = _columns;
  if (value == null) return null;
  if (_columns is EqualUnmodifiableListView) return _columns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of GoogleSheetsIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleSheetsIntegrationCopyWith<_GoogleSheetsIntegration> get copyWith => __$GoogleSheetsIntegrationCopyWithImpl<_GoogleSheetsIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoogleSheetsIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleSheetsIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._oauth2, _oauth2)&&const DeepCollectionEquality().equals(other._columns, _columns)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,active,const DeepCollectionEquality().hash(_oauth2),const DeepCollectionEquality().hash(_columns),const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'GoogleSheetsIntegration(id: $id, name: $name, active: $active, oauth2: $oauth2, columns: $columns, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$GoogleSheetsIntegrationCopyWith<$Res> implements $GoogleSheetsIntegrationCopyWith<$Res> {
  factory _$GoogleSheetsIntegrationCopyWith(_GoogleSheetsIntegration value, $Res Function(_GoogleSheetsIntegration) _then) = __$GoogleSheetsIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, bool active, Map<String, dynamic>? oauth2, List<GoogleSheetsColumn>? columns, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$GoogleSheetsIntegrationCopyWithImpl<$Res>
    implements _$GoogleSheetsIntegrationCopyWith<$Res> {
  __$GoogleSheetsIntegrationCopyWithImpl(this._self, this._then);

  final _GoogleSheetsIntegration _self;
  final $Res Function(_GoogleSheetsIntegration) _then;

/// Create a copy of GoogleSheetsIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? active = null,Object? oauth2 = freezed,Object? columns = freezed,Object? metadata = null,}) {
  return _then(_GoogleSheetsIntegration(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,oauth2: freezed == oauth2 ? _self._oauth2 : oauth2 // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,columns: freezed == columns ? _self._columns : columns // ignore: cast_nullable_to_non_nullable
as List<GoogleSheetsColumn>?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$WebhookConfig {

 String get id; String get name; String get url; List<WebhookEvent> get events; String? get secret; bool get active; Map<String, String> get headers; Map<String, dynamic> get metadata;
/// Create a copy of WebhookConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebhookConfigCopyWith<WebhookConfig> get copyWith => _$WebhookConfigCopyWithImpl<WebhookConfig>(this as WebhookConfig, _$identity);

  /// Serializes this WebhookConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebhookConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.events, events)&&(identical(other.secret, secret) || other.secret == secret)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.headers, headers)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,url,const DeepCollectionEquality().hash(events),secret,active,const DeepCollectionEquality().hash(headers),const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'WebhookConfig(id: $id, name: $name, url: $url, events: $events, secret: $secret, active: $active, headers: $headers, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $WebhookConfigCopyWith<$Res>  {
  factory $WebhookConfigCopyWith(WebhookConfig value, $Res Function(WebhookConfig) _then) = _$WebhookConfigCopyWithImpl;
@useResult
$Res call({
 String id, String name, String url, List<WebhookEvent> events, String? secret, bool active, Map<String, String> headers, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$WebhookConfigCopyWithImpl<$Res>
    implements $WebhookConfigCopyWith<$Res> {
  _$WebhookConfigCopyWithImpl(this._self, this._then);

  final WebhookConfig _self;
  final $Res Function(WebhookConfig) _then;

/// Create a copy of WebhookConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? url = null,Object? events = null,Object? secret = freezed,Object? active = null,Object? headers = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<WebhookEvent>,secret: freezed == secret ? _self.secret : secret // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, String>,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [WebhookConfig].
extension WebhookConfigPatterns on WebhookConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebhookConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebhookConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebhookConfig value)  $default,){
final _that = this;
switch (_that) {
case _WebhookConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebhookConfig value)?  $default,){
final _that = this;
switch (_that) {
case _WebhookConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String url,  List<WebhookEvent> events,  String? secret,  bool active,  Map<String, String> headers,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebhookConfig() when $default != null:
return $default(_that.id,_that.name,_that.url,_that.events,_that.secret,_that.active,_that.headers,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String url,  List<WebhookEvent> events,  String? secret,  bool active,  Map<String, String> headers,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _WebhookConfig():
return $default(_that.id,_that.name,_that.url,_that.events,_that.secret,_that.active,_that.headers,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String url,  List<WebhookEvent> events,  String? secret,  bool active,  Map<String, String> headers,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _WebhookConfig() when $default != null:
return $default(_that.id,_that.name,_that.url,_that.events,_that.secret,_that.active,_that.headers,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebhookConfig implements WebhookConfig {
  const _WebhookConfig({required this.id, required this.name, required this.url, final  List<WebhookEvent> events = const [], this.secret, this.active = true, final  Map<String, String> headers = const {}, final  Map<String, dynamic> metadata = const {}}): _events = events,_headers = headers,_metadata = metadata;
  factory _WebhookConfig.fromJson(Map<String, dynamic> json) => _$WebhookConfigFromJson(json);

@override final  String id;
@override final  String name;
@override final  String url;
 final  List<WebhookEvent> _events;
@override@JsonKey() List<WebhookEvent> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

@override final  String? secret;
@override@JsonKey() final  bool active;
 final  Map<String, String> _headers;
@override@JsonKey() Map<String, String> get headers {
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_headers);
}

 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of WebhookConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebhookConfigCopyWith<_WebhookConfig> get copyWith => __$WebhookConfigCopyWithImpl<_WebhookConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebhookConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebhookConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._events, _events)&&(identical(other.secret, secret) || other.secret == secret)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._headers, _headers)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,url,const DeepCollectionEquality().hash(_events),secret,active,const DeepCollectionEquality().hash(_headers),const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'WebhookConfig(id: $id, name: $name, url: $url, events: $events, secret: $secret, active: $active, headers: $headers, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$WebhookConfigCopyWith<$Res> implements $WebhookConfigCopyWith<$Res> {
  factory _$WebhookConfigCopyWith(_WebhookConfig value, $Res Function(_WebhookConfig) _then) = __$WebhookConfigCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String url, List<WebhookEvent> events, String? secret, bool active, Map<String, String> headers, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$WebhookConfigCopyWithImpl<$Res>
    implements _$WebhookConfigCopyWith<$Res> {
  __$WebhookConfigCopyWithImpl(this._self, this._then);

  final _WebhookConfig _self;
  final $Res Function(_WebhookConfig) _then;

/// Create a copy of WebhookConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? url = null,Object? events = null,Object? secret = freezed,Object? active = null,Object? headers = null,Object? metadata = null,}) {
  return _then(_WebhookConfig(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<WebhookEvent>,secret: freezed == secret ? _self.secret : secret // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,headers: null == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, String>,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$WebhooksIntegration {

 List<WebhookConfig> get webhooks; bool get active; Map<String, dynamic> get metadata;
/// Create a copy of WebhooksIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebhooksIntegrationCopyWith<WebhooksIntegration> get copyWith => _$WebhooksIntegrationCopyWithImpl<WebhooksIntegration>(this as WebhooksIntegration, _$identity);

  /// Serializes this WebhooksIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebhooksIntegration&&const DeepCollectionEquality().equals(other.webhooks, webhooks)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(webhooks),active,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'WebhooksIntegration(webhooks: $webhooks, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $WebhooksIntegrationCopyWith<$Res>  {
  factory $WebhooksIntegrationCopyWith(WebhooksIntegration value, $Res Function(WebhooksIntegration) _then) = _$WebhooksIntegrationCopyWithImpl;
@useResult
$Res call({
 List<WebhookConfig> webhooks, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$WebhooksIntegrationCopyWithImpl<$Res>
    implements $WebhooksIntegrationCopyWith<$Res> {
  _$WebhooksIntegrationCopyWithImpl(this._self, this._then);

  final WebhooksIntegration _self;
  final $Res Function(WebhooksIntegration) _then;

/// Create a copy of WebhooksIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? webhooks = null,Object? active = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
webhooks: null == webhooks ? _self.webhooks : webhooks // ignore: cast_nullable_to_non_nullable
as List<WebhookConfig>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [WebhooksIntegration].
extension WebhooksIntegrationPatterns on WebhooksIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebhooksIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebhooksIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebhooksIntegration value)  $default,){
final _that = this;
switch (_that) {
case _WebhooksIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebhooksIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _WebhooksIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WebhookConfig> webhooks,  bool active,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebhooksIntegration() when $default != null:
return $default(_that.webhooks,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WebhookConfig> webhooks,  bool active,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _WebhooksIntegration():
return $default(_that.webhooks,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WebhookConfig> webhooks,  bool active,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _WebhooksIntegration() when $default != null:
return $default(_that.webhooks,_that.active,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebhooksIntegration implements WebhooksIntegration {
  const _WebhooksIntegration({final  List<WebhookConfig> webhooks = const [], this.active = true, final  Map<String, dynamic> metadata = const {}}): _webhooks = webhooks,_metadata = metadata;
  factory _WebhooksIntegration.fromJson(Map<String, dynamic> json) => _$WebhooksIntegrationFromJson(json);

 final  List<WebhookConfig> _webhooks;
@override@JsonKey() List<WebhookConfig> get webhooks {
  if (_webhooks is EqualUnmodifiableListView) return _webhooks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_webhooks);
}

@override@JsonKey() final  bool active;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of WebhooksIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebhooksIntegrationCopyWith<_WebhooksIntegration> get copyWith => __$WebhooksIntegrationCopyWithImpl<_WebhooksIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebhooksIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebhooksIntegration&&const DeepCollectionEquality().equals(other._webhooks, _webhooks)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_webhooks),active,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'WebhooksIntegration(webhooks: $webhooks, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$WebhooksIntegrationCopyWith<$Res> implements $WebhooksIntegrationCopyWith<$Res> {
  factory _$WebhooksIntegrationCopyWith(_WebhooksIntegration value, $Res Function(_WebhooksIntegration) _then) = __$WebhooksIntegrationCopyWithImpl;
@override @useResult
$Res call({
 List<WebhookConfig> webhooks, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$WebhooksIntegrationCopyWithImpl<$Res>
    implements _$WebhooksIntegrationCopyWith<$Res> {
  __$WebhooksIntegrationCopyWithImpl(this._self, this._then);

  final _WebhooksIntegration _self;
  final $Res Function(_WebhooksIntegration) _then;

/// Create a copy of WebhooksIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? webhooks = null,Object? active = null,Object? metadata = null,}) {
  return _then(_WebhooksIntegration(
webhooks: null == webhooks ? _self._webhooks : webhooks // ignore: cast_nullable_to_non_nullable
as List<WebhookConfig>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$CustomField {

/// Unique identifier for the field
 String get id;/// Display label for the field
 String get label;/// Field type (text, phone, email, etc.)
 CustomFieldType get type;/// Whether the field is required
 bool get required;/// Whether the field supports multiple values (array)
 bool get multiple;/// Minimum number of values (for array fields)
 int? get minCount;/// Maximum number of values (for array fields)
 int? get maxCount;/// Placeholder text
 String? get placeholder;/// Help text/description
 String? get helpText;/// Regex pattern for validation (text fields only)
 String? get regexPattern;/// Default value
 dynamic get defaultValue;/// Field order/position
 int get order;/// Whether the field is active/enabled
 bool get active;/// Additional metadata
 Map<String, dynamic> get metadata;
/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomFieldCopyWith<CustomField> get copyWith => _$CustomFieldCopyWithImpl<CustomField>(this as CustomField, _$identity);

  /// Serializes this CustomField to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomField&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&(identical(other.required, required) || other.required == required)&&(identical(other.multiple, multiple) || other.multiple == multiple)&&(identical(other.minCount, minCount) || other.minCount == minCount)&&(identical(other.maxCount, maxCount) || other.maxCount == maxCount)&&(identical(other.placeholder, placeholder) || other.placeholder == placeholder)&&(identical(other.helpText, helpText) || other.helpText == helpText)&&(identical(other.regexPattern, regexPattern) || other.regexPattern == regexPattern)&&const DeepCollectionEquality().equals(other.defaultValue, defaultValue)&&(identical(other.order, order) || other.order == order)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,type,required,multiple,minCount,maxCount,placeholder,helpText,regexPattern,const DeepCollectionEquality().hash(defaultValue),order,active,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'CustomField(id: $id, label: $label, type: $type, required: $required, multiple: $multiple, minCount: $minCount, maxCount: $maxCount, placeholder: $placeholder, helpText: $helpText, regexPattern: $regexPattern, defaultValue: $defaultValue, order: $order, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $CustomFieldCopyWith<$Res>  {
  factory $CustomFieldCopyWith(CustomField value, $Res Function(CustomField) _then) = _$CustomFieldCopyWithImpl;
@useResult
$Res call({
 String id, String label, CustomFieldType type, bool required, bool multiple, int? minCount, int? maxCount, String? placeholder, String? helpText, String? regexPattern, dynamic defaultValue, int order, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$CustomFieldCopyWithImpl<$Res>
    implements $CustomFieldCopyWith<$Res> {
  _$CustomFieldCopyWithImpl(this._self, this._then);

  final CustomField _self;
  final $Res Function(CustomField) _then;

/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? type = null,Object? required = null,Object? multiple = null,Object? minCount = freezed,Object? maxCount = freezed,Object? placeholder = freezed,Object? helpText = freezed,Object? regexPattern = freezed,Object? defaultValue = freezed,Object? order = null,Object? active = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CustomFieldType,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,multiple: null == multiple ? _self.multiple : multiple // ignore: cast_nullable_to_non_nullable
as bool,minCount: freezed == minCount ? _self.minCount : minCount // ignore: cast_nullable_to_non_nullable
as int?,maxCount: freezed == maxCount ? _self.maxCount : maxCount // ignore: cast_nullable_to_non_nullable
as int?,placeholder: freezed == placeholder ? _self.placeholder : placeholder // ignore: cast_nullable_to_non_nullable
as String?,helpText: freezed == helpText ? _self.helpText : helpText // ignore: cast_nullable_to_non_nullable
as String?,regexPattern: freezed == regexPattern ? _self.regexPattern : regexPattern // ignore: cast_nullable_to_non_nullable
as String?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as dynamic,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomField].
extension CustomFieldPatterns on CustomField {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomField value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomField() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomField value)  $default,){
final _that = this;
switch (_that) {
case _CustomField():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomField value)?  $default,){
final _that = this;
switch (_that) {
case _CustomField() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  CustomFieldType type,  bool required,  bool multiple,  int? minCount,  int? maxCount,  String? placeholder,  String? helpText,  String? regexPattern,  dynamic defaultValue,  int order,  bool active,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomField() when $default != null:
return $default(_that.id,_that.label,_that.type,_that.required,_that.multiple,_that.minCount,_that.maxCount,_that.placeholder,_that.helpText,_that.regexPattern,_that.defaultValue,_that.order,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  CustomFieldType type,  bool required,  bool multiple,  int? minCount,  int? maxCount,  String? placeholder,  String? helpText,  String? regexPattern,  dynamic defaultValue,  int order,  bool active,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _CustomField():
return $default(_that.id,_that.label,_that.type,_that.required,_that.multiple,_that.minCount,_that.maxCount,_that.placeholder,_that.helpText,_that.regexPattern,_that.defaultValue,_that.order,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  CustomFieldType type,  bool required,  bool multiple,  int? minCount,  int? maxCount,  String? placeholder,  String? helpText,  String? regexPattern,  dynamic defaultValue,  int order,  bool active,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _CustomField() when $default != null:
return $default(_that.id,_that.label,_that.type,_that.required,_that.multiple,_that.minCount,_that.maxCount,_that.placeholder,_that.helpText,_that.regexPattern,_that.defaultValue,_that.order,_that.active,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomField extends CustomField {
  const _CustomField({required this.id, required this.label, required this.type, this.required = false, this.multiple = false, this.minCount, this.maxCount, this.placeholder, this.helpText, this.regexPattern, this.defaultValue, this.order = 0, this.active = true, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _CustomField.fromJson(Map<String, dynamic> json) => _$CustomFieldFromJson(json);

/// Unique identifier for the field
@override final  String id;
/// Display label for the field
@override final  String label;
/// Field type (text, phone, email, etc.)
@override final  CustomFieldType type;
/// Whether the field is required
@override@JsonKey() final  bool required;
/// Whether the field supports multiple values (array)
@override@JsonKey() final  bool multiple;
/// Minimum number of values (for array fields)
@override final  int? minCount;
/// Maximum number of values (for array fields)
@override final  int? maxCount;
/// Placeholder text
@override final  String? placeholder;
/// Help text/description
@override final  String? helpText;
/// Regex pattern for validation (text fields only)
@override final  String? regexPattern;
/// Default value
@override final  dynamic defaultValue;
/// Field order/position
@override@JsonKey() final  int order;
/// Whether the field is active/enabled
@override@JsonKey() final  bool active;
/// Additional metadata
 final  Map<String, dynamic> _metadata;
/// Additional metadata
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomFieldCopyWith<_CustomField> get copyWith => __$CustomFieldCopyWithImpl<_CustomField>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomFieldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomField&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&(identical(other.required, required) || other.required == required)&&(identical(other.multiple, multiple) || other.multiple == multiple)&&(identical(other.minCount, minCount) || other.minCount == minCount)&&(identical(other.maxCount, maxCount) || other.maxCount == maxCount)&&(identical(other.placeholder, placeholder) || other.placeholder == placeholder)&&(identical(other.helpText, helpText) || other.helpText == helpText)&&(identical(other.regexPattern, regexPattern) || other.regexPattern == regexPattern)&&const DeepCollectionEquality().equals(other.defaultValue, defaultValue)&&(identical(other.order, order) || other.order == order)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,type,required,multiple,minCount,maxCount,placeholder,helpText,regexPattern,const DeepCollectionEquality().hash(defaultValue),order,active,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'CustomField(id: $id, label: $label, type: $type, required: $required, multiple: $multiple, minCount: $minCount, maxCount: $maxCount, placeholder: $placeholder, helpText: $helpText, regexPattern: $regexPattern, defaultValue: $defaultValue, order: $order, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$CustomFieldCopyWith<$Res> implements $CustomFieldCopyWith<$Res> {
  factory _$CustomFieldCopyWith(_CustomField value, $Res Function(_CustomField) _then) = __$CustomFieldCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, CustomFieldType type, bool required, bool multiple, int? minCount, int? maxCount, String? placeholder, String? helpText, String? regexPattern, dynamic defaultValue, int order, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$CustomFieldCopyWithImpl<$Res>
    implements _$CustomFieldCopyWith<$Res> {
  __$CustomFieldCopyWithImpl(this._self, this._then);

  final _CustomField _self;
  final $Res Function(_CustomField) _then;

/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? type = null,Object? required = null,Object? multiple = null,Object? minCount = freezed,Object? maxCount = freezed,Object? placeholder = freezed,Object? helpText = freezed,Object? regexPattern = freezed,Object? defaultValue = freezed,Object? order = null,Object? active = null,Object? metadata = null,}) {
  return _then(_CustomField(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CustomFieldType,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,multiple: null == multiple ? _self.multiple : multiple // ignore: cast_nullable_to_non_nullable
as bool,minCount: freezed == minCount ? _self.minCount : minCount // ignore: cast_nullable_to_non_nullable
as int?,maxCount: freezed == maxCount ? _self.maxCount : maxCount // ignore: cast_nullable_to_non_nullable
as int?,placeholder: freezed == placeholder ? _self.placeholder : placeholder // ignore: cast_nullable_to_non_nullable
as String?,helpText: freezed == helpText ? _self.helpText : helpText // ignore: cast_nullable_to_non_nullable
as String?,regexPattern: freezed == regexPattern ? _self.regexPattern : regexPattern // ignore: cast_nullable_to_non_nullable
as String?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as dynamic,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$CustomFieldsIntegration {

/// List of custom field definitions
 List<CustomField> get fields;/// Whether the integration is active
 bool get active;/// Additional metadata
 Map<String, dynamic> get metadata;
/// Create a copy of CustomFieldsIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomFieldsIntegrationCopyWith<CustomFieldsIntegration> get copyWith => _$CustomFieldsIntegrationCopyWithImpl<CustomFieldsIntegration>(this as CustomFieldsIntegration, _$identity);

  /// Serializes this CustomFieldsIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomFieldsIntegration&&const DeepCollectionEquality().equals(other.fields, fields)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(fields),active,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'CustomFieldsIntegration(fields: $fields, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $CustomFieldsIntegrationCopyWith<$Res>  {
  factory $CustomFieldsIntegrationCopyWith(CustomFieldsIntegration value, $Res Function(CustomFieldsIntegration) _then) = _$CustomFieldsIntegrationCopyWithImpl;
@useResult
$Res call({
 List<CustomField> fields, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$CustomFieldsIntegrationCopyWithImpl<$Res>
    implements $CustomFieldsIntegrationCopyWith<$Res> {
  _$CustomFieldsIntegrationCopyWithImpl(this._self, this._then);

  final CustomFieldsIntegration _self;
  final $Res Function(CustomFieldsIntegration) _then;

/// Create a copy of CustomFieldsIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fields = null,Object? active = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
fields: null == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as List<CustomField>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomFieldsIntegration].
extension CustomFieldsIntegrationPatterns on CustomFieldsIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomFieldsIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomFieldsIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomFieldsIntegration value)  $default,){
final _that = this;
switch (_that) {
case _CustomFieldsIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomFieldsIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _CustomFieldsIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CustomField> fields,  bool active,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomFieldsIntegration() when $default != null:
return $default(_that.fields,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CustomField> fields,  bool active,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _CustomFieldsIntegration():
return $default(_that.fields,_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CustomField> fields,  bool active,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _CustomFieldsIntegration() when $default != null:
return $default(_that.fields,_that.active,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomFieldsIntegration extends CustomFieldsIntegration {
  const _CustomFieldsIntegration({final  List<CustomField> fields = const [], this.active = true, final  Map<String, dynamic> metadata = const {}}): _fields = fields,_metadata = metadata,super._();
  factory _CustomFieldsIntegration.fromJson(Map<String, dynamic> json) => _$CustomFieldsIntegrationFromJson(json);

/// List of custom field definitions
 final  List<CustomField> _fields;
/// List of custom field definitions
@override@JsonKey() List<CustomField> get fields {
  if (_fields is EqualUnmodifiableListView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fields);
}

/// Whether the integration is active
@override@JsonKey() final  bool active;
/// Additional metadata
 final  Map<String, dynamic> _metadata;
/// Additional metadata
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of CustomFieldsIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomFieldsIntegrationCopyWith<_CustomFieldsIntegration> get copyWith => __$CustomFieldsIntegrationCopyWithImpl<_CustomFieldsIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomFieldsIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomFieldsIntegration&&const DeepCollectionEquality().equals(other._fields, _fields)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_fields),active,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'CustomFieldsIntegration(fields: $fields, active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$CustomFieldsIntegrationCopyWith<$Res> implements $CustomFieldsIntegrationCopyWith<$Res> {
  factory _$CustomFieldsIntegrationCopyWith(_CustomFieldsIntegration value, $Res Function(_CustomFieldsIntegration) _then) = __$CustomFieldsIntegrationCopyWithImpl;
@override @useResult
$Res call({
 List<CustomField> fields, bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$CustomFieldsIntegrationCopyWithImpl<$Res>
    implements _$CustomFieldsIntegrationCopyWith<$Res> {
  __$CustomFieldsIntegrationCopyWithImpl(this._self, this._then);

  final _CustomFieldsIntegration _self;
  final $Res Function(_CustomFieldsIntegration) _then;

/// Create a copy of CustomFieldsIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fields = null,Object? active = null,Object? metadata = null,}) {
  return _then(_CustomFieldsIntegration(
fields: null == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<CustomField>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$PaymentMethodConfig {

 String get id;// Slug identifier (e.g., 'chargily', 'paypal')
 String get name;// Display name (e.g., 'Chargily Pay', 'PayPal')
 bool get active;// Method-specific configuration
 String? get apiKey;// For Chargily
 String? get clientId;// For PayPal, Stripe, etc.
 String? get clientSecret;// For PayPal, Stripe, etc.
 Map<String, dynamic> get metadata;
/// Create a copy of PaymentMethodConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodConfigCopyWith<PaymentMethodConfig> get copyWith => _$PaymentMethodConfigCopyWithImpl<PaymentMethodConfig>(this as PaymentMethodConfig, _$identity);

  /// Serializes this PaymentMethodConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethodConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.active, active) || other.active == active)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.clientSecret, clientSecret) || other.clientSecret == clientSecret)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,active,apiKey,clientId,clientSecret,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'PaymentMethodConfig(id: $id, name: $name, active: $active, apiKey: $apiKey, clientId: $clientId, clientSecret: $clientSecret, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodConfigCopyWith<$Res>  {
  factory $PaymentMethodConfigCopyWith(PaymentMethodConfig value, $Res Function(PaymentMethodConfig) _then) = _$PaymentMethodConfigCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool active, String? apiKey, String? clientId, String? clientSecret, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$PaymentMethodConfigCopyWithImpl<$Res>
    implements $PaymentMethodConfigCopyWith<$Res> {
  _$PaymentMethodConfigCopyWithImpl(this._self, this._then);

  final PaymentMethodConfig _self;
  final $Res Function(PaymentMethodConfig) _then;

/// Create a copy of PaymentMethodConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? active = null,Object? apiKey = freezed,Object? clientId = freezed,Object? clientSecret = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,clientId: freezed == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String?,clientSecret: freezed == clientSecret ? _self.clientSecret : clientSecret // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentMethodConfig].
extension PaymentMethodConfigPatterns on PaymentMethodConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethodConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethodConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethodConfig value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethodConfig value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool active,  String? apiKey,  String? clientId,  String? clientSecret,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethodConfig() when $default != null:
return $default(_that.id,_that.name,_that.active,_that.apiKey,_that.clientId,_that.clientSecret,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool active,  String? apiKey,  String? clientId,  String? clientSecret,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodConfig():
return $default(_that.id,_that.name,_that.active,_that.apiKey,_that.clientId,_that.clientSecret,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool active,  String? apiKey,  String? clientId,  String? clientSecret,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodConfig() when $default != null:
return $default(_that.id,_that.name,_that.active,_that.apiKey,_that.clientId,_that.clientSecret,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentMethodConfig extends PaymentMethodConfig {
  const _PaymentMethodConfig({required this.id, required this.name, this.active = true, this.apiKey, this.clientId, this.clientSecret, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _PaymentMethodConfig.fromJson(Map<String, dynamic> json) => _$PaymentMethodConfigFromJson(json);

@override final  String id;
// Slug identifier (e.g., 'chargily', 'paypal')
@override final  String name;
// Display name (e.g., 'Chargily Pay', 'PayPal')
@override@JsonKey() final  bool active;
// Method-specific configuration
@override final  String? apiKey;
// For Chargily
@override final  String? clientId;
// For PayPal, Stripe, etc.
@override final  String? clientSecret;
// For PayPal, Stripe, etc.
 final  Map<String, dynamic> _metadata;
// For PayPal, Stripe, etc.
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of PaymentMethodConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodConfigCopyWith<_PaymentMethodConfig> get copyWith => __$PaymentMethodConfigCopyWithImpl<_PaymentMethodConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethodConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.active, active) || other.active == active)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.clientSecret, clientSecret) || other.clientSecret == clientSecret)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,active,apiKey,clientId,clientSecret,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'PaymentMethodConfig(id: $id, name: $name, active: $active, apiKey: $apiKey, clientId: $clientId, clientSecret: $clientSecret, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodConfigCopyWith<$Res> implements $PaymentMethodConfigCopyWith<$Res> {
  factory _$PaymentMethodConfigCopyWith(_PaymentMethodConfig value, $Res Function(_PaymentMethodConfig) _then) = __$PaymentMethodConfigCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool active, String? apiKey, String? clientId, String? clientSecret, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$PaymentMethodConfigCopyWithImpl<$Res>
    implements _$PaymentMethodConfigCopyWith<$Res> {
  __$PaymentMethodConfigCopyWithImpl(this._self, this._then);

  final _PaymentMethodConfig _self;
  final $Res Function(_PaymentMethodConfig) _then;

/// Create a copy of PaymentMethodConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? active = null,Object? apiKey = freezed,Object? clientId = freezed,Object? clientSecret = freezed,Object? metadata = null,}) {
  return _then(_PaymentMethodConfig(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,clientId: freezed == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String?,clientSecret: freezed == clientSecret ? _self.clientSecret : clientSecret // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$PaymentIntegration {

 bool get active; List<PaymentMethodConfig> get methods; String? get defaultMethod;// Method ID to use by default
 Map<String, dynamic> get metadata;
/// Create a copy of PaymentIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentIntegrationCopyWith<PaymentIntegration> get copyWith => _$PaymentIntegrationCopyWithImpl<PaymentIntegration>(this as PaymentIntegration, _$identity);

  /// Serializes this PaymentIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentIntegration&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.methods, methods)&&(identical(other.defaultMethod, defaultMethod) || other.defaultMethod == defaultMethod)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,const DeepCollectionEquality().hash(methods),defaultMethod,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'PaymentIntegration(active: $active, methods: $methods, defaultMethod: $defaultMethod, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $PaymentIntegrationCopyWith<$Res>  {
  factory $PaymentIntegrationCopyWith(PaymentIntegration value, $Res Function(PaymentIntegration) _then) = _$PaymentIntegrationCopyWithImpl;
@useResult
$Res call({
 bool active, List<PaymentMethodConfig> methods, String? defaultMethod, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$PaymentIntegrationCopyWithImpl<$Res>
    implements $PaymentIntegrationCopyWith<$Res> {
  _$PaymentIntegrationCopyWithImpl(this._self, this._then);

  final PaymentIntegration _self;
  final $Res Function(PaymentIntegration) _then;

/// Create a copy of PaymentIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? methods = null,Object? defaultMethod = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,methods: null == methods ? _self.methods : methods // ignore: cast_nullable_to_non_nullable
as List<PaymentMethodConfig>,defaultMethod: freezed == defaultMethod ? _self.defaultMethod : defaultMethod // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentIntegration].
extension PaymentIntegrationPatterns on PaymentIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentIntegration value)  $default,){
final _that = this;
switch (_that) {
case _PaymentIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  List<PaymentMethodConfig> methods,  String? defaultMethod,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentIntegration() when $default != null:
return $default(_that.active,_that.methods,_that.defaultMethod,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  List<PaymentMethodConfig> methods,  String? defaultMethod,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _PaymentIntegration():
return $default(_that.active,_that.methods,_that.defaultMethod,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  List<PaymentMethodConfig> methods,  String? defaultMethod,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _PaymentIntegration() when $default != null:
return $default(_that.active,_that.methods,_that.defaultMethod,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentIntegration extends PaymentIntegration {
  const _PaymentIntegration({this.active = true, final  List<PaymentMethodConfig> methods = const [], this.defaultMethod, final  Map<String, dynamic> metadata = const {}}): _methods = methods,_metadata = metadata,super._();
  factory _PaymentIntegration.fromJson(Map<String, dynamic> json) => _$PaymentIntegrationFromJson(json);

@override@JsonKey() final  bool active;
 final  List<PaymentMethodConfig> _methods;
@override@JsonKey() List<PaymentMethodConfig> get methods {
  if (_methods is EqualUnmodifiableListView) return _methods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_methods);
}

@override final  String? defaultMethod;
// Method ID to use by default
 final  Map<String, dynamic> _metadata;
// Method ID to use by default
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of PaymentIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentIntegrationCopyWith<_PaymentIntegration> get copyWith => __$PaymentIntegrationCopyWithImpl<_PaymentIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentIntegration&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._methods, _methods)&&(identical(other.defaultMethod, defaultMethod) || other.defaultMethod == defaultMethod)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,const DeepCollectionEquality().hash(_methods),defaultMethod,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'PaymentIntegration(active: $active, methods: $methods, defaultMethod: $defaultMethod, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$PaymentIntegrationCopyWith<$Res> implements $PaymentIntegrationCopyWith<$Res> {
  factory _$PaymentIntegrationCopyWith(_PaymentIntegration value, $Res Function(_PaymentIntegration) _then) = __$PaymentIntegrationCopyWithImpl;
@override @useResult
$Res call({
 bool active, List<PaymentMethodConfig> methods, String? defaultMethod, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$PaymentIntegrationCopyWithImpl<$Res>
    implements _$PaymentIntegrationCopyWith<$Res> {
  __$PaymentIntegrationCopyWithImpl(this._self, this._then);

  final _PaymentIntegration _self;
  final $Res Function(_PaymentIntegration) _then;

/// Create a copy of PaymentIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? methods = null,Object? defaultMethod = freezed,Object? metadata = null,}) {
  return _then(_PaymentIntegration(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,methods: null == methods ? _self._methods : methods // ignore: cast_nullable_to_non_nullable
as List<PaymentMethodConfig>,defaultMethod: freezed == defaultMethod ? _self.defaultMethod : defaultMethod // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$DispatcherIntegration {

 bool get active; OrdersDispatchStrategy? get strategy; Map<String, dynamic> get metadata;
/// Create a copy of DispatcherIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DispatcherIntegrationCopyWith<DispatcherIntegration> get copyWith => _$DispatcherIntegrationCopyWithImpl<DispatcherIntegration>(this as DispatcherIntegration, _$identity);

  /// Serializes this DispatcherIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DispatcherIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.strategy, strategy) || other.strategy == strategy)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,strategy,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'DispatcherIntegration(active: $active, strategy: $strategy, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $DispatcherIntegrationCopyWith<$Res>  {
  factory $DispatcherIntegrationCopyWith(DispatcherIntegration value, $Res Function(DispatcherIntegration) _then) = _$DispatcherIntegrationCopyWithImpl;
@useResult
$Res call({
 bool active, OrdersDispatchStrategy? strategy, Map<String, dynamic> metadata
});


$OrdersDispatchStrategyCopyWith<$Res>? get strategy;

}
/// @nodoc
class _$DispatcherIntegrationCopyWithImpl<$Res>
    implements $DispatcherIntegrationCopyWith<$Res> {
  _$DispatcherIntegrationCopyWithImpl(this._self, this._then);

  final DispatcherIntegration _self;
  final $Res Function(DispatcherIntegration) _then;

/// Create a copy of DispatcherIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? strategy = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,strategy: freezed == strategy ? _self.strategy : strategy // ignore: cast_nullable_to_non_nullable
as OrdersDispatchStrategy?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of DispatcherIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrdersDispatchStrategyCopyWith<$Res>? get strategy {
    if (_self.strategy == null) {
    return null;
  }

  return $OrdersDispatchStrategyCopyWith<$Res>(_self.strategy!, (value) {
    return _then(_self.copyWith(strategy: value));
  });
}
}


/// Adds pattern-matching-related methods to [DispatcherIntegration].
extension DispatcherIntegrationPatterns on DispatcherIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DispatcherIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DispatcherIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DispatcherIntegration value)  $default,){
final _that = this;
switch (_that) {
case _DispatcherIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DispatcherIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _DispatcherIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  OrdersDispatchStrategy? strategy,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DispatcherIntegration() when $default != null:
return $default(_that.active,_that.strategy,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  OrdersDispatchStrategy? strategy,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _DispatcherIntegration():
return $default(_that.active,_that.strategy,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  OrdersDispatchStrategy? strategy,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _DispatcherIntegration() when $default != null:
return $default(_that.active,_that.strategy,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DispatcherIntegration extends DispatcherIntegration {
  const _DispatcherIntegration({this.active = true, this.strategy, final  Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _DispatcherIntegration.fromJson(Map<String, dynamic> json) => _$DispatcherIntegrationFromJson(json);

@override@JsonKey() final  bool active;
@override final  OrdersDispatchStrategy? strategy;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of DispatcherIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DispatcherIntegrationCopyWith<_DispatcherIntegration> get copyWith => __$DispatcherIntegrationCopyWithImpl<_DispatcherIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DispatcherIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DispatcherIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.strategy, strategy) || other.strategy == strategy)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,strategy,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'DispatcherIntegration(active: $active, strategy: $strategy, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$DispatcherIntegrationCopyWith<$Res> implements $DispatcherIntegrationCopyWith<$Res> {
  factory _$DispatcherIntegrationCopyWith(_DispatcherIntegration value, $Res Function(_DispatcherIntegration) _then) = __$DispatcherIntegrationCopyWithImpl;
@override @useResult
$Res call({
 bool active, OrdersDispatchStrategy? strategy, Map<String, dynamic> metadata
});


@override $OrdersDispatchStrategyCopyWith<$Res>? get strategy;

}
/// @nodoc
class __$DispatcherIntegrationCopyWithImpl<$Res>
    implements _$DispatcherIntegrationCopyWith<$Res> {
  __$DispatcherIntegrationCopyWithImpl(this._self, this._then);

  final _DispatcherIntegration _self;
  final $Res Function(_DispatcherIntegration) _then;

/// Create a copy of DispatcherIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? strategy = freezed,Object? metadata = null,}) {
  return _then(_DispatcherIntegration(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,strategy: freezed == strategy ? _self.strategy : strategy // ignore: cast_nullable_to_non_nullable
as OrdersDispatchStrategy?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of DispatcherIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrdersDispatchStrategyCopyWith<$Res>? get strategy {
    if (_self.strategy == null) {
    return null;
  }

  return $OrdersDispatchStrategyCopyWith<$Res>(_self.strategy!, (value) {
    return _then(_self.copyWith(strategy: value));
  });
}
}

// dart format on
