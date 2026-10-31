import 'dart:convert';

import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:test/test.dart';

Map<String, dynamic> _wire(Map<String, dynamic> json) =>
    jsonDecode(jsonEncode(json)) as Map<String, dynamic>;

void main() {
  group('SecurityOptions Guard-only layers', () {
    final json = <String, dynamic>{
      'bots': {'active': true, 'treatment': 'fake'},
      'botScore': {'active': true, 'treatment': 'warning', 'min': 85},
      'hostingNetwork': {'active': false, 'treatment': 'block'},
      'challenge': {'active': true, 'minScore': 20},
    };

    test('parses all four', () {
      final o = SecurityOptions.fromJson(json);
      expect(
        o.bots,
        const SecurityOption(active: true, treatment: SecurityTreatment.fake),
      );
      expect(
        o.botScore,
        const SecurityBotScoreOption(
          active: true,
          treatment: SecurityTreatment.warning,
          min: 85,
        ),
      );
      expect(o.hostingNetwork, const SecurityOption());
      expect(
        o.challenge,
        const SecurityChallengeOption(active: true, minScore: 20),
      );
    });

    test('round trip keeps the wire shape', () {
      final out = _wire(SecurityOptions.fromJson(json).toJson());
      for (final k in json.keys) {
        expect(out[k], json[k], reason: k);
      }
    });

    test('defaults', () {
      expect(SecurityBotScoreOption.fromJson({}).toJson(), {
        'active': false,
        'treatment': 'block',
        'min': 70,
      });
      expect(SecurityChallengeOption.fromJson({}).toJson(), {
        'active': false,
        'minScore': 40,
      });
    });

    test('absent keys are omitted', () {
      final out = _wire(const SecurityOptions().toJson());
      for (final k in ['bots', 'botScore', 'hostingNetwork', 'challenge']) {
        expect(out.containsKey(k), isFalse, reason: k);
      }
    });
  });
}
