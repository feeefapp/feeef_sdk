// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_security_claims.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderSecurityGeo _$OrderSecurityGeoFromJson(Map<String, dynamic> json) =>
    _OrderSecurityGeo(
      country: securityGeoValueFromJson(json['country']),
      region: securityGeoValueFromJson(json['region']),
      city: securityGeoValueFromJson(json['city']),
      ip: securityGeoValueFromJson(json['ip']),
      source: visitorGeoSourceFromJson(json['source']),
    );

Map<String, dynamic> _$OrderSecurityGeoToJson(_OrderSecurityGeo instance) =>
    <String, dynamic>{
      'country': instance.country,
      'region': instance.region,
      'city': instance.city,
      'ip': instance.ip,
      'source': visitorGeoSourceToJson(instance.source),
    };

_OrderSecurityViolation _$OrderSecurityViolationFromJson(
  Map<String, dynamic> json,
) => _OrderSecurityViolation(
  option: securityStringOrNull(json['option']),
  reason: securityStringOrNull(json['reason']),
);

Map<String, dynamic> _$OrderSecurityViolationToJson(
  _OrderSecurityViolation instance,
) => <String, dynamic>{'option': instance.option, 'reason': instance.reason};

_OrderSecurityClaims _$OrderSecurityClaimsFromJson(Map<String, dynamic> json) =>
    _OrderSecurityClaims(
      geo: _geoFromJson(json['geo']),
      treatment: securityTreatmentOrNull(json['treatment']),
      violations: json['violations'] == null
          ? const <OrderSecurityViolation>[]
          : _violationsFromJson(json['violations']),
      checkedAt: securityDateTimeFromJson(json['checkedAt']),
      capturedAt: securityDateTimeFromJson(json['capturedAt']),
      userAgent: securityStringOrNull(json['userAgent']),
      legacyCountry: securityGeoValueFromJson(json['country']),
      deviceFingerprint: securityStringOrNull(json['deviceFingerprint']),
      platform: securityStringOrNull(json['platform']),
      formLoadTime: json['formLoadTime'],
    );

Map<String, dynamic> _$OrderSecurityClaimsToJson(
  _OrderSecurityClaims instance,
) => <String, dynamic>{
  'geo': ?instance.geo?.toJson(),
  'treatment': ?_treatmentToJson(instance.treatment),
  'violations': instance.violations.map((e) => e.toJson()).toList(),
  'checkedAt': ?securityDateTimeToJson(instance.checkedAt),
  'capturedAt': ?securityDateTimeToJson(instance.capturedAt),
  'userAgent': ?instance.userAgent,
  'country': ?instance.legacyCountry,
  'deviceFingerprint': ?instance.deviceFingerprint,
  'platform': ?instance.platform,
  'formLoadTime': ?instance.formLoadTime,
};
