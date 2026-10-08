/// Typed, read-only view of `order.claims.security` (system-written fraud
/// metadata), including the trusted visitor geo `claims.security.geo`.
///
/// PROVISIONAL: `geo` follows design §4.4 (`{ country, region, city, ip, source }`)
/// until the backend sends the final JSON. Keys live in [SecurityGeoJsonKeys].
///
/// Parsing never throws: use [OrderSecurityClaims.fromOrderClaims] /
/// [OrderSecurityClaimsAccess.securityClaims]; bad or legacy payloads give
/// null or default values.
library;

import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_security_claims.freezed.dart';
part 'order_security_claims.g.dart';

/// Where the backend took the visitor IP / geo from (design §4.1, review §2).
enum VisitorGeoSource {
  /// Authenticated storefront (Next.js) hop forwarded the visitor values.
  storefront,

  /// Traefik edge `X-GeoIP2-*` headers on a direct request.
  edge,

  /// No trusted source (edge headers missing, or an unrecognised value).
  unknown,
}

/// Lenient [VisitorGeoSource] parse: null stays null, unknown strings map to
/// [VisitorGeoSource.unknown].
VisitorGeoSource? visitorGeoSourceFromJson(Object? value) {
  final s = securityStringOrNull(value)?.toLowerCase();
  if (s == null) return null;
  for (final v in VisitorGeoSource.values) {
    if (v.name == s) return v;
  }
  return VisitorGeoSource.unknown;
}

/// [VisitorGeoSource] to its wire name.
String? visitorGeoSourceToJson(VisitorGeoSource? value) => value?.name;

String? _treatmentToJson(SecurityTreatment? value) => value?.name;

OrderSecurityGeo? _geoFromJson(Object? value) => OrderSecurityGeo.tryParse(value);

List<OrderSecurityViolation> _violationsFromJson(Object? value) {
  if (value is! List) return const <OrderSecurityViolation>[];
  final out = <OrderSecurityViolation>[];
  for (final e in value) {
    final v = OrderSecurityViolation.tryParse(e);
    if (v != null) out.add(v);
  }
  return out;
}

/// `order.claims.security.geo`: visitor location resolved by the backend from
/// a trusted source (Traefik edge or the authenticated storefront hop).
///
/// Wire shape (PROVISIONAL):
/// `{ "country": "DZ", "region": "Algiers", "city": "Bab Ezzouar", "ip": "203.0.113.7", "source": "edge" }`.
/// Empty strings and the `XX` placeholder are read as null.
@freezed
abstract class OrderSecurityGeo with _$OrderSecurityGeo {
  const OrderSecurityGeo._();
  const factory OrderSecurityGeo({
    /// ISO 3166-1 alpha-2 country code.
    @JsonKey(
      name: SecurityGeoJsonKeys.geoCountry,
      fromJson: securityGeoValueFromJson,
    )
    String? country,

    /// Region / state / wilaya name as given by the edge geo database.
    @JsonKey(
      name: SecurityGeoJsonKeys.geoRegion,
      fromJson: securityGeoValueFromJson,
    )
    String? region,

    /// City name as given by the edge geo database.
    @JsonKey(name: SecurityGeoJsonKeys.geoCity, fromJson: securityGeoValueFromJson)
    String? city,

    /// Visitor IP the lookup used.
    @JsonKey(name: SecurityGeoJsonKeys.geoIp, fromJson: securityGeoValueFromJson)
    String? ip,

    /// Where the values came from; null when the backend did not say.
    @JsonKey(
      name: SecurityGeoJsonKeys.geoSource,
      fromJson: visitorGeoSourceFromJson,
      toJson: visitorGeoSourceToJson,
    )
    VisitorGeoSource? source,
  }) = _OrderSecurityGeo;

  factory OrderSecurityGeo.fromJson(Map<String, dynamic> json) =>
      _$OrderSecurityGeoFromJson(json);

  /// Lenient parse: null for non-objects, and for objects with nothing usable.
  static OrderSecurityGeo? tryParse(Object? value) {
    final map = securityJsonObjectOrNull(value);
    if (map == null) return null;
    try {
      final geo = OrderSecurityGeo.fromJson(map);
      return geo.isEmpty && geo.source == null ? null : geo;
    } catch (_) {
      return null;
    }
  }

  /// At least one of country / region / city is known.
  bool get hasLocation => country != null || region != null || city != null;

  /// Nothing known at all (no location, no IP).
  bool get isEmpty => !hasLocation && ip == null;

  /// Values come from a trusted source (edge or authenticated storefront hop).
  bool get isTrusted =>
      source == VisitorGeoSource.edge || source == VisitorGeoSource.storefront;

  /// Upper-cased [country] when it looks like an ISO alpha-2 code.
  String? get countryCode {
    final c = country?.toUpperCase();
    return c != null && RegExp(r'^[A-Z]{2}$').hasMatch(c) ? c : null;
  }

  /// "City, Region, CC" with unknown parts skipped; empty when nothing is known.
  String get displayLabel => [city, region, countryCode ?? country]
      .whereType<String>()
      .join(', ');

  /// Whether the visitor country differs from [shippingCountry] (ISO code).
  /// Null when either side is unknown.
  bool? countryDiffersFrom(String? shippingCountry) {
    final a = countryCode;
    final b = securityStringOrNull(shippingCountry)?.toUpperCase();
    if (a == null || b == null) return null;
    return a != b;
  }

  /// Whether the visitor region differs from [shippingRegionName], compared
  /// with [normalizeSecurityGeoName]. Null when either side is unknown.
  ///
  /// The order stores the wilaya as the merchant's state value (often a code
  /// or a localized name), so callers should pass a resolved state name; the
  /// result is only a hint.
  bool? regionDiffersFrom(String? shippingRegionName) {
    final a = region;
    final b = securityStringOrNull(shippingRegionName);
    if (a == null || b == null) return null;
    return normalizeSecurityGeoName(a) != normalizeSecurityGeoName(b);
  }
}

/// One rule that fired on a warning order (`claims.security.violations[]`).
@freezed
abstract class OrderSecurityViolation with _$OrderSecurityViolation {
  const OrderSecurityViolation._();
  const factory OrderSecurityViolation({
    /// Rule key (`ip`, `phone`, `countries`, `regions`, ...).
    @JsonKey(
      name: SecurityGeoJsonKeys.violationOption,
      fromJson: securityStringOrNull,
    )
    String? option,

    /// Server-written human readable reason.
    @JsonKey(
      name: SecurityGeoJsonKeys.violationReason,
      fromJson: securityStringOrNull,
    )
    String? reason,
  }) = _OrderSecurityViolation;

  factory OrderSecurityViolation.fromJson(Map<String, dynamic> json) =>
      _$OrderSecurityViolationFromJson(json);

  /// Lenient parse; null for non-objects or entries without option and reason.
  static OrderSecurityViolation? tryParse(Object? value) {
    final map = securityJsonObjectOrNull(value);
    if (map == null) return null;
    try {
      final v = OrderSecurityViolation.fromJson(map);
      return v.option == null && v.reason == null ? null : v;
    } catch (_) {
      return null;
    }
  }
}

/// `order.claims.security` as written by the backend today, plus `geo`.
///
/// Existing keys (backend `orders_controller.ts` / `security_treatment.ts`):
/// `treatment`, `violations[{option, reason}]`, `checkedAt`, `userAgent`,
/// `country` (legacy, client-influenced), `deviceFingerprint`, `formLoadTime`,
/// `platform`, `capturedAt`. Unknown keys are ignored.
@freezed
abstract class OrderSecurityClaims with _$OrderSecurityClaims {
  const OrderSecurityClaims._();
  const factory OrderSecurityClaims({
    /// Trusted visitor geo (design §4.4). Null on older orders.
    @JsonKey(
      name: SecurityGeoJsonKeys.claimsGeo,
      fromJson: _geoFromJson,
      includeIfNull: false,
    )
    OrderSecurityGeo? geo,

    /// Treatment applied (only `warning` orders are persisted with it today).
    @JsonKey(
      name: SecurityGeoJsonKeys.securityTreatment,
      fromJson: securityTreatmentOrNull,
      toJson: _treatmentToJson,
      includeIfNull: false,
    )
    SecurityTreatment? treatment,

    /// Rules that fired.
    @JsonKey(
      name: SecurityGeoJsonKeys.securityViolations,
      fromJson: _violationsFromJson,
    )
    @Default(<OrderSecurityViolation>[])
    List<OrderSecurityViolation> violations,

    @JsonKey(
      name: SecurityGeoJsonKeys.securityCheckedAt,
      fromJson: securityDateTimeFromJson,
      toJson: securityDateTimeToJson,
      includeIfNull: false,
    )
    DateTime? checkedAt,
    @JsonKey(
      name: SecurityGeoJsonKeys.securityCapturedAt,
      fromJson: securityDateTimeFromJson,
      toJson: securityDateTimeToJson,
      includeIfNull: false,
    )
    DateTime? capturedAt,
    @JsonKey(
      name: SecurityGeoJsonKeys.securityUserAgent,
      fromJson: securityStringOrNull,
      includeIfNull: false,
    )
    String? userAgent,

    /// Legacy flat `claims.security.country` (from the request body or the
    /// shipping country). NOT trusted; display hint only.
    @JsonKey(
      name: SecurityGeoJsonKeys.securityLegacyCountry,
      fromJson: securityGeoValueFromJson,
      includeIfNull: false,
    )
    String? legacyCountry,
    @JsonKey(
      name: SecurityGeoJsonKeys.securityDeviceFingerprint,
      fromJson: securityStringOrNull,
      includeIfNull: false,
    )
    String? deviceFingerprint,
    @JsonKey(
      name: SecurityGeoJsonKeys.securityPlatform,
      fromJson: securityStringOrNull,
      includeIfNull: false,
    )
    String? platform,

    /// Raw passthrough (number or string depending on the storefront).
    @JsonKey(name: SecurityGeoJsonKeys.securityFormLoadTime, includeIfNull: false)
    Object? formLoadTime,
  }) = _OrderSecurityClaims;

  factory OrderSecurityClaims.fromJson(Map<String, dynamic> json) =>
      _$OrderSecurityClaimsFromJson(json);

  /// Lenient parse of a `claims.security` value; null for non-objects.
  static OrderSecurityClaims? tryParse(Object? value) {
    final map = securityJsonObjectOrNull(value);
    if (map == null) return null;
    try {
      return OrderSecurityClaims.fromJson(map);
    } catch (_) {
      return null;
    }
  }

  /// Reads `claims.security` from a whole `order.claims` map.
  static OrderSecurityClaims? fromOrderClaims(Map<String, dynamic>? claims) =>
      claims == null ? null : tryParse(claims[SecurityGeoJsonKeys.claimsSecurity]);

  /// [geo] when present, else a geo built from [legacyCountry] with a null
  /// `source` (untrusted). Null when neither exists.
  OrderSecurityGeo? get geoOrLegacy {
    if (geo != null) return geo;
    final c = legacyCountry;
    return c == null ? null : OrderSecurityGeo(country: c);
  }

  /// True when the server flagged the order (warning treatment or violations).
  bool get isFlagged => treatment != null || violations.isNotEmpty;
}

/// Typed access to `claims.security` on any order.
extension OrderSecurityClaimsAccess on OrderEntity {
  /// Parsed `claims.security`, or null when absent / not an object.
  OrderSecurityClaims? get securityClaims =>
      OrderSecurityClaims.fromOrderClaims(claims);

  /// Trusted visitor geo (`claims.security.geo`), or null on older orders.
  OrderSecurityGeo? get securityGeo => securityClaims?.geo;
}
