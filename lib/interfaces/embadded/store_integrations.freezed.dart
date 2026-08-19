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

 Map<String, dynamic>? get metadata;/// Global Meta integration — credentials shared by every Meta feature.
/// Ads live here today; pixels may move over from [metaPixel] later.
 MetaIntegration? get meta;// Analytics Integrations
 MetaPixelIntegration? get metaPixel; TiktokPixelIntegration? get tiktokPixel; GoogleAnalyticsIntegration? get googleAnalytics; GoogleTagsIntegration? get googleTags;/// Microsoft Clarity (trackingCode public in storefront; apiKey never in public JSON).
 ClarityIntegration? get clarity; AiIntegration? get ai;// Delivery Integrations
 YalidineDeliveryIntegration? get yalidine; EcotrackDeliveryIntegration? get ecotrack; EcomanagerDeliveryIntegration? get ecomanager; ProcolisDeliveryIntegration? get procolis; NoestDeliveryIntegration? get noest; OrderdzDeliveryIntegration? get orderdz; ZimouExpressDeliveryIntegration? get zimou; ZrexpressDeliveryIntegration? get zrexpress; MdmExpressDeliveryIntegration? get mdmExpress;/// Feeef Delivery (Near Delivery white-label) — merchants never hold Near API keys.
 FeeefDeliveryIntegration? get feeefDelivery; MaystroDeliveryIntegration? get maystroDelivery;/// Codpilot mini-ERP (order confirmation / COD ops) — not a carrier.
 CodpilotIntegration? get codpilot;// Google Sheets Integration
 GoogleSheetsIntegration? get googleSheet;// Webhooks Integration
 WebhooksIntegration? get webhooks;// Security Integration
 SecurityIntegration? get security;// Custom Fields Integration
 CustomFieldsIntegration? get customFields;// Payment Integration
 PaymentIntegration? get payment;// Dispatcher Integration (order assignment to confirmers)
 DispatcherIntegration? get dispatcher;/// Inventory module (warehouses, stock, order reserve/consume).
 StoreInventoryIntegration? get inventory;/// Finance module (procurement, accounting).
 StoreFinanceIntegration? get finance;/// Inbound platform connectors (Shopify, YouCan, Google Sheets, …).
 ConnectorsIntegration? get connectors;// Communication Integrations
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreIntegrations&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.metaPixel, metaPixel) || other.metaPixel == metaPixel)&&(identical(other.tiktokPixel, tiktokPixel) || other.tiktokPixel == tiktokPixel)&&(identical(other.googleAnalytics, googleAnalytics) || other.googleAnalytics == googleAnalytics)&&(identical(other.googleTags, googleTags) || other.googleTags == googleTags)&&(identical(other.clarity, clarity) || other.clarity == clarity)&&(identical(other.ai, ai) || other.ai == ai)&&(identical(other.yalidine, yalidine) || other.yalidine == yalidine)&&(identical(other.ecotrack, ecotrack) || other.ecotrack == ecotrack)&&(identical(other.ecomanager, ecomanager) || other.ecomanager == ecomanager)&&(identical(other.procolis, procolis) || other.procolis == procolis)&&(identical(other.noest, noest) || other.noest == noest)&&(identical(other.orderdz, orderdz) || other.orderdz == orderdz)&&(identical(other.zimou, zimou) || other.zimou == zimou)&&(identical(other.zrexpress, zrexpress) || other.zrexpress == zrexpress)&&(identical(other.mdmExpress, mdmExpress) || other.mdmExpress == mdmExpress)&&(identical(other.feeefDelivery, feeefDelivery) || other.feeefDelivery == feeefDelivery)&&(identical(other.maystroDelivery, maystroDelivery) || other.maystroDelivery == maystroDelivery)&&(identical(other.codpilot, codpilot) || other.codpilot == codpilot)&&(identical(other.googleSheet, googleSheet) || other.googleSheet == googleSheet)&&(identical(other.webhooks, webhooks) || other.webhooks == webhooks)&&(identical(other.security, security) || other.security == security)&&(identical(other.customFields, customFields) || other.customFields == customFields)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.dispatcher, dispatcher) || other.dispatcher == dispatcher)&&(identical(other.inventory, inventory) || other.inventory == inventory)&&(identical(other.finance, finance) || other.finance == finance)&&(identical(other.connectors, connectors) || other.connectors == connectors)&&const DeepCollectionEquality().equals(other.sms, sms)&&const DeepCollectionEquality().equals(other.telegram, telegram));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(metadata),meta,metaPixel,tiktokPixel,googleAnalytics,googleTags,clarity,ai,yalidine,ecotrack,ecomanager,procolis,noest,orderdz,zimou,zrexpress,mdmExpress,feeefDelivery,maystroDelivery,codpilot,googleSheet,webhooks,security,customFields,payment,dispatcher,inventory,finance,connectors,const DeepCollectionEquality().hash(sms),const DeepCollectionEquality().hash(telegram)]);

@override
String toString() {
  return 'StoreIntegrations(metadata: $metadata, meta: $meta, metaPixel: $metaPixel, tiktokPixel: $tiktokPixel, googleAnalytics: $googleAnalytics, googleTags: $googleTags, clarity: $clarity, ai: $ai, yalidine: $yalidine, ecotrack: $ecotrack, ecomanager: $ecomanager, procolis: $procolis, noest: $noest, orderdz: $orderdz, zimou: $zimou, zrexpress: $zrexpress, mdmExpress: $mdmExpress, feeefDelivery: $feeefDelivery, maystroDelivery: $maystroDelivery, codpilot: $codpilot, googleSheet: $googleSheet, webhooks: $webhooks, security: $security, customFields: $customFields, payment: $payment, dispatcher: $dispatcher, inventory: $inventory, finance: $finance, connectors: $connectors, sms: $sms, telegram: $telegram)';
}


}

/// @nodoc
abstract mixin class $StoreIntegrationsCopyWith<$Res>  {
  factory $StoreIntegrationsCopyWith(StoreIntegrations value, $Res Function(StoreIntegrations) _then) = _$StoreIntegrationsCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? metadata, MetaIntegration? meta, MetaPixelIntegration? metaPixel, TiktokPixelIntegration? tiktokPixel, GoogleAnalyticsIntegration? googleAnalytics, GoogleTagsIntegration? googleTags, ClarityIntegration? clarity, AiIntegration? ai, YalidineDeliveryIntegration? yalidine, EcotrackDeliveryIntegration? ecotrack, EcomanagerDeliveryIntegration? ecomanager, ProcolisDeliveryIntegration? procolis, NoestDeliveryIntegration? noest, OrderdzDeliveryIntegration? orderdz, ZimouExpressDeliveryIntegration? zimou, ZrexpressDeliveryIntegration? zrexpress, MdmExpressDeliveryIntegration? mdmExpress, FeeefDeliveryIntegration? feeefDelivery, MaystroDeliveryIntegration? maystroDelivery, CodpilotIntegration? codpilot, GoogleSheetsIntegration? googleSheet, WebhooksIntegration? webhooks, SecurityIntegration? security, CustomFieldsIntegration? customFields, PaymentIntegration? payment, DispatcherIntegration? dispatcher, StoreInventoryIntegration? inventory, StoreFinanceIntegration? finance, ConnectorsIntegration? connectors, Map<String, dynamic>? sms, Map<String, dynamic>? telegram
});


$MetaIntegrationCopyWith<$Res>? get meta;$MetaPixelIntegrationCopyWith<$Res>? get metaPixel;$TiktokPixelIntegrationCopyWith<$Res>? get tiktokPixel;$GoogleAnalyticsIntegrationCopyWith<$Res>? get googleAnalytics;$GoogleTagsIntegrationCopyWith<$Res>? get googleTags;$ClarityIntegrationCopyWith<$Res>? get clarity;$AiIntegrationCopyWith<$Res>? get ai;$YalidineDeliveryIntegrationCopyWith<$Res>? get yalidine;$EcotrackDeliveryIntegrationCopyWith<$Res>? get ecotrack;$EcomanagerDeliveryIntegrationCopyWith<$Res>? get ecomanager;$ProcolisDeliveryIntegrationCopyWith<$Res>? get procolis;$NoestDeliveryIntegrationCopyWith<$Res>? get noest;$OrderdzDeliveryIntegrationCopyWith<$Res>? get orderdz;$ZimouExpressDeliveryIntegrationCopyWith<$Res>? get zimou;$ZrexpressDeliveryIntegrationCopyWith<$Res>? get zrexpress;$MdmExpressDeliveryIntegrationCopyWith<$Res>? get mdmExpress;$FeeefDeliveryIntegrationCopyWith<$Res>? get feeefDelivery;$MaystroDeliveryIntegrationCopyWith<$Res>? get maystroDelivery;$CodpilotIntegrationCopyWith<$Res>? get codpilot;$GoogleSheetsIntegrationCopyWith<$Res>? get googleSheet;$WebhooksIntegrationCopyWith<$Res>? get webhooks;$SecurityIntegrationCopyWith<$Res>? get security;$CustomFieldsIntegrationCopyWith<$Res>? get customFields;$PaymentIntegrationCopyWith<$Res>? get payment;$DispatcherIntegrationCopyWith<$Res>? get dispatcher;$StoreInventoryIntegrationCopyWith<$Res>? get inventory;$StoreFinanceIntegrationCopyWith<$Res>? get finance;$ConnectorsIntegrationCopyWith<$Res>? get connectors;

}
/// @nodoc
class _$StoreIntegrationsCopyWithImpl<$Res>
    implements $StoreIntegrationsCopyWith<$Res> {
  _$StoreIntegrationsCopyWithImpl(this._self, this._then);

  final StoreIntegrations _self;
  final $Res Function(StoreIntegrations) _then;

/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = freezed,Object? meta = freezed,Object? metaPixel = freezed,Object? tiktokPixel = freezed,Object? googleAnalytics = freezed,Object? googleTags = freezed,Object? clarity = freezed,Object? ai = freezed,Object? yalidine = freezed,Object? ecotrack = freezed,Object? ecomanager = freezed,Object? procolis = freezed,Object? noest = freezed,Object? orderdz = freezed,Object? zimou = freezed,Object? zrexpress = freezed,Object? mdmExpress = freezed,Object? feeefDelivery = freezed,Object? maystroDelivery = freezed,Object? codpilot = freezed,Object? googleSheet = freezed,Object? webhooks = freezed,Object? security = freezed,Object? customFields = freezed,Object? payment = freezed,Object? dispatcher = freezed,Object? inventory = freezed,Object? finance = freezed,Object? connectors = freezed,Object? sms = freezed,Object? telegram = freezed,}) {
  return _then(_self.copyWith(
metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaIntegration?,metaPixel: freezed == metaPixel ? _self.metaPixel : metaPixel // ignore: cast_nullable_to_non_nullable
as MetaPixelIntegration?,tiktokPixel: freezed == tiktokPixel ? _self.tiktokPixel : tiktokPixel // ignore: cast_nullable_to_non_nullable
as TiktokPixelIntegration?,googleAnalytics: freezed == googleAnalytics ? _self.googleAnalytics : googleAnalytics // ignore: cast_nullable_to_non_nullable
as GoogleAnalyticsIntegration?,googleTags: freezed == googleTags ? _self.googleTags : googleTags // ignore: cast_nullable_to_non_nullable
as GoogleTagsIntegration?,clarity: freezed == clarity ? _self.clarity : clarity // ignore: cast_nullable_to_non_nullable
as ClarityIntegration?,ai: freezed == ai ? _self.ai : ai // ignore: cast_nullable_to_non_nullable
as AiIntegration?,yalidine: freezed == yalidine ? _self.yalidine : yalidine // ignore: cast_nullable_to_non_nullable
as YalidineDeliveryIntegration?,ecotrack: freezed == ecotrack ? _self.ecotrack : ecotrack // ignore: cast_nullable_to_non_nullable
as EcotrackDeliveryIntegration?,ecomanager: freezed == ecomanager ? _self.ecomanager : ecomanager // ignore: cast_nullable_to_non_nullable
as EcomanagerDeliveryIntegration?,procolis: freezed == procolis ? _self.procolis : procolis // ignore: cast_nullable_to_non_nullable
as ProcolisDeliveryIntegration?,noest: freezed == noest ? _self.noest : noest // ignore: cast_nullable_to_non_nullable
as NoestDeliveryIntegration?,orderdz: freezed == orderdz ? _self.orderdz : orderdz // ignore: cast_nullable_to_non_nullable
as OrderdzDeliveryIntegration?,zimou: freezed == zimou ? _self.zimou : zimou // ignore: cast_nullable_to_non_nullable
as ZimouExpressDeliveryIntegration?,zrexpress: freezed == zrexpress ? _self.zrexpress : zrexpress // ignore: cast_nullable_to_non_nullable
as ZrexpressDeliveryIntegration?,mdmExpress: freezed == mdmExpress ? _self.mdmExpress : mdmExpress // ignore: cast_nullable_to_non_nullable
as MdmExpressDeliveryIntegration?,feeefDelivery: freezed == feeefDelivery ? _self.feeefDelivery : feeefDelivery // ignore: cast_nullable_to_non_nullable
as FeeefDeliveryIntegration?,maystroDelivery: freezed == maystroDelivery ? _self.maystroDelivery : maystroDelivery // ignore: cast_nullable_to_non_nullable
as MaystroDeliveryIntegration?,codpilot: freezed == codpilot ? _self.codpilot : codpilot // ignore: cast_nullable_to_non_nullable
as CodpilotIntegration?,googleSheet: freezed == googleSheet ? _self.googleSheet : googleSheet // ignore: cast_nullable_to_non_nullable
as GoogleSheetsIntegration?,webhooks: freezed == webhooks ? _self.webhooks : webhooks // ignore: cast_nullable_to_non_nullable
as WebhooksIntegration?,security: freezed == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as SecurityIntegration?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as CustomFieldsIntegration?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentIntegration?,dispatcher: freezed == dispatcher ? _self.dispatcher : dispatcher // ignore: cast_nullable_to_non_nullable
as DispatcherIntegration?,inventory: freezed == inventory ? _self.inventory : inventory // ignore: cast_nullable_to_non_nullable
as StoreInventoryIntegration?,finance: freezed == finance ? _self.finance : finance // ignore: cast_nullable_to_non_nullable
as StoreFinanceIntegration?,connectors: freezed == connectors ? _self.connectors : connectors // ignore: cast_nullable_to_non_nullable
as ConnectorsIntegration?,sms: freezed == sms ? _self.sms : sms // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,telegram: freezed == telegram ? _self.telegram : telegram // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaIntegrationCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaIntegrationCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of StoreIntegrations
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
$ClarityIntegrationCopyWith<$Res>? get clarity {
    if (_self.clarity == null) {
    return null;
  }

  return $ClarityIntegrationCopyWith<$Res>(_self.clarity!, (value) {
    return _then(_self.copyWith(clarity: value));
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
$MdmExpressDeliveryIntegrationCopyWith<$Res>? get mdmExpress {
    if (_self.mdmExpress == null) {
    return null;
  }

  return $MdmExpressDeliveryIntegrationCopyWith<$Res>(_self.mdmExpress!, (value) {
    return _then(_self.copyWith(mdmExpress: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeefDeliveryIntegrationCopyWith<$Res>? get feeefDelivery {
    if (_self.feeefDelivery == null) {
    return null;
  }

  return $FeeefDeliveryIntegrationCopyWith<$Res>(_self.feeefDelivery!, (value) {
    return _then(_self.copyWith(feeefDelivery: value));
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
$CodpilotIntegrationCopyWith<$Res>? get codpilot {
    if (_self.codpilot == null) {
    return null;
  }

  return $CodpilotIntegrationCopyWith<$Res>(_self.codpilot!, (value) {
    return _then(_self.copyWith(codpilot: value));
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
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreInventoryIntegrationCopyWith<$Res>? get inventory {
    if (_self.inventory == null) {
    return null;
  }

  return $StoreInventoryIntegrationCopyWith<$Res>(_self.inventory!, (value) {
    return _then(_self.copyWith(inventory: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreFinanceIntegrationCopyWith<$Res>? get finance {
    if (_self.finance == null) {
    return null;
  }

  return $StoreFinanceIntegrationCopyWith<$Res>(_self.finance!, (value) {
    return _then(_self.copyWith(finance: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectorsIntegrationCopyWith<$Res>? get connectors {
    if (_self.connectors == null) {
    return null;
  }

  return $ConnectorsIntegrationCopyWith<$Res>(_self.connectors!, (value) {
    return _then(_self.copyWith(connectors: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic>? metadata,  MetaIntegration? meta,  MetaPixelIntegration? metaPixel,  TiktokPixelIntegration? tiktokPixel,  GoogleAnalyticsIntegration? googleAnalytics,  GoogleTagsIntegration? googleTags,  ClarityIntegration? clarity,  AiIntegration? ai,  YalidineDeliveryIntegration? yalidine,  EcotrackDeliveryIntegration? ecotrack,  EcomanagerDeliveryIntegration? ecomanager,  ProcolisDeliveryIntegration? procolis,  NoestDeliveryIntegration? noest,  OrderdzDeliveryIntegration? orderdz,  ZimouExpressDeliveryIntegration? zimou,  ZrexpressDeliveryIntegration? zrexpress,  MdmExpressDeliveryIntegration? mdmExpress,  FeeefDeliveryIntegration? feeefDelivery,  MaystroDeliveryIntegration? maystroDelivery,  CodpilotIntegration? codpilot,  GoogleSheetsIntegration? googleSheet,  WebhooksIntegration? webhooks,  SecurityIntegration? security,  CustomFieldsIntegration? customFields,  PaymentIntegration? payment,  DispatcherIntegration? dispatcher,  StoreInventoryIntegration? inventory,  StoreFinanceIntegration? finance,  ConnectorsIntegration? connectors,  Map<String, dynamic>? sms,  Map<String, dynamic>? telegram)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreIntegrations() when $default != null:
return $default(_that.metadata,_that.meta,_that.metaPixel,_that.tiktokPixel,_that.googleAnalytics,_that.googleTags,_that.clarity,_that.ai,_that.yalidine,_that.ecotrack,_that.ecomanager,_that.procolis,_that.noest,_that.orderdz,_that.zimou,_that.zrexpress,_that.mdmExpress,_that.feeefDelivery,_that.maystroDelivery,_that.codpilot,_that.googleSheet,_that.webhooks,_that.security,_that.customFields,_that.payment,_that.dispatcher,_that.inventory,_that.finance,_that.connectors,_that.sms,_that.telegram);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic>? metadata,  MetaIntegration? meta,  MetaPixelIntegration? metaPixel,  TiktokPixelIntegration? tiktokPixel,  GoogleAnalyticsIntegration? googleAnalytics,  GoogleTagsIntegration? googleTags,  ClarityIntegration? clarity,  AiIntegration? ai,  YalidineDeliveryIntegration? yalidine,  EcotrackDeliveryIntegration? ecotrack,  EcomanagerDeliveryIntegration? ecomanager,  ProcolisDeliveryIntegration? procolis,  NoestDeliveryIntegration? noest,  OrderdzDeliveryIntegration? orderdz,  ZimouExpressDeliveryIntegration? zimou,  ZrexpressDeliveryIntegration? zrexpress,  MdmExpressDeliveryIntegration? mdmExpress,  FeeefDeliveryIntegration? feeefDelivery,  MaystroDeliveryIntegration? maystroDelivery,  CodpilotIntegration? codpilot,  GoogleSheetsIntegration? googleSheet,  WebhooksIntegration? webhooks,  SecurityIntegration? security,  CustomFieldsIntegration? customFields,  PaymentIntegration? payment,  DispatcherIntegration? dispatcher,  StoreInventoryIntegration? inventory,  StoreFinanceIntegration? finance,  ConnectorsIntegration? connectors,  Map<String, dynamic>? sms,  Map<String, dynamic>? telegram)  $default,) {final _that = this;
switch (_that) {
case _StoreIntegrations():
return $default(_that.metadata,_that.meta,_that.metaPixel,_that.tiktokPixel,_that.googleAnalytics,_that.googleTags,_that.clarity,_that.ai,_that.yalidine,_that.ecotrack,_that.ecomanager,_that.procolis,_that.noest,_that.orderdz,_that.zimou,_that.zrexpress,_that.mdmExpress,_that.feeefDelivery,_that.maystroDelivery,_that.codpilot,_that.googleSheet,_that.webhooks,_that.security,_that.customFields,_that.payment,_that.dispatcher,_that.inventory,_that.finance,_that.connectors,_that.sms,_that.telegram);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic>? metadata,  MetaIntegration? meta,  MetaPixelIntegration? metaPixel,  TiktokPixelIntegration? tiktokPixel,  GoogleAnalyticsIntegration? googleAnalytics,  GoogleTagsIntegration? googleTags,  ClarityIntegration? clarity,  AiIntegration? ai,  YalidineDeliveryIntegration? yalidine,  EcotrackDeliveryIntegration? ecotrack,  EcomanagerDeliveryIntegration? ecomanager,  ProcolisDeliveryIntegration? procolis,  NoestDeliveryIntegration? noest,  OrderdzDeliveryIntegration? orderdz,  ZimouExpressDeliveryIntegration? zimou,  ZrexpressDeliveryIntegration? zrexpress,  MdmExpressDeliveryIntegration? mdmExpress,  FeeefDeliveryIntegration? feeefDelivery,  MaystroDeliveryIntegration? maystroDelivery,  CodpilotIntegration? codpilot,  GoogleSheetsIntegration? googleSheet,  WebhooksIntegration? webhooks,  SecurityIntegration? security,  CustomFieldsIntegration? customFields,  PaymentIntegration? payment,  DispatcherIntegration? dispatcher,  StoreInventoryIntegration? inventory,  StoreFinanceIntegration? finance,  ConnectorsIntegration? connectors,  Map<String, dynamic>? sms,  Map<String, dynamic>? telegram)?  $default,) {final _that = this;
switch (_that) {
case _StoreIntegrations() when $default != null:
return $default(_that.metadata,_that.meta,_that.metaPixel,_that.tiktokPixel,_that.googleAnalytics,_that.googleTags,_that.clarity,_that.ai,_that.yalidine,_that.ecotrack,_that.ecomanager,_that.procolis,_that.noest,_that.orderdz,_that.zimou,_that.zrexpress,_that.mdmExpress,_that.feeefDelivery,_that.maystroDelivery,_that.codpilot,_that.googleSheet,_that.webhooks,_that.security,_that.customFields,_that.payment,_that.dispatcher,_that.inventory,_that.finance,_that.connectors,_that.sms,_that.telegram);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreIntegrations extends StoreIntegrations {
  const _StoreIntegrations({Map<String, dynamic>? metadata = const {}, this.meta, this.metaPixel, this.tiktokPixel, this.googleAnalytics, this.googleTags, this.clarity, this.ai, this.yalidine, this.ecotrack, this.ecomanager, this.procolis, this.noest, this.orderdz, this.zimou, this.zrexpress, this.mdmExpress, this.feeefDelivery, this.maystroDelivery, this.codpilot, this.googleSheet, this.webhooks, this.security, this.customFields, this.payment, this.dispatcher, this.inventory, this.finance, this.connectors, Map<String, dynamic>? sms = const {}, Map<String, dynamic>? telegram = const {}}): _metadata = metadata,_sms = sms,_telegram = telegram,super._();
  factory _StoreIntegrations.fromJson(Map<String, dynamic> json) => _$StoreIntegrationsFromJson(json);

 final  Map<String, dynamic>? _metadata;
@override@JsonKey() Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Global Meta integration — credentials shared by every Meta feature.
/// Ads live here today; pixels may move over from [metaPixel] later.
@override final  MetaIntegration? meta;
// Analytics Integrations
@override final  MetaPixelIntegration? metaPixel;
@override final  TiktokPixelIntegration? tiktokPixel;
@override final  GoogleAnalyticsIntegration? googleAnalytics;
@override final  GoogleTagsIntegration? googleTags;
/// Microsoft Clarity (trackingCode public in storefront; apiKey never in public JSON).
@override final  ClarityIntegration? clarity;
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
@override final  MdmExpressDeliveryIntegration? mdmExpress;
/// Feeef Delivery (Near Delivery white-label) — merchants never hold Near API keys.
@override final  FeeefDeliveryIntegration? feeefDelivery;
@override final  MaystroDeliveryIntegration? maystroDelivery;
/// Codpilot mini-ERP (order confirmation / COD ops) — not a carrier.
@override final  CodpilotIntegration? codpilot;
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
/// Inventory module (warehouses, stock, order reserve/consume).
@override final  StoreInventoryIntegration? inventory;
/// Finance module (procurement, accounting).
@override final  StoreFinanceIntegration? finance;
/// Inbound platform connectors (Shopify, YouCan, Google Sheets, …).
@override final  ConnectorsIntegration? connectors;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreIntegrations&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.metaPixel, metaPixel) || other.metaPixel == metaPixel)&&(identical(other.tiktokPixel, tiktokPixel) || other.tiktokPixel == tiktokPixel)&&(identical(other.googleAnalytics, googleAnalytics) || other.googleAnalytics == googleAnalytics)&&(identical(other.googleTags, googleTags) || other.googleTags == googleTags)&&(identical(other.clarity, clarity) || other.clarity == clarity)&&(identical(other.ai, ai) || other.ai == ai)&&(identical(other.yalidine, yalidine) || other.yalidine == yalidine)&&(identical(other.ecotrack, ecotrack) || other.ecotrack == ecotrack)&&(identical(other.ecomanager, ecomanager) || other.ecomanager == ecomanager)&&(identical(other.procolis, procolis) || other.procolis == procolis)&&(identical(other.noest, noest) || other.noest == noest)&&(identical(other.orderdz, orderdz) || other.orderdz == orderdz)&&(identical(other.zimou, zimou) || other.zimou == zimou)&&(identical(other.zrexpress, zrexpress) || other.zrexpress == zrexpress)&&(identical(other.mdmExpress, mdmExpress) || other.mdmExpress == mdmExpress)&&(identical(other.feeefDelivery, feeefDelivery) || other.feeefDelivery == feeefDelivery)&&(identical(other.maystroDelivery, maystroDelivery) || other.maystroDelivery == maystroDelivery)&&(identical(other.codpilot, codpilot) || other.codpilot == codpilot)&&(identical(other.googleSheet, googleSheet) || other.googleSheet == googleSheet)&&(identical(other.webhooks, webhooks) || other.webhooks == webhooks)&&(identical(other.security, security) || other.security == security)&&(identical(other.customFields, customFields) || other.customFields == customFields)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.dispatcher, dispatcher) || other.dispatcher == dispatcher)&&(identical(other.inventory, inventory) || other.inventory == inventory)&&(identical(other.finance, finance) || other.finance == finance)&&(identical(other.connectors, connectors) || other.connectors == connectors)&&const DeepCollectionEquality().equals(other._sms, _sms)&&const DeepCollectionEquality().equals(other._telegram, _telegram));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_metadata),meta,metaPixel,tiktokPixel,googleAnalytics,googleTags,clarity,ai,yalidine,ecotrack,ecomanager,procolis,noest,orderdz,zimou,zrexpress,mdmExpress,feeefDelivery,maystroDelivery,codpilot,googleSheet,webhooks,security,customFields,payment,dispatcher,inventory,finance,connectors,const DeepCollectionEquality().hash(_sms),const DeepCollectionEquality().hash(_telegram)]);

@override
String toString() {
  return 'StoreIntegrations(metadata: $metadata, meta: $meta, metaPixel: $metaPixel, tiktokPixel: $tiktokPixel, googleAnalytics: $googleAnalytics, googleTags: $googleTags, clarity: $clarity, ai: $ai, yalidine: $yalidine, ecotrack: $ecotrack, ecomanager: $ecomanager, procolis: $procolis, noest: $noest, orderdz: $orderdz, zimou: $zimou, zrexpress: $zrexpress, mdmExpress: $mdmExpress, feeefDelivery: $feeefDelivery, maystroDelivery: $maystroDelivery, codpilot: $codpilot, googleSheet: $googleSheet, webhooks: $webhooks, security: $security, customFields: $customFields, payment: $payment, dispatcher: $dispatcher, inventory: $inventory, finance: $finance, connectors: $connectors, sms: $sms, telegram: $telegram)';
}


}

/// @nodoc
abstract mixin class _$StoreIntegrationsCopyWith<$Res> implements $StoreIntegrationsCopyWith<$Res> {
  factory _$StoreIntegrationsCopyWith(_StoreIntegrations value, $Res Function(_StoreIntegrations) _then) = __$StoreIntegrationsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic>? metadata, MetaIntegration? meta, MetaPixelIntegration? metaPixel, TiktokPixelIntegration? tiktokPixel, GoogleAnalyticsIntegration? googleAnalytics, GoogleTagsIntegration? googleTags, ClarityIntegration? clarity, AiIntegration? ai, YalidineDeliveryIntegration? yalidine, EcotrackDeliveryIntegration? ecotrack, EcomanagerDeliveryIntegration? ecomanager, ProcolisDeliveryIntegration? procolis, NoestDeliveryIntegration? noest, OrderdzDeliveryIntegration? orderdz, ZimouExpressDeliveryIntegration? zimou, ZrexpressDeliveryIntegration? zrexpress, MdmExpressDeliveryIntegration? mdmExpress, FeeefDeliveryIntegration? feeefDelivery, MaystroDeliveryIntegration? maystroDelivery, CodpilotIntegration? codpilot, GoogleSheetsIntegration? googleSheet, WebhooksIntegration? webhooks, SecurityIntegration? security, CustomFieldsIntegration? customFields, PaymentIntegration? payment, DispatcherIntegration? dispatcher, StoreInventoryIntegration? inventory, StoreFinanceIntegration? finance, ConnectorsIntegration? connectors, Map<String, dynamic>? sms, Map<String, dynamic>? telegram
});


@override $MetaIntegrationCopyWith<$Res>? get meta;@override $MetaPixelIntegrationCopyWith<$Res>? get metaPixel;@override $TiktokPixelIntegrationCopyWith<$Res>? get tiktokPixel;@override $GoogleAnalyticsIntegrationCopyWith<$Res>? get googleAnalytics;@override $GoogleTagsIntegrationCopyWith<$Res>? get googleTags;@override $ClarityIntegrationCopyWith<$Res>? get clarity;@override $AiIntegrationCopyWith<$Res>? get ai;@override $YalidineDeliveryIntegrationCopyWith<$Res>? get yalidine;@override $EcotrackDeliveryIntegrationCopyWith<$Res>? get ecotrack;@override $EcomanagerDeliveryIntegrationCopyWith<$Res>? get ecomanager;@override $ProcolisDeliveryIntegrationCopyWith<$Res>? get procolis;@override $NoestDeliveryIntegrationCopyWith<$Res>? get noest;@override $OrderdzDeliveryIntegrationCopyWith<$Res>? get orderdz;@override $ZimouExpressDeliveryIntegrationCopyWith<$Res>? get zimou;@override $ZrexpressDeliveryIntegrationCopyWith<$Res>? get zrexpress;@override $MdmExpressDeliveryIntegrationCopyWith<$Res>? get mdmExpress;@override $FeeefDeliveryIntegrationCopyWith<$Res>? get feeefDelivery;@override $MaystroDeliveryIntegrationCopyWith<$Res>? get maystroDelivery;@override $CodpilotIntegrationCopyWith<$Res>? get codpilot;@override $GoogleSheetsIntegrationCopyWith<$Res>? get googleSheet;@override $WebhooksIntegrationCopyWith<$Res>? get webhooks;@override $SecurityIntegrationCopyWith<$Res>? get security;@override $CustomFieldsIntegrationCopyWith<$Res>? get customFields;@override $PaymentIntegrationCopyWith<$Res>? get payment;@override $DispatcherIntegrationCopyWith<$Res>? get dispatcher;@override $StoreInventoryIntegrationCopyWith<$Res>? get inventory;@override $StoreFinanceIntegrationCopyWith<$Res>? get finance;@override $ConnectorsIntegrationCopyWith<$Res>? get connectors;

}
/// @nodoc
class __$StoreIntegrationsCopyWithImpl<$Res>
    implements _$StoreIntegrationsCopyWith<$Res> {
  __$StoreIntegrationsCopyWithImpl(this._self, this._then);

  final _StoreIntegrations _self;
  final $Res Function(_StoreIntegrations) _then;

/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = freezed,Object? meta = freezed,Object? metaPixel = freezed,Object? tiktokPixel = freezed,Object? googleAnalytics = freezed,Object? googleTags = freezed,Object? clarity = freezed,Object? ai = freezed,Object? yalidine = freezed,Object? ecotrack = freezed,Object? ecomanager = freezed,Object? procolis = freezed,Object? noest = freezed,Object? orderdz = freezed,Object? zimou = freezed,Object? zrexpress = freezed,Object? mdmExpress = freezed,Object? feeefDelivery = freezed,Object? maystroDelivery = freezed,Object? codpilot = freezed,Object? googleSheet = freezed,Object? webhooks = freezed,Object? security = freezed,Object? customFields = freezed,Object? payment = freezed,Object? dispatcher = freezed,Object? inventory = freezed,Object? finance = freezed,Object? connectors = freezed,Object? sms = freezed,Object? telegram = freezed,}) {
  return _then(_StoreIntegrations(
metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaIntegration?,metaPixel: freezed == metaPixel ? _self.metaPixel : metaPixel // ignore: cast_nullable_to_non_nullable
as MetaPixelIntegration?,tiktokPixel: freezed == tiktokPixel ? _self.tiktokPixel : tiktokPixel // ignore: cast_nullable_to_non_nullable
as TiktokPixelIntegration?,googleAnalytics: freezed == googleAnalytics ? _self.googleAnalytics : googleAnalytics // ignore: cast_nullable_to_non_nullable
as GoogleAnalyticsIntegration?,googleTags: freezed == googleTags ? _self.googleTags : googleTags // ignore: cast_nullable_to_non_nullable
as GoogleTagsIntegration?,clarity: freezed == clarity ? _self.clarity : clarity // ignore: cast_nullable_to_non_nullable
as ClarityIntegration?,ai: freezed == ai ? _self.ai : ai // ignore: cast_nullable_to_non_nullable
as AiIntegration?,yalidine: freezed == yalidine ? _self.yalidine : yalidine // ignore: cast_nullable_to_non_nullable
as YalidineDeliveryIntegration?,ecotrack: freezed == ecotrack ? _self.ecotrack : ecotrack // ignore: cast_nullable_to_non_nullable
as EcotrackDeliveryIntegration?,ecomanager: freezed == ecomanager ? _self.ecomanager : ecomanager // ignore: cast_nullable_to_non_nullable
as EcomanagerDeliveryIntegration?,procolis: freezed == procolis ? _self.procolis : procolis // ignore: cast_nullable_to_non_nullable
as ProcolisDeliveryIntegration?,noest: freezed == noest ? _self.noest : noest // ignore: cast_nullable_to_non_nullable
as NoestDeliveryIntegration?,orderdz: freezed == orderdz ? _self.orderdz : orderdz // ignore: cast_nullable_to_non_nullable
as OrderdzDeliveryIntegration?,zimou: freezed == zimou ? _self.zimou : zimou // ignore: cast_nullable_to_non_nullable
as ZimouExpressDeliveryIntegration?,zrexpress: freezed == zrexpress ? _self.zrexpress : zrexpress // ignore: cast_nullable_to_non_nullable
as ZrexpressDeliveryIntegration?,mdmExpress: freezed == mdmExpress ? _self.mdmExpress : mdmExpress // ignore: cast_nullable_to_non_nullable
as MdmExpressDeliveryIntegration?,feeefDelivery: freezed == feeefDelivery ? _self.feeefDelivery : feeefDelivery // ignore: cast_nullable_to_non_nullable
as FeeefDeliveryIntegration?,maystroDelivery: freezed == maystroDelivery ? _self.maystroDelivery : maystroDelivery // ignore: cast_nullable_to_non_nullable
as MaystroDeliveryIntegration?,codpilot: freezed == codpilot ? _self.codpilot : codpilot // ignore: cast_nullable_to_non_nullable
as CodpilotIntegration?,googleSheet: freezed == googleSheet ? _self.googleSheet : googleSheet // ignore: cast_nullable_to_non_nullable
as GoogleSheetsIntegration?,webhooks: freezed == webhooks ? _self.webhooks : webhooks // ignore: cast_nullable_to_non_nullable
as WebhooksIntegration?,security: freezed == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as SecurityIntegration?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as CustomFieldsIntegration?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentIntegration?,dispatcher: freezed == dispatcher ? _self.dispatcher : dispatcher // ignore: cast_nullable_to_non_nullable
as DispatcherIntegration?,inventory: freezed == inventory ? _self.inventory : inventory // ignore: cast_nullable_to_non_nullable
as StoreInventoryIntegration?,finance: freezed == finance ? _self.finance : finance // ignore: cast_nullable_to_non_nullable
as StoreFinanceIntegration?,connectors: freezed == connectors ? _self.connectors : connectors // ignore: cast_nullable_to_non_nullable
as ConnectorsIntegration?,sms: freezed == sms ? _self._sms : sms // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,telegram: freezed == telegram ? _self._telegram : telegram // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaIntegrationCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaIntegrationCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of StoreIntegrations
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
$ClarityIntegrationCopyWith<$Res>? get clarity {
    if (_self.clarity == null) {
    return null;
  }

  return $ClarityIntegrationCopyWith<$Res>(_self.clarity!, (value) {
    return _then(_self.copyWith(clarity: value));
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
$MdmExpressDeliveryIntegrationCopyWith<$Res>? get mdmExpress {
    if (_self.mdmExpress == null) {
    return null;
  }

  return $MdmExpressDeliveryIntegrationCopyWith<$Res>(_self.mdmExpress!, (value) {
    return _then(_self.copyWith(mdmExpress: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeefDeliveryIntegrationCopyWith<$Res>? get feeefDelivery {
    if (_self.feeefDelivery == null) {
    return null;
  }

  return $FeeefDeliveryIntegrationCopyWith<$Res>(_self.feeefDelivery!, (value) {
    return _then(_self.copyWith(feeefDelivery: value));
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
$CodpilotIntegrationCopyWith<$Res>? get codpilot {
    if (_self.codpilot == null) {
    return null;
  }

  return $CodpilotIntegrationCopyWith<$Res>(_self.codpilot!, (value) {
    return _then(_self.copyWith(codpilot: value));
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
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreInventoryIntegrationCopyWith<$Res>? get inventory {
    if (_self.inventory == null) {
    return null;
  }

  return $StoreInventoryIntegrationCopyWith<$Res>(_self.inventory!, (value) {
    return _then(_self.copyWith(inventory: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreFinanceIntegrationCopyWith<$Res>? get finance {
    if (_self.finance == null) {
    return null;
  }

  return $StoreFinanceIntegrationCopyWith<$Res>(_self.finance!, (value) {
    return _then(_self.copyWith(finance: value));
  });
}/// Create a copy of StoreIntegrations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectorsIntegrationCopyWith<$Res>? get connectors {
    if (_self.connectors == null) {
    return null;
  }

  return $ConnectorsIntegrationCopyWith<$Res>(_self.connectors!, (value) {
    return _then(_self.copyWith(connectors: value));
  });
}
}


/// @nodoc
mixin _$PixelStatusRule {

 String get id; PixelStatusDimension get dimension; String get equals; MetaPixelEvent? get metaEvent; TiktokPixelEvent? get tiktokEvent;/// When set, takes precedence over [metaEvent] (Meta CAPI custom name).
 String? get metaCustomEvent; String? get tiktokCustomEvent;
/// Create a copy of PixelStatusRule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PixelStatusRuleCopyWith<PixelStatusRule> get copyWith => _$PixelStatusRuleCopyWithImpl<PixelStatusRule>(this as PixelStatusRule, _$identity);

  /// Serializes this PixelStatusRule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PixelStatusRule&&(identical(other.id, id) || other.id == id)&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.equals, equals) || other.equals == equals)&&(identical(other.metaEvent, metaEvent) || other.metaEvent == metaEvent)&&(identical(other.tiktokEvent, tiktokEvent) || other.tiktokEvent == tiktokEvent)&&(identical(other.metaCustomEvent, metaCustomEvent) || other.metaCustomEvent == metaCustomEvent)&&(identical(other.tiktokCustomEvent, tiktokCustomEvent) || other.tiktokCustomEvent == tiktokCustomEvent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dimension,equals,metaEvent,tiktokEvent,metaCustomEvent,tiktokCustomEvent);

@override
String toString() {
  return 'PixelStatusRule(id: $id, dimension: $dimension, equals: $equals, metaEvent: $metaEvent, tiktokEvent: $tiktokEvent, metaCustomEvent: $metaCustomEvent, tiktokCustomEvent: $tiktokCustomEvent)';
}


}

/// @nodoc
abstract mixin class $PixelStatusRuleCopyWith<$Res>  {
  factory $PixelStatusRuleCopyWith(PixelStatusRule value, $Res Function(PixelStatusRule) _then) = _$PixelStatusRuleCopyWithImpl;
@useResult
$Res call({
 String id, PixelStatusDimension dimension, String equals, MetaPixelEvent? metaEvent, TiktokPixelEvent? tiktokEvent, String? metaCustomEvent, String? tiktokCustomEvent
});




}
/// @nodoc
class _$PixelStatusRuleCopyWithImpl<$Res>
    implements $PixelStatusRuleCopyWith<$Res> {
  _$PixelStatusRuleCopyWithImpl(this._self, this._then);

  final PixelStatusRule _self;
  final $Res Function(PixelStatusRule) _then;

/// Create a copy of PixelStatusRule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dimension = null,Object? equals = null,Object? metaEvent = freezed,Object? tiktokEvent = freezed,Object? metaCustomEvent = freezed,Object? tiktokCustomEvent = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as PixelStatusDimension,equals: null == equals ? _self.equals : equals // ignore: cast_nullable_to_non_nullable
as String,metaEvent: freezed == metaEvent ? _self.metaEvent : metaEvent // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent?,tiktokEvent: freezed == tiktokEvent ? _self.tiktokEvent : tiktokEvent // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent?,metaCustomEvent: freezed == metaCustomEvent ? _self.metaCustomEvent : metaCustomEvent // ignore: cast_nullable_to_non_nullable
as String?,tiktokCustomEvent: freezed == tiktokCustomEvent ? _self.tiktokCustomEvent : tiktokCustomEvent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PixelStatusRule].
extension PixelStatusRulePatterns on PixelStatusRule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PixelStatusRule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PixelStatusRule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PixelStatusRule value)  $default,){
final _that = this;
switch (_that) {
case _PixelStatusRule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PixelStatusRule value)?  $default,){
final _that = this;
switch (_that) {
case _PixelStatusRule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  PixelStatusDimension dimension,  String equals,  MetaPixelEvent? metaEvent,  TiktokPixelEvent? tiktokEvent,  String? metaCustomEvent,  String? tiktokCustomEvent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PixelStatusRule() when $default != null:
return $default(_that.id,_that.dimension,_that.equals,_that.metaEvent,_that.tiktokEvent,_that.metaCustomEvent,_that.tiktokCustomEvent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  PixelStatusDimension dimension,  String equals,  MetaPixelEvent? metaEvent,  TiktokPixelEvent? tiktokEvent,  String? metaCustomEvent,  String? tiktokCustomEvent)  $default,) {final _that = this;
switch (_that) {
case _PixelStatusRule():
return $default(_that.id,_that.dimension,_that.equals,_that.metaEvent,_that.tiktokEvent,_that.metaCustomEvent,_that.tiktokCustomEvent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  PixelStatusDimension dimension,  String equals,  MetaPixelEvent? metaEvent,  TiktokPixelEvent? tiktokEvent,  String? metaCustomEvent,  String? tiktokCustomEvent)?  $default,) {final _that = this;
switch (_that) {
case _PixelStatusRule() when $default != null:
return $default(_that.id,_that.dimension,_that.equals,_that.metaEvent,_that.tiktokEvent,_that.metaCustomEvent,_that.tiktokCustomEvent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PixelStatusRule implements PixelStatusRule {
  const _PixelStatusRule({required this.id, required this.dimension, required this.equals, this.metaEvent, this.tiktokEvent, this.metaCustomEvent, this.tiktokCustomEvent});
  factory _PixelStatusRule.fromJson(Map<String, dynamic> json) => _$PixelStatusRuleFromJson(json);

@override final  String id;
@override final  PixelStatusDimension dimension;
@override final  String equals;
@override final  MetaPixelEvent? metaEvent;
@override final  TiktokPixelEvent? tiktokEvent;
/// When set, takes precedence over [metaEvent] (Meta CAPI custom name).
@override final  String? metaCustomEvent;
@override final  String? tiktokCustomEvent;

/// Create a copy of PixelStatusRule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PixelStatusRuleCopyWith<_PixelStatusRule> get copyWith => __$PixelStatusRuleCopyWithImpl<_PixelStatusRule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PixelStatusRuleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PixelStatusRule&&(identical(other.id, id) || other.id == id)&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.equals, equals) || other.equals == equals)&&(identical(other.metaEvent, metaEvent) || other.metaEvent == metaEvent)&&(identical(other.tiktokEvent, tiktokEvent) || other.tiktokEvent == tiktokEvent)&&(identical(other.metaCustomEvent, metaCustomEvent) || other.metaCustomEvent == metaCustomEvent)&&(identical(other.tiktokCustomEvent, tiktokCustomEvent) || other.tiktokCustomEvent == tiktokCustomEvent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dimension,equals,metaEvent,tiktokEvent,metaCustomEvent,tiktokCustomEvent);

@override
String toString() {
  return 'PixelStatusRule(id: $id, dimension: $dimension, equals: $equals, metaEvent: $metaEvent, tiktokEvent: $tiktokEvent, metaCustomEvent: $metaCustomEvent, tiktokCustomEvent: $tiktokCustomEvent)';
}


}

/// @nodoc
abstract mixin class _$PixelStatusRuleCopyWith<$Res> implements $PixelStatusRuleCopyWith<$Res> {
  factory _$PixelStatusRuleCopyWith(_PixelStatusRule value, $Res Function(_PixelStatusRule) _then) = __$PixelStatusRuleCopyWithImpl;
@override @useResult
$Res call({
 String id, PixelStatusDimension dimension, String equals, MetaPixelEvent? metaEvent, TiktokPixelEvent? tiktokEvent, String? metaCustomEvent, String? tiktokCustomEvent
});




}
/// @nodoc
class __$PixelStatusRuleCopyWithImpl<$Res>
    implements _$PixelStatusRuleCopyWith<$Res> {
  __$PixelStatusRuleCopyWithImpl(this._self, this._then);

  final _PixelStatusRule _self;
  final $Res Function(_PixelStatusRule) _then;

/// Create a copy of PixelStatusRule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dimension = null,Object? equals = null,Object? metaEvent = freezed,Object? tiktokEvent = freezed,Object? metaCustomEvent = freezed,Object? tiktokCustomEvent = freezed,}) {
  return _then(_PixelStatusRule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as PixelStatusDimension,equals: null == equals ? _self.equals : equals // ignore: cast_nullable_to_non_nullable
as String,metaEvent: freezed == metaEvent ? _self.metaEvent : metaEvent // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent?,tiktokEvent: freezed == tiktokEvent ? _self.tiktokEvent : tiktokEvent // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent?,metaCustomEvent: freezed == metaCustomEvent ? _self.metaCustomEvent : metaCustomEvent // ignore: cast_nullable_to_non_nullable
as String?,tiktokCustomEvent: freezed == tiktokCustomEvent ? _self.tiktokCustomEvent : tiktokCustomEvent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
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
  const _FacebookMarketingOAuth({required this.accessToken, this.tokenType = 'bearer', this.expiresIn, this.expiresAt, List<String> scopes = const []}): _scopes = scopes,super._();
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
mixin _$MetaAdAccountRef {

/// Graph node id, `act_123`.
 String get id;/// Bare numeric id, `123`.
 String get accountId; String? get name; String? get currency; String? get timezoneName; int? get accountStatus;
/// Create a copy of MetaAdAccountRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaAdAccountRefCopyWith<MetaAdAccountRef> get copyWith => _$MetaAdAccountRefCopyWithImpl<MetaAdAccountRef>(this as MetaAdAccountRef, _$identity);

  /// Serializes this MetaAdAccountRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaAdAccountRef&&(identical(other.id, id) || other.id == id)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.name, name) || other.name == name)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.timezoneName, timezoneName) || other.timezoneName == timezoneName)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,accountId,name,currency,timezoneName,accountStatus);

@override
String toString() {
  return 'MetaAdAccountRef(id: $id, accountId: $accountId, name: $name, currency: $currency, timezoneName: $timezoneName, accountStatus: $accountStatus)';
}


}

/// @nodoc
abstract mixin class $MetaAdAccountRefCopyWith<$Res>  {
  factory $MetaAdAccountRefCopyWith(MetaAdAccountRef value, $Res Function(MetaAdAccountRef) _then) = _$MetaAdAccountRefCopyWithImpl;
@useResult
$Res call({
 String id, String accountId, String? name, String? currency, String? timezoneName, int? accountStatus
});




}
/// @nodoc
class _$MetaAdAccountRefCopyWithImpl<$Res>
    implements $MetaAdAccountRefCopyWith<$Res> {
  _$MetaAdAccountRefCopyWithImpl(this._self, this._then);

  final MetaAdAccountRef _self;
  final $Res Function(MetaAdAccountRef) _then;

/// Create a copy of MetaAdAccountRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? accountId = null,Object? name = freezed,Object? currency = freezed,Object? timezoneName = freezed,Object? accountStatus = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,timezoneName: freezed == timezoneName ? _self.timezoneName : timezoneName // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [MetaAdAccountRef].
extension MetaAdAccountRefPatterns on MetaAdAccountRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetaAdAccountRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaAdAccountRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetaAdAccountRef value)  $default,){
final _that = this;
switch (_that) {
case _MetaAdAccountRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetaAdAccountRef value)?  $default,){
final _that = this;
switch (_that) {
case _MetaAdAccountRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String accountId,  String? name,  String? currency,  String? timezoneName,  int? accountStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaAdAccountRef() when $default != null:
return $default(_that.id,_that.accountId,_that.name,_that.currency,_that.timezoneName,_that.accountStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String accountId,  String? name,  String? currency,  String? timezoneName,  int? accountStatus)  $default,) {final _that = this;
switch (_that) {
case _MetaAdAccountRef():
return $default(_that.id,_that.accountId,_that.name,_that.currency,_that.timezoneName,_that.accountStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String accountId,  String? name,  String? currency,  String? timezoneName,  int? accountStatus)?  $default,) {final _that = this;
switch (_that) {
case _MetaAdAccountRef() when $default != null:
return $default(_that.id,_that.accountId,_that.name,_that.currency,_that.timezoneName,_that.accountStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetaAdAccountRef extends MetaAdAccountRef {
  const _MetaAdAccountRef({required this.id, this.accountId = '', this.name, this.currency, this.timezoneName, this.accountStatus}): super._();
  factory _MetaAdAccountRef.fromJson(Map<String, dynamic> json) => _$MetaAdAccountRefFromJson(json);

/// Graph node id, `act_123`.
@override final  String id;
/// Bare numeric id, `123`.
@override@JsonKey() final  String accountId;
@override final  String? name;
@override final  String? currency;
@override final  String? timezoneName;
@override final  int? accountStatus;

/// Create a copy of MetaAdAccountRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaAdAccountRefCopyWith<_MetaAdAccountRef> get copyWith => __$MetaAdAccountRefCopyWithImpl<_MetaAdAccountRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaAdAccountRefToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaAdAccountRef&&(identical(other.id, id) || other.id == id)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.name, name) || other.name == name)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.timezoneName, timezoneName) || other.timezoneName == timezoneName)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,accountId,name,currency,timezoneName,accountStatus);

@override
String toString() {
  return 'MetaAdAccountRef(id: $id, accountId: $accountId, name: $name, currency: $currency, timezoneName: $timezoneName, accountStatus: $accountStatus)';
}


}

/// @nodoc
abstract mixin class _$MetaAdAccountRefCopyWith<$Res> implements $MetaAdAccountRefCopyWith<$Res> {
  factory _$MetaAdAccountRefCopyWith(_MetaAdAccountRef value, $Res Function(_MetaAdAccountRef) _then) = __$MetaAdAccountRefCopyWithImpl;
@override @useResult
$Res call({
 String id, String accountId, String? name, String? currency, String? timezoneName, int? accountStatus
});




}
/// @nodoc
class __$MetaAdAccountRefCopyWithImpl<$Res>
    implements _$MetaAdAccountRefCopyWith<$Res> {
  __$MetaAdAccountRefCopyWithImpl(this._self, this._then);

  final _MetaAdAccountRef _self;
  final $Res Function(_MetaAdAccountRef) _then;

/// Create a copy of MetaAdAccountRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? accountId = null,Object? name = freezed,Object? currency = freezed,Object? timezoneName = freezed,Object? accountStatus = freezed,}) {
  return _then(_MetaAdAccountRef(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,timezoneName: freezed == timezoneName ? _self.timezoneName : timezoneName // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$MetaAdsConfig {

 bool get active; List<MetaAdAccountRef> get adAccounts; String? get defaultAdAccountId;/// Default insights window for the dashboard, e.g. `last_7d`.
 String get defaultDatePreset;/// Extra hosts that count as this store's storefront when matching ad links.
 List<String> get extraStoreHosts; Map<String, dynamic> get metadata;
/// Create a copy of MetaAdsConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaAdsConfigCopyWith<MetaAdsConfig> get copyWith => _$MetaAdsConfigCopyWithImpl<MetaAdsConfig>(this as MetaAdsConfig, _$identity);

  /// Serializes this MetaAdsConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaAdsConfig&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.adAccounts, adAccounts)&&(identical(other.defaultAdAccountId, defaultAdAccountId) || other.defaultAdAccountId == defaultAdAccountId)&&(identical(other.defaultDatePreset, defaultDatePreset) || other.defaultDatePreset == defaultDatePreset)&&const DeepCollectionEquality().equals(other.extraStoreHosts, extraStoreHosts)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,const DeepCollectionEquality().hash(adAccounts),defaultAdAccountId,defaultDatePreset,const DeepCollectionEquality().hash(extraStoreHosts),const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'MetaAdsConfig(active: $active, adAccounts: $adAccounts, defaultAdAccountId: $defaultAdAccountId, defaultDatePreset: $defaultDatePreset, extraStoreHosts: $extraStoreHosts, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $MetaAdsConfigCopyWith<$Res>  {
  factory $MetaAdsConfigCopyWith(MetaAdsConfig value, $Res Function(MetaAdsConfig) _then) = _$MetaAdsConfigCopyWithImpl;
@useResult
$Res call({
 bool active, List<MetaAdAccountRef> adAccounts, String? defaultAdAccountId, String defaultDatePreset, List<String> extraStoreHosts, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$MetaAdsConfigCopyWithImpl<$Res>
    implements $MetaAdsConfigCopyWith<$Res> {
  _$MetaAdsConfigCopyWithImpl(this._self, this._then);

  final MetaAdsConfig _self;
  final $Res Function(MetaAdsConfig) _then;

/// Create a copy of MetaAdsConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? adAccounts = null,Object? defaultAdAccountId = freezed,Object? defaultDatePreset = null,Object? extraStoreHosts = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,adAccounts: null == adAccounts ? _self.adAccounts : adAccounts // ignore: cast_nullable_to_non_nullable
as List<MetaAdAccountRef>,defaultAdAccountId: freezed == defaultAdAccountId ? _self.defaultAdAccountId : defaultAdAccountId // ignore: cast_nullable_to_non_nullable
as String?,defaultDatePreset: null == defaultDatePreset ? _self.defaultDatePreset : defaultDatePreset // ignore: cast_nullable_to_non_nullable
as String,extraStoreHosts: null == extraStoreHosts ? _self.extraStoreHosts : extraStoreHosts // ignore: cast_nullable_to_non_nullable
as List<String>,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [MetaAdsConfig].
extension MetaAdsConfigPatterns on MetaAdsConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetaAdsConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaAdsConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetaAdsConfig value)  $default,){
final _that = this;
switch (_that) {
case _MetaAdsConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetaAdsConfig value)?  $default,){
final _that = this;
switch (_that) {
case _MetaAdsConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  List<MetaAdAccountRef> adAccounts,  String? defaultAdAccountId,  String defaultDatePreset,  List<String> extraStoreHosts,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaAdsConfig() when $default != null:
return $default(_that.active,_that.adAccounts,_that.defaultAdAccountId,_that.defaultDatePreset,_that.extraStoreHosts,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  List<MetaAdAccountRef> adAccounts,  String? defaultAdAccountId,  String defaultDatePreset,  List<String> extraStoreHosts,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _MetaAdsConfig():
return $default(_that.active,_that.adAccounts,_that.defaultAdAccountId,_that.defaultDatePreset,_that.extraStoreHosts,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  List<MetaAdAccountRef> adAccounts,  String? defaultAdAccountId,  String defaultDatePreset,  List<String> extraStoreHosts,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _MetaAdsConfig() when $default != null:
return $default(_that.active,_that.adAccounts,_that.defaultAdAccountId,_that.defaultDatePreset,_that.extraStoreHosts,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetaAdsConfig extends MetaAdsConfig {
  const _MetaAdsConfig({this.active = true, List<MetaAdAccountRef> adAccounts = const [], this.defaultAdAccountId, this.defaultDatePreset = 'last_7d', List<String> extraStoreHosts = const [], Map<String, dynamic> metadata = const {}}): _adAccounts = adAccounts,_extraStoreHosts = extraStoreHosts,_metadata = metadata,super._();
  factory _MetaAdsConfig.fromJson(Map<String, dynamic> json) => _$MetaAdsConfigFromJson(json);

@override@JsonKey() final  bool active;
 final  List<MetaAdAccountRef> _adAccounts;
@override@JsonKey() List<MetaAdAccountRef> get adAccounts {
  if (_adAccounts is EqualUnmodifiableListView) return _adAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_adAccounts);
}

@override final  String? defaultAdAccountId;
/// Default insights window for the dashboard, e.g. `last_7d`.
@override@JsonKey() final  String defaultDatePreset;
/// Extra hosts that count as this store's storefront when matching ad links.
 final  List<String> _extraStoreHosts;
/// Extra hosts that count as this store's storefront when matching ad links.
@override@JsonKey() List<String> get extraStoreHosts {
  if (_extraStoreHosts is EqualUnmodifiableListView) return _extraStoreHosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_extraStoreHosts);
}

 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of MetaAdsConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaAdsConfigCopyWith<_MetaAdsConfig> get copyWith => __$MetaAdsConfigCopyWithImpl<_MetaAdsConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaAdsConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaAdsConfig&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._adAccounts, _adAccounts)&&(identical(other.defaultAdAccountId, defaultAdAccountId) || other.defaultAdAccountId == defaultAdAccountId)&&(identical(other.defaultDatePreset, defaultDatePreset) || other.defaultDatePreset == defaultDatePreset)&&const DeepCollectionEquality().equals(other._extraStoreHosts, _extraStoreHosts)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,const DeepCollectionEquality().hash(_adAccounts),defaultAdAccountId,defaultDatePreset,const DeepCollectionEquality().hash(_extraStoreHosts),const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'MetaAdsConfig(active: $active, adAccounts: $adAccounts, defaultAdAccountId: $defaultAdAccountId, defaultDatePreset: $defaultDatePreset, extraStoreHosts: $extraStoreHosts, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$MetaAdsConfigCopyWith<$Res> implements $MetaAdsConfigCopyWith<$Res> {
  factory _$MetaAdsConfigCopyWith(_MetaAdsConfig value, $Res Function(_MetaAdsConfig) _then) = __$MetaAdsConfigCopyWithImpl;
@override @useResult
$Res call({
 bool active, List<MetaAdAccountRef> adAccounts, String? defaultAdAccountId, String defaultDatePreset, List<String> extraStoreHosts, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$MetaAdsConfigCopyWithImpl<$Res>
    implements _$MetaAdsConfigCopyWith<$Res> {
  __$MetaAdsConfigCopyWithImpl(this._self, this._then);

  final _MetaAdsConfig _self;
  final $Res Function(_MetaAdsConfig) _then;

/// Create a copy of MetaAdsConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? adAccounts = null,Object? defaultAdAccountId = freezed,Object? defaultDatePreset = null,Object? extraStoreHosts = null,Object? metadata = null,}) {
  return _then(_MetaAdsConfig(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,adAccounts: null == adAccounts ? _self._adAccounts : adAccounts // ignore: cast_nullable_to_non_nullable
as List<MetaAdAccountRef>,defaultAdAccountId: freezed == defaultAdAccountId ? _self.defaultAdAccountId : defaultAdAccountId // ignore: cast_nullable_to_non_nullable
as String?,defaultDatePreset: null == defaultDatePreset ? _self.defaultDatePreset : defaultDatePreset // ignore: cast_nullable_to_non_nullable
as String,extraStoreHosts: null == extraStoreHosts ? _self._extraStoreHosts : extraStoreHosts // ignore: cast_nullable_to_non_nullable
as List<String>,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$MetaAccountRef {

 String get id; String? get name;
/// Create a copy of MetaAccountRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaAccountRefCopyWith<MetaAccountRef> get copyWith => _$MetaAccountRefCopyWithImpl<MetaAccountRef>(this as MetaAccountRef, _$identity);

  /// Serializes this MetaAccountRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaAccountRef&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'MetaAccountRef(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $MetaAccountRefCopyWith<$Res>  {
  factory $MetaAccountRefCopyWith(MetaAccountRef value, $Res Function(MetaAccountRef) _then) = _$MetaAccountRefCopyWithImpl;
@useResult
$Res call({
 String id, String? name
});




}
/// @nodoc
class _$MetaAccountRefCopyWithImpl<$Res>
    implements $MetaAccountRefCopyWith<$Res> {
  _$MetaAccountRefCopyWithImpl(this._self, this._then);

  final MetaAccountRef _self;
  final $Res Function(MetaAccountRef) _then;

/// Create a copy of MetaAccountRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MetaAccountRef].
extension MetaAccountRefPatterns on MetaAccountRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetaAccountRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaAccountRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetaAccountRef value)  $default,){
final _that = this;
switch (_that) {
case _MetaAccountRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetaAccountRef value)?  $default,){
final _that = this;
switch (_that) {
case _MetaAccountRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaAccountRef() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _MetaAccountRef():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _MetaAccountRef() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetaAccountRef extends MetaAccountRef {
  const _MetaAccountRef({required this.id, this.name}): super._();
  factory _MetaAccountRef.fromJson(Map<String, dynamic> json) => _$MetaAccountRefFromJson(json);

@override final  String id;
@override final  String? name;

/// Create a copy of MetaAccountRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaAccountRefCopyWith<_MetaAccountRef> get copyWith => __$MetaAccountRefCopyWithImpl<_MetaAccountRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaAccountRefToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaAccountRef&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'MetaAccountRef(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$MetaAccountRefCopyWith<$Res> implements $MetaAccountRefCopyWith<$Res> {
  factory _$MetaAccountRefCopyWith(_MetaAccountRef value, $Res Function(_MetaAccountRef) _then) = __$MetaAccountRefCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name
});




}
/// @nodoc
class __$MetaAccountRefCopyWithImpl<$Res>
    implements _$MetaAccountRefCopyWith<$Res> {
  __$MetaAccountRefCopyWithImpl(this._self, this._then);

  final _MetaAccountRef _self;
  final $Res Function(_MetaAccountRef) _then;

/// Create a copy of MetaAccountRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,}) {
  return _then(_MetaAccountRef(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MetaIntegration {

 bool get active;/// Present once connected; name may be absent.
 MetaAccountRef? get account; MetaAdsConfig? get ads; Map<String, dynamic> get metadata;
/// Create a copy of MetaIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaIntegrationCopyWith<MetaIntegration> get copyWith => _$MetaIntegrationCopyWithImpl<MetaIntegration>(this as MetaIntegration, _$identity);

  /// Serializes this MetaIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.account, account) || other.account == account)&&(identical(other.ads, ads) || other.ads == ads)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,account,ads,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'MetaIntegration(active: $active, account: $account, ads: $ads, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $MetaIntegrationCopyWith<$Res>  {
  factory $MetaIntegrationCopyWith(MetaIntegration value, $Res Function(MetaIntegration) _then) = _$MetaIntegrationCopyWithImpl;
@useResult
$Res call({
 bool active, MetaAccountRef? account, MetaAdsConfig? ads, Map<String, dynamic> metadata
});


$MetaAccountRefCopyWith<$Res>? get account;$MetaAdsConfigCopyWith<$Res>? get ads;

}
/// @nodoc
class _$MetaIntegrationCopyWithImpl<$Res>
    implements $MetaIntegrationCopyWith<$Res> {
  _$MetaIntegrationCopyWithImpl(this._self, this._then);

  final MetaIntegration _self;
  final $Res Function(MetaIntegration) _then;

/// Create a copy of MetaIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? account = freezed,Object? ads = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as MetaAccountRef?,ads: freezed == ads ? _self.ads : ads // ignore: cast_nullable_to_non_nullable
as MetaAdsConfig?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of MetaIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaAccountRefCopyWith<$Res>? get account {
    if (_self.account == null) {
    return null;
  }

  return $MetaAccountRefCopyWith<$Res>(_self.account!, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of MetaIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaAdsConfigCopyWith<$Res>? get ads {
    if (_self.ads == null) {
    return null;
  }

  return $MetaAdsConfigCopyWith<$Res>(_self.ads!, (value) {
    return _then(_self.copyWith(ads: value));
  });
}
}


/// Adds pattern-matching-related methods to [MetaIntegration].
extension MetaIntegrationPatterns on MetaIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetaIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetaIntegration value)  $default,){
final _that = this;
switch (_that) {
case _MetaIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetaIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _MetaIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  MetaAccountRef? account,  MetaAdsConfig? ads,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaIntegration() when $default != null:
return $default(_that.active,_that.account,_that.ads,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  MetaAccountRef? account,  MetaAdsConfig? ads,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _MetaIntegration():
return $default(_that.active,_that.account,_that.ads,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  MetaAccountRef? account,  MetaAdsConfig? ads,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _MetaIntegration() when $default != null:
return $default(_that.active,_that.account,_that.ads,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetaIntegration extends MetaIntegration {
  const _MetaIntegration({this.active = false, this.account, this.ads, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _MetaIntegration.fromJson(Map<String, dynamic> json) => _$MetaIntegrationFromJson(json);

@override@JsonKey() final  bool active;
/// Present once connected; name may be absent.
@override final  MetaAccountRef? account;
@override final  MetaAdsConfig? ads;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of MetaIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaIntegrationCopyWith<_MetaIntegration> get copyWith => __$MetaIntegrationCopyWithImpl<_MetaIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.account, account) || other.account == account)&&(identical(other.ads, ads) || other.ads == ads)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,account,ads,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'MetaIntegration(active: $active, account: $account, ads: $ads, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$MetaIntegrationCopyWith<$Res> implements $MetaIntegrationCopyWith<$Res> {
  factory _$MetaIntegrationCopyWith(_MetaIntegration value, $Res Function(_MetaIntegration) _then) = __$MetaIntegrationCopyWithImpl;
@override @useResult
$Res call({
 bool active, MetaAccountRef? account, MetaAdsConfig? ads, Map<String, dynamic> metadata
});


@override $MetaAccountRefCopyWith<$Res>? get account;@override $MetaAdsConfigCopyWith<$Res>? get ads;

}
/// @nodoc
class __$MetaIntegrationCopyWithImpl<$Res>
    implements _$MetaIntegrationCopyWith<$Res> {
  __$MetaIntegrationCopyWithImpl(this._self, this._then);

  final _MetaIntegration _self;
  final $Res Function(_MetaIntegration) _then;

/// Create a copy of MetaIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? account = freezed,Object? ads = freezed,Object? metadata = null,}) {
  return _then(_MetaIntegration(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as MetaAccountRef?,ads: freezed == ads ? _self.ads : ads // ignore: cast_nullable_to_non_nullable
as MetaAdsConfig?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of MetaIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaAccountRefCopyWith<$Res>? get account {
    if (_self.account == null) {
    return null;
  }

  return $MetaAccountRefCopyWith<$Res>(_self.account!, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of MetaIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaAdsConfigCopyWith<$Res>? get ads {
    if (_self.ads == null) {
    return null;
  }

  return $MetaAdsConfigCopyWith<$Res>(_self.ads!, (value) {
    return _then(_self.copyWith(ads: value));
  });
}
}


/// @nodoc
mixin _$MetaPixelIntegration {

 String get id; List<MetaPixel> get pixels; MetaPixelEvent get objective; MetaPixelEvent get draftObjective; bool get active; Map<String, dynamic> get metadata;/// Facebook Marketing OAuth data - for accessing pixels via API
 FacebookMarketingOAuth? get oauth2;/// Where to send events: server (CAPI), client (store frontend), or both. Null = auto.
 PixelReportMode? get mode;/// Server-only: fire CAPI when order/delivery/payment/custom status transitions into [equals].
 List<PixelStatusRule> get statusRules;
/// Create a copy of MetaPixelIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaPixelIntegrationCopyWith<MetaPixelIntegration> get copyWith => _$MetaPixelIntegrationCopyWithImpl<MetaPixelIntegration>(this as MetaPixelIntegration, _$identity);

  /// Serializes this MetaPixelIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaPixelIntegration&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.pixels, pixels)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.draftObjective, draftObjective) || other.draftObjective == draftObjective)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.oauth2, oauth2) || other.oauth2 == oauth2)&&(identical(other.mode, mode) || other.mode == mode)&&const DeepCollectionEquality().equals(other.statusRules, statusRules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(pixels),objective,draftObjective,active,const DeepCollectionEquality().hash(metadata),oauth2,mode,const DeepCollectionEquality().hash(statusRules));

@override
String toString() {
  return 'MetaPixelIntegration(id: $id, pixels: $pixels, objective: $objective, draftObjective: $draftObjective, active: $active, metadata: $metadata, oauth2: $oauth2, mode: $mode, statusRules: $statusRules)';
}


}

/// @nodoc
abstract mixin class $MetaPixelIntegrationCopyWith<$Res>  {
  factory $MetaPixelIntegrationCopyWith(MetaPixelIntegration value, $Res Function(MetaPixelIntegration) _then) = _$MetaPixelIntegrationCopyWithImpl;
@useResult
$Res call({
 String id, List<MetaPixel> pixels, MetaPixelEvent objective, MetaPixelEvent draftObjective, bool active, Map<String, dynamic> metadata, FacebookMarketingOAuth? oauth2, PixelReportMode? mode, List<PixelStatusRule> statusRules
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? pixels = null,Object? objective = null,Object? draftObjective = null,Object? active = null,Object? metadata = null,Object? oauth2 = freezed,Object? mode = freezed,Object? statusRules = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pixels: null == pixels ? _self.pixels : pixels // ignore: cast_nullable_to_non_nullable
as List<MetaPixel>,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent,draftObjective: null == draftObjective ? _self.draftObjective : draftObjective // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,oauth2: freezed == oauth2 ? _self.oauth2 : oauth2 // ignore: cast_nullable_to_non_nullable
as FacebookMarketingOAuth?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as PixelReportMode?,statusRules: null == statusRules ? _self.statusRules : statusRules // ignore: cast_nullable_to_non_nullable
as List<PixelStatusRule>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<MetaPixel> pixels,  MetaPixelEvent objective,  MetaPixelEvent draftObjective,  bool active,  Map<String, dynamic> metadata,  FacebookMarketingOAuth? oauth2,  PixelReportMode? mode,  List<PixelStatusRule> statusRules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaPixelIntegration() when $default != null:
return $default(_that.id,_that.pixels,_that.objective,_that.draftObjective,_that.active,_that.metadata,_that.oauth2,_that.mode,_that.statusRules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<MetaPixel> pixels,  MetaPixelEvent objective,  MetaPixelEvent draftObjective,  bool active,  Map<String, dynamic> metadata,  FacebookMarketingOAuth? oauth2,  PixelReportMode? mode,  List<PixelStatusRule> statusRules)  $default,) {final _that = this;
switch (_that) {
case _MetaPixelIntegration():
return $default(_that.id,_that.pixels,_that.objective,_that.draftObjective,_that.active,_that.metadata,_that.oauth2,_that.mode,_that.statusRules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<MetaPixel> pixels,  MetaPixelEvent objective,  MetaPixelEvent draftObjective,  bool active,  Map<String, dynamic> metadata,  FacebookMarketingOAuth? oauth2,  PixelReportMode? mode,  List<PixelStatusRule> statusRules)?  $default,) {final _that = this;
switch (_that) {
case _MetaPixelIntegration() when $default != null:
return $default(_that.id,_that.pixels,_that.objective,_that.draftObjective,_that.active,_that.metadata,_that.oauth2,_that.mode,_that.statusRules);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetaPixelIntegration extends MetaPixelIntegration {
  const _MetaPixelIntegration({this.id = 'default', List<MetaPixel> pixels = const [], this.objective = MetaPixelEvent.purchase, this.draftObjective = MetaPixelEvent.lead, this.active = true, Map<String, dynamic> metadata = const {}, this.oauth2, this.mode, List<PixelStatusRule> statusRules = const []}): _pixels = pixels,_metadata = metadata,_statusRules = statusRules,super._();
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
/// Server-only: fire CAPI when order/delivery/payment/custom status transitions into [equals].
 final  List<PixelStatusRule> _statusRules;
/// Server-only: fire CAPI when order/delivery/payment/custom status transitions into [equals].
@override@JsonKey() List<PixelStatusRule> get statusRules {
  if (_statusRules is EqualUnmodifiableListView) return _statusRules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_statusRules);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaPixelIntegration&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._pixels, _pixels)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.draftObjective, draftObjective) || other.draftObjective == draftObjective)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.oauth2, oauth2) || other.oauth2 == oauth2)&&(identical(other.mode, mode) || other.mode == mode)&&const DeepCollectionEquality().equals(other._statusRules, _statusRules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_pixels),objective,draftObjective,active,const DeepCollectionEquality().hash(_metadata),oauth2,mode,const DeepCollectionEquality().hash(_statusRules));

@override
String toString() {
  return 'MetaPixelIntegration(id: $id, pixels: $pixels, objective: $objective, draftObjective: $draftObjective, active: $active, metadata: $metadata, oauth2: $oauth2, mode: $mode, statusRules: $statusRules)';
}


}

/// @nodoc
abstract mixin class _$MetaPixelIntegrationCopyWith<$Res> implements $MetaPixelIntegrationCopyWith<$Res> {
  factory _$MetaPixelIntegrationCopyWith(_MetaPixelIntegration value, $Res Function(_MetaPixelIntegration) _then) = __$MetaPixelIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String id, List<MetaPixel> pixels, MetaPixelEvent objective, MetaPixelEvent draftObjective, bool active, Map<String, dynamic> metadata, FacebookMarketingOAuth? oauth2, PixelReportMode? mode, List<PixelStatusRule> statusRules
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pixels = null,Object? objective = null,Object? draftObjective = null,Object? active = null,Object? metadata = null,Object? oauth2 = freezed,Object? mode = freezed,Object? statusRules = null,}) {
  return _then(_MetaPixelIntegration(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pixels: null == pixels ? _self._pixels : pixels // ignore: cast_nullable_to_non_nullable
as List<MetaPixel>,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent,draftObjective: null == draftObjective ? _self.draftObjective : draftObjective // ignore: cast_nullable_to_non_nullable
as MetaPixelEvent,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,oauth2: freezed == oauth2 ? _self.oauth2 : oauth2 // ignore: cast_nullable_to_non_nullable
as FacebookMarketingOAuth?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as PixelReportMode?,statusRules: null == statusRules ? _self._statusRules : statusRules // ignore: cast_nullable_to_non_nullable
as List<PixelStatusRule>,
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
 PixelReportMode? get mode;/// Server-only: fire Events API when order/delivery/payment/custom status transitions into [equals].
 List<PixelStatusRule> get statusRules;
/// Create a copy of TiktokPixelIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TiktokPixelIntegrationCopyWith<TiktokPixelIntegration> get copyWith => _$TiktokPixelIntegrationCopyWithImpl<TiktokPixelIntegration>(this as TiktokPixelIntegration, _$identity);

  /// Serializes this TiktokPixelIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TiktokPixelIntegration&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.pixels, pixels)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.draftObjective, draftObjective) || other.draftObjective == draftObjective)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.mode, mode) || other.mode == mode)&&const DeepCollectionEquality().equals(other.statusRules, statusRules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(pixels),objective,draftObjective,active,const DeepCollectionEquality().hash(metadata),mode,const DeepCollectionEquality().hash(statusRules));

@override
String toString() {
  return 'TiktokPixelIntegration(id: $id, pixels: $pixels, objective: $objective, draftObjective: $draftObjective, active: $active, metadata: $metadata, mode: $mode, statusRules: $statusRules)';
}


}

/// @nodoc
abstract mixin class $TiktokPixelIntegrationCopyWith<$Res>  {
  factory $TiktokPixelIntegrationCopyWith(TiktokPixelIntegration value, $Res Function(TiktokPixelIntegration) _then) = _$TiktokPixelIntegrationCopyWithImpl;
@useResult
$Res call({
 String id, List<TiktokPixel> pixels, TiktokPixelEvent objective, TiktokPixelEvent draftObjective, bool active, Map<String, dynamic> metadata, PixelReportMode? mode, List<PixelStatusRule> statusRules
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? pixels = null,Object? objective = null,Object? draftObjective = null,Object? active = null,Object? metadata = null,Object? mode = freezed,Object? statusRules = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pixels: null == pixels ? _self.pixels : pixels // ignore: cast_nullable_to_non_nullable
as List<TiktokPixel>,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent,draftObjective: null == draftObjective ? _self.draftObjective : draftObjective // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as PixelReportMode?,statusRules: null == statusRules ? _self.statusRules : statusRules // ignore: cast_nullable_to_non_nullable
as List<PixelStatusRule>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<TiktokPixel> pixels,  TiktokPixelEvent objective,  TiktokPixelEvent draftObjective,  bool active,  Map<String, dynamic> metadata,  PixelReportMode? mode,  List<PixelStatusRule> statusRules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TiktokPixelIntegration() when $default != null:
return $default(_that.id,_that.pixels,_that.objective,_that.draftObjective,_that.active,_that.metadata,_that.mode,_that.statusRules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<TiktokPixel> pixels,  TiktokPixelEvent objective,  TiktokPixelEvent draftObjective,  bool active,  Map<String, dynamic> metadata,  PixelReportMode? mode,  List<PixelStatusRule> statusRules)  $default,) {final _that = this;
switch (_that) {
case _TiktokPixelIntegration():
return $default(_that.id,_that.pixels,_that.objective,_that.draftObjective,_that.active,_that.metadata,_that.mode,_that.statusRules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<TiktokPixel> pixels,  TiktokPixelEvent objective,  TiktokPixelEvent draftObjective,  bool active,  Map<String, dynamic> metadata,  PixelReportMode? mode,  List<PixelStatusRule> statusRules)?  $default,) {final _that = this;
switch (_that) {
case _TiktokPixelIntegration() when $default != null:
return $default(_that.id,_that.pixels,_that.objective,_that.draftObjective,_that.active,_that.metadata,_that.mode,_that.statusRules);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TiktokPixelIntegration extends TiktokPixelIntegration {
  const _TiktokPixelIntegration({this.id = 'default', List<TiktokPixel> pixels = const [], this.objective = TiktokPixelEvent.purchase, this.draftObjective = TiktokPixelEvent.purchase, this.active = true, Map<String, dynamic> metadata = const {}, this.mode, List<PixelStatusRule> statusRules = const []}): _pixels = pixels,_metadata = metadata,_statusRules = statusRules,super._();
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
/// Server-only: fire Events API when order/delivery/payment/custom status transitions into [equals].
 final  List<PixelStatusRule> _statusRules;
/// Server-only: fire Events API when order/delivery/payment/custom status transitions into [equals].
@override@JsonKey() List<PixelStatusRule> get statusRules {
  if (_statusRules is EqualUnmodifiableListView) return _statusRules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_statusRules);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TiktokPixelIntegration&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._pixels, _pixels)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.draftObjective, draftObjective) || other.draftObjective == draftObjective)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.mode, mode) || other.mode == mode)&&const DeepCollectionEquality().equals(other._statusRules, _statusRules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_pixels),objective,draftObjective,active,const DeepCollectionEquality().hash(_metadata),mode,const DeepCollectionEquality().hash(_statusRules));

@override
String toString() {
  return 'TiktokPixelIntegration(id: $id, pixels: $pixels, objective: $objective, draftObjective: $draftObjective, active: $active, metadata: $metadata, mode: $mode, statusRules: $statusRules)';
}


}

/// @nodoc
abstract mixin class _$TiktokPixelIntegrationCopyWith<$Res> implements $TiktokPixelIntegrationCopyWith<$Res> {
  factory _$TiktokPixelIntegrationCopyWith(_TiktokPixelIntegration value, $Res Function(_TiktokPixelIntegration) _then) = __$TiktokPixelIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String id, List<TiktokPixel> pixels, TiktokPixelEvent objective, TiktokPixelEvent draftObjective, bool active, Map<String, dynamic> metadata, PixelReportMode? mode, List<PixelStatusRule> statusRules
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pixels = null,Object? objective = null,Object? draftObjective = null,Object? active = null,Object? metadata = null,Object? mode = freezed,Object? statusRules = null,}) {
  return _then(_TiktokPixelIntegration(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pixels: null == pixels ? _self._pixels : pixels // ignore: cast_nullable_to_non_nullable
as List<TiktokPixel>,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent,draftObjective: null == draftObjective ? _self.draftObjective : draftObjective // ignore: cast_nullable_to_non_nullable
as TiktokPixelEvent,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as PixelReportMode?,statusRules: null == statusRules ? _self._statusRules : statusRules // ignore: cast_nullable_to_non_nullable
as List<PixelStatusRule>,
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
  const _GoogleAnalyticsIntegration({this.id = "EMPTY", this.active = false, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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
  const _GoogleTagsIntegration({required this.key, this.active = true, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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
mixin _$ClarityIntegration {

 bool get active; String get trackingCode; String? get apiKey; Map<String, dynamic> get metadata;
/// Create a copy of ClarityIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClarityIntegrationCopyWith<ClarityIntegration> get copyWith => _$ClarityIntegrationCopyWithImpl<ClarityIntegration>(this as ClarityIntegration, _$identity);

  /// Serializes this ClarityIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClarityIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.trackingCode, trackingCode) || other.trackingCode == trackingCode)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,trackingCode,apiKey,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ClarityIntegration(active: $active, trackingCode: $trackingCode, apiKey: $apiKey, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ClarityIntegrationCopyWith<$Res>  {
  factory $ClarityIntegrationCopyWith(ClarityIntegration value, $Res Function(ClarityIntegration) _then) = _$ClarityIntegrationCopyWithImpl;
@useResult
$Res call({
 bool active, String trackingCode, String? apiKey, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$ClarityIntegrationCopyWithImpl<$Res>
    implements $ClarityIntegrationCopyWith<$Res> {
  _$ClarityIntegrationCopyWithImpl(this._self, this._then);

  final ClarityIntegration _self;
  final $Res Function(ClarityIntegration) _then;

/// Create a copy of ClarityIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? trackingCode = null,Object? apiKey = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,trackingCode: null == trackingCode ? _self.trackingCode : trackingCode // ignore: cast_nullable_to_non_nullable
as String,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClarityIntegration].
extension ClarityIntegrationPatterns on ClarityIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClarityIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClarityIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClarityIntegration value)  $default,){
final _that = this;
switch (_that) {
case _ClarityIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClarityIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _ClarityIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  String trackingCode,  String? apiKey,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClarityIntegration() when $default != null:
return $default(_that.active,_that.trackingCode,_that.apiKey,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  String trackingCode,  String? apiKey,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _ClarityIntegration():
return $default(_that.active,_that.trackingCode,_that.apiKey,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  String trackingCode,  String? apiKey,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _ClarityIntegration() when $default != null:
return $default(_that.active,_that.trackingCode,_that.apiKey,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClarityIntegration extends ClarityIntegration {
  const _ClarityIntegration({this.active = true, required this.trackingCode, this.apiKey, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _ClarityIntegration.fromJson(Map<String, dynamic> json) => _$ClarityIntegrationFromJson(json);

@override@JsonKey() final  bool active;
@override final  String trackingCode;
@override final  String? apiKey;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of ClarityIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClarityIntegrationCopyWith<_ClarityIntegration> get copyWith => __$ClarityIntegrationCopyWithImpl<_ClarityIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClarityIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClarityIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.trackingCode, trackingCode) || other.trackingCode == trackingCode)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,trackingCode,apiKey,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ClarityIntegration(active: $active, trackingCode: $trackingCode, apiKey: $apiKey, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ClarityIntegrationCopyWith<$Res> implements $ClarityIntegrationCopyWith<$Res> {
  factory _$ClarityIntegrationCopyWith(_ClarityIntegration value, $Res Function(_ClarityIntegration) _then) = __$ClarityIntegrationCopyWithImpl;
@override @useResult
$Res call({
 bool active, String trackingCode, String? apiKey, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$ClarityIntegrationCopyWithImpl<$Res>
    implements _$ClarityIntegrationCopyWith<$Res> {
  __$ClarityIntegrationCopyWithImpl(this._self, this._then);

  final _ClarityIntegration _self;
  final $Res Function(_ClarityIntegration) _then;

/// Create a copy of ClarityIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? trackingCode = null,Object? apiKey = freezed,Object? metadata = null,}) {
  return _then(_ClarityIntegration(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,trackingCode: null == trackingCode ? _self.trackingCode : trackingCode // ignore: cast_nullable_to_non_nullable
as String,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
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
  const _AiIntegration({this.active = true, this.apiKey, this.planningModel = 'gemini-3.1-pro-preview', this.textModel = 'gemini-flash-lite-latest', this.imageModel = 'gemini-3.1-flash-image-preview', Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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
  const _YalidineDeliveryIntegration({required this.id, required this.token, this.agent = YalidineAgent.yalidine, this.active = true, this.autoSend = false, this.forceFreeShipping = false, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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

 String get baseUrl; String get token; bool get active;/// Carrier-specific options. Use `parcelStock: false` to hide the stock / from-stock UI
/// when this Ecotrack profile does not use the `stock` field (see backend
/// `DeliveryCapabilities.parcelStock`).
 Map<String, dynamic> get metadata;
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
  const _EcotrackDeliveryIntegration({required this.baseUrl, required this.token, this.active = true, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _EcotrackDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$EcotrackDeliveryIntegrationFromJson(json);

@override final  String baseUrl;
@override final  String token;
@override@JsonKey() final  bool active;
/// Carrier-specific options. Use `parcelStock: false` to hide the stock / from-stock UI
/// when this Ecotrack profile does not use the `stock` field (see backend
/// `DeliveryCapabilities.parcelStock`).
 final  Map<String, dynamic> _metadata;
/// Carrier-specific options. Use `parcelStock: false` to hide the stock / from-stock UI
/// when this Ecotrack profile does not use the `stock` field (see backend
/// `DeliveryCapabilities.parcelStock`).
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
  const _EcomanagerDeliveryIntegration({required this.baseUrl, required this.token, this.active = true, this.autoSend = true, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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
  const _ProcolisDeliveryIntegration({required this.key, required this.token, this.active = true, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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
  const _NoestDeliveryIntegration({required this.guid, required this.token, this.active = true, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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
  const _OrderdzDeliveryIntegration({this.url, required this.token, this.active = true, this.autoSend = false, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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
  const _ZimouExpressDeliveryIntegration({required this.id, required this.apiKey, this.active = true, this.silentMode = false, this.autoSend = false, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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
  const _ZrexpressDeliveryIntegration({required this.id, required this.apiKey, required this.tenantId, this.webhookSecret, this.active = true, this.silentMode = false, this.autoSend = false, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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
mixin _$MdmExpressDeliveryIntegration {

 String get id;/// MDM `x-api-key` when not using JWT.
 String? get apiKey;/// Optional JWT (`Authorization: Bearer`); takes precedence over [apiKey].
 String? get bearerToken;/// MDM store tracking id (e.g. `STR-…`) — `CreateOrderRequest.storeId`.
 String get mdmStoreId;/// MDM seller id (e.g. `SLR-…`) — service fees: `GET /api/sellers/{id}/service-fees`.
 String? get mdmSellerId; String? get webhookSecret; bool get active; bool get silentMode; bool get autoSend; Map<String, dynamic> get metadata;
/// Create a copy of MdmExpressDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MdmExpressDeliveryIntegrationCopyWith<MdmExpressDeliveryIntegration> get copyWith => _$MdmExpressDeliveryIntegrationCopyWithImpl<MdmExpressDeliveryIntegration>(this as MdmExpressDeliveryIntegration, _$identity);

  /// Serializes this MdmExpressDeliveryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MdmExpressDeliveryIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.bearerToken, bearerToken) || other.bearerToken == bearerToken)&&(identical(other.mdmStoreId, mdmStoreId) || other.mdmStoreId == mdmStoreId)&&(identical(other.mdmSellerId, mdmSellerId) || other.mdmSellerId == mdmSellerId)&&(identical(other.webhookSecret, webhookSecret) || other.webhookSecret == webhookSecret)&&(identical(other.active, active) || other.active == active)&&(identical(other.silentMode, silentMode) || other.silentMode == silentMode)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,apiKey,bearerToken,mdmStoreId,mdmSellerId,webhookSecret,active,silentMode,autoSend,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'MdmExpressDeliveryIntegration(id: $id, apiKey: $apiKey, bearerToken: $bearerToken, mdmStoreId: $mdmStoreId, mdmSellerId: $mdmSellerId, webhookSecret: $webhookSecret, active: $active, silentMode: $silentMode, autoSend: $autoSend, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $MdmExpressDeliveryIntegrationCopyWith<$Res>  {
  factory $MdmExpressDeliveryIntegrationCopyWith(MdmExpressDeliveryIntegration value, $Res Function(MdmExpressDeliveryIntegration) _then) = _$MdmExpressDeliveryIntegrationCopyWithImpl;
@useResult
$Res call({
 String id, String? apiKey, String? bearerToken, String mdmStoreId, String? mdmSellerId, String? webhookSecret, bool active, bool silentMode, bool autoSend, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$MdmExpressDeliveryIntegrationCopyWithImpl<$Res>
    implements $MdmExpressDeliveryIntegrationCopyWith<$Res> {
  _$MdmExpressDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final MdmExpressDeliveryIntegration _self;
  final $Res Function(MdmExpressDeliveryIntegration) _then;

/// Create a copy of MdmExpressDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? apiKey = freezed,Object? bearerToken = freezed,Object? mdmStoreId = null,Object? mdmSellerId = freezed,Object? webhookSecret = freezed,Object? active = null,Object? silentMode = null,Object? autoSend = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,bearerToken: freezed == bearerToken ? _self.bearerToken : bearerToken // ignore: cast_nullable_to_non_nullable
as String?,mdmStoreId: null == mdmStoreId ? _self.mdmStoreId : mdmStoreId // ignore: cast_nullable_to_non_nullable
as String,mdmSellerId: freezed == mdmSellerId ? _self.mdmSellerId : mdmSellerId // ignore: cast_nullable_to_non_nullable
as String?,webhookSecret: freezed == webhookSecret ? _self.webhookSecret : webhookSecret // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,silentMode: null == silentMode ? _self.silentMode : silentMode // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [MdmExpressDeliveryIntegration].
extension MdmExpressDeliveryIntegrationPatterns on MdmExpressDeliveryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MdmExpressDeliveryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MdmExpressDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MdmExpressDeliveryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _MdmExpressDeliveryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MdmExpressDeliveryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _MdmExpressDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? apiKey,  String? bearerToken,  String mdmStoreId,  String? mdmSellerId,  String? webhookSecret,  bool active,  bool silentMode,  bool autoSend,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MdmExpressDeliveryIntegration() when $default != null:
return $default(_that.id,_that.apiKey,_that.bearerToken,_that.mdmStoreId,_that.mdmSellerId,_that.webhookSecret,_that.active,_that.silentMode,_that.autoSend,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? apiKey,  String? bearerToken,  String mdmStoreId,  String? mdmSellerId,  String? webhookSecret,  bool active,  bool silentMode,  bool autoSend,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _MdmExpressDeliveryIntegration():
return $default(_that.id,_that.apiKey,_that.bearerToken,_that.mdmStoreId,_that.mdmSellerId,_that.webhookSecret,_that.active,_that.silentMode,_that.autoSend,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? apiKey,  String? bearerToken,  String mdmStoreId,  String? mdmSellerId,  String? webhookSecret,  bool active,  bool silentMode,  bool autoSend,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _MdmExpressDeliveryIntegration() when $default != null:
return $default(_that.id,_that.apiKey,_that.bearerToken,_that.mdmStoreId,_that.mdmSellerId,_that.webhookSecret,_that.active,_that.silentMode,_that.autoSend,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MdmExpressDeliveryIntegration extends MdmExpressDeliveryIntegration {
  const _MdmExpressDeliveryIntegration({required this.id, this.apiKey, this.bearerToken, required this.mdmStoreId, this.mdmSellerId, this.webhookSecret, this.active = true, this.silentMode = false, this.autoSend = false, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _MdmExpressDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$MdmExpressDeliveryIntegrationFromJson(json);

@override final  String id;
/// MDM `x-api-key` when not using JWT.
@override final  String? apiKey;
/// Optional JWT (`Authorization: Bearer`); takes precedence over [apiKey].
@override final  String? bearerToken;
/// MDM store tracking id (e.g. `STR-…`) — `CreateOrderRequest.storeId`.
@override final  String mdmStoreId;
/// MDM seller id (e.g. `SLR-…`) — service fees: `GET /api/sellers/{id}/service-fees`.
@override final  String? mdmSellerId;
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


/// Create a copy of MdmExpressDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MdmExpressDeliveryIntegrationCopyWith<_MdmExpressDeliveryIntegration> get copyWith => __$MdmExpressDeliveryIntegrationCopyWithImpl<_MdmExpressDeliveryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MdmExpressDeliveryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MdmExpressDeliveryIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.bearerToken, bearerToken) || other.bearerToken == bearerToken)&&(identical(other.mdmStoreId, mdmStoreId) || other.mdmStoreId == mdmStoreId)&&(identical(other.mdmSellerId, mdmSellerId) || other.mdmSellerId == mdmSellerId)&&(identical(other.webhookSecret, webhookSecret) || other.webhookSecret == webhookSecret)&&(identical(other.active, active) || other.active == active)&&(identical(other.silentMode, silentMode) || other.silentMode == silentMode)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,apiKey,bearerToken,mdmStoreId,mdmSellerId,webhookSecret,active,silentMode,autoSend,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'MdmExpressDeliveryIntegration(id: $id, apiKey: $apiKey, bearerToken: $bearerToken, mdmStoreId: $mdmStoreId, mdmSellerId: $mdmSellerId, webhookSecret: $webhookSecret, active: $active, silentMode: $silentMode, autoSend: $autoSend, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$MdmExpressDeliveryIntegrationCopyWith<$Res> implements $MdmExpressDeliveryIntegrationCopyWith<$Res> {
  factory _$MdmExpressDeliveryIntegrationCopyWith(_MdmExpressDeliveryIntegration value, $Res Function(_MdmExpressDeliveryIntegration) _then) = __$MdmExpressDeliveryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String id, String? apiKey, String? bearerToken, String mdmStoreId, String? mdmSellerId, String? webhookSecret, bool active, bool silentMode, bool autoSend, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$MdmExpressDeliveryIntegrationCopyWithImpl<$Res>
    implements _$MdmExpressDeliveryIntegrationCopyWith<$Res> {
  __$MdmExpressDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final _MdmExpressDeliveryIntegration _self;
  final $Res Function(_MdmExpressDeliveryIntegration) _then;

/// Create a copy of MdmExpressDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? apiKey = freezed,Object? bearerToken = freezed,Object? mdmStoreId = null,Object? mdmSellerId = freezed,Object? webhookSecret = freezed,Object? active = null,Object? silentMode = null,Object? autoSend = null,Object? metadata = null,}) {
  return _then(_MdmExpressDeliveryIntegration(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,bearerToken: freezed == bearerToken ? _self.bearerToken : bearerToken // ignore: cast_nullable_to_non_nullable
as String?,mdmStoreId: null == mdmStoreId ? _self.mdmStoreId : mdmStoreId // ignore: cast_nullable_to_non_nullable
as String,mdmSellerId: freezed == mdmSellerId ? _self.mdmSellerId : mdmSellerId // ignore: cast_nullable_to_non_nullable
as String?,webhookSecret: freezed == webhookSecret ? _self.webhookSecret : webhookSecret // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,silentMode: null == silentMode ? _self.silentMode : silentMode // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$FeeefDeliveryIntegration {

 String get id; bool get active; bool get autoSend;/// Near sender user id returned by provision — required for parcel ops.
 int get nearSenderUserId; String? get nearSenderUsername; String? get nearSenderEmail; FeeefDeliveryNearAccountType? get nearAccountType;/// `0` = address pickup, `1` = center pickup (Near `pickup_location_type`).
 int? get pickupLocationType; String? get pickupAddress; int? get senderCenterId;/// Optional default buralist when auto-resolve fails.
 int? get defaultBuralistId;/// Prefer Feeef-branded PDF labels (default true).
 bool get useFeeefLabel; String? get webhookSecret; Map<String, dynamic> get metadata;
/// Create a copy of FeeefDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeefDeliveryIntegrationCopyWith<FeeefDeliveryIntegration> get copyWith => _$FeeefDeliveryIntegrationCopyWithImpl<FeeefDeliveryIntegration>(this as FeeefDeliveryIntegration, _$identity);

  /// Serializes this FeeefDeliveryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeefDeliveryIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&(identical(other.nearSenderUserId, nearSenderUserId) || other.nearSenderUserId == nearSenderUserId)&&(identical(other.nearSenderUsername, nearSenderUsername) || other.nearSenderUsername == nearSenderUsername)&&(identical(other.nearSenderEmail, nearSenderEmail) || other.nearSenderEmail == nearSenderEmail)&&(identical(other.nearAccountType, nearAccountType) || other.nearAccountType == nearAccountType)&&(identical(other.pickupLocationType, pickupLocationType) || other.pickupLocationType == pickupLocationType)&&(identical(other.pickupAddress, pickupAddress) || other.pickupAddress == pickupAddress)&&(identical(other.senderCenterId, senderCenterId) || other.senderCenterId == senderCenterId)&&(identical(other.defaultBuralistId, defaultBuralistId) || other.defaultBuralistId == defaultBuralistId)&&(identical(other.useFeeefLabel, useFeeefLabel) || other.useFeeefLabel == useFeeefLabel)&&(identical(other.webhookSecret, webhookSecret) || other.webhookSecret == webhookSecret)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,autoSend,nearSenderUserId,nearSenderUsername,nearSenderEmail,nearAccountType,pickupLocationType,pickupAddress,senderCenterId,defaultBuralistId,useFeeefLabel,webhookSecret,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'FeeefDeliveryIntegration(id: $id, active: $active, autoSend: $autoSend, nearSenderUserId: $nearSenderUserId, nearSenderUsername: $nearSenderUsername, nearSenderEmail: $nearSenderEmail, nearAccountType: $nearAccountType, pickupLocationType: $pickupLocationType, pickupAddress: $pickupAddress, senderCenterId: $senderCenterId, defaultBuralistId: $defaultBuralistId, useFeeefLabel: $useFeeefLabel, webhookSecret: $webhookSecret, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $FeeefDeliveryIntegrationCopyWith<$Res>  {
  factory $FeeefDeliveryIntegrationCopyWith(FeeefDeliveryIntegration value, $Res Function(FeeefDeliveryIntegration) _then) = _$FeeefDeliveryIntegrationCopyWithImpl;
@useResult
$Res call({
 String id, bool active, bool autoSend, int nearSenderUserId, String? nearSenderUsername, String? nearSenderEmail, FeeefDeliveryNearAccountType? nearAccountType, int? pickupLocationType, String? pickupAddress, int? senderCenterId, int? defaultBuralistId, bool useFeeefLabel, String? webhookSecret, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$FeeefDeliveryIntegrationCopyWithImpl<$Res>
    implements $FeeefDeliveryIntegrationCopyWith<$Res> {
  _$FeeefDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final FeeefDeliveryIntegration _self;
  final $Res Function(FeeefDeliveryIntegration) _then;

/// Create a copy of FeeefDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? autoSend = null,Object? nearSenderUserId = null,Object? nearSenderUsername = freezed,Object? nearSenderEmail = freezed,Object? nearAccountType = freezed,Object? pickupLocationType = freezed,Object? pickupAddress = freezed,Object? senderCenterId = freezed,Object? defaultBuralistId = freezed,Object? useFeeefLabel = null,Object? webhookSecret = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,nearSenderUserId: null == nearSenderUserId ? _self.nearSenderUserId : nearSenderUserId // ignore: cast_nullable_to_non_nullable
as int,nearSenderUsername: freezed == nearSenderUsername ? _self.nearSenderUsername : nearSenderUsername // ignore: cast_nullable_to_non_nullable
as String?,nearSenderEmail: freezed == nearSenderEmail ? _self.nearSenderEmail : nearSenderEmail // ignore: cast_nullable_to_non_nullable
as String?,nearAccountType: freezed == nearAccountType ? _self.nearAccountType : nearAccountType // ignore: cast_nullable_to_non_nullable
as FeeefDeliveryNearAccountType?,pickupLocationType: freezed == pickupLocationType ? _self.pickupLocationType : pickupLocationType // ignore: cast_nullable_to_non_nullable
as int?,pickupAddress: freezed == pickupAddress ? _self.pickupAddress : pickupAddress // ignore: cast_nullable_to_non_nullable
as String?,senderCenterId: freezed == senderCenterId ? _self.senderCenterId : senderCenterId // ignore: cast_nullable_to_non_nullable
as int?,defaultBuralistId: freezed == defaultBuralistId ? _self.defaultBuralistId : defaultBuralistId // ignore: cast_nullable_to_non_nullable
as int?,useFeeefLabel: null == useFeeefLabel ? _self.useFeeefLabel : useFeeefLabel // ignore: cast_nullable_to_non_nullable
as bool,webhookSecret: freezed == webhookSecret ? _self.webhookSecret : webhookSecret // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeefDeliveryIntegration].
extension FeeefDeliveryIntegrationPatterns on FeeefDeliveryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeefDeliveryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeefDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeefDeliveryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _FeeefDeliveryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeefDeliveryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _FeeefDeliveryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  bool autoSend,  int nearSenderUserId,  String? nearSenderUsername,  String? nearSenderEmail,  FeeefDeliveryNearAccountType? nearAccountType,  int? pickupLocationType,  String? pickupAddress,  int? senderCenterId,  int? defaultBuralistId,  bool useFeeefLabel,  String? webhookSecret,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeefDeliveryIntegration() when $default != null:
return $default(_that.id,_that.active,_that.autoSend,_that.nearSenderUserId,_that.nearSenderUsername,_that.nearSenderEmail,_that.nearAccountType,_that.pickupLocationType,_that.pickupAddress,_that.senderCenterId,_that.defaultBuralistId,_that.useFeeefLabel,_that.webhookSecret,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  bool autoSend,  int nearSenderUserId,  String? nearSenderUsername,  String? nearSenderEmail,  FeeefDeliveryNearAccountType? nearAccountType,  int? pickupLocationType,  String? pickupAddress,  int? senderCenterId,  int? defaultBuralistId,  bool useFeeefLabel,  String? webhookSecret,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _FeeefDeliveryIntegration():
return $default(_that.id,_that.active,_that.autoSend,_that.nearSenderUserId,_that.nearSenderUsername,_that.nearSenderEmail,_that.nearAccountType,_that.pickupLocationType,_that.pickupAddress,_that.senderCenterId,_that.defaultBuralistId,_that.useFeeefLabel,_that.webhookSecret,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  bool autoSend,  int nearSenderUserId,  String? nearSenderUsername,  String? nearSenderEmail,  FeeefDeliveryNearAccountType? nearAccountType,  int? pickupLocationType,  String? pickupAddress,  int? senderCenterId,  int? defaultBuralistId,  bool useFeeefLabel,  String? webhookSecret,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _FeeefDeliveryIntegration() when $default != null:
return $default(_that.id,_that.active,_that.autoSend,_that.nearSenderUserId,_that.nearSenderUsername,_that.nearSenderEmail,_that.nearAccountType,_that.pickupLocationType,_that.pickupAddress,_that.senderCenterId,_that.defaultBuralistId,_that.useFeeefLabel,_that.webhookSecret,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeefDeliveryIntegration extends FeeefDeliveryIntegration {
  const _FeeefDeliveryIntegration({required this.id, this.active = true, this.autoSend = false, required this.nearSenderUserId, this.nearSenderUsername, this.nearSenderEmail, this.nearAccountType, this.pickupLocationType, this.pickupAddress, this.senderCenterId, this.defaultBuralistId, this.useFeeefLabel = true, this.webhookSecret, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _FeeefDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$FeeefDeliveryIntegrationFromJson(json);

@override final  String id;
@override@JsonKey() final  bool active;
@override@JsonKey() final  bool autoSend;
/// Near sender user id returned by provision — required for parcel ops.
@override final  int nearSenderUserId;
@override final  String? nearSenderUsername;
@override final  String? nearSenderEmail;
@override final  FeeefDeliveryNearAccountType? nearAccountType;
/// `0` = address pickup, `1` = center pickup (Near `pickup_location_type`).
@override final  int? pickupLocationType;
@override final  String? pickupAddress;
@override final  int? senderCenterId;
/// Optional default buralist when auto-resolve fails.
@override final  int? defaultBuralistId;
/// Prefer Feeef-branded PDF labels (default true).
@override@JsonKey() final  bool useFeeefLabel;
@override final  String? webhookSecret;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of FeeefDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeefDeliveryIntegrationCopyWith<_FeeefDeliveryIntegration> get copyWith => __$FeeefDeliveryIntegrationCopyWithImpl<_FeeefDeliveryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeefDeliveryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeefDeliveryIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.autoSend, autoSend) || other.autoSend == autoSend)&&(identical(other.nearSenderUserId, nearSenderUserId) || other.nearSenderUserId == nearSenderUserId)&&(identical(other.nearSenderUsername, nearSenderUsername) || other.nearSenderUsername == nearSenderUsername)&&(identical(other.nearSenderEmail, nearSenderEmail) || other.nearSenderEmail == nearSenderEmail)&&(identical(other.nearAccountType, nearAccountType) || other.nearAccountType == nearAccountType)&&(identical(other.pickupLocationType, pickupLocationType) || other.pickupLocationType == pickupLocationType)&&(identical(other.pickupAddress, pickupAddress) || other.pickupAddress == pickupAddress)&&(identical(other.senderCenterId, senderCenterId) || other.senderCenterId == senderCenterId)&&(identical(other.defaultBuralistId, defaultBuralistId) || other.defaultBuralistId == defaultBuralistId)&&(identical(other.useFeeefLabel, useFeeefLabel) || other.useFeeefLabel == useFeeefLabel)&&(identical(other.webhookSecret, webhookSecret) || other.webhookSecret == webhookSecret)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,autoSend,nearSenderUserId,nearSenderUsername,nearSenderEmail,nearAccountType,pickupLocationType,pickupAddress,senderCenterId,defaultBuralistId,useFeeefLabel,webhookSecret,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'FeeefDeliveryIntegration(id: $id, active: $active, autoSend: $autoSend, nearSenderUserId: $nearSenderUserId, nearSenderUsername: $nearSenderUsername, nearSenderEmail: $nearSenderEmail, nearAccountType: $nearAccountType, pickupLocationType: $pickupLocationType, pickupAddress: $pickupAddress, senderCenterId: $senderCenterId, defaultBuralistId: $defaultBuralistId, useFeeefLabel: $useFeeefLabel, webhookSecret: $webhookSecret, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$FeeefDeliveryIntegrationCopyWith<$Res> implements $FeeefDeliveryIntegrationCopyWith<$Res> {
  factory _$FeeefDeliveryIntegrationCopyWith(_FeeefDeliveryIntegration value, $Res Function(_FeeefDeliveryIntegration) _then) = __$FeeefDeliveryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, bool autoSend, int nearSenderUserId, String? nearSenderUsername, String? nearSenderEmail, FeeefDeliveryNearAccountType? nearAccountType, int? pickupLocationType, String? pickupAddress, int? senderCenterId, int? defaultBuralistId, bool useFeeefLabel, String? webhookSecret, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$FeeefDeliveryIntegrationCopyWithImpl<$Res>
    implements _$FeeefDeliveryIntegrationCopyWith<$Res> {
  __$FeeefDeliveryIntegrationCopyWithImpl(this._self, this._then);

  final _FeeefDeliveryIntegration _self;
  final $Res Function(_FeeefDeliveryIntegration) _then;

/// Create a copy of FeeefDeliveryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? autoSend = null,Object? nearSenderUserId = null,Object? nearSenderUsername = freezed,Object? nearSenderEmail = freezed,Object? nearAccountType = freezed,Object? pickupLocationType = freezed,Object? pickupAddress = freezed,Object? senderCenterId = freezed,Object? defaultBuralistId = freezed,Object? useFeeefLabel = null,Object? webhookSecret = freezed,Object? metadata = null,}) {
  return _then(_FeeefDeliveryIntegration(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,autoSend: null == autoSend ? _self.autoSend : autoSend // ignore: cast_nullable_to_non_nullable
as bool,nearSenderUserId: null == nearSenderUserId ? _self.nearSenderUserId : nearSenderUserId // ignore: cast_nullable_to_non_nullable
as int,nearSenderUsername: freezed == nearSenderUsername ? _self.nearSenderUsername : nearSenderUsername // ignore: cast_nullable_to_non_nullable
as String?,nearSenderEmail: freezed == nearSenderEmail ? _self.nearSenderEmail : nearSenderEmail // ignore: cast_nullable_to_non_nullable
as String?,nearAccountType: freezed == nearAccountType ? _self.nearAccountType : nearAccountType // ignore: cast_nullable_to_non_nullable
as FeeefDeliveryNearAccountType?,pickupLocationType: freezed == pickupLocationType ? _self.pickupLocationType : pickupLocationType // ignore: cast_nullable_to_non_nullable
as int?,pickupAddress: freezed == pickupAddress ? _self.pickupAddress : pickupAddress // ignore: cast_nullable_to_non_nullable
as String?,senderCenterId: freezed == senderCenterId ? _self.senderCenterId : senderCenterId // ignore: cast_nullable_to_non_nullable
as int?,defaultBuralistId: freezed == defaultBuralistId ? _self.defaultBuralistId : defaultBuralistId // ignore: cast_nullable_to_non_nullable
as int?,useFeeefLabel: null == useFeeefLabel ? _self.useFeeefLabel : useFeeefLabel // ignore: cast_nullable_to_non_nullable
as bool,webhookSecret: freezed == webhookSecret ? _self.webhookSecret : webhookSecret // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
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
  const _MaystroDeliveryIntegration({required this.token, this.baseUrl, this.webhookSecret, this.active = true, this.autoSend = false, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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
mixin _$CodpilotIntegration {

/// Business subdomain (`mystore` → mystore.codpilot.net).
 String get subdomain; String get apiId; String get apiToken; bool get active;/// When a status dimension transitions into [PixelStatusRule.equals], auto-sync.
/// Empty list disables auto-sync. Default on connect: pending order status.
 List<PixelStatusRule> get statusRules; Map<String, dynamic> get metadata;
/// Create a copy of CodpilotIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodpilotIntegrationCopyWith<CodpilotIntegration> get copyWith => _$CodpilotIntegrationCopyWithImpl<CodpilotIntegration>(this as CodpilotIntegration, _$identity);

  /// Serializes this CodpilotIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodpilotIntegration&&(identical(other.subdomain, subdomain) || other.subdomain == subdomain)&&(identical(other.apiId, apiId) || other.apiId == apiId)&&(identical(other.apiToken, apiToken) || other.apiToken == apiToken)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.statusRules, statusRules)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subdomain,apiId,apiToken,active,const DeepCollectionEquality().hash(statusRules),const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'CodpilotIntegration(subdomain: $subdomain, apiId: $apiId, apiToken: $apiToken, active: $active, statusRules: $statusRules, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $CodpilotIntegrationCopyWith<$Res>  {
  factory $CodpilotIntegrationCopyWith(CodpilotIntegration value, $Res Function(CodpilotIntegration) _then) = _$CodpilotIntegrationCopyWithImpl;
@useResult
$Res call({
 String subdomain, String apiId, String apiToken, bool active, List<PixelStatusRule> statusRules, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$CodpilotIntegrationCopyWithImpl<$Res>
    implements $CodpilotIntegrationCopyWith<$Res> {
  _$CodpilotIntegrationCopyWithImpl(this._self, this._then);

  final CodpilotIntegration _self;
  final $Res Function(CodpilotIntegration) _then;

/// Create a copy of CodpilotIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subdomain = null,Object? apiId = null,Object? apiToken = null,Object? active = null,Object? statusRules = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
subdomain: null == subdomain ? _self.subdomain : subdomain // ignore: cast_nullable_to_non_nullable
as String,apiId: null == apiId ? _self.apiId : apiId // ignore: cast_nullable_to_non_nullable
as String,apiToken: null == apiToken ? _self.apiToken : apiToken // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,statusRules: null == statusRules ? _self.statusRules : statusRules // ignore: cast_nullable_to_non_nullable
as List<PixelStatusRule>,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CodpilotIntegration].
extension CodpilotIntegrationPatterns on CodpilotIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CodpilotIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CodpilotIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CodpilotIntegration value)  $default,){
final _that = this;
switch (_that) {
case _CodpilotIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CodpilotIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _CodpilotIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String subdomain,  String apiId,  String apiToken,  bool active,  List<PixelStatusRule> statusRules,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CodpilotIntegration() when $default != null:
return $default(_that.subdomain,_that.apiId,_that.apiToken,_that.active,_that.statusRules,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String subdomain,  String apiId,  String apiToken,  bool active,  List<PixelStatusRule> statusRules,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _CodpilotIntegration():
return $default(_that.subdomain,_that.apiId,_that.apiToken,_that.active,_that.statusRules,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String subdomain,  String apiId,  String apiToken,  bool active,  List<PixelStatusRule> statusRules,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _CodpilotIntegration() when $default != null:
return $default(_that.subdomain,_that.apiId,_that.apiToken,_that.active,_that.statusRules,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CodpilotIntegration extends CodpilotIntegration {
  const _CodpilotIntegration({required this.subdomain, required this.apiId, required this.apiToken, this.active = true, List<PixelStatusRule> statusRules = const [], Map<String, dynamic> metadata = const {}}): _statusRules = statusRules,_metadata = metadata,super._();
  factory _CodpilotIntegration.fromJson(Map<String, dynamic> json) => _$CodpilotIntegrationFromJson(json);

/// Business subdomain (`mystore` → mystore.codpilot.net).
@override final  String subdomain;
@override final  String apiId;
@override final  String apiToken;
@override@JsonKey() final  bool active;
/// When a status dimension transitions into [PixelStatusRule.equals], auto-sync.
/// Empty list disables auto-sync. Default on connect: pending order status.
 final  List<PixelStatusRule> _statusRules;
/// When a status dimension transitions into [PixelStatusRule.equals], auto-sync.
/// Empty list disables auto-sync. Default on connect: pending order status.
@override@JsonKey() List<PixelStatusRule> get statusRules {
  if (_statusRules is EqualUnmodifiableListView) return _statusRules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_statusRules);
}

 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of CodpilotIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodpilotIntegrationCopyWith<_CodpilotIntegration> get copyWith => __$CodpilotIntegrationCopyWithImpl<_CodpilotIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodpilotIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodpilotIntegration&&(identical(other.subdomain, subdomain) || other.subdomain == subdomain)&&(identical(other.apiId, apiId) || other.apiId == apiId)&&(identical(other.apiToken, apiToken) || other.apiToken == apiToken)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._statusRules, _statusRules)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subdomain,apiId,apiToken,active,const DeepCollectionEquality().hash(_statusRules),const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'CodpilotIntegration(subdomain: $subdomain, apiId: $apiId, apiToken: $apiToken, active: $active, statusRules: $statusRules, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$CodpilotIntegrationCopyWith<$Res> implements $CodpilotIntegrationCopyWith<$Res> {
  factory _$CodpilotIntegrationCopyWith(_CodpilotIntegration value, $Res Function(_CodpilotIntegration) _then) = __$CodpilotIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String subdomain, String apiId, String apiToken, bool active, List<PixelStatusRule> statusRules, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$CodpilotIntegrationCopyWithImpl<$Res>
    implements _$CodpilotIntegrationCopyWith<$Res> {
  __$CodpilotIntegrationCopyWithImpl(this._self, this._then);

  final _CodpilotIntegration _self;
  final $Res Function(_CodpilotIntegration) _then;

/// Create a copy of CodpilotIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subdomain = null,Object? apiId = null,Object? apiToken = null,Object? active = null,Object? statusRules = null,Object? metadata = null,}) {
  return _then(_CodpilotIntegration(
subdomain: null == subdomain ? _self.subdomain : subdomain // ignore: cast_nullable_to_non_nullable
as String,apiId: null == apiId ? _self.apiId : apiId // ignore: cast_nullable_to_non_nullable
as String,apiToken: null == apiToken ? _self.apiToken : apiToken // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,statusRules: null == statusRules ? _self._statusRules : statusRules // ignore: cast_nullable_to_non_nullable
as List<PixelStatusRule>,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$SecurityOption {

 bool get active; int? get ttl; SecurityTreatment get treatment;
/// Create a copy of SecurityOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<SecurityOption> get copyWith => _$SecurityOptionCopyWithImpl<SecurityOption>(this as SecurityOption, _$identity);

  /// Serializes this SecurityOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityOption&&(identical(other.active, active) || other.active == active)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&(identical(other.treatment, treatment) || other.treatment == treatment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,ttl,treatment);

@override
String toString() {
  return 'SecurityOption(active: $active, ttl: $ttl, treatment: $treatment)';
}


}

/// @nodoc
abstract mixin class $SecurityOptionCopyWith<$Res>  {
  factory $SecurityOptionCopyWith(SecurityOption value, $Res Function(SecurityOption) _then) = _$SecurityOptionCopyWithImpl;
@useResult
$Res call({
 bool active, int? ttl, SecurityTreatment treatment
});




}
/// @nodoc
class _$SecurityOptionCopyWithImpl<$Res>
    implements $SecurityOptionCopyWith<$Res> {
  _$SecurityOptionCopyWithImpl(this._self, this._then);

  final SecurityOption _self;
  final $Res Function(SecurityOption) _then;

/// Create a copy of SecurityOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? ttl = freezed,Object? treatment = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,ttl: freezed == ttl ? _self.ttl : ttl // ignore: cast_nullable_to_non_nullable
as int?,treatment: null == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as SecurityTreatment,
  ));
}

}


/// Adds pattern-matching-related methods to [SecurityOption].
extension SecurityOptionPatterns on SecurityOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityOption value)  $default,){
final _that = this;
switch (_that) {
case _SecurityOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityOption value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  int? ttl,  SecurityTreatment treatment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityOption() when $default != null:
return $default(_that.active,_that.ttl,_that.treatment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  int? ttl,  SecurityTreatment treatment)  $default,) {final _that = this;
switch (_that) {
case _SecurityOption():
return $default(_that.active,_that.ttl,_that.treatment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  int? ttl,  SecurityTreatment treatment)?  $default,) {final _that = this;
switch (_that) {
case _SecurityOption() when $default != null:
return $default(_that.active,_that.ttl,_that.treatment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityOption implements SecurityOption {
  const _SecurityOption({this.active = false, this.ttl, this.treatment = SecurityTreatment.block});
  factory _SecurityOption.fromJson(Map<String, dynamic> json) => _$SecurityOptionFromJson(json);

@override@JsonKey() final  bool active;
@override final  int? ttl;
@override@JsonKey() final  SecurityTreatment treatment;

/// Create a copy of SecurityOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityOptionCopyWith<_SecurityOption> get copyWith => __$SecurityOptionCopyWithImpl<_SecurityOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecurityOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityOption&&(identical(other.active, active) || other.active == active)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&(identical(other.treatment, treatment) || other.treatment == treatment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,ttl,treatment);

@override
String toString() {
  return 'SecurityOption(active: $active, ttl: $ttl, treatment: $treatment)';
}


}

/// @nodoc
abstract mixin class _$SecurityOptionCopyWith<$Res> implements $SecurityOptionCopyWith<$Res> {
  factory _$SecurityOptionCopyWith(_SecurityOption value, $Res Function(_SecurityOption) _then) = __$SecurityOptionCopyWithImpl;
@override @useResult
$Res call({
 bool active, int? ttl, SecurityTreatment treatment
});




}
/// @nodoc
class __$SecurityOptionCopyWithImpl<$Res>
    implements _$SecurityOptionCopyWith<$Res> {
  __$SecurityOptionCopyWithImpl(this._self, this._then);

  final _SecurityOption _self;
  final $Res Function(_SecurityOption) _then;

/// Create a copy of SecurityOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? ttl = freezed,Object? treatment = null,}) {
  return _then(_SecurityOption(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,ttl: freezed == ttl ? _self.ttl : ttl // ignore: cast_nullable_to_non_nullable
as int?,treatment: null == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as SecurityTreatment,
  ));
}


}


/// @nodoc
mixin _$SecurityMinTimeOption {

 bool get active; int get duration;// seconds
 SecurityTreatment get treatment;
/// Create a copy of SecurityMinTimeOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityMinTimeOptionCopyWith<SecurityMinTimeOption> get copyWith => _$SecurityMinTimeOptionCopyWithImpl<SecurityMinTimeOption>(this as SecurityMinTimeOption, _$identity);

  /// Serializes this SecurityMinTimeOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityMinTimeOption&&(identical(other.active, active) || other.active == active)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.treatment, treatment) || other.treatment == treatment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,duration,treatment);

@override
String toString() {
  return 'SecurityMinTimeOption(active: $active, duration: $duration, treatment: $treatment)';
}


}

/// @nodoc
abstract mixin class $SecurityMinTimeOptionCopyWith<$Res>  {
  factory $SecurityMinTimeOptionCopyWith(SecurityMinTimeOption value, $Res Function(SecurityMinTimeOption) _then) = _$SecurityMinTimeOptionCopyWithImpl;
@useResult
$Res call({
 bool active, int duration, SecurityTreatment treatment
});




}
/// @nodoc
class _$SecurityMinTimeOptionCopyWithImpl<$Res>
    implements $SecurityMinTimeOptionCopyWith<$Res> {
  _$SecurityMinTimeOptionCopyWithImpl(this._self, this._then);

  final SecurityMinTimeOption _self;
  final $Res Function(SecurityMinTimeOption) _then;

/// Create a copy of SecurityMinTimeOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? duration = null,Object? treatment = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,treatment: null == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as SecurityTreatment,
  ));
}

}


/// Adds pattern-matching-related methods to [SecurityMinTimeOption].
extension SecurityMinTimeOptionPatterns on SecurityMinTimeOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityMinTimeOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityMinTimeOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityMinTimeOption value)  $default,){
final _that = this;
switch (_that) {
case _SecurityMinTimeOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityMinTimeOption value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityMinTimeOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  int duration,  SecurityTreatment treatment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityMinTimeOption() when $default != null:
return $default(_that.active,_that.duration,_that.treatment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  int duration,  SecurityTreatment treatment)  $default,) {final _that = this;
switch (_that) {
case _SecurityMinTimeOption():
return $default(_that.active,_that.duration,_that.treatment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  int duration,  SecurityTreatment treatment)?  $default,) {final _that = this;
switch (_that) {
case _SecurityMinTimeOption() when $default != null:
return $default(_that.active,_that.duration,_that.treatment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityMinTimeOption implements SecurityMinTimeOption {
  const _SecurityMinTimeOption({this.active = false, this.duration = 10, this.treatment = SecurityTreatment.block});
  factory _SecurityMinTimeOption.fromJson(Map<String, dynamic> json) => _$SecurityMinTimeOptionFromJson(json);

@override@JsonKey() final  bool active;
@override@JsonKey() final  int duration;
// seconds
@override@JsonKey() final  SecurityTreatment treatment;

/// Create a copy of SecurityMinTimeOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityMinTimeOptionCopyWith<_SecurityMinTimeOption> get copyWith => __$SecurityMinTimeOptionCopyWithImpl<_SecurityMinTimeOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecurityMinTimeOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityMinTimeOption&&(identical(other.active, active) || other.active == active)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.treatment, treatment) || other.treatment == treatment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,duration,treatment);

@override
String toString() {
  return 'SecurityMinTimeOption(active: $active, duration: $duration, treatment: $treatment)';
}


}

/// @nodoc
abstract mixin class _$SecurityMinTimeOptionCopyWith<$Res> implements $SecurityMinTimeOptionCopyWith<$Res> {
  factory _$SecurityMinTimeOptionCopyWith(_SecurityMinTimeOption value, $Res Function(_SecurityMinTimeOption) _then) = __$SecurityMinTimeOptionCopyWithImpl;
@override @useResult
$Res call({
 bool active, int duration, SecurityTreatment treatment
});




}
/// @nodoc
class __$SecurityMinTimeOptionCopyWithImpl<$Res>
    implements _$SecurityMinTimeOptionCopyWith<$Res> {
  __$SecurityMinTimeOptionCopyWithImpl(this._self, this._then);

  final _SecurityMinTimeOption _self;
  final $Res Function(_SecurityMinTimeOption) _then;

/// Create a copy of SecurityMinTimeOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? duration = null,Object? treatment = null,}) {
  return _then(_SecurityMinTimeOption(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,treatment: null == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as SecurityTreatment,
  ));
}


}


/// @nodoc
mixin _$SecurityCountriesOption {

 bool get active; SecurityTreatment get treatment; List<String>? get allowed;// ISO codes; null/empty = allow all
 List<String> get blocked;
/// Create a copy of SecurityCountriesOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityCountriesOptionCopyWith<SecurityCountriesOption> get copyWith => _$SecurityCountriesOptionCopyWithImpl<SecurityCountriesOption>(this as SecurityCountriesOption, _$identity);

  /// Serializes this SecurityCountriesOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityCountriesOption&&(identical(other.active, active) || other.active == active)&&(identical(other.treatment, treatment) || other.treatment == treatment)&&const DeepCollectionEquality().equals(other.allowed, allowed)&&const DeepCollectionEquality().equals(other.blocked, blocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,treatment,const DeepCollectionEquality().hash(allowed),const DeepCollectionEquality().hash(blocked));

@override
String toString() {
  return 'SecurityCountriesOption(active: $active, treatment: $treatment, allowed: $allowed, blocked: $blocked)';
}


}

/// @nodoc
abstract mixin class $SecurityCountriesOptionCopyWith<$Res>  {
  factory $SecurityCountriesOptionCopyWith(SecurityCountriesOption value, $Res Function(SecurityCountriesOption) _then) = _$SecurityCountriesOptionCopyWithImpl;
@useResult
$Res call({
 bool active, SecurityTreatment treatment, List<String>? allowed, List<String> blocked
});




}
/// @nodoc
class _$SecurityCountriesOptionCopyWithImpl<$Res>
    implements $SecurityCountriesOptionCopyWith<$Res> {
  _$SecurityCountriesOptionCopyWithImpl(this._self, this._then);

  final SecurityCountriesOption _self;
  final $Res Function(SecurityCountriesOption) _then;

/// Create a copy of SecurityCountriesOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? treatment = null,Object? allowed = freezed,Object? blocked = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,treatment: null == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as SecurityTreatment,allowed: freezed == allowed ? _self.allowed : allowed // ignore: cast_nullable_to_non_nullable
as List<String>?,blocked: null == blocked ? _self.blocked : blocked // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [SecurityCountriesOption].
extension SecurityCountriesOptionPatterns on SecurityCountriesOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityCountriesOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityCountriesOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityCountriesOption value)  $default,){
final _that = this;
switch (_that) {
case _SecurityCountriesOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityCountriesOption value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityCountriesOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  SecurityTreatment treatment,  List<String>? allowed,  List<String> blocked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityCountriesOption() when $default != null:
return $default(_that.active,_that.treatment,_that.allowed,_that.blocked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  SecurityTreatment treatment,  List<String>? allowed,  List<String> blocked)  $default,) {final _that = this;
switch (_that) {
case _SecurityCountriesOption():
return $default(_that.active,_that.treatment,_that.allowed,_that.blocked);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  SecurityTreatment treatment,  List<String>? allowed,  List<String> blocked)?  $default,) {final _that = this;
switch (_that) {
case _SecurityCountriesOption() when $default != null:
return $default(_that.active,_that.treatment,_that.allowed,_that.blocked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityCountriesOption implements SecurityCountriesOption {
  const _SecurityCountriesOption({this.active = false, this.treatment = SecurityTreatment.block, List<String>? allowed, List<String> blocked = const []}): _allowed = allowed,_blocked = blocked;
  factory _SecurityCountriesOption.fromJson(Map<String, dynamic> json) => _$SecurityCountriesOptionFromJson(json);

@override@JsonKey() final  bool active;
@override@JsonKey() final  SecurityTreatment treatment;
 final  List<String>? _allowed;
@override List<String>? get allowed {
  final value = _allowed;
  if (value == null) return null;
  if (_allowed is EqualUnmodifiableListView) return _allowed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// ISO codes; null/empty = allow all
 final  List<String> _blocked;
// ISO codes; null/empty = allow all
@override@JsonKey() List<String> get blocked {
  if (_blocked is EqualUnmodifiableListView) return _blocked;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_blocked);
}


/// Create a copy of SecurityCountriesOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityCountriesOptionCopyWith<_SecurityCountriesOption> get copyWith => __$SecurityCountriesOptionCopyWithImpl<_SecurityCountriesOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecurityCountriesOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityCountriesOption&&(identical(other.active, active) || other.active == active)&&(identical(other.treatment, treatment) || other.treatment == treatment)&&const DeepCollectionEquality().equals(other._allowed, _allowed)&&const DeepCollectionEquality().equals(other._blocked, _blocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,treatment,const DeepCollectionEquality().hash(_allowed),const DeepCollectionEquality().hash(_blocked));

@override
String toString() {
  return 'SecurityCountriesOption(active: $active, treatment: $treatment, allowed: $allowed, blocked: $blocked)';
}


}

/// @nodoc
abstract mixin class _$SecurityCountriesOptionCopyWith<$Res> implements $SecurityCountriesOptionCopyWith<$Res> {
  factory _$SecurityCountriesOptionCopyWith(_SecurityCountriesOption value, $Res Function(_SecurityCountriesOption) _then) = __$SecurityCountriesOptionCopyWithImpl;
@override @useResult
$Res call({
 bool active, SecurityTreatment treatment, List<String>? allowed, List<String> blocked
});




}
/// @nodoc
class __$SecurityCountriesOptionCopyWithImpl<$Res>
    implements _$SecurityCountriesOptionCopyWith<$Res> {
  __$SecurityCountriesOptionCopyWithImpl(this._self, this._then);

  final _SecurityCountriesOption _self;
  final $Res Function(_SecurityCountriesOption) _then;

/// Create a copy of SecurityCountriesOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? treatment = null,Object? allowed = freezed,Object? blocked = null,}) {
  return _then(_SecurityCountriesOption(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,treatment: null == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as SecurityTreatment,allowed: freezed == allowed ? _self._allowed : allowed // ignore: cast_nullable_to_non_nullable
as List<String>?,blocked: null == blocked ? _self._blocked : blocked // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$SecuritySourcesOption {

 bool get active; SecurityTreatment get treatment; List<String>? get allowed;// e.g., ["ads", "organic"]; null = all
 List<String> get blocked;
/// Create a copy of SecuritySourcesOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecuritySourcesOptionCopyWith<SecuritySourcesOption> get copyWith => _$SecuritySourcesOptionCopyWithImpl<SecuritySourcesOption>(this as SecuritySourcesOption, _$identity);

  /// Serializes this SecuritySourcesOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecuritySourcesOption&&(identical(other.active, active) || other.active == active)&&(identical(other.treatment, treatment) || other.treatment == treatment)&&const DeepCollectionEquality().equals(other.allowed, allowed)&&const DeepCollectionEquality().equals(other.blocked, blocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,treatment,const DeepCollectionEquality().hash(allowed),const DeepCollectionEquality().hash(blocked));

@override
String toString() {
  return 'SecuritySourcesOption(active: $active, treatment: $treatment, allowed: $allowed, blocked: $blocked)';
}


}

/// @nodoc
abstract mixin class $SecuritySourcesOptionCopyWith<$Res>  {
  factory $SecuritySourcesOptionCopyWith(SecuritySourcesOption value, $Res Function(SecuritySourcesOption) _then) = _$SecuritySourcesOptionCopyWithImpl;
@useResult
$Res call({
 bool active, SecurityTreatment treatment, List<String>? allowed, List<String> blocked
});




}
/// @nodoc
class _$SecuritySourcesOptionCopyWithImpl<$Res>
    implements $SecuritySourcesOptionCopyWith<$Res> {
  _$SecuritySourcesOptionCopyWithImpl(this._self, this._then);

  final SecuritySourcesOption _self;
  final $Res Function(SecuritySourcesOption) _then;

/// Create a copy of SecuritySourcesOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? treatment = null,Object? allowed = freezed,Object? blocked = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,treatment: null == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as SecurityTreatment,allowed: freezed == allowed ? _self.allowed : allowed // ignore: cast_nullable_to_non_nullable
as List<String>?,blocked: null == blocked ? _self.blocked : blocked // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [SecuritySourcesOption].
extension SecuritySourcesOptionPatterns on SecuritySourcesOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecuritySourcesOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecuritySourcesOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecuritySourcesOption value)  $default,){
final _that = this;
switch (_that) {
case _SecuritySourcesOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecuritySourcesOption value)?  $default,){
final _that = this;
switch (_that) {
case _SecuritySourcesOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  SecurityTreatment treatment,  List<String>? allowed,  List<String> blocked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecuritySourcesOption() when $default != null:
return $default(_that.active,_that.treatment,_that.allowed,_that.blocked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  SecurityTreatment treatment,  List<String>? allowed,  List<String> blocked)  $default,) {final _that = this;
switch (_that) {
case _SecuritySourcesOption():
return $default(_that.active,_that.treatment,_that.allowed,_that.blocked);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  SecurityTreatment treatment,  List<String>? allowed,  List<String> blocked)?  $default,) {final _that = this;
switch (_that) {
case _SecuritySourcesOption() when $default != null:
return $default(_that.active,_that.treatment,_that.allowed,_that.blocked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecuritySourcesOption implements SecuritySourcesOption {
  const _SecuritySourcesOption({this.active = false, this.treatment = SecurityTreatment.block, List<String>? allowed, List<String> blocked = const []}): _allowed = allowed,_blocked = blocked;
  factory _SecuritySourcesOption.fromJson(Map<String, dynamic> json) => _$SecuritySourcesOptionFromJson(json);

@override@JsonKey() final  bool active;
@override@JsonKey() final  SecurityTreatment treatment;
 final  List<String>? _allowed;
@override List<String>? get allowed {
  final value = _allowed;
  if (value == null) return null;
  if (_allowed is EqualUnmodifiableListView) return _allowed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// e.g., ["ads", "organic"]; null = all
 final  List<String> _blocked;
// e.g., ["ads", "organic"]; null = all
@override@JsonKey() List<String> get blocked {
  if (_blocked is EqualUnmodifiableListView) return _blocked;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_blocked);
}


/// Create a copy of SecuritySourcesOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecuritySourcesOptionCopyWith<_SecuritySourcesOption> get copyWith => __$SecuritySourcesOptionCopyWithImpl<_SecuritySourcesOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecuritySourcesOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecuritySourcesOption&&(identical(other.active, active) || other.active == active)&&(identical(other.treatment, treatment) || other.treatment == treatment)&&const DeepCollectionEquality().equals(other._allowed, _allowed)&&const DeepCollectionEquality().equals(other._blocked, _blocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,treatment,const DeepCollectionEquality().hash(_allowed),const DeepCollectionEquality().hash(_blocked));

@override
String toString() {
  return 'SecuritySourcesOption(active: $active, treatment: $treatment, allowed: $allowed, blocked: $blocked)';
}


}

/// @nodoc
abstract mixin class _$SecuritySourcesOptionCopyWith<$Res> implements $SecuritySourcesOptionCopyWith<$Res> {
  factory _$SecuritySourcesOptionCopyWith(_SecuritySourcesOption value, $Res Function(_SecuritySourcesOption) _then) = __$SecuritySourcesOptionCopyWithImpl;
@override @useResult
$Res call({
 bool active, SecurityTreatment treatment, List<String>? allowed, List<String> blocked
});




}
/// @nodoc
class __$SecuritySourcesOptionCopyWithImpl<$Res>
    implements _$SecuritySourcesOptionCopyWith<$Res> {
  __$SecuritySourcesOptionCopyWithImpl(this._self, this._then);

  final _SecuritySourcesOption _self;
  final $Res Function(_SecuritySourcesOption) _then;

/// Create a copy of SecuritySourcesOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? treatment = null,Object? allowed = freezed,Object? blocked = null,}) {
  return _then(_SecuritySourcesOption(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,treatment: null == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as SecurityTreatment,allowed: freezed == allowed ? _self._allowed : allowed // ignore: cast_nullable_to_non_nullable
as List<String>?,blocked: null == blocked ? _self._blocked : blocked // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$SecurityOptions {

 SecurityOption? get fingerprint; SecurityOption? get ip; SecurityOption? get phone; SecurityOption? get ads; SecurityOption? get frontend; SecurityOption? get doubleSend; SecurityMinTimeOption? get minTimeInPage; SecurityCountriesOption? get countries; SecuritySourcesOption? get sources;
/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityOptionsCopyWith<SecurityOptions> get copyWith => _$SecurityOptionsCopyWithImpl<SecurityOptions>(this as SecurityOptions, _$identity);

  /// Serializes this SecurityOptions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityOptions&&(identical(other.fingerprint, fingerprint) || other.fingerprint == fingerprint)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.ads, ads) || other.ads == ads)&&(identical(other.frontend, frontend) || other.frontend == frontend)&&(identical(other.doubleSend, doubleSend) || other.doubleSend == doubleSend)&&(identical(other.minTimeInPage, minTimeInPage) || other.minTimeInPage == minTimeInPage)&&(identical(other.countries, countries) || other.countries == countries)&&(identical(other.sources, sources) || other.sources == sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fingerprint,ip,phone,ads,frontend,doubleSend,minTimeInPage,countries,sources);

@override
String toString() {
  return 'SecurityOptions(fingerprint: $fingerprint, ip: $ip, phone: $phone, ads: $ads, frontend: $frontend, doubleSend: $doubleSend, minTimeInPage: $minTimeInPage, countries: $countries, sources: $sources)';
}


}

/// @nodoc
abstract mixin class $SecurityOptionsCopyWith<$Res>  {
  factory $SecurityOptionsCopyWith(SecurityOptions value, $Res Function(SecurityOptions) _then) = _$SecurityOptionsCopyWithImpl;
@useResult
$Res call({
 SecurityOption? fingerprint, SecurityOption? ip, SecurityOption? phone, SecurityOption? ads, SecurityOption? frontend, SecurityOption? doubleSend, SecurityMinTimeOption? minTimeInPage, SecurityCountriesOption? countries, SecuritySourcesOption? sources
});


$SecurityOptionCopyWith<$Res>? get fingerprint;$SecurityOptionCopyWith<$Res>? get ip;$SecurityOptionCopyWith<$Res>? get phone;$SecurityOptionCopyWith<$Res>? get ads;$SecurityOptionCopyWith<$Res>? get frontend;$SecurityOptionCopyWith<$Res>? get doubleSend;$SecurityMinTimeOptionCopyWith<$Res>? get minTimeInPage;$SecurityCountriesOptionCopyWith<$Res>? get countries;$SecuritySourcesOptionCopyWith<$Res>? get sources;

}
/// @nodoc
class _$SecurityOptionsCopyWithImpl<$Res>
    implements $SecurityOptionsCopyWith<$Res> {
  _$SecurityOptionsCopyWithImpl(this._self, this._then);

  final SecurityOptions _self;
  final $Res Function(SecurityOptions) _then;

/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fingerprint = freezed,Object? ip = freezed,Object? phone = freezed,Object? ads = freezed,Object? frontend = freezed,Object? doubleSend = freezed,Object? minTimeInPage = freezed,Object? countries = freezed,Object? sources = freezed,}) {
  return _then(_self.copyWith(
fingerprint: freezed == fingerprint ? _self.fingerprint : fingerprint // ignore: cast_nullable_to_non_nullable
as SecurityOption?,ip: freezed == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as SecurityOption?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as SecurityOption?,ads: freezed == ads ? _self.ads : ads // ignore: cast_nullable_to_non_nullable
as SecurityOption?,frontend: freezed == frontend ? _self.frontend : frontend // ignore: cast_nullable_to_non_nullable
as SecurityOption?,doubleSend: freezed == doubleSend ? _self.doubleSend : doubleSend // ignore: cast_nullable_to_non_nullable
as SecurityOption?,minTimeInPage: freezed == minTimeInPage ? _self.minTimeInPage : minTimeInPage // ignore: cast_nullable_to_non_nullable
as SecurityMinTimeOption?,countries: freezed == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as SecurityCountriesOption?,sources: freezed == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as SecuritySourcesOption?,
  ));
}
/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<$Res>? get fingerprint {
    if (_self.fingerprint == null) {
    return null;
  }

  return $SecurityOptionCopyWith<$Res>(_self.fingerprint!, (value) {
    return _then(_self.copyWith(fingerprint: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<$Res>? get ip {
    if (_self.ip == null) {
    return null;
  }

  return $SecurityOptionCopyWith<$Res>(_self.ip!, (value) {
    return _then(_self.copyWith(ip: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<$Res>? get phone {
    if (_self.phone == null) {
    return null;
  }

  return $SecurityOptionCopyWith<$Res>(_self.phone!, (value) {
    return _then(_self.copyWith(phone: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<$Res>? get ads {
    if (_self.ads == null) {
    return null;
  }

  return $SecurityOptionCopyWith<$Res>(_self.ads!, (value) {
    return _then(_self.copyWith(ads: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<$Res>? get frontend {
    if (_self.frontend == null) {
    return null;
  }

  return $SecurityOptionCopyWith<$Res>(_self.frontend!, (value) {
    return _then(_self.copyWith(frontend: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<$Res>? get doubleSend {
    if (_self.doubleSend == null) {
    return null;
  }

  return $SecurityOptionCopyWith<$Res>(_self.doubleSend!, (value) {
    return _then(_self.copyWith(doubleSend: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityMinTimeOptionCopyWith<$Res>? get minTimeInPage {
    if (_self.minTimeInPage == null) {
    return null;
  }

  return $SecurityMinTimeOptionCopyWith<$Res>(_self.minTimeInPage!, (value) {
    return _then(_self.copyWith(minTimeInPage: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityCountriesOptionCopyWith<$Res>? get countries {
    if (_self.countries == null) {
    return null;
  }

  return $SecurityCountriesOptionCopyWith<$Res>(_self.countries!, (value) {
    return _then(_self.copyWith(countries: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecuritySourcesOptionCopyWith<$Res>? get sources {
    if (_self.sources == null) {
    return null;
  }

  return $SecuritySourcesOptionCopyWith<$Res>(_self.sources!, (value) {
    return _then(_self.copyWith(sources: value));
  });
}
}


/// Adds pattern-matching-related methods to [SecurityOptions].
extension SecurityOptionsPatterns on SecurityOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityOptions value)  $default,){
final _that = this;
switch (_that) {
case _SecurityOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityOptions value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SecurityOption? fingerprint,  SecurityOption? ip,  SecurityOption? phone,  SecurityOption? ads,  SecurityOption? frontend,  SecurityOption? doubleSend,  SecurityMinTimeOption? minTimeInPage,  SecurityCountriesOption? countries,  SecuritySourcesOption? sources)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityOptions() when $default != null:
return $default(_that.fingerprint,_that.ip,_that.phone,_that.ads,_that.frontend,_that.doubleSend,_that.minTimeInPage,_that.countries,_that.sources);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SecurityOption? fingerprint,  SecurityOption? ip,  SecurityOption? phone,  SecurityOption? ads,  SecurityOption? frontend,  SecurityOption? doubleSend,  SecurityMinTimeOption? minTimeInPage,  SecurityCountriesOption? countries,  SecuritySourcesOption? sources)  $default,) {final _that = this;
switch (_that) {
case _SecurityOptions():
return $default(_that.fingerprint,_that.ip,_that.phone,_that.ads,_that.frontend,_that.doubleSend,_that.minTimeInPage,_that.countries,_that.sources);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SecurityOption? fingerprint,  SecurityOption? ip,  SecurityOption? phone,  SecurityOption? ads,  SecurityOption? frontend,  SecurityOption? doubleSend,  SecurityMinTimeOption? minTimeInPage,  SecurityCountriesOption? countries,  SecuritySourcesOption? sources)?  $default,) {final _that = this;
switch (_that) {
case _SecurityOptions() when $default != null:
return $default(_that.fingerprint,_that.ip,_that.phone,_that.ads,_that.frontend,_that.doubleSend,_that.minTimeInPage,_that.countries,_that.sources);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityOptions implements SecurityOptions {
  const _SecurityOptions({this.fingerprint, this.ip, this.phone, this.ads, this.frontend, this.doubleSend, this.minTimeInPage, this.countries, this.sources});
  factory _SecurityOptions.fromJson(Map<String, dynamic> json) => _$SecurityOptionsFromJson(json);

@override final  SecurityOption? fingerprint;
@override final  SecurityOption? ip;
@override final  SecurityOption? phone;
@override final  SecurityOption? ads;
@override final  SecurityOption? frontend;
@override final  SecurityOption? doubleSend;
@override final  SecurityMinTimeOption? minTimeInPage;
@override final  SecurityCountriesOption? countries;
@override final  SecuritySourcesOption? sources;

/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityOptionsCopyWith<_SecurityOptions> get copyWith => __$SecurityOptionsCopyWithImpl<_SecurityOptions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecurityOptionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityOptions&&(identical(other.fingerprint, fingerprint) || other.fingerprint == fingerprint)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.ads, ads) || other.ads == ads)&&(identical(other.frontend, frontend) || other.frontend == frontend)&&(identical(other.doubleSend, doubleSend) || other.doubleSend == doubleSend)&&(identical(other.minTimeInPage, minTimeInPage) || other.minTimeInPage == minTimeInPage)&&(identical(other.countries, countries) || other.countries == countries)&&(identical(other.sources, sources) || other.sources == sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fingerprint,ip,phone,ads,frontend,doubleSend,minTimeInPage,countries,sources);

@override
String toString() {
  return 'SecurityOptions(fingerprint: $fingerprint, ip: $ip, phone: $phone, ads: $ads, frontend: $frontend, doubleSend: $doubleSend, minTimeInPage: $minTimeInPage, countries: $countries, sources: $sources)';
}


}

/// @nodoc
abstract mixin class _$SecurityOptionsCopyWith<$Res> implements $SecurityOptionsCopyWith<$Res> {
  factory _$SecurityOptionsCopyWith(_SecurityOptions value, $Res Function(_SecurityOptions) _then) = __$SecurityOptionsCopyWithImpl;
@override @useResult
$Res call({
 SecurityOption? fingerprint, SecurityOption? ip, SecurityOption? phone, SecurityOption? ads, SecurityOption? frontend, SecurityOption? doubleSend, SecurityMinTimeOption? minTimeInPage, SecurityCountriesOption? countries, SecuritySourcesOption? sources
});


@override $SecurityOptionCopyWith<$Res>? get fingerprint;@override $SecurityOptionCopyWith<$Res>? get ip;@override $SecurityOptionCopyWith<$Res>? get phone;@override $SecurityOptionCopyWith<$Res>? get ads;@override $SecurityOptionCopyWith<$Res>? get frontend;@override $SecurityOptionCopyWith<$Res>? get doubleSend;@override $SecurityMinTimeOptionCopyWith<$Res>? get minTimeInPage;@override $SecurityCountriesOptionCopyWith<$Res>? get countries;@override $SecuritySourcesOptionCopyWith<$Res>? get sources;

}
/// @nodoc
class __$SecurityOptionsCopyWithImpl<$Res>
    implements _$SecurityOptionsCopyWith<$Res> {
  __$SecurityOptionsCopyWithImpl(this._self, this._then);

  final _SecurityOptions _self;
  final $Res Function(_SecurityOptions) _then;

/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fingerprint = freezed,Object? ip = freezed,Object? phone = freezed,Object? ads = freezed,Object? frontend = freezed,Object? doubleSend = freezed,Object? minTimeInPage = freezed,Object? countries = freezed,Object? sources = freezed,}) {
  return _then(_SecurityOptions(
fingerprint: freezed == fingerprint ? _self.fingerprint : fingerprint // ignore: cast_nullable_to_non_nullable
as SecurityOption?,ip: freezed == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as SecurityOption?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as SecurityOption?,ads: freezed == ads ? _self.ads : ads // ignore: cast_nullable_to_non_nullable
as SecurityOption?,frontend: freezed == frontend ? _self.frontend : frontend // ignore: cast_nullable_to_non_nullable
as SecurityOption?,doubleSend: freezed == doubleSend ? _self.doubleSend : doubleSend // ignore: cast_nullable_to_non_nullable
as SecurityOption?,minTimeInPage: freezed == minTimeInPage ? _self.minTimeInPage : minTimeInPage // ignore: cast_nullable_to_non_nullable
as SecurityMinTimeOption?,countries: freezed == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as SecurityCountriesOption?,sources: freezed == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as SecuritySourcesOption?,
  ));
}

/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<$Res>? get fingerprint {
    if (_self.fingerprint == null) {
    return null;
  }

  return $SecurityOptionCopyWith<$Res>(_self.fingerprint!, (value) {
    return _then(_self.copyWith(fingerprint: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<$Res>? get ip {
    if (_self.ip == null) {
    return null;
  }

  return $SecurityOptionCopyWith<$Res>(_self.ip!, (value) {
    return _then(_self.copyWith(ip: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<$Res>? get phone {
    if (_self.phone == null) {
    return null;
  }

  return $SecurityOptionCopyWith<$Res>(_self.phone!, (value) {
    return _then(_self.copyWith(phone: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<$Res>? get ads {
    if (_self.ads == null) {
    return null;
  }

  return $SecurityOptionCopyWith<$Res>(_self.ads!, (value) {
    return _then(_self.copyWith(ads: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<$Res>? get frontend {
    if (_self.frontend == null) {
    return null;
  }

  return $SecurityOptionCopyWith<$Res>(_self.frontend!, (value) {
    return _then(_self.copyWith(frontend: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionCopyWith<$Res>? get doubleSend {
    if (_self.doubleSend == null) {
    return null;
  }

  return $SecurityOptionCopyWith<$Res>(_self.doubleSend!, (value) {
    return _then(_self.copyWith(doubleSend: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityMinTimeOptionCopyWith<$Res>? get minTimeInPage {
    if (_self.minTimeInPage == null) {
    return null;
  }

  return $SecurityMinTimeOptionCopyWith<$Res>(_self.minTimeInPage!, (value) {
    return _then(_self.copyWith(minTimeInPage: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityCountriesOptionCopyWith<$Res>? get countries {
    if (_self.countries == null) {
    return null;
  }

  return $SecurityCountriesOptionCopyWith<$Res>(_self.countries!, (value) {
    return _then(_self.copyWith(countries: value));
  });
}/// Create a copy of SecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecuritySourcesOptionCopyWith<$Res>? get sources {
    if (_self.sources == null) {
    return null;
  }

  return $SecuritySourcesOptionCopyWith<$Res>(_self.sources!, (value) {
    return _then(_self.copyWith(sources: value));
  });
}
}


/// @nodoc
mixin _$SecurityIntegration {

 bool get active; SecurityOptions? get options; Map<String, dynamic> get metadata;
/// Create a copy of SecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityIntegrationCopyWith<SecurityIntegration> get copyWith => _$SecurityIntegrationCopyWithImpl<SecurityIntegration>(this as SecurityIntegration, _$identity);

  /// Serializes this SecurityIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.options, options) || other.options == options)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,options,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'SecurityIntegration(active: $active, options: $options, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $SecurityIntegrationCopyWith<$Res>  {
  factory $SecurityIntegrationCopyWith(SecurityIntegration value, $Res Function(SecurityIntegration) _then) = _$SecurityIntegrationCopyWithImpl;
@useResult
$Res call({
 bool active, SecurityOptions? options, Map<String, dynamic> metadata
});


$SecurityOptionsCopyWith<$Res>? get options;

}
/// @nodoc
class _$SecurityIntegrationCopyWithImpl<$Res>
    implements $SecurityIntegrationCopyWith<$Res> {
  _$SecurityIntegrationCopyWithImpl(this._self, this._then);

  final SecurityIntegration _self;
  final $Res Function(SecurityIntegration) _then;

/// Create a copy of SecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? options = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as SecurityOptions?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of SecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionsCopyWith<$Res>? get options {
    if (_self.options == null) {
    return null;
  }

  return $SecurityOptionsCopyWith<$Res>(_self.options!, (value) {
    return _then(_self.copyWith(options: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  SecurityOptions? options,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityIntegration() when $default != null:
return $default(_that.active,_that.options,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  SecurityOptions? options,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _SecurityIntegration():
return $default(_that.active,_that.options,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  SecurityOptions? options,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _SecurityIntegration() when $default != null:
return $default(_that.active,_that.options,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityIntegration extends SecurityIntegration {
  const _SecurityIntegration({this.active = false, this.options, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _SecurityIntegration.fromJson(Map<String, dynamic> json) => _$SecurityIntegrationFromJson(json);

@override@JsonKey() final  bool active;
@override final  SecurityOptions? options;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.options, options) || other.options == options)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,options,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'SecurityIntegration(active: $active, options: $options, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$SecurityIntegrationCopyWith<$Res> implements $SecurityIntegrationCopyWith<$Res> {
  factory _$SecurityIntegrationCopyWith(_SecurityIntegration value, $Res Function(_SecurityIntegration) _then) = __$SecurityIntegrationCopyWithImpl;
@override @useResult
$Res call({
 bool active, SecurityOptions? options, Map<String, dynamic> metadata
});


@override $SecurityOptionsCopyWith<$Res>? get options;

}
/// @nodoc
class __$SecurityIntegrationCopyWithImpl<$Res>
    implements _$SecurityIntegrationCopyWith<$Res> {
  __$SecurityIntegrationCopyWithImpl(this._self, this._then);

  final _SecurityIntegration _self;
  final $Res Function(_SecurityIntegration) _then;

/// Create a copy of SecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? options = freezed,Object? metadata = null,}) {
  return _then(_SecurityIntegration(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as SecurityOptions?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of SecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityOptionsCopyWith<$Res>? get options {
    if (_self.options == null) {
    return null;
  }

  return $SecurityOptionsCopyWith<$Res>(_self.options!, (value) {
    return _then(_self.copyWith(options: value));
  });
}
}


/// @nodoc
mixin _$StoreInventoryIntegration {

 bool get active; Map<String, dynamic> get metadata;
/// Create a copy of StoreInventoryIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreInventoryIntegrationCopyWith<StoreInventoryIntegration> get copyWith => _$StoreInventoryIntegrationCopyWithImpl<StoreInventoryIntegration>(this as StoreInventoryIntegration, _$identity);

  /// Serializes this StoreInventoryIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreInventoryIntegration&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'StoreInventoryIntegration(active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $StoreInventoryIntegrationCopyWith<$Res>  {
  factory $StoreInventoryIntegrationCopyWith(StoreInventoryIntegration value, $Res Function(StoreInventoryIntegration) _then) = _$StoreInventoryIntegrationCopyWithImpl;
@useResult
$Res call({
 bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$StoreInventoryIntegrationCopyWithImpl<$Res>
    implements $StoreInventoryIntegrationCopyWith<$Res> {
  _$StoreInventoryIntegrationCopyWithImpl(this._self, this._then);

  final StoreInventoryIntegration _self;
  final $Res Function(StoreInventoryIntegration) _then;

/// Create a copy of StoreInventoryIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreInventoryIntegration].
extension StoreInventoryIntegrationPatterns on StoreInventoryIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreInventoryIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreInventoryIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreInventoryIntegration value)  $default,){
final _that = this;
switch (_that) {
case _StoreInventoryIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreInventoryIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _StoreInventoryIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreInventoryIntegration() when $default != null:
return $default(_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _StoreInventoryIntegration():
return $default(_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _StoreInventoryIntegration() when $default != null:
return $default(_that.active,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreInventoryIntegration extends StoreInventoryIntegration {
  const _StoreInventoryIntegration({this.active = false, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _StoreInventoryIntegration.fromJson(Map<String, dynamic> json) => _$StoreInventoryIntegrationFromJson(json);

@override@JsonKey() final  bool active;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of StoreInventoryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreInventoryIntegrationCopyWith<_StoreInventoryIntegration> get copyWith => __$StoreInventoryIntegrationCopyWithImpl<_StoreInventoryIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreInventoryIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreInventoryIntegration&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'StoreInventoryIntegration(active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$StoreInventoryIntegrationCopyWith<$Res> implements $StoreInventoryIntegrationCopyWith<$Res> {
  factory _$StoreInventoryIntegrationCopyWith(_StoreInventoryIntegration value, $Res Function(_StoreInventoryIntegration) _then) = __$StoreInventoryIntegrationCopyWithImpl;
@override @useResult
$Res call({
 bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$StoreInventoryIntegrationCopyWithImpl<$Res>
    implements _$StoreInventoryIntegrationCopyWith<$Res> {
  __$StoreInventoryIntegrationCopyWithImpl(this._self, this._then);

  final _StoreInventoryIntegration _self;
  final $Res Function(_StoreInventoryIntegration) _then;

/// Create a copy of StoreInventoryIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? metadata = null,}) {
  return _then(_StoreInventoryIntegration(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$StoreFinanceIntegration {

 bool get active; Map<String, dynamic> get metadata;
/// Create a copy of StoreFinanceIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreFinanceIntegrationCopyWith<StoreFinanceIntegration> get copyWith => _$StoreFinanceIntegrationCopyWithImpl<StoreFinanceIntegration>(this as StoreFinanceIntegration, _$identity);

  /// Serializes this StoreFinanceIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreFinanceIntegration&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'StoreFinanceIntegration(active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $StoreFinanceIntegrationCopyWith<$Res>  {
  factory $StoreFinanceIntegrationCopyWith(StoreFinanceIntegration value, $Res Function(StoreFinanceIntegration) _then) = _$StoreFinanceIntegrationCopyWithImpl;
@useResult
$Res call({
 bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$StoreFinanceIntegrationCopyWithImpl<$Res>
    implements $StoreFinanceIntegrationCopyWith<$Res> {
  _$StoreFinanceIntegrationCopyWithImpl(this._self, this._then);

  final StoreFinanceIntegration _self;
  final $Res Function(StoreFinanceIntegration) _then;

/// Create a copy of StoreFinanceIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreFinanceIntegration].
extension StoreFinanceIntegrationPatterns on StoreFinanceIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreFinanceIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreFinanceIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreFinanceIntegration value)  $default,){
final _that = this;
switch (_that) {
case _StoreFinanceIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreFinanceIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _StoreFinanceIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreFinanceIntegration() when $default != null:
return $default(_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _StoreFinanceIntegration():
return $default(_that.active,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _StoreFinanceIntegration() when $default != null:
return $default(_that.active,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreFinanceIntegration extends StoreFinanceIntegration {
  const _StoreFinanceIntegration({this.active = false, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
  factory _StoreFinanceIntegration.fromJson(Map<String, dynamic> json) => _$StoreFinanceIntegrationFromJson(json);

@override@JsonKey() final  bool active;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of StoreFinanceIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreFinanceIntegrationCopyWith<_StoreFinanceIntegration> get copyWith => __$StoreFinanceIntegrationCopyWithImpl<_StoreFinanceIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreFinanceIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreFinanceIntegration&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'StoreFinanceIntegration(active: $active, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$StoreFinanceIntegrationCopyWith<$Res> implements $StoreFinanceIntegrationCopyWith<$Res> {
  factory _$StoreFinanceIntegrationCopyWith(_StoreFinanceIntegration value, $Res Function(_StoreFinanceIntegration) _then) = __$StoreFinanceIntegrationCopyWithImpl;
@override @useResult
$Res call({
 bool active, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$StoreFinanceIntegrationCopyWithImpl<$Res>
    implements _$StoreFinanceIntegrationCopyWith<$Res> {
  __$StoreFinanceIntegrationCopyWithImpl(this._self, this._then);

  final _StoreFinanceIntegration _self;
  final $Res Function(_StoreFinanceIntegration) _then;

/// Create a copy of StoreFinanceIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? metadata = null,}) {
  return _then(_StoreFinanceIntegration(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$PublicSecurityOption {

 bool get active; int get ttl; SecurityTreatment get treatment;
/// Create a copy of PublicSecurityOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicSecurityOptionCopyWith<PublicSecurityOption> get copyWith => _$PublicSecurityOptionCopyWithImpl<PublicSecurityOption>(this as PublicSecurityOption, _$identity);

  /// Serializes this PublicSecurityOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicSecurityOption&&(identical(other.active, active) || other.active == active)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&(identical(other.treatment, treatment) || other.treatment == treatment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,ttl,treatment);

@override
String toString() {
  return 'PublicSecurityOption(active: $active, ttl: $ttl, treatment: $treatment)';
}


}

/// @nodoc
abstract mixin class $PublicSecurityOptionCopyWith<$Res>  {
  factory $PublicSecurityOptionCopyWith(PublicSecurityOption value, $Res Function(PublicSecurityOption) _then) = _$PublicSecurityOptionCopyWithImpl;
@useResult
$Res call({
 bool active, int ttl, SecurityTreatment treatment
});




}
/// @nodoc
class _$PublicSecurityOptionCopyWithImpl<$Res>
    implements $PublicSecurityOptionCopyWith<$Res> {
  _$PublicSecurityOptionCopyWithImpl(this._self, this._then);

  final PublicSecurityOption _self;
  final $Res Function(PublicSecurityOption) _then;

/// Create a copy of PublicSecurityOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? ttl = null,Object? treatment = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,ttl: null == ttl ? _self.ttl : ttl // ignore: cast_nullable_to_non_nullable
as int,treatment: null == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as SecurityTreatment,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicSecurityOption].
extension PublicSecurityOptionPatterns on PublicSecurityOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicSecurityOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicSecurityOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicSecurityOption value)  $default,){
final _that = this;
switch (_that) {
case _PublicSecurityOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicSecurityOption value)?  $default,){
final _that = this;
switch (_that) {
case _PublicSecurityOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  int ttl,  SecurityTreatment treatment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicSecurityOption() when $default != null:
return $default(_that.active,_that.ttl,_that.treatment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  int ttl,  SecurityTreatment treatment)  $default,) {final _that = this;
switch (_that) {
case _PublicSecurityOption():
return $default(_that.active,_that.ttl,_that.treatment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  int ttl,  SecurityTreatment treatment)?  $default,) {final _that = this;
switch (_that) {
case _PublicSecurityOption() when $default != null:
return $default(_that.active,_that.ttl,_that.treatment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicSecurityOption implements PublicSecurityOption {
  const _PublicSecurityOption({this.active = false, this.ttl = 0, this.treatment = SecurityTreatment.block});
  factory _PublicSecurityOption.fromJson(Map<String, dynamic> json) => _$PublicSecurityOptionFromJson(json);

@override@JsonKey() final  bool active;
@override@JsonKey() final  int ttl;
@override@JsonKey() final  SecurityTreatment treatment;

/// Create a copy of PublicSecurityOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicSecurityOptionCopyWith<_PublicSecurityOption> get copyWith => __$PublicSecurityOptionCopyWithImpl<_PublicSecurityOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicSecurityOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicSecurityOption&&(identical(other.active, active) || other.active == active)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&(identical(other.treatment, treatment) || other.treatment == treatment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,ttl,treatment);

@override
String toString() {
  return 'PublicSecurityOption(active: $active, ttl: $ttl, treatment: $treatment)';
}


}

/// @nodoc
abstract mixin class _$PublicSecurityOptionCopyWith<$Res> implements $PublicSecurityOptionCopyWith<$Res> {
  factory _$PublicSecurityOptionCopyWith(_PublicSecurityOption value, $Res Function(_PublicSecurityOption) _then) = __$PublicSecurityOptionCopyWithImpl;
@override @useResult
$Res call({
 bool active, int ttl, SecurityTreatment treatment
});




}
/// @nodoc
class __$PublicSecurityOptionCopyWithImpl<$Res>
    implements _$PublicSecurityOptionCopyWith<$Res> {
  __$PublicSecurityOptionCopyWithImpl(this._self, this._then);

  final _PublicSecurityOption _self;
  final $Res Function(_PublicSecurityOption) _then;

/// Create a copy of PublicSecurityOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? ttl = null,Object? treatment = null,}) {
  return _then(_PublicSecurityOption(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,ttl: null == ttl ? _self.ttl : ttl // ignore: cast_nullable_to_non_nullable
as int,treatment: null == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as SecurityTreatment,
  ));
}


}


/// @nodoc
mixin _$PublicSecurityOptions {

 PublicSecurityOption? get frontend; PublicSecurityOption? get doubleSend; SecurityMinTimeOption? get minTimeInPage; SecurityCountriesOption? get countries; SecuritySourcesOption? get sources;
/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicSecurityOptionsCopyWith<PublicSecurityOptions> get copyWith => _$PublicSecurityOptionsCopyWithImpl<PublicSecurityOptions>(this as PublicSecurityOptions, _$identity);

  /// Serializes this PublicSecurityOptions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicSecurityOptions&&(identical(other.frontend, frontend) || other.frontend == frontend)&&(identical(other.doubleSend, doubleSend) || other.doubleSend == doubleSend)&&(identical(other.minTimeInPage, minTimeInPage) || other.minTimeInPage == minTimeInPage)&&(identical(other.countries, countries) || other.countries == countries)&&(identical(other.sources, sources) || other.sources == sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontend,doubleSend,minTimeInPage,countries,sources);

@override
String toString() {
  return 'PublicSecurityOptions(frontend: $frontend, doubleSend: $doubleSend, minTimeInPage: $minTimeInPage, countries: $countries, sources: $sources)';
}


}

/// @nodoc
abstract mixin class $PublicSecurityOptionsCopyWith<$Res>  {
  factory $PublicSecurityOptionsCopyWith(PublicSecurityOptions value, $Res Function(PublicSecurityOptions) _then) = _$PublicSecurityOptionsCopyWithImpl;
@useResult
$Res call({
 PublicSecurityOption? frontend, PublicSecurityOption? doubleSend, SecurityMinTimeOption? minTimeInPage, SecurityCountriesOption? countries, SecuritySourcesOption? sources
});


$PublicSecurityOptionCopyWith<$Res>? get frontend;$PublicSecurityOptionCopyWith<$Res>? get doubleSend;$SecurityMinTimeOptionCopyWith<$Res>? get minTimeInPage;$SecurityCountriesOptionCopyWith<$Res>? get countries;$SecuritySourcesOptionCopyWith<$Res>? get sources;

}
/// @nodoc
class _$PublicSecurityOptionsCopyWithImpl<$Res>
    implements $PublicSecurityOptionsCopyWith<$Res> {
  _$PublicSecurityOptionsCopyWithImpl(this._self, this._then);

  final PublicSecurityOptions _self;
  final $Res Function(PublicSecurityOptions) _then;

/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontend = freezed,Object? doubleSend = freezed,Object? minTimeInPage = freezed,Object? countries = freezed,Object? sources = freezed,}) {
  return _then(_self.copyWith(
frontend: freezed == frontend ? _self.frontend : frontend // ignore: cast_nullable_to_non_nullable
as PublicSecurityOption?,doubleSend: freezed == doubleSend ? _self.doubleSend : doubleSend // ignore: cast_nullable_to_non_nullable
as PublicSecurityOption?,minTimeInPage: freezed == minTimeInPage ? _self.minTimeInPage : minTimeInPage // ignore: cast_nullable_to_non_nullable
as SecurityMinTimeOption?,countries: freezed == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as SecurityCountriesOption?,sources: freezed == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as SecuritySourcesOption?,
  ));
}
/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicSecurityOptionCopyWith<$Res>? get frontend {
    if (_self.frontend == null) {
    return null;
  }

  return $PublicSecurityOptionCopyWith<$Res>(_self.frontend!, (value) {
    return _then(_self.copyWith(frontend: value));
  });
}/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicSecurityOptionCopyWith<$Res>? get doubleSend {
    if (_self.doubleSend == null) {
    return null;
  }

  return $PublicSecurityOptionCopyWith<$Res>(_self.doubleSend!, (value) {
    return _then(_self.copyWith(doubleSend: value));
  });
}/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityMinTimeOptionCopyWith<$Res>? get minTimeInPage {
    if (_self.minTimeInPage == null) {
    return null;
  }

  return $SecurityMinTimeOptionCopyWith<$Res>(_self.minTimeInPage!, (value) {
    return _then(_self.copyWith(minTimeInPage: value));
  });
}/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityCountriesOptionCopyWith<$Res>? get countries {
    if (_self.countries == null) {
    return null;
  }

  return $SecurityCountriesOptionCopyWith<$Res>(_self.countries!, (value) {
    return _then(_self.copyWith(countries: value));
  });
}/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecuritySourcesOptionCopyWith<$Res>? get sources {
    if (_self.sources == null) {
    return null;
  }

  return $SecuritySourcesOptionCopyWith<$Res>(_self.sources!, (value) {
    return _then(_self.copyWith(sources: value));
  });
}
}


/// Adds pattern-matching-related methods to [PublicSecurityOptions].
extension PublicSecurityOptionsPatterns on PublicSecurityOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicSecurityOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicSecurityOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicSecurityOptions value)  $default,){
final _that = this;
switch (_that) {
case _PublicSecurityOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicSecurityOptions value)?  $default,){
final _that = this;
switch (_that) {
case _PublicSecurityOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PublicSecurityOption? frontend,  PublicSecurityOption? doubleSend,  SecurityMinTimeOption? minTimeInPage,  SecurityCountriesOption? countries,  SecuritySourcesOption? sources)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicSecurityOptions() when $default != null:
return $default(_that.frontend,_that.doubleSend,_that.minTimeInPage,_that.countries,_that.sources);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PublicSecurityOption? frontend,  PublicSecurityOption? doubleSend,  SecurityMinTimeOption? minTimeInPage,  SecurityCountriesOption? countries,  SecuritySourcesOption? sources)  $default,) {final _that = this;
switch (_that) {
case _PublicSecurityOptions():
return $default(_that.frontend,_that.doubleSend,_that.minTimeInPage,_that.countries,_that.sources);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PublicSecurityOption? frontend,  PublicSecurityOption? doubleSend,  SecurityMinTimeOption? minTimeInPage,  SecurityCountriesOption? countries,  SecuritySourcesOption? sources)?  $default,) {final _that = this;
switch (_that) {
case _PublicSecurityOptions() when $default != null:
return $default(_that.frontend,_that.doubleSend,_that.minTimeInPage,_that.countries,_that.sources);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicSecurityOptions implements PublicSecurityOptions {
  const _PublicSecurityOptions({this.frontend, this.doubleSend, this.minTimeInPage, this.countries, this.sources});
  factory _PublicSecurityOptions.fromJson(Map<String, dynamic> json) => _$PublicSecurityOptionsFromJson(json);

@override final  PublicSecurityOption? frontend;
@override final  PublicSecurityOption? doubleSend;
@override final  SecurityMinTimeOption? minTimeInPage;
@override final  SecurityCountriesOption? countries;
@override final  SecuritySourcesOption? sources;

/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicSecurityOptionsCopyWith<_PublicSecurityOptions> get copyWith => __$PublicSecurityOptionsCopyWithImpl<_PublicSecurityOptions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicSecurityOptionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicSecurityOptions&&(identical(other.frontend, frontend) || other.frontend == frontend)&&(identical(other.doubleSend, doubleSend) || other.doubleSend == doubleSend)&&(identical(other.minTimeInPage, minTimeInPage) || other.minTimeInPage == minTimeInPage)&&(identical(other.countries, countries) || other.countries == countries)&&(identical(other.sources, sources) || other.sources == sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontend,doubleSend,minTimeInPage,countries,sources);

@override
String toString() {
  return 'PublicSecurityOptions(frontend: $frontend, doubleSend: $doubleSend, minTimeInPage: $minTimeInPage, countries: $countries, sources: $sources)';
}


}

/// @nodoc
abstract mixin class _$PublicSecurityOptionsCopyWith<$Res> implements $PublicSecurityOptionsCopyWith<$Res> {
  factory _$PublicSecurityOptionsCopyWith(_PublicSecurityOptions value, $Res Function(_PublicSecurityOptions) _then) = __$PublicSecurityOptionsCopyWithImpl;
@override @useResult
$Res call({
 PublicSecurityOption? frontend, PublicSecurityOption? doubleSend, SecurityMinTimeOption? minTimeInPage, SecurityCountriesOption? countries, SecuritySourcesOption? sources
});


@override $PublicSecurityOptionCopyWith<$Res>? get frontend;@override $PublicSecurityOptionCopyWith<$Res>? get doubleSend;@override $SecurityMinTimeOptionCopyWith<$Res>? get minTimeInPage;@override $SecurityCountriesOptionCopyWith<$Res>? get countries;@override $SecuritySourcesOptionCopyWith<$Res>? get sources;

}
/// @nodoc
class __$PublicSecurityOptionsCopyWithImpl<$Res>
    implements _$PublicSecurityOptionsCopyWith<$Res> {
  __$PublicSecurityOptionsCopyWithImpl(this._self, this._then);

  final _PublicSecurityOptions _self;
  final $Res Function(_PublicSecurityOptions) _then;

/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontend = freezed,Object? doubleSend = freezed,Object? minTimeInPage = freezed,Object? countries = freezed,Object? sources = freezed,}) {
  return _then(_PublicSecurityOptions(
frontend: freezed == frontend ? _self.frontend : frontend // ignore: cast_nullable_to_non_nullable
as PublicSecurityOption?,doubleSend: freezed == doubleSend ? _self.doubleSend : doubleSend // ignore: cast_nullable_to_non_nullable
as PublicSecurityOption?,minTimeInPage: freezed == minTimeInPage ? _self.minTimeInPage : minTimeInPage // ignore: cast_nullable_to_non_nullable
as SecurityMinTimeOption?,countries: freezed == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as SecurityCountriesOption?,sources: freezed == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as SecuritySourcesOption?,
  ));
}

/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicSecurityOptionCopyWith<$Res>? get frontend {
    if (_self.frontend == null) {
    return null;
  }

  return $PublicSecurityOptionCopyWith<$Res>(_self.frontend!, (value) {
    return _then(_self.copyWith(frontend: value));
  });
}/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicSecurityOptionCopyWith<$Res>? get doubleSend {
    if (_self.doubleSend == null) {
    return null;
  }

  return $PublicSecurityOptionCopyWith<$Res>(_self.doubleSend!, (value) {
    return _then(_self.copyWith(doubleSend: value));
  });
}/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityMinTimeOptionCopyWith<$Res>? get minTimeInPage {
    if (_self.minTimeInPage == null) {
    return null;
  }

  return $SecurityMinTimeOptionCopyWith<$Res>(_self.minTimeInPage!, (value) {
    return _then(_self.copyWith(minTimeInPage: value));
  });
}/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityCountriesOptionCopyWith<$Res>? get countries {
    if (_self.countries == null) {
    return null;
  }

  return $SecurityCountriesOptionCopyWith<$Res>(_self.countries!, (value) {
    return _then(_self.copyWith(countries: value));
  });
}/// Create a copy of PublicSecurityOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecuritySourcesOptionCopyWith<$Res>? get sources {
    if (_self.sources == null) {
    return null;
  }

  return $SecuritySourcesOptionCopyWith<$Res>(_self.sources!, (value) {
    return _then(_self.copyWith(sources: value));
  });
}
}


/// @nodoc
mixin _$PublicSecurityIntegration {

 bool get active; PublicSecurityOptions get options;
/// Create a copy of PublicSecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicSecurityIntegrationCopyWith<PublicSecurityIntegration> get copyWith => _$PublicSecurityIntegrationCopyWithImpl<PublicSecurityIntegration>(this as PublicSecurityIntegration, _$identity);

  /// Serializes this PublicSecurityIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicSecurityIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.options, options) || other.options == options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,options);

@override
String toString() {
  return 'PublicSecurityIntegration(active: $active, options: $options)';
}


}

/// @nodoc
abstract mixin class $PublicSecurityIntegrationCopyWith<$Res>  {
  factory $PublicSecurityIntegrationCopyWith(PublicSecurityIntegration value, $Res Function(PublicSecurityIntegration) _then) = _$PublicSecurityIntegrationCopyWithImpl;
@useResult
$Res call({
 bool active, PublicSecurityOptions options
});


$PublicSecurityOptionsCopyWith<$Res> get options;

}
/// @nodoc
class _$PublicSecurityIntegrationCopyWithImpl<$Res>
    implements $PublicSecurityIntegrationCopyWith<$Res> {
  _$PublicSecurityIntegrationCopyWithImpl(this._self, this._then);

  final PublicSecurityIntegration _self;
  final $Res Function(PublicSecurityIntegration) _then;

/// Create a copy of PublicSecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? options = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as PublicSecurityOptions,
  ));
}
/// Create a copy of PublicSecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicSecurityOptionsCopyWith<$Res> get options {
  
  return $PublicSecurityOptionsCopyWith<$Res>(_self.options, (value) {
    return _then(_self.copyWith(options: value));
  });
}
}


/// Adds pattern-matching-related methods to [PublicSecurityIntegration].
extension PublicSecurityIntegrationPatterns on PublicSecurityIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicSecurityIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicSecurityIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicSecurityIntegration value)  $default,){
final _that = this;
switch (_that) {
case _PublicSecurityIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicSecurityIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _PublicSecurityIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  PublicSecurityOptions options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicSecurityIntegration() when $default != null:
return $default(_that.active,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  PublicSecurityOptions options)  $default,) {final _that = this;
switch (_that) {
case _PublicSecurityIntegration():
return $default(_that.active,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  PublicSecurityOptions options)?  $default,) {final _that = this;
switch (_that) {
case _PublicSecurityIntegration() when $default != null:
return $default(_that.active,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicSecurityIntegration implements PublicSecurityIntegration {
  const _PublicSecurityIntegration({this.active = false, this.options = const PublicSecurityOptions()});
  factory _PublicSecurityIntegration.fromJson(Map<String, dynamic> json) => _$PublicSecurityIntegrationFromJson(json);

@override@JsonKey() final  bool active;
@override@JsonKey() final  PublicSecurityOptions options;

/// Create a copy of PublicSecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicSecurityIntegrationCopyWith<_PublicSecurityIntegration> get copyWith => __$PublicSecurityIntegrationCopyWithImpl<_PublicSecurityIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicSecurityIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicSecurityIntegration&&(identical(other.active, active) || other.active == active)&&(identical(other.options, options) || other.options == options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,options);

@override
String toString() {
  return 'PublicSecurityIntegration(active: $active, options: $options)';
}


}

/// @nodoc
abstract mixin class _$PublicSecurityIntegrationCopyWith<$Res> implements $PublicSecurityIntegrationCopyWith<$Res> {
  factory _$PublicSecurityIntegrationCopyWith(_PublicSecurityIntegration value, $Res Function(_PublicSecurityIntegration) _then) = __$PublicSecurityIntegrationCopyWithImpl;
@override @useResult
$Res call({
 bool active, PublicSecurityOptions options
});


@override $PublicSecurityOptionsCopyWith<$Res> get options;

}
/// @nodoc
class __$PublicSecurityIntegrationCopyWithImpl<$Res>
    implements _$PublicSecurityIntegrationCopyWith<$Res> {
  __$PublicSecurityIntegrationCopyWithImpl(this._self, this._then);

  final _PublicSecurityIntegration _self;
  final $Res Function(_PublicSecurityIntegration) _then;

/// Create a copy of PublicSecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? options = null,}) {
  return _then(_PublicSecurityIntegration(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as PublicSecurityOptions,
  ));
}

/// Create a copy of PublicSecurityIntegration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicSecurityOptionsCopyWith<$Res> get options {
  
  return $PublicSecurityOptionsCopyWith<$Res>(_self.options, (value) {
    return _then(_self.copyWith(options: value));
  });
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

 String? get id; String? get name; bool get active; Map<String, dynamic>? get oauth2; List<GoogleSheetsColumn>? get columns; Map<String, dynamic> get metadata;/// When true, draft (abandoned-cart) orders are written to a dedicated
/// tab ([draftSheetName]) instead of the main tab ([name]). Once the
/// order leaves the draft status (e.g. becomes pending), its row is
/// removed from the draft tab and inserted into the main tab.
/// Disabled by default.
 bool get draftSheetEnabled;/// Tab title used for draft orders when [draftSheetEnabled] is true.
/// Falls back to [defaultDraftSheetName] when null/empty.
 String? get draftSheetName;
/// Create a copy of GoogleSheetsIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleSheetsIntegrationCopyWith<GoogleSheetsIntegration> get copyWith => _$GoogleSheetsIntegrationCopyWithImpl<GoogleSheetsIntegration>(this as GoogleSheetsIntegration, _$identity);

  /// Serializes this GoogleSheetsIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleSheetsIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.oauth2, oauth2)&&const DeepCollectionEquality().equals(other.columns, columns)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.draftSheetEnabled, draftSheetEnabled) || other.draftSheetEnabled == draftSheetEnabled)&&(identical(other.draftSheetName, draftSheetName) || other.draftSheetName == draftSheetName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,active,const DeepCollectionEquality().hash(oauth2),const DeepCollectionEquality().hash(columns),const DeepCollectionEquality().hash(metadata),draftSheetEnabled,draftSheetName);

@override
String toString() {
  return 'GoogleSheetsIntegration(id: $id, name: $name, active: $active, oauth2: $oauth2, columns: $columns, metadata: $metadata, draftSheetEnabled: $draftSheetEnabled, draftSheetName: $draftSheetName)';
}


}

/// @nodoc
abstract mixin class $GoogleSheetsIntegrationCopyWith<$Res>  {
  factory $GoogleSheetsIntegrationCopyWith(GoogleSheetsIntegration value, $Res Function(GoogleSheetsIntegration) _then) = _$GoogleSheetsIntegrationCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, bool active, Map<String, dynamic>? oauth2, List<GoogleSheetsColumn>? columns, Map<String, dynamic> metadata, bool draftSheetEnabled, String? draftSheetName
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? active = null,Object? oauth2 = freezed,Object? columns = freezed,Object? metadata = null,Object? draftSheetEnabled = null,Object? draftSheetName = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,oauth2: freezed == oauth2 ? _self.oauth2 : oauth2 // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,columns: freezed == columns ? _self.columns : columns // ignore: cast_nullable_to_non_nullable
as List<GoogleSheetsColumn>?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,draftSheetEnabled: null == draftSheetEnabled ? _self.draftSheetEnabled : draftSheetEnabled // ignore: cast_nullable_to_non_nullable
as bool,draftSheetName: freezed == draftSheetName ? _self.draftSheetName : draftSheetName // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  bool active,  Map<String, dynamic>? oauth2,  List<GoogleSheetsColumn>? columns,  Map<String, dynamic> metadata,  bool draftSheetEnabled,  String? draftSheetName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleSheetsIntegration() when $default != null:
return $default(_that.id,_that.name,_that.active,_that.oauth2,_that.columns,_that.metadata,_that.draftSheetEnabled,_that.draftSheetName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  bool active,  Map<String, dynamic>? oauth2,  List<GoogleSheetsColumn>? columns,  Map<String, dynamic> metadata,  bool draftSheetEnabled,  String? draftSheetName)  $default,) {final _that = this;
switch (_that) {
case _GoogleSheetsIntegration():
return $default(_that.id,_that.name,_that.active,_that.oauth2,_that.columns,_that.metadata,_that.draftSheetEnabled,_that.draftSheetName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  bool active,  Map<String, dynamic>? oauth2,  List<GoogleSheetsColumn>? columns,  Map<String, dynamic> metadata,  bool draftSheetEnabled,  String? draftSheetName)?  $default,) {final _that = this;
switch (_that) {
case _GoogleSheetsIntegration() when $default != null:
return $default(_that.id,_that.name,_that.active,_that.oauth2,_that.columns,_that.metadata,_that.draftSheetEnabled,_that.draftSheetName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoogleSheetsIntegration implements GoogleSheetsIntegration {
  const _GoogleSheetsIntegration({this.id, this.name, this.active = true, Map<String, dynamic>? oauth2, List<GoogleSheetsColumn>? columns = defaultOrderColumns, Map<String, dynamic> metadata = const {}, this.draftSheetEnabled = false, this.draftSheetName}): _oauth2 = oauth2,_columns = columns,_metadata = metadata;
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

/// When true, draft (abandoned-cart) orders are written to a dedicated
/// tab ([draftSheetName]) instead of the main tab ([name]). Once the
/// order leaves the draft status (e.g. becomes pending), its row is
/// removed from the draft tab and inserted into the main tab.
/// Disabled by default.
@override@JsonKey() final  bool draftSheetEnabled;
/// Tab title used for draft orders when [draftSheetEnabled] is true.
/// Falls back to [defaultDraftSheetName] when null/empty.
@override final  String? draftSheetName;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleSheetsIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._oauth2, _oauth2)&&const DeepCollectionEquality().equals(other._columns, _columns)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.draftSheetEnabled, draftSheetEnabled) || other.draftSheetEnabled == draftSheetEnabled)&&(identical(other.draftSheetName, draftSheetName) || other.draftSheetName == draftSheetName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,active,const DeepCollectionEquality().hash(_oauth2),const DeepCollectionEquality().hash(_columns),const DeepCollectionEquality().hash(_metadata),draftSheetEnabled,draftSheetName);

@override
String toString() {
  return 'GoogleSheetsIntegration(id: $id, name: $name, active: $active, oauth2: $oauth2, columns: $columns, metadata: $metadata, draftSheetEnabled: $draftSheetEnabled, draftSheetName: $draftSheetName)';
}


}

/// @nodoc
abstract mixin class _$GoogleSheetsIntegrationCopyWith<$Res> implements $GoogleSheetsIntegrationCopyWith<$Res> {
  factory _$GoogleSheetsIntegrationCopyWith(_GoogleSheetsIntegration value, $Res Function(_GoogleSheetsIntegration) _then) = __$GoogleSheetsIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, bool active, Map<String, dynamic>? oauth2, List<GoogleSheetsColumn>? columns, Map<String, dynamic> metadata, bool draftSheetEnabled, String? draftSheetName
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? active = null,Object? oauth2 = freezed,Object? columns = freezed,Object? metadata = null,Object? draftSheetEnabled = null,Object? draftSheetName = freezed,}) {
  return _then(_GoogleSheetsIntegration(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,oauth2: freezed == oauth2 ? _self._oauth2 : oauth2 // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,columns: freezed == columns ? _self._columns : columns // ignore: cast_nullable_to_non_nullable
as List<GoogleSheetsColumn>?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,draftSheetEnabled: null == draftSheetEnabled ? _self.draftSheetEnabled : draftSheetEnabled // ignore: cast_nullable_to_non_nullable
as bool,draftSheetName: freezed == draftSheetName ? _self.draftSheetName : draftSheetName // ignore: cast_nullable_to_non_nullable
as String?,
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
  const _WebhookConfig({required this.id, required this.name, required this.url, List<WebhookEvent> events = const [], this.secret, this.active = true, Map<String, String> headers = const {}, Map<String, dynamic> metadata = const {}}): _events = events,_headers = headers,_metadata = metadata;
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
  const _WebhooksIntegration({List<WebhookConfig> webhooks = const [], this.active = true, Map<String, dynamic> metadata = const {}}): _webhooks = webhooks,_metadata = metadata;
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
  const _CustomField({required this.id, required this.label, required this.type, this.required = false, this.multiple = false, this.minCount, this.maxCount, this.placeholder, this.helpText, this.regexPattern, this.defaultValue, this.order = 0, this.active = true, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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
  const _CustomFieldsIntegration({List<CustomField> fields = const [], this.active = true, Map<String, dynamic> metadata = const {}}): _fields = fields,_metadata = metadata,super._();
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
  const _PaymentMethodConfig({required this.id, required this.name, this.active = true, this.apiKey, this.clientId, this.clientSecret, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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
  const _PaymentIntegration({this.active = true, List<PaymentMethodConfig> methods = const [], this.defaultMethod, Map<String, dynamic> metadata = const {}}): _methods = methods,_metadata = metadata,super._();
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
  const _DispatcherIntegration({this.active = true, this.strategy, Map<String, dynamic> metadata = const {}}): _metadata = metadata,super._();
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


/// @nodoc
mixin _$ConnectorAuth {

 String get authType; String? get accessToken; String? get refreshToken; List<String> get scopes; String? get expiresAt; String? get apiKey; String? get baseUrl; Map<String, dynamic> get metadata;
/// Create a copy of ConnectorAuth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectorAuthCopyWith<ConnectorAuth> get copyWith => _$ConnectorAuthCopyWithImpl<ConnectorAuth>(this as ConnectorAuth, _$identity);

  /// Serializes this ConnectorAuth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectorAuth&&(identical(other.authType, authType) || other.authType == authType)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&const DeepCollectionEquality().equals(other.scopes, scopes)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authType,accessToken,refreshToken,const DeepCollectionEquality().hash(scopes),expiresAt,apiKey,baseUrl,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ConnectorAuth(authType: $authType, accessToken: $accessToken, refreshToken: $refreshToken, scopes: $scopes, expiresAt: $expiresAt, apiKey: $apiKey, baseUrl: $baseUrl, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ConnectorAuthCopyWith<$Res>  {
  factory $ConnectorAuthCopyWith(ConnectorAuth value, $Res Function(ConnectorAuth) _then) = _$ConnectorAuthCopyWithImpl;
@useResult
$Res call({
 String authType, String? accessToken, String? refreshToken, List<String> scopes, String? expiresAt, String? apiKey, String? baseUrl, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$ConnectorAuthCopyWithImpl<$Res>
    implements $ConnectorAuthCopyWith<$Res> {
  _$ConnectorAuthCopyWithImpl(this._self, this._then);

  final ConnectorAuth _self;
  final $Res Function(ConnectorAuth) _then;

/// Create a copy of ConnectorAuth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authType = null,Object? accessToken = freezed,Object? refreshToken = freezed,Object? scopes = null,Object? expiresAt = freezed,Object? apiKey = freezed,Object? baseUrl = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
authType: null == authType ? _self.authType : authType // ignore: cast_nullable_to_non_nullable
as String,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,scopes: null == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,baseUrl: freezed == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectorAuth].
extension ConnectorAuthPatterns on ConnectorAuth {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectorAuth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectorAuth() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectorAuth value)  $default,){
final _that = this;
switch (_that) {
case _ConnectorAuth():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectorAuth value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectorAuth() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String authType,  String? accessToken,  String? refreshToken,  List<String> scopes,  String? expiresAt,  String? apiKey,  String? baseUrl,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectorAuth() when $default != null:
return $default(_that.authType,_that.accessToken,_that.refreshToken,_that.scopes,_that.expiresAt,_that.apiKey,_that.baseUrl,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String authType,  String? accessToken,  String? refreshToken,  List<String> scopes,  String? expiresAt,  String? apiKey,  String? baseUrl,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _ConnectorAuth():
return $default(_that.authType,_that.accessToken,_that.refreshToken,_that.scopes,_that.expiresAt,_that.apiKey,_that.baseUrl,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String authType,  String? accessToken,  String? refreshToken,  List<String> scopes,  String? expiresAt,  String? apiKey,  String? baseUrl,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _ConnectorAuth() when $default != null:
return $default(_that.authType,_that.accessToken,_that.refreshToken,_that.scopes,_that.expiresAt,_that.apiKey,_that.baseUrl,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConnectorAuth implements ConnectorAuth {
  const _ConnectorAuth({this.authType = 'public', this.accessToken, this.refreshToken, List<String> scopes = const [], this.expiresAt, this.apiKey, this.baseUrl, Map<String, dynamic> metadata = const {}}): _scopes = scopes,_metadata = metadata;
  factory _ConnectorAuth.fromJson(Map<String, dynamic> json) => _$ConnectorAuthFromJson(json);

@override@JsonKey() final  String authType;
@override final  String? accessToken;
@override final  String? refreshToken;
 final  List<String> _scopes;
@override@JsonKey() List<String> get scopes {
  if (_scopes is EqualUnmodifiableListView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scopes);
}

@override final  String? expiresAt;
@override final  String? apiKey;
@override final  String? baseUrl;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of ConnectorAuth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectorAuthCopyWith<_ConnectorAuth> get copyWith => __$ConnectorAuthCopyWithImpl<_ConnectorAuth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectorAuthToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectorAuth&&(identical(other.authType, authType) || other.authType == authType)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&const DeepCollectionEquality().equals(other._scopes, _scopes)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authType,accessToken,refreshToken,const DeepCollectionEquality().hash(_scopes),expiresAt,apiKey,baseUrl,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ConnectorAuth(authType: $authType, accessToken: $accessToken, refreshToken: $refreshToken, scopes: $scopes, expiresAt: $expiresAt, apiKey: $apiKey, baseUrl: $baseUrl, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ConnectorAuthCopyWith<$Res> implements $ConnectorAuthCopyWith<$Res> {
  factory _$ConnectorAuthCopyWith(_ConnectorAuth value, $Res Function(_ConnectorAuth) _then) = __$ConnectorAuthCopyWithImpl;
@override @useResult
$Res call({
 String authType, String? accessToken, String? refreshToken, List<String> scopes, String? expiresAt, String? apiKey, String? baseUrl, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$ConnectorAuthCopyWithImpl<$Res>
    implements _$ConnectorAuthCopyWith<$Res> {
  __$ConnectorAuthCopyWithImpl(this._self, this._then);

  final _ConnectorAuth _self;
  final $Res Function(_ConnectorAuth) _then;

/// Create a copy of ConnectorAuth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authType = null,Object? accessToken = freezed,Object? refreshToken = freezed,Object? scopes = null,Object? expiresAt = freezed,Object? apiKey = freezed,Object? baseUrl = freezed,Object? metadata = null,}) {
  return _then(_ConnectorAuth(
authType: null == authType ? _self.authType : authType // ignore: cast_nullable_to_non_nullable
as String,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,scopes: null == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,baseUrl: freezed == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$ConnectorConfig {

 String get id; String get type; bool get active; String? get name; String get status; String? get externalId; Map<String, dynamic> get fieldMapping; Map<String, dynamic> get syncState; ConnectorAuth? get auth; String? get createdAt; Map<String, dynamic> get metadata;
/// Create a copy of ConnectorConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectorConfigCopyWith<ConnectorConfig> get copyWith => _$ConnectorConfigCopyWithImpl<ConnectorConfig>(this as ConnectorConfig, _$identity);

  /// Serializes this ConnectorConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectorConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.active, active) || other.active == active)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&const DeepCollectionEquality().equals(other.fieldMapping, fieldMapping)&&const DeepCollectionEquality().equals(other.syncState, syncState)&&(identical(other.auth, auth) || other.auth == auth)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,active,name,status,externalId,const DeepCollectionEquality().hash(fieldMapping),const DeepCollectionEquality().hash(syncState),auth,createdAt,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ConnectorConfig(id: $id, type: $type, active: $active, name: $name, status: $status, externalId: $externalId, fieldMapping: $fieldMapping, syncState: $syncState, auth: $auth, createdAt: $createdAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ConnectorConfigCopyWith<$Res>  {
  factory $ConnectorConfigCopyWith(ConnectorConfig value, $Res Function(ConnectorConfig) _then) = _$ConnectorConfigCopyWithImpl;
@useResult
$Res call({
 String id, String type, bool active, String? name, String status, String? externalId, Map<String, dynamic> fieldMapping, Map<String, dynamic> syncState, ConnectorAuth? auth, String? createdAt, Map<String, dynamic> metadata
});


$ConnectorAuthCopyWith<$Res>? get auth;

}
/// @nodoc
class _$ConnectorConfigCopyWithImpl<$Res>
    implements $ConnectorConfigCopyWith<$Res> {
  _$ConnectorConfigCopyWithImpl(this._self, this._then);

  final ConnectorConfig _self;
  final $Res Function(ConnectorConfig) _then;

/// Create a copy of ConnectorConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? active = null,Object? name = freezed,Object? status = null,Object? externalId = freezed,Object? fieldMapping = null,Object? syncState = null,Object? auth = freezed,Object? createdAt = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,fieldMapping: null == fieldMapping ? _self.fieldMapping : fieldMapping // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,syncState: null == syncState ? _self.syncState : syncState // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,auth: freezed == auth ? _self.auth : auth // ignore: cast_nullable_to_non_nullable
as ConnectorAuth?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of ConnectorConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectorAuthCopyWith<$Res>? get auth {
    if (_self.auth == null) {
    return null;
  }

  return $ConnectorAuthCopyWith<$Res>(_self.auth!, (value) {
    return _then(_self.copyWith(auth: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConnectorConfig].
extension ConnectorConfigPatterns on ConnectorConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectorConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectorConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectorConfig value)  $default,){
final _that = this;
switch (_that) {
case _ConnectorConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectorConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectorConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  bool active,  String? name,  String status,  String? externalId,  Map<String, dynamic> fieldMapping,  Map<String, dynamic> syncState,  ConnectorAuth? auth,  String? createdAt,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectorConfig() when $default != null:
return $default(_that.id,_that.type,_that.active,_that.name,_that.status,_that.externalId,_that.fieldMapping,_that.syncState,_that.auth,_that.createdAt,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  bool active,  String? name,  String status,  String? externalId,  Map<String, dynamic> fieldMapping,  Map<String, dynamic> syncState,  ConnectorAuth? auth,  String? createdAt,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _ConnectorConfig():
return $default(_that.id,_that.type,_that.active,_that.name,_that.status,_that.externalId,_that.fieldMapping,_that.syncState,_that.auth,_that.createdAt,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  bool active,  String? name,  String status,  String? externalId,  Map<String, dynamic> fieldMapping,  Map<String, dynamic> syncState,  ConnectorAuth? auth,  String? createdAt,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _ConnectorConfig() when $default != null:
return $default(_that.id,_that.type,_that.active,_that.name,_that.status,_that.externalId,_that.fieldMapping,_that.syncState,_that.auth,_that.createdAt,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConnectorConfig implements ConnectorConfig {
  const _ConnectorConfig({required this.id, required this.type, this.active = true, this.name, this.status = 'connected', this.externalId, Map<String, dynamic> fieldMapping = const {}, Map<String, dynamic> syncState = const {}, this.auth, this.createdAt, Map<String, dynamic> metadata = const {}}): _fieldMapping = fieldMapping,_syncState = syncState,_metadata = metadata;
  factory _ConnectorConfig.fromJson(Map<String, dynamic> json) => _$ConnectorConfigFromJson(json);

@override final  String id;
@override final  String type;
@override@JsonKey() final  bool active;
@override final  String? name;
@override@JsonKey() final  String status;
@override final  String? externalId;
 final  Map<String, dynamic> _fieldMapping;
@override@JsonKey() Map<String, dynamic> get fieldMapping {
  if (_fieldMapping is EqualUnmodifiableMapView) return _fieldMapping;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_fieldMapping);
}

 final  Map<String, dynamic> _syncState;
@override@JsonKey() Map<String, dynamic> get syncState {
  if (_syncState is EqualUnmodifiableMapView) return _syncState;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_syncState);
}

@override final  ConnectorAuth? auth;
@override final  String? createdAt;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of ConnectorConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectorConfigCopyWith<_ConnectorConfig> get copyWith => __$ConnectorConfigCopyWithImpl<_ConnectorConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectorConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectorConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.active, active) || other.active == active)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&const DeepCollectionEquality().equals(other._fieldMapping, _fieldMapping)&&const DeepCollectionEquality().equals(other._syncState, _syncState)&&(identical(other.auth, auth) || other.auth == auth)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,active,name,status,externalId,const DeepCollectionEquality().hash(_fieldMapping),const DeepCollectionEquality().hash(_syncState),auth,createdAt,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ConnectorConfig(id: $id, type: $type, active: $active, name: $name, status: $status, externalId: $externalId, fieldMapping: $fieldMapping, syncState: $syncState, auth: $auth, createdAt: $createdAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ConnectorConfigCopyWith<$Res> implements $ConnectorConfigCopyWith<$Res> {
  factory _$ConnectorConfigCopyWith(_ConnectorConfig value, $Res Function(_ConnectorConfig) _then) = __$ConnectorConfigCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, bool active, String? name, String status, String? externalId, Map<String, dynamic> fieldMapping, Map<String, dynamic> syncState, ConnectorAuth? auth, String? createdAt, Map<String, dynamic> metadata
});


@override $ConnectorAuthCopyWith<$Res>? get auth;

}
/// @nodoc
class __$ConnectorConfigCopyWithImpl<$Res>
    implements _$ConnectorConfigCopyWith<$Res> {
  __$ConnectorConfigCopyWithImpl(this._self, this._then);

  final _ConnectorConfig _self;
  final $Res Function(_ConnectorConfig) _then;

/// Create a copy of ConnectorConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? active = null,Object? name = freezed,Object? status = null,Object? externalId = freezed,Object? fieldMapping = null,Object? syncState = null,Object? auth = freezed,Object? createdAt = freezed,Object? metadata = null,}) {
  return _then(_ConnectorConfig(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,fieldMapping: null == fieldMapping ? _self._fieldMapping : fieldMapping // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,syncState: null == syncState ? _self._syncState : syncState // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,auth: freezed == auth ? _self.auth : auth // ignore: cast_nullable_to_non_nullable
as ConnectorAuth?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of ConnectorConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectorAuthCopyWith<$Res>? get auth {
    if (_self.auth == null) {
    return null;
  }

  return $ConnectorAuthCopyWith<$Res>(_self.auth!, (value) {
    return _then(_self.copyWith(auth: value));
  });
}
}


/// @nodoc
mixin _$ConnectorsIntegration {

 bool get active; List<ConnectorConfig> get connectors; Map<String, dynamic> get metadata;
/// Create a copy of ConnectorsIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectorsIntegrationCopyWith<ConnectorsIntegration> get copyWith => _$ConnectorsIntegrationCopyWithImpl<ConnectorsIntegration>(this as ConnectorsIntegration, _$identity);

  /// Serializes this ConnectorsIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectorsIntegration&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.connectors, connectors)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,const DeepCollectionEquality().hash(connectors),const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ConnectorsIntegration(active: $active, connectors: $connectors, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ConnectorsIntegrationCopyWith<$Res>  {
  factory $ConnectorsIntegrationCopyWith(ConnectorsIntegration value, $Res Function(ConnectorsIntegration) _then) = _$ConnectorsIntegrationCopyWithImpl;
@useResult
$Res call({
 bool active, List<ConnectorConfig> connectors, Map<String, dynamic> metadata
});




}
/// @nodoc
class _$ConnectorsIntegrationCopyWithImpl<$Res>
    implements $ConnectorsIntegrationCopyWith<$Res> {
  _$ConnectorsIntegrationCopyWithImpl(this._self, this._then);

  final ConnectorsIntegration _self;
  final $Res Function(ConnectorsIntegration) _then;

/// Create a copy of ConnectorsIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? connectors = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,connectors: null == connectors ? _self.connectors : connectors // ignore: cast_nullable_to_non_nullable
as List<ConnectorConfig>,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectorsIntegration].
extension ConnectorsIntegrationPatterns on ConnectorsIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectorsIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectorsIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectorsIntegration value)  $default,){
final _that = this;
switch (_that) {
case _ConnectorsIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectorsIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectorsIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  List<ConnectorConfig> connectors,  Map<String, dynamic> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectorsIntegration() when $default != null:
return $default(_that.active,_that.connectors,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  List<ConnectorConfig> connectors,  Map<String, dynamic> metadata)  $default,) {final _that = this;
switch (_that) {
case _ConnectorsIntegration():
return $default(_that.active,_that.connectors,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  List<ConnectorConfig> connectors,  Map<String, dynamic> metadata)?  $default,) {final _that = this;
switch (_that) {
case _ConnectorsIntegration() when $default != null:
return $default(_that.active,_that.connectors,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConnectorsIntegration implements ConnectorsIntegration {
  const _ConnectorsIntegration({this.active = true, List<ConnectorConfig> connectors = const [], Map<String, dynamic> metadata = const {}}): _connectors = connectors,_metadata = metadata;
  factory _ConnectorsIntegration.fromJson(Map<String, dynamic> json) => _$ConnectorsIntegrationFromJson(json);

@override@JsonKey() final  bool active;
 final  List<ConnectorConfig> _connectors;
@override@JsonKey() List<ConnectorConfig> get connectors {
  if (_connectors is EqualUnmodifiableListView) return _connectors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_connectors);
}

 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of ConnectorsIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectorsIntegrationCopyWith<_ConnectorsIntegration> get copyWith => __$ConnectorsIntegrationCopyWithImpl<_ConnectorsIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectorsIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectorsIntegration&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._connectors, _connectors)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,const DeepCollectionEquality().hash(_connectors),const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ConnectorsIntegration(active: $active, connectors: $connectors, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ConnectorsIntegrationCopyWith<$Res> implements $ConnectorsIntegrationCopyWith<$Res> {
  factory _$ConnectorsIntegrationCopyWith(_ConnectorsIntegration value, $Res Function(_ConnectorsIntegration) _then) = __$ConnectorsIntegrationCopyWithImpl;
@override @useResult
$Res call({
 bool active, List<ConnectorConfig> connectors, Map<String, dynamic> metadata
});




}
/// @nodoc
class __$ConnectorsIntegrationCopyWithImpl<$Res>
    implements _$ConnectorsIntegrationCopyWith<$Res> {
  __$ConnectorsIntegrationCopyWithImpl(this._self, this._then);

  final _ConnectorsIntegration _self;
  final $Res Function(_ConnectorsIntegration) _then;

/// Create a copy of ConnectorsIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? connectors = null,Object? metadata = null,}) {
  return _then(_ConnectorsIntegration(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,connectors: null == connectors ? _self._connectors : connectors // ignore: cast_nullable_to_non_nullable
as List<ConnectorConfig>,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
