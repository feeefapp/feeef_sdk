/// JSON key names and lenient parsers for the trusted visitor geo work
/// (security integration `regions` / `cities` rules and order
/// `claims.security.geo`).
///
/// PROVISIONAL: the backend shape is not final yet (see
/// `docs/security-geo-design-2026-10-09.md` §4.3 / §4.4 and
/// `docs/security-geo-review.md`). Every wire key used by the new models lives
/// in [SecurityGeoJsonKeys], so a rename on the backend is a one-line change
/// here followed by `dart run build_runner build`.
///
/// The parsers never throw: wrong types, nulls and unknown values fall back to
/// the documented defaults so an unexpected payload cannot break store or
/// order parsing.
library;

import 'package:diacritic/diacritic.dart';

import 'store_integrations.dart' show SecurityTreatment;

/// Wire key names for the trusted visitor geo models. Change them here only.
abstract final class SecurityGeoJsonKeys {
  // ---- store.integrations.security.options.* ----

  /// Region (state / wilaya) allow/block rule group.
  static const String regions = 'regions';

  /// City allow/block rule group.
  static const String cities = 'cities';

  /// Treatment when the visitor geo is unknown. Shape not decided yet, kept as
  /// a raw passthrough (see `SecurityOptions.unknownGeo`).
  static const String unknownGeo = 'unknownGeo';

  // ---- fields of a geo rule group ----
  static const String active = 'active';
  static const String treatment = 'treatment';
  static const String allowed = 'allowed';
  static const String blocked = 'blocked';

  // ---- order.claims.* ----

  /// `order.claims.security`
  static const String claimsSecurity = 'security';

  /// `order.claims.security.geo`
  static const String claimsGeo = 'geo';

  // ---- order.claims.security.geo.* ----
  static const String geoCountry = 'country';
  static const String geoRegion = 'region';
  static const String geoCity = 'city';
  static const String geoIp = 'ip';
  static const String geoSource = 'source';

  // ---- other order.claims.security.* keys already written by the backend ----
  static const String securityTreatment = 'treatment';
  static const String securityViolations = 'violations';
  static const String violationOption = 'option';
  static const String violationReason = 'reason';
  static const String securityCheckedAt = 'checkedAt';
  static const String securityCapturedAt = 'capturedAt';
  static const String securityUserAgent = 'userAgent';

  /// Legacy flat country (client-influenced, pre trusted-geo). Display hint only.
  static const String securityLegacyCountry = 'country';
  static const String securityDeviceFingerprint = 'deviceFingerprint';
  static const String securityPlatform = 'platform';
  static const String securityFormLoadTime = 'formLoadTime';

  // ---- values ----

  /// Placeholder the Traefik geoip2 plugin uses for "unknown".
  static const String unknownGeoPlaceholder = 'XX';
}

/// Lenient bool: `true`, `"true"`, `"1"`, `1` are true; anything else is false.
bool securityLenientBool(Object? value) {
  if (value is bool) return value;
  if (value is num) return value != 0;
  if (value is String) {
    final v = value.trim().toLowerCase();
    return v == 'true' || v == '1' || v == 'yes' || v == 'on';
  }
  return false;
}

/// Lenient nullable treatment: case-insensitive enum name, else null.
SecurityTreatment? securityTreatmentOrNull(Object? value) {
  if (value is SecurityTreatment) return value;
  if (value is! String) return null;
  final v = value.trim().toLowerCase();
  for (final t in SecurityTreatment.values) {
    if (t.name == v) return t;
  }
  return null;
}

/// Lenient treatment: unknown, null or wrong type -> [SecurityTreatment.block]
/// (same default as the backend validator and the existing options).
SecurityTreatment securityTreatmentFromJson(Object? value) =>
    securityTreatmentOrNull(value) ?? SecurityTreatment.block;

/// Lenient string list.
///
/// - `List`: every non-null element is stringified and trimmed; empty entries
///   are dropped; duplicates (case-insensitive, normalized) are dropped keeping
///   the first spelling.
/// - `String`: treated as a comma separated list (legacy / hand-written data).
/// - anything else (null, map, number): empty list.
List<String> securityStringListFromJson(Object? value) {
  Iterable<Object?> raw;
  if (value is List) {
    raw = value;
  } else if (value is String) {
    raw = value.split(',');
  } else {
    return <String>[];
  }
  final seen = <String>{};
  final out = <String>[];
  for (final e in raw) {
    if (e == null || e is Map || e is List) continue;
    final s = e.toString().trim();
    if (s.isEmpty) continue;
    if (seen.add(normalizeSecurityGeoName(s))) out.add(s);
  }
  return out;
}

/// Lenient geo value (country / region / city / ip from the edge):
/// trims, maps empty and the `XX` placeholder to null, stringifies numbers.
String? securityGeoValueFromJson(Object? value) {
  if (value == null || value is Map || value is List || value is bool) {
    return null;
  }
  final s = value.toString().trim();
  if (s.isEmpty) return null;
  if (s.toUpperCase() == SecurityGeoJsonKeys.unknownGeoPlaceholder) return null;
  return s;
}

/// Lenient optional string: non-empty trimmed string (numbers stringified), else null.
String? securityStringOrNull(Object? value) {
  if (value == null || value is Map || value is List) return null;
  final s = value.toString().trim();
  return s.isEmpty ? null : s;
}

/// Lenient date: ISO string or epoch milliseconds, else null.
DateTime? securityDateTimeFromJson(Object? value) {
  if (value is DateTime) return value;
  if (value is String) return DateTime.tryParse(value.trim());
  if (value is int) {
    return DateTime.fromMillisecondsSinceEpoch(value, isUtc: true);
  }
  return null;
}

/// Date to ISO-8601 (null-safe).
String? securityDateTimeToJson(DateTime? value) => value?.toIso8601String();

/// Comparison key for region / city names: lower case, no diacritics,
/// collapsed whitespace, `-`/`_`/`'` treated as spaces.
///
/// PROVISIONAL: mirrors the design ("case-insensitive on normalized names").
/// The backend owns the real matching; this is for client-side previews,
/// de-duplication and the "differs from shipping address" hint only.
String normalizeSecurityGeoName(String value) {
  final lowered = removeDiacritics(value).toLowerCase();
  return lowered
      .replaceAll(RegExp(r"[-_'’`]+"), ' ')
      .replaceAll(RegExp(r'\s+'), ' ')
      .trim();
}

/// `Map<String, dynamic>` view of a JSON object, or null when [value] is not a map.
Map<String, dynamic>? securityJsonObjectOrNull(Object? value) {
  if (value is Map<String, dynamic>) return value;
  if (value is Map) {
    return value.map((k, v) => MapEntry(k.toString(), v));
  }
  return null;
}
