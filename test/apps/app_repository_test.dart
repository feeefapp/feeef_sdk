import 'package:feeef/apps/app_repository.dart';
import 'package:feeef/apps/models/app.dart';
import 'package:test/test.dart';

void main() {
  group('AppRepository.buildAuthorizeUrl', () {
    test('builds URL with required params', () {
      final url = AppRepository.buildAuthorizeUrl(
        baseUrl: 'https://api.feeef.org/api/v1',
        clientId: 'client_abc',
        redirectUri: 'https://myapp.com/callback',
        responseType: 'code',
      );
      expect(url, contains('https://api.feeef.org/api/v1/oauth/authorize'));
      expect(url, contains('client_id=client_abc'));
      expect(url, contains('redirect_uri='));
      expect(url, contains('response_type=code'));
    });

    test('includes scope when provided', () {
      final url = AppRepository.buildAuthorizeUrl(
        baseUrl: 'https://api.example.com/v1',
        clientId: 'c1',
        redirectUri: 'https://app.com/cb',
        responseType: 'code',
        scope: ['auth', 'stores'],
      );
      expect(url, contains('scope='));
      expect(url, contains('auth'));
      expect(url, contains('stores'));
    });

    test('includes state when provided', () {
      final url = AppRepository.buildAuthorizeUrl(
        baseUrl: 'https://api.example.com/v1',
        clientId: 'c1',
        redirectUri: 'https://app.com/cb',
        responseType: 'code',
        state: 'random_state_123',
      );
      expect(url, contains('state=random_state_123'));
    });

    test('includes code_challenge and code_challenge_method when provided', () {
      final url = AppRepository.buildAuthorizeUrl(
        baseUrl: 'https://api.example.com/v1',
        clientId: 'c1',
        redirectUri: 'https://app.com/cb',
        responseType: 'code',
        codeChallenge: 'challenge_xyz',
        codeChallengeMethod: 'S256',
      );
      expect(url, contains('code_challenge=challenge_xyz'));
      expect(url, contains('code_challenge_method=S256'));
    });

    test('handles baseUrl with trailing slash', () {
      final url = AppRepository.buildAuthorizeUrl(
        baseUrl: 'https://api.example.com/v1/',
        clientId: 'c1',
        redirectUri: 'https://app.com/cb',
        responseType: 'code',
      );
      expect(url, contains('oauth/authorize'));
      expect(url, contains('client_id=c1'));
    });
  });

  group('App.fromJson', () {
    test('parses minimal app response', () {
      final json = {
        'id': 'app_1',
        'name': 'Test App',
        'logoUrl': 'https://cdn.example.com/logo.png',
        'clientId': 'cid_xyz',
        'redirectUris': ['https://example.com/cb'],
        'scopes': ['auth', 'stores'],
        'active': true,
        'lastUsedAt': null,
        'createdAt': '2025-01-01T00:00:00.000Z',
        'updatedAt': '2025-01-01T00:00:00.000Z',
      };
      final app = App.fromJson(json);
      expect(app.id, 'app_1');
      expect(app.name, 'Test App');
      expect(app.logoUrl, 'https://cdn.example.com/logo.png');
      expect(app.clientId, 'cid_xyz');
      expect(app.redirectUris, ['https://example.com/cb']);
      expect(app.scopes, ['auth', 'stores']);
      expect(app.active, true);
      expect(app.clientSecret, isNull);
    });

    test('parses app with clientSecret (create/regenerate response)', () {
      final json = {
        'id': 'app_1',
        'name': 'Test App',
        'clientId': 'cid_xyz',
        'redirectUris': [],
        'scopes': [],
        'active': true,
        'lastUsedAt': null,
        'createdAt': '2025-01-01T00:00:00.000Z',
        'updatedAt': null,
        'clientSecret': 'secret_show_once',
      };
      final app = App.fromJson(json);
      expect(app.clientSecret, 'secret_show_once');
    });
  });

  group('AppCreate', () {
    test('toJson includes name, redirectUris, scopes', () {
      const create = AppCreate(
        name: 'My App',
        logoUrl: 'https://cdn.example.com/logo.png',
        redirectUris: ['https://a.com/cb'],
        scopes: ['auth'],
      );
      final json = create.toJson();
      expect(json['name'], 'My App');
      expect(json['logoUrl'], 'https://cdn.example.com/logo.png');
      expect(json['redirectUris'], ['https://a.com/cb']);
      expect(json['scopes'], ['auth']);
    });
  });

  group('AppUpdate', () {
    test('toJson includes logoUrl and active fields', () {
      const update = AppUpdate(
        logoUrl: null,
        active: false,
      );
      final json = update.toJson();
      expect(json['logoUrl'], isNull);
      expect(json['active'], false);
    });
  });
}
