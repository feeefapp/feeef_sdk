import 'package:feeef/oauth/models/oauth_models.dart';
import 'package:feeef/oauth/oauth_repository.dart';
import 'package:test/test.dart';

void main() {
  group('OAuthRepository.buildAuthorizeUrl', () {
    test('builds URL with required params', () {
      final url = OAuthRepository.buildAuthorizeUrl(
        baseUrl: 'https://api.feeef.org/v1',
        clientId: 'client_abc',
        redirectUri: 'https://app.example.com/callback',
      );

      expect(url, contains('https://api.feeef.org/v1/oauth/authorize'));
      expect(url, contains('client_id=client_abc'));
      expect(url, contains('response_type=code'));
      expect(url, contains('redirect_uri='));
    });

    test('includes optional scope, state, and PKCE fields', () {
      final url = OAuthRepository.buildAuthorizeUrl(
        baseUrl: 'https://api.feeef.org/v1',
        clientId: 'client_abc',
        redirectUri: 'https://app.example.com/callback',
        scope: const ['stores:read', 'orders:write'],
        state: 'csrf_123',
        codeChallenge: 'challenge_abc',
        codeChallengeMethod: 'S256',
      );

      expect(url, contains('scope='));
      expect(url, contains('stores%3Aread+orders%3Awrite'));
      expect(url, contains('state=csrf_123'));
      expect(url, contains('code_challenge=challenge_abc'));
      expect(url, contains('code_challenge_method=S256'));
    });
  });

  group('OAuth models', () {
    test('parses token response', () {
      const expiresIn = 3600;
      final model = OAuthTokenResponse.fromJson({
        'access_token': 'token_123',
        'token_type': 'Bearer',
        'expires_in': expiresIn,
        'scope': 'stores:read',
      });

      expect(model.accessToken, 'token_123');
      expect(model.tokenType, 'Bearer');
      expect(model.expiresIn, expiresIn);
      expect(model.scope, 'stores:read');
    });

    test('parses revoke response', () {
      final model = OAuthRevokeResponse.fromJson({'revoked': true});
      expect(model.revoked, isTrue);
    });

    test('parses introspect response', () {
      final model = OAuthIntrospectResponse.fromJson({
        'active': true,
        'scope': 'stores:read',
        'client_id': 'client_1',
        'username': 'john',
        'token_type': 'Bearer',
        'exp': 1,
      });

      expect(model.active, isTrue);
      expect(model.scope, 'stores:read');
      expect(model.clientId, 'client_1');
      expect(model.username, 'john');
      expect(model.tokenType, 'Bearer');
      expect(model.exp, 1);
    });
  });
}
