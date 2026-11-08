/// Merchant account phones are stored as E.164 (`+213555123456`).
/// Mirrors `backend/app/utils/user_phone.ts` + the country plans used there.
library;

class _PhonePlan {
  const _PhonePlan({
    required this.dial,
    required this.trunk,
    required this.length,
    this.valid,
  });

  final String dial;
  final String trunk;
  final int length;
  final RegExp? valid;
}

const _plans = <String, _PhonePlan>{
  'DZ': _PhonePlan(
    dial: '213',
    trunk: '0',
    length: 10,
    valid: null, // checked below with DZ regex
  ),
  'TN': _PhonePlan(dial: '216', trunk: '', length: 8),
  'LY': _PhonePlan(dial: '218', trunk: '0', length: 10),
  'IQ': _PhonePlan(dial: '964', trunk: '0', length: 11),
};

final _dzValid = RegExp(r'^(?:0[567]\d{8}|0[234]\d{7})$');
final _tnValid = RegExp(r'^[2-9]\d{7}$');

/// Build E.164 from a national number and dial code (no `+` on [dial]).
///
/// Drops a leading trunk `0` when [dial] is known Maghreb/IQ, otherwise
/// concatenates digits as-is after stripping non-digits from [national].
String? accountPhoneE164FromNational({
  required String national,
  required String dial,
  String? countryCode,
}) {
  final d = dial.replaceAll(RegExp(r'\D'), '');
  if (d.isEmpty || !RegExp(r'^[1-9]\d{0,3}$').hasMatch(d)) return null;

  var digits = national.replaceAll(RegExp(r'\D'), '');
  if (digits.isEmpty) return null;

  final cc = (countryCode ?? '').trim().toUpperCase();
  final plan = _plans[cc];
  if (plan != null && plan.dial == d) {
    digits = _canonicalNational(digits, plan);
    if (!_isValidNational(digits, plan, cc)) return null;
    final subscriber = plan.trunk.isNotEmpty && digits.startsWith(plan.trunk)
        ? digits.substring(plan.trunk.length)
        : digits;
    return '+$d$subscriber';
  }

  // Generic: drop one leading 0 trunk if present.
  if (digits.startsWith('0') && digits.length > 1) {
    digits = digits.substring(1);
  }
  final e164 = '+$d$digits';
  return RegExp(r'^\+[1-9]\d{7,14}$').hasMatch(e164) ? e164 : null;
}

/// Normalize any merchant-typed value to E.164, or null when invalid.
String? toAccountPhoneE164(String? raw, {String country = 'DZ'}) {
  final trimmed = (raw ?? '').trim();
  if (trimmed.isEmpty) return null;

  if (trimmed.startsWith('+') || trimmed.startsWith('00')) {
    final digits = trimmed.replaceAll(RegExp(r'\D'), '');
    final intl = trimmed.startsWith('00') ? digits.substring(2) : digits;
    if (!RegExp(r'^[1-9]\d{7,14}$').hasMatch(intl)) return null;
    return '+$intl';
  }

  final cc = country.trim().toUpperCase().isEmpty ? 'DZ' : country.trim().toUpperCase();
  final plan = _plans[cc];
  if (plan != null) {
    final national = _canonicalNational(trimmed.replaceAll(RegExp(r'\D'), ''), plan);
    if (!_isValidNational(national, plan, cc)) return null;
    final subscriber = plan.trunk.isNotEmpty && national.startsWith(plan.trunk)
        ? national.substring(plan.trunk.length)
        : national;
    return '+${plan.dial}$subscriber';
  }

  final digits = trimmed.replaceAll(RegExp(r'\D'), '');
  if (RegExp(r'^[1-9]\d{7,14}$').hasMatch(digits) && digits.length >= 10) {
    return '+$digits';
  }
  return null;
}

/// Split stored E.164 into dial + national display (with trunk when known).
({String countryCode, String dial, String national})? splitAccountPhoneE164(
  String? e164, {
  String fallbackCountry = 'DZ',
}) {
  final value = (e164 ?? '').trim();
  if (!RegExp(r'^\+[1-9]\d{7,14}$').hasMatch(value)) return null;
  final digits = value.substring(1);

  for (final entry in _plans.entries) {
    final plan = entry.value;
    if (digits.startsWith(plan.dial)) {
      final subscriber = digits.substring(plan.dial.length);
      final national = '${plan.trunk}$subscriber';
      return (countryCode: entry.key, dial: plan.dial, national: national);
    }
  }

  // Unknown plan: longest common dial guess is not available — show full
  // subscriber under the fallback country's dial if it matches, else raw.
  final fallback = _plans[fallbackCountry.trim().toUpperCase()];
  if (fallback != null && digits.startsWith(fallback.dial)) {
    final subscriber = digits.substring(fallback.dial.length);
    return (
      countryCode: fallbackCountry.trim().toUpperCase(),
      dial: fallback.dial,
      national: '${fallback.trunk}$subscriber',
    );
  }

  return (countryCode: fallbackCountry, dial: '', national: digits);
}

String _canonicalNational(String digits, _PhonePlan plan) {
  var d = digits;
  final subscriber = plan.length - plan.trunk.length;
  if (d.startsWith('00${plan.dial}') &&
      d.length == 2 + plan.dial.length + subscriber) {
    d = d.substring(2);
  }
  if (d.startsWith(plan.dial) && d.length == plan.dial.length + subscriber) {
    return '${plan.trunk}${d.substring(plan.dial.length)}';
  }
  if (plan.trunk.isNotEmpty &&
      d.length == subscriber &&
      !d.startsWith(plan.trunk)) {
    return '${plan.trunk}$d';
  }
  return d;
}

bool _isValidNational(String national, _PhonePlan plan, String cc) {
  if (cc == 'DZ') return _dzValid.hasMatch(national);
  if (cc == 'TN') return _tnValid.hasMatch(national);
  return national.length == plan.length;
}
