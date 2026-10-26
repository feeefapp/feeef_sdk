import 'dart:convert';

import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:test/test.dart';

/// Round-trips through a JSON string, like the API does.
Map<String, dynamic> _wire(Map<String, dynamic> json) =>
    jsonDecode(jsonEncode(json)) as Map<String, dynamic>;

void main() {
  group('SecurityOptions regions / cities (final shape)', () {
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
        'allowed': null,
        'blocked': ['DZ-11', 'DZ-33', 'DZ-37'],
      },
      'cities': {
        'active': true,
        'treatment': 'fake',
        'allowed': null,
        'blocked': [
          {'name': 'Algiers', 'id': '16-01'},
          {'name': 'Bab Ezzouar'},
        ],
      },
    };

    test('parses both rule groups', () {
      final o = SecurityOptions.fromJson(json);
      expect(o.regions!.active, isTrue);
      expect(o.regions!.treatment, SecurityTreatment.warning);
      expect(o.regions!.allowed, isEmpty);
      expect(o.regions!.blocked, ['DZ-11', 'DZ-33', 'DZ-37']);
      expect(o.cities!.treatment, SecurityTreatment.fake);
      expect(o.cities!.blocked, const [
        SecurityCityRef(name: 'Algiers', id: '16-01'),
        SecurityCityRef(name: 'Bab Ezzouar'),
      ]);
      expect(o.countries!.allowed, ['DZ']);
    });

    test('round trip keeps the wire shape (allowed: null when empty)', () {
      final o = SecurityOptions.fromJson(json);
      final out = _wire(o.toJson());
      expect(out['regions'], json['regions']);
      expect(out['cities'], json['cities']);
      expect(out.containsKey('unknownGeo'), isFalse);
      expect(SecurityOptions.fromJson(out), o);
    });

    test('allow mode writes the list', () {
      const o = SecurityGeoListOption(active: true, allowed: ['DZ-16']);
      expect(_wire(o.toJson()), {
        'active': true,
        'treatment': 'block',
        'allowed': ['DZ-16'],
        'blocked': <String>[],
      });
    });

    test('round trip through StoreIntegrations', () {
      final integrations = StoreIntegrations.fromJson({
        'security': {'active': true, 'options': json},
      });
      final again = StoreIntegrations.fromJson(_wire(integrations.toJson()));
      expect(again.security, integrations.security);
      expect(again.security!.options!.regions!.blocked.first, 'DZ-11');
    });

    test('copyWith and equality', () {
      const a = SecurityGeoListOption(active: true, allowed: ['DZ-31']);
      final b = a.copyWith(blocked: ['DZ-09']);
      expect(b.allowed, ['DZ-31']);
      expect(b.blocked, ['DZ-09']);
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
      expect(
        SecurityCityListOption.fromJson(const {}),
        const SecurityCityListOption(),
      );
    });
  });

  group('wilaya codes (DZ-xx)', () {
    test('code-like values are canonicalised on parse', () {
      final o = SecurityGeoListOption.fromJson({
        'blocked': ['16', 'dz-1', 'DZ09', ' DZ_31 ', 'DZ-16', 'Alger'],
      });
      // '16' and 'DZ-16' are the same wilaya; names are kept as-is.
      expect(o.blocked, ['DZ-16', 'DZ-01', 'DZ-09', 'DZ-31', 'Alger']);
    });

    test('normalizeSecurityRegionCode', () {
      expect(normalizeSecurityRegionCode('DZ-16'), 'DZ-16');
      expect(normalizeSecurityRegionCode('dz16'), 'DZ-16');
      expect(normalizeSecurityRegionCode(7), 'DZ-07');
      expect(normalizeSecurityRegionCode('07'), 'DZ-07');
      expect(normalizeSecurityRegionCode('FR-IDF'), 'FR-IDF');
      expect(normalizeSecurityRegionCode('3', defaultCountry: 'ma'), 'MA-03');
      expect(normalizeSecurityRegionCode('Alger'), isNull);
      expect(normalizeSecurityRegionCode('XX'), isNull);
      expect(normalizeSecurityRegionCode(''), isNull);
      expect(normalizeSecurityRegionCode('0'), isNull);
    });

    test('evaluate compares codes', () {
      const o = SecurityGeoListOption(active: true, blocked: ['DZ-16']);
      expect(o.evaluate('dz-16'), SecurityGeoRuleDecision.blocked);
      expect(o.evaluate('16'), SecurityGeoRuleDecision.blocked);
      expect(o.evaluate('DZ-31'), SecurityGeoRuleDecision.pass);
    });
  });

  group('cities {name, id?}', () {
    test('strings and objects, dedupe by normalized name', () {
      final o = SecurityCityListOption.fromJson({
        'active': 'true',
        'allowed': [
          'Algiers',
          {'name': 'algiers', 'id': 'x'},
          {'name': ' Sétif ', 'id': 19},
          {'id': 'no-name'},
          null,
          '',
        ],
        'blocked': 'Blida, Medea ,',
      });
      expect(o.active, isTrue);
      expect(o.allowed, const [
        SecurityCityRef(name: 'Algiers'),
        SecurityCityRef(name: 'Sétif', id: '19'),
      ]);
      expect(o.blocked.map((c) => c.name), ['Blida', 'Medea']);
    });

    test('id omitted from JSON when null', () {
      expect(const SecurityCityRef(name: 'Oran').toJson(), {'name': 'Oran'});
    });

    test('evaluate by English name, accent-insensitive', () {
      const o = SecurityCityListOption(
        active: true,
        allowed: [SecurityCityRef(name: 'Setif')],
      );
      expect(o.evaluate('Sétif'), SecurityGeoRuleDecision.pass);
      expect(o.evaluate('Oran'), SecurityGeoRuleDecision.notAllowed);
      expect(o.evaluate(null), SecurityGeoRuleDecision.unknown);
    });
  });

  group('unified rules (match, unverified, history)', () {
    test('match round-trips and is omitted when unset', () {
      final o = SecurityOptions.fromJson({
        'phone': {
          'active': true,
          'treatment': 'warning',
          'match': 'sameProducts',
        },
        'fingerprint': {'active': true, 'ttl': 3600, 'treatment': 'block'},
        'unverified': {'active': true, 'treatment': 'fake'},
        'history': {'active': true, 'treatment': 'warning'},
      });
      expect(o.phone!.match, SecurityMatch.sameProducts);
      expect(o.fingerprint!.match, isNull);
      expect(o.unverified!.treatment, SecurityTreatment.fake);
      expect(o.history!.active, isTrue);
      final out = _wire(o.toJson());
      expect(out['phone']['match'], 'sameProducts');
      expect((out['fingerprint'] as Map).containsKey('match'), isFalse);
      expect((out['phone'] as Map).containsKey('ttl'), isFalse);
      expect(SecurityOptions.fromJson(out), o);
    });

    test('an unknown match reads as any order', () {
      final f = SecurityOption.fromJson({'match': 'someday'});
      expect(f.match, SecurityMatch.anyProduct);
    });

    test('removed rules are ignored when read', () {
      final o = SecurityOptions.fromJson({
        'doubleSend': {'active': true},
        'frontend': {'active': true},
        'ads': {'active': true},
      });
      expect(_wire(o.toJson()).keys, isNot(contains('doubleSend')));
    });
  });

  group('security.geoStatus (read-only)', () {
    test('live / off / missing / unknown', () {
      SecurityIntegration p(Object? v) =>
          SecurityIntegration.fromJson({'active': true, 'geoStatus': v});
      expect(p('live').geoStatus, SecurityGeoStatus.live);
      expect(p(' LIVE ').isGeoLive, isTrue);
      expect(p('off').geoStatus, SecurityGeoStatus.off);
      expect(p(null).geoStatus, SecurityGeoStatus.off);
      expect(p('soon').geoStatus, SecurityGeoStatus.off);
      expect(p(1).geoStatus, SecurityGeoStatus.off);
      expect(SecurityIntegration.fromJson(const {}).isGeoLive, isFalse);
    });

    test('never written back', () {
      final s = SecurityIntegration.fromJson({
        'active': true,
        'geoStatus': 'live',
      });
      expect(s.toJson().containsKey('geoStatus'), isFalse);
      final store = StoreIntegrations.fromJson(const {}).copyWith(security: s);
      final wire = _wire(store.toJson());
      expect((wire['security'] as Map).containsKey('geoStatus'), isFalse);
      // copyWith keeps it in memory.
      expect(s.copyWith(active: false).isGeoLive, isTrue);
    });
  });

  group('backward compatible parsing', () {
    test('legacy options without regions / cities', () {
      final o = SecurityOptions.fromJson({
        'ip': {'active': true, 'ttl': 3600, 'treatment': 'block'},
        'countries': {'active': true, 'allowed': null},
      });
      expect(o.regions, isNull);
      expect(o.cities, isNull);
      final out = o.toJson();
      // New keys are not written when unset, so old backends see the old shape.
      expect(out.containsKey('regions'), isFalse);
      expect(out.containsKey('cities'), isFalse);
      expect((out['ip'] as Map).containsKey('missingTreatment'), isFalse);
      expect(SecurityOptions.fromJson(_wire(out)), o);
    });

    test(
      'a stray unknownGeo key is ignored (no such setting, §9 decision 2)',
      () {
        final o = SecurityOptions.fromJson({'unknownGeo': 'allow'});
        expect(o.toJson().containsKey('unknownGeo'), isFalse);
      },
    );

    test('explicit nulls', () {
      final o = SecurityOptions.fromJson({
        'regions': null,
        'cities': {
          'active': null,
          'treatment': null,
          'allowed': null,
          'blocked': null,
        },
      });
      expect(o.regions, isNull);
      expect(o.cities, const SecurityCityListOption());
    });

    test('wrong types and unknown values never throw', () {
      final o = SecurityOptions.fromJson({
        'regions': {
          'active': 'true',
          'treatment': 'ALLOW', // not a SecurityTreatment
          'allowed': [
            ' DZ-31 ',
            null,
            '',
            16,
            {'x': 1},
            'dz-31',
          ],
          'blocked': 'DZ-09, DZ-26 ,',
          'mode': 'allowlist', // unknown extra key
        },
        'cities': 'Algiers', // not an object
        'somethingNew': {'a': 1}, // unknown option
      });
      expect(o.cities, isNull);
      expect(o.regions!.active, isTrue);
      expect(o.regions!.treatment, SecurityTreatment.block);
      expect(o.regions!.allowed, ['DZ-31', 'DZ-16']); // trimmed, deduped
      expect(o.regions!.blocked, ['DZ-09', 'DZ-26']);
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

  group('SecurityGeoListOption.evaluate', () {
    test('inactive', () {
      const o = SecurityGeoListOption(blocked: ['DZ-31']);
      expect(o.evaluate('DZ-31'), SecurityGeoRuleDecision.inactive);
    });

    test('active with no entries passes everything', () {
      const o = SecurityGeoListOption(active: true);
      expect(o.evaluate(null), SecurityGeoRuleDecision.pass);
      expect(o.evaluate('DZ-31'), SecurityGeoRuleDecision.pass);
    });

    test('blocked wins over allowed; legacy names still match', () {
      const o = SecurityGeoListOption(
        active: true,
        allowed: ['DZ-31', 'Sétif'],
        blocked: ['dz-31'],
      );
      expect(o.evaluate('DZ-31'), SecurityGeoRuleDecision.blocked);
      expect(o.evaluate('setif'), SecurityGeoRuleDecision.pass);
      expect(o.evaluate('DZ-09'), SecurityGeoRuleDecision.notAllowed);
    });

    test('empty allowed = allow all', () {
      const o = SecurityGeoListOption(active: true, blocked: ['DZ-09']);
      expect(o.evaluate('DZ-31'), SecurityGeoRuleDecision.pass);
      expect(o.evaluate('DZ-09'), SecurityGeoRuleDecision.blocked);
    });

    test('unknown never passes an allow list, ignored by block lists', () {
      const allow = SecurityGeoListOption(active: true, allowed: ['DZ-31']);
      for (final v in [null, '', 'XX']) {
        expect(allow.evaluate(v), SecurityGeoRuleDecision.unknown);
        expect(allow.evaluate(v).triggers, isTrue);
      }
      const block = SecurityGeoListOption(active: true, blocked: ['DZ-31']);
      expect(block.evaluate(null), SecurityGeoRuleDecision.pass);
      expect(block.evaluate(null).triggers, isFalse);
    });

    test('normalizeSecurityGeoName', () {
      expect(
        normalizeSecurityGeoName('  Bordj  Bou-Arréridj '),
        'bordj bou arreridj',
      );
      expect(normalizeSecurityGeoName("M'Sila"), 'm sila');
    });
  });

  test('key names are centralised', () {
    expect(SecurityGeoJsonKeys.regions, 'regions');
    expect(SecurityGeoJsonKeys.cities, 'cities');
    expect(SecurityGeoJsonKeys.claimsGeo, 'geo');
    expect(SecurityGeoJsonKeys.geoStatus, 'geoStatus');
    expect(SecurityGeoJsonKeys.cityName, 'name');
    expect(SecurityGeoJsonKeys.cityId, 'id');
  });
}
