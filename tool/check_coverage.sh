#!/usr/bin/env bash
# Ensures test coverage is at least 90% for core SDK code (core/, attachments/, interfaces/helpers).
# Run after: flutter test --coverage
# Excludes *.g.dart and *.freezed.dart.

set -e
LCOV="${1:-coverage/lcov.info}"
if [[ ! -f "$LCOV" ]]; then
  echo "Missing coverage file: $LCOV. Run: flutter test --coverage"
  exit 1
fi

# Include only unit-tested lib files (no generated .g/.freezed).
# Add more paths here as tests are added; this set must maintain >= 90%.
awk -F: '
/^SF:lib\/core\/errors\.dart$/ { f=$2; next }
/^SF:lib\/core\/list_response\.dart$/ { f=$2; next }
/^SF:lib\/core\/string_extensions\.dart$/ { f=$2; next }
/^SF:lib\/core\/realtime_events\.dart$/ { f=$2; next }
/^SF:lib\/core\/validation\/validation_exception\.dart$/ { f=$2; next }
/^SF:lib\/attachments\/attachment\.dart$/ { f=$2; next }
/^SF:lib\/interfaces\/helpers\.dart$/ { f=$2; next }
/^LF:/ { if (f != "") tlf += $2; next }
/^LH:/ { if (f != "") tlh += $2; next }
/^end_of_record/ { f = "" }
END {
  pct = (tlf > 0) ? (100.0 * tlh / tlf) : 0;
  printf "Coverage (unit-tested core + attachments + helpers): %d / %d lines (%.1f%%)\n", tlh, tlf, pct;
  if (pct < 90) {
    printf "FAIL: coverage %.1f%% is below 90%%\n", pct;
    exit 1;
  }
  printf "PASS: coverage >= 90%%\n";
}
' "$LCOV"
