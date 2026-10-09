/// JSON key names and lenient parsers for the trusted visitor geo work
/// (security integration `regions` / `cities` rules and order
/// `claims.security.geo`).
///
/// Shapes follow `docs/security-ui-redesign.md` §4 / §7 (FINAL, 2026-10-09).
/// Backend support for `fingerprint.missingTreatment` is not confirmed yet.
/// Every wire key used by the new models lives in [SecurityGeoJsonKeys], so a
/// rename on the backend is a one-line change here followed by
/// `dart run build_runner build`.
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

  // ---- store.integrations.security.* ----

  /// Read-only visitor-location status written by the backend
  /// (`'live' | 'off'`). Parsed, never written back.
  static const String geoStatus = 'geoStatus';

  /// `options.fingerprint.missingTreatment`: treatment when the device
  /// fingerprint is missing (`block | warning`; null = follow `treatment`).
  /// NOT CONFIRMED by the backend yet.
  static const String missingTreatment = 'missingTreatment';

  // ---- fields of a geo rule group ----
  static const String active = 'active';
  static const String treatment = 'treatment';
  static const String allowed = 'allowed';
  static const String blocked = 'blocked';

  // ---- city reference inside `cities.allowed` / `cities.blocked` ----

  /// English city name (what the edge geo plugin sends).
  static const String cityName = 'name';

  /// States-catalog city id, only when the city comes from the catalog.
  static const String cityId = 'id';

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

  /// Default country for bare wilaya numbers (`"16"` -> `"DZ-16"`).
  static const String defaultRegionCountry = 'DZ';

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

/// `fingerprint.missingTreatment`: only `block` or `warning` (case
/// insensitive). `fake`, unknown values, wrong types and null -> null, which
/// means "follow the rule's treatment". PROVISIONAL until the backend ships the
/// final shape.
SecurityTreatment? securityMissingTreatmentFromJson(Object? value) {
  final t = securityTreatmentOrNull(value);
  return t == SecurityTreatment.block || t == SecurityTreatment.warning
      ? t
      : null;
}

/// Writes only `block` / `warning`; anything else is omitted (null).
String? securityMissingTreatmentToJson(SecurityTreatment? value) =>
    value == SecurityTreatment.block || value == SecurityTreatment.warning
        ? value!.name
        : null;

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

final RegExp _regionCodeDigits = RegExp(r'^([A-Z]{2})[-_ ]?(\d{1,3})$');
final RegExp _regionCodeAlnum = RegExp(r'^([A-Z]{2})-([A-Z0-9]{1,3})$');
final RegExp _bareDigits = RegExp(r'^\d{1,2}$');

/// ISO 3166-2 subdivision code (`"DZ-16"`) for a region value, or null when
/// [value] does not look like a code.
///
/// Accepts `DZ-16`, `dz-16`, `DZ16`, `DZ_16`, `DZ-1` (padded to `DZ-01`) and a
/// bare wilaya number (`"16"`, `16`) which is read as [defaultCountry]
/// (Algerian wilaya numbers; spec §3.7 `'DZ-${code.padLeft(2, '0')}'`).
/// Names ("Alger") return null.
String? normalizeSecurityRegionCode(
  Object? value, {
  String defaultCountry = SecurityGeoJsonKeys.defaultRegionCountry,
}) {
  final raw = securityGeoValueFromJson(value);
  if (raw == null) return null;
  final v = raw.toUpperCase();
  if (_bareDigits.hasMatch(v)) {
    final n = int.parse(v);
    if (n < 1) return null;
    return '${defaultCountry.toUpperCase()}-${v.padLeft(2, '0')}';
  }
  final d = _regionCodeDigits.firstMatch(v);
  if (d != null) {
    return '${d.group(1)}-${d.group(2)!.padLeft(2, '0')}';
  }
  final a = _regionCodeAlnum.firstMatch(v);
  if (a != null) return '${a.group(1)}-${a.group(2)}';
  return null;
}

/// Comparison key for a region value: the ISO code when it parses as one,
/// else the normalized name (legacy / hand-written data).
String securityRegionMatchKey(String value) =>
    normalizeSecurityRegionCode(value) ?? normalizeSecurityGeoName(value);

/// Lenient region list (`options.regions.allowed/blocked`): like
/// [securityStringListFromJson], and code-like values are canonicalised to
/// `DZ-16`. Non-code strings are kept trimmed (never dropped).
List<String> securityRegionListFromJson(Object? value) {
  final seen = <String>{};
  final out = <String>[];
  for (final s in securityStringListFromJson(value)) {
    final v = normalizeSecurityRegionCode(s) ?? s;
    if (seen.add(securityRegionMatchKey(v))) out.add(v);
  }
  return out;
}

/// `allowed` list writer: an empty list is written as null, matching what the
/// app writes for `countries` (block mode -> `allowed: null`).
List<String>? securityAllowedListToJson(List<String> value) =>
    value.isEmpty ? null : value;
