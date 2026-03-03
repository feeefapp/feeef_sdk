import 'package:petitparser/petitparser.dart';

// =============================================================================
// Feature rules filter (platform-only)
// =============================================================================
//
// Variables: android, ios, web, macos (1 on that platform, 0 otherwise).
// Operators:
//   !   NOT   e.g. !android, !ios
//   *   AND   e.g. android*ios (both; for platform usually false)
//   +   OR    e.g. android+ios (either)
// Precedence: NOT > AND > OR.
//
// Examples:
//   android         → true on Android only
//   android+ios     → true on Android OR iOS
//   !android        → true when not Android (ios, web, or macos)
//   !android+ios    → (!android) OR ios  → true on web, macos, or iOS
//   android*ios     → Android AND iOS (impossible for platform; false)
//   macos           → true on macOS only
//
// For now only platform filters (android/ios/web/macos). No functions like
// date(user.createdAt) — reserved for later.
// =============================================================================

/// Platform variable names supported by the rules grammar.
const Set<String> kPlatformVars = {'android', 'ios', 'web', 'macos'};

/// AST node for the rules expression.
sealed class FeatureRulesExpr {
  bool eval(FeatureRulesContext ctx);
}

/// A platform variable (android, ios, web, macos).
final class FeatureRulesVar extends FeatureRulesExpr {
  final String name;

  FeatureRulesVar(this.name);

  @override
  bool eval(FeatureRulesContext ctx) => ctx.value(name);

  @override
  String toString() => name;
}

/// Logical NOT.
final class FeatureRulesNot extends FeatureRulesExpr {
  final FeatureRulesExpr inner;

  FeatureRulesNot(this.inner);

  @override
  bool eval(FeatureRulesContext ctx) => !inner.eval(ctx);

  @override
  String toString() => '!$inner';
}

/// Logical AND (conjunction of multiple terms).
final class FeatureRulesAnd extends FeatureRulesExpr {
  final List<FeatureRulesExpr> terms;

  FeatureRulesAnd(this.terms);

  @override
  bool eval(FeatureRulesContext ctx) {
    for (final t in terms) {
      if (!t.eval(ctx)) return false;
    }
    return true;
  }

  @override
  String toString() => terms.map((e) => e.toString()).join('*');
}

/// Logical OR (disjunction of multiple terms).
final class FeatureRulesOr extends FeatureRulesExpr {
  final List<FeatureRulesExpr> terms;

  FeatureRulesOr(this.terms);

  @override
  bool eval(FeatureRulesContext ctx) {
    for (final t in terms) {
      if (t.eval(ctx)) return true;
    }
    return false;
  }

  @override
  String toString() => terms.map((e) => e.toString()).join('+');
}

/// Context providing variable values (e.g. platform flags).
abstract interface class FeatureRulesContext {
  /// Returns the value of variable [name] (0 or 1; treated as false/true).
  bool value(String name);
}

/// Context implementation from explicit android/ios/web/macos flags.
final class PlatformRulesContext implements FeatureRulesContext {
  final bool android;
  final bool ios;
  final bool web;
  final bool macos;

  const PlatformRulesContext({
    required this.android,
    required this.ios,
    required this.web,
    required this.macos,
  });

  @override
  bool value(String name) {
    return switch (name) {
      'android' => android,
      'ios' => ios,
      'web' => web,
      'macos' => macos,
      _ => false,
    };
  }
}

/// Result of parsing feature rules.
sealed class FeatureRulesParseResult {}

final class FeatureRulesParseOk extends FeatureRulesParseResult {
  final FeatureRulesExpr expr;

  FeatureRulesParseOk(this.expr);
}

final class FeatureRulesParseError extends FeatureRulesParseResult {
  final String message;
  final int? position;

  FeatureRulesParseError(this.message, [this.position]);
}

/// Parses and evaluates feature rules (platform filter only).
///
/// [rules]: expression string, e.g. `android+ios`, `!web`, `macos`, `android*ios`.
/// [android], [ios], [web], [macos]: current platform flags (1 = on that platform, 0 = not).
///
/// Returns `true` if rules are empty (no filter), or the expression evaluates
/// to true; `false` otherwise. On parse error, returns `false` (fail closed).
bool evaluateFeatureRules(
  String rules, {
  required bool android,
  required bool ios,
  required bool web,
  bool macos = false,
}) {
  final s = rules.trim();
  if (s.isEmpty) return true;

  final result = parseFeatureRules(s);
  return switch (result) {
    FeatureRulesParseOk(:final expr) => expr.eval(
      PlatformRulesContext(android: android, ios: ios, web: web, macos: macos),
    ),
    FeatureRulesParseError() => false,
  };
}

/// Parses [rules] into an expression. Use [evaluateFeatureRules] for parse+eval.
FeatureRulesParseResult parseFeatureRules(String rules) {
  final s = rules.trim();
  if (s.isEmpty) {
    return FeatureRulesParseError('Rules string is empty');
  }

  final parser = _buildParser();
  final r = parser.parse(s);

  if (r is Failure) {
    return FeatureRulesParseError(r.message, r.position);
  }
  assert(r is Success);
  return FeatureRulesParseOk((r as Success).value as FeatureRulesExpr);
}

Parser<FeatureRulesExpr> _buildParser() {
  final ws = whitespace().star();
  Parser<FeatureRulesExpr> trimTok(Parser<FeatureRulesExpr> p) =>
      ws.seq(p).seq(ws).pick(1).cast<FeatureRulesExpr>();

  final android = trimTok(
    string('android').map((_) => FeatureRulesVar('android')),
  );
  final ios = trimTok(string('ios').map((_) => FeatureRulesVar('ios')));
  final web = trimTok(string('web').map((_) => FeatureRulesVar('web')));
  final macos = trimTok(string('macos').map((_) => FeatureRulesVar('macos')));
  final identifier = android | ios | web | macos;

  final primaryRef = undefined<FeatureRulesExpr>();
  final not = char('!')
      .trim()
      .seq(primaryRef)
      .map((v) => FeatureRulesNot(v[1] as FeatureRulesExpr));
  final primary = (not | identifier).map<FeatureRulesExpr>((x) => x);
  primaryRef.set(primary);

  // andExpr := primary ('*' primary)*
  final andExpr = primary
      .seq(
        (char(
          '*',
        ).trim().seq(primary).map((v) => v[1] as FeatureRulesExpr)).star(),
      )
      .map((v) {
        final first = v[0] as FeatureRulesExpr;
        final rest = (v[1] as List<dynamic>).cast<FeatureRulesExpr>();
        if (rest.isEmpty) return first;
        return FeatureRulesAnd([first, ...rest]);
      });

  // orExpr := andExpr ('+' andExpr)*
  final orExpr = andExpr
      .seq(
        (char(
          '+',
        ).trim().seq(andExpr).map((v) => v[1] as FeatureRulesExpr)).star(),
      )
      .map((v) {
        final first = v[0] as FeatureRulesExpr;
        final rest = (v[1] as List<dynamic>).cast<FeatureRulesExpr>();
        if (rest.isEmpty) return first;
        return FeatureRulesOr([first, ...rest]);
      });

  return orExpr.end();
}
