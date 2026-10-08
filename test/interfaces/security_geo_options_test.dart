import 'dart:convert';

import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:test/test.dart';

/// Round-trips through a JSON string, like the API does.
Map<String, dynamic> _wire(Map<String, dynamic> json) =>
    jsonDecode(jsonEncode(json)) as Map<String, dynamic>;

void main() {
  group('SecurityOptions regions / cities (new shape)', () {
    final json = <String, dynamic>{
      'countries': {
        'active': true,
        'treatment': 'block',
        'allowed': ['DZ'],
        'blocked': <String>[],
      },
      'regions': {
        'active': true,
        'treatment': 'warning',
        'allowed': ['Algiers', 'Oran'],
        'blocked': ['Tamanrasset'],
      },
      'cities': {
        'active': false,
        'treatment': 'fake',
        'allowed': <String>[],
        'blocked': ['Bab Ezzouar'],
      },
      'unknownGeo': 'allow',
    };

    test('parses both rule groups', () {
      final o = SecurityOptions.fromJson(json);
      expect(o.regions, isNotNull);
      expect(o.regions!.active, isTrue);
      expect(o.regions!.treatment, SecurityTreatment.warning);
      expect(o.regions!.allowed, ['Algiers', 'Oran']);
      expect(o.regions!.blocked, ['Tamanrasset']);
      expect(o.cities!.active, isFalse);
      expect(o.cities!.treatment, SecurityTreatment.fake);
      expect(o.cities!.allowed, isEmpty);
      expect(o.cities!.blocked, ['Bab Ezzouar']);
      expect(o.countries!.allowed, ['DZ']);
    });

    test('round trip keeps the wire shape and equality', () {
      final o = SecurityOptions.fromJson(json);
      final out = _wire(o.toJson());
      expect(out['regions'], {
        'active': true,
        'treatment': 'warning',
        'allowed': ['Algiers', 'Oran'],
        'blocked': ['Tamanrasset'],
      });
      expect(out['cities'], {
        'active': false,
        'treatment': 'fake',
        'allowed': <String>[],
        'blocked': ['Bab Ezzouar'],
      });
      expect(out['unknownGeo'], 'allow');
      expect(SecurityOptions.fromJson(out), o);
    });

    test('round trip through StoreIntegrations', () {
      final integrations = StoreIntegrations.fromJson({
        'security': {'active': true, 'options': json},
      });
      final again = StoreIntegrations.fromJson(_wire(integrations.toJson()));
      expect(again.security, integrations.security);
      expect(again.security!.options!.regions!.allowed, ['Algiers', 'Oran']);
    });

    test('copyWith and equality', () {
      const a = SecurityGeoListOption(active: true, allowed: ['Oran']);
      final b = a.copyWith(blocked: ['Blida']);
      expect(b.allowed, ['Oran']);
      expect(b.blocked, ['Blida']);
      expect(b, isNot(a));
      expect(b.copyWith(blocked: const []), a);
      expect(b.hashCode, b.copyWith().hashCode);
    });

    test('defaults', () {
      const o = SecurityGeoListOption();
      expect(o.active, isFalse);
      expect(o.treatment, SecurityTreatment.block);
      expect(o.allowed, isEmpty);
      expect(o.blocked, isEmpty);
      expect(SecurityGeoListOption.fromJson(const {}), o);
    });
  });

  group('backward compatible parsing', () {
    test('legacy options without regions / cities / unknownGeo', () {
      final o = SecurityOptions.fromJson({
        'ip': {'active': true, 'ttl': 3600, 'treatment': 'block'},
        'countries': {'active': true, 'allowed': null},
      });
      expect(o.regions, isNull);
      expect(o.cities, isNull);
      expect(o.unknownGeo, isNull);
      expect(o.unknownGeoTreatment, isNull);
      final out = o.toJson();
      // New keys are not written when unset, so old backends see the old shape.
      expect(out.containsKey('regions'), isFalse);
      expect(out.containsKey('cities'), isFalse);
      expect(out.containsKey('unknownGeo'), isFalse);
      expect(SecurityOptions.fromJson(_wire(out)), o);
    });

    test('explicit nulls', () {
      final o = SecurityOptions.fromJson({
        'regions': null,
        'cities': {
          'active': null,
          'treatment': null,
          'allowed': null,
          'blocked': null,
        },
        'unknownGeo': null,
      });
      expect(o.regions, isNull);
      expect(o.cities, const SecurityGeoListOption());
    });

    test('wrong types and unknown values never throw', () {
      final o = SecurityOptions.fromJson({
        'regions': 'Algiers', // not an object
        'cities': {
          'active': 'true',
          'treatment': 'ALLOW', // not a SecurityTreatment
          'allowed': [' Oran ', null, '', 16, {'x': 1}, 'oran'],
          'blocked': 'Blida, Medea ,',
          'mode': 'allowlist', // unknown extra key
        },
        'somethingNew': {'a': 1}, // unknown option
      });
      expect(o.regions, isNull);
      expect(o.cities!.active, isTrue);
      expect(o.cities!.treatment, SecurityTreatment.block);
      expect(o.cities!.allowed, ['Oran', '16']); // trimmed, deduped
      expect(o.cities!.blocked, ['Blida', 'Medea']);
    });

    test('treatment is case-insensitive', () {
      final o = SecurityGeoListOption.fromJson({'treatment': 'Warning'});
      expect(o.treatment, SecurityTreatment.warning);
    });

    test('regions given as a list or number parse as null', () {
      expect(SecurityOptions.fromJson({'regions': <Object>[]}).regions, isNull);
      expect(SecurityOptions.fromJson({'cities': 3}).cities, isNull);
    });

    test('whole store integrations without security still parse', () {
      final i = StoreIntegrations.fromJson({'metadata': <String, dynamic>{}});
      expect(i.security, isNull);
    });
  });

  group('unknownGeo passthrough', () {
    test('string', () {
      final o = SecurityOptions.fromJson({'unknownGeo': 'warning'});
      expect(o.unknownGeoTreatmentName, 'warning');
      expect(o.unknownGeoTreatment, SecurityTreatment.warning);
    });

    test('object is kept unchanged on toJson', () {
      final raw = {'treatment': 'Fake', 'extra': true};
      final o = SecurityOptions.fromJson({'unknownGeo': raw});
      expect(o.unknownGeoTreatment, SecurityTreatment.fake);
      expect(_wire(o.toJson())['unknownGeo'], raw);
    });

    test('allow is readable as a name but not as a SecurityTreatment', () {
      final o = SecurityOptions.fromJson({'unknownGeo': 'allow'});
      expect(o.unknownGeoTreatmentName, 'allow');
      expect(o.unknownGeoTreatment, isNull);
    });
  });

  group('SecurityGeoListOption.evaluate', () {
    test('inactive', () {
      const o = SecurityGeoListOption(blocked: ['Oran']);
      expect(o.evaluate('Oran'), SecurityGeoRuleDecision.inactive);
    });

    test('active with no entries passes everything', () {
      const o = SecurityGeoListOption(active: true);
      expect(o.evaluate(null), SecurityGeoRuleDecision.pass);
      expect(o.evaluate('Oran'), SecurityGeoRuleDecision.pass);
    });

    test('blocked wins over allowed, case and accent insensitive', () {
      const o = SecurityGeoListOption(
        active: true,
        allowed: ['Oran', 'Sétif'],
        blocked: ['oran'],
      );
      expect(o.evaluate('ORAN'), SecurityGeoRuleDecision.blocked);
      expect(o.evaluate('setif'), SecurityGeoRuleDecision.pass);
      expect(o.evaluate('Blida'), SecurityGeoRuleDecision.notAllowed);
    });

    test('empty allowed = allow all', () {
      const o = SecurityGeoListOption(active: true, blocked: ['Blida']);
      expect(o.evaluate('Oran'), SecurityGeoRuleDecision.pass);
      expect(o.evaluate('blida'), SecurityGeoRuleDecision.blocked);
    });

    test('unknown geo (null, empty, XX)', () {
      const o = SecurityGeoListOption(active: true, allowed: ['Oran']);
      expect(o.evaluate(null), SecurityGeoRuleDecision.unknown);
      expect(o.evaluate(''), SecurityGeoRuleDecision.unknown);
      expect(o.evaluate('XX'), SecurityGeoRuleDecision.unknown);
    });

    test('normalizeSecurityGeoName', () {
      expect(normalizeSecurityGeoName('  Bordj  Bou-Arréridj '),
          'bordj bou arreridj');
      expect(normalizeSecurityGeoName("M'Sila"), 'm sila');
    });
  });

  test('key names are centralised', () {
    expect(SecurityGeoJsonKeys.regions, 'regions');
    expect(SecurityGeoJsonKeys.cities, 'cities');
    expect(SecurityGeoJsonKeys.claimsGeo, 'geo');
  });
}
