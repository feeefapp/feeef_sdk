import 'package:dio/dio.dart';

import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/oauth/models/oauth_models.dart';

/// Repository for Feeef OAuth 2.0 developer flow endpoints.
///
/// Covers the standard authorization code flow endpoints exposed by Feeef:
/// - `/oauth/authorize` (URL building helper)
/// - `/oauth/token` (code exchange)
/// - `/oauth/revoke` (token revocation)
/// - `/oauth/introspect` (token metadata)
class OAuthRepository {
  OAuthRepository({required this.client});

  final Dio client;

  /// Builds the browser URL for `/oauth/authorize`.
  ///
  /// Open the returned URL in a browser or webview. After user consent,
  /// Feeef redirects to [redirectUri] with `code` and optional `state`.
  static String buildAuthorizeUrl({
    required String baseUrl,
    required String clientId,
    required String redirectUri,
    List<String>? scope,
    String? state,
    String? codeChallenge,
    String? codeChallengeMethod,
  }) {
    final base = baseUrl.endsWith('/') ? baseUrl : '$baseUrl/';
    final uri = Uri.parse('${base}oauth/authorize');
    final query = <String, String>{
      'client_id': clientId,
      'redirect_uri': redirectUri,
      'response_type': 'code',
      if (scope != null && scope.isNotEmpty) 'scope': scope.join(' '),
      if (state != null && state.isNotEmpty) 'state': state,
      if (codeChallenge != null && codeChallenge.isNotEmpty)
        'code_challenge': codeChallenge,
      if (codeChallengeMethod != null && codeChallengeMethod.isNotEmpty)
        'code_challenge_method': codeChallengeMethod,
    };
    return uri.replace(queryParameters: query).toString();
  }

  /// Exchanges an authorization [code] for an access token.
  ///
  /// Sends a form-urlencoded request to `/oauth/token`.
  Future<OAuthTokenResponse> exchangeAuthorizationCode({
    required String code,
    required String redirectUri,
    required String clientId,
    required String clientSecret,
    String? codeVerifier,
  }) async {
    try {
      final response = await client.post(
        '/oauth/token',
        data: {
          'grant_type': 'authorization_code',
          'code': code,
          'redirect_uri': redirectUri,
          'client_id': clientId,
          'client_secret': clientSecret,
          if (codeVerifier != null && codeVerifier.isNotEmpty)
            'code_verifier': codeVerifier,
        },
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );
      return OAuthTokenResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _mapOAuthError(e);
    }
  }

  /// Revokes an OAuth access token via `/oauth/revoke`.
  Future<OAuthRevokeResponse> revokeToken({
    required String token,
    String? tokenTypeHint,
  }) async {
    try {
      final response = await client.post(
        '/oauth/revoke',
        data: {
          'token': token,
          if (tokenTypeHint != null && tokenTypeHint.isNotEmpty)
            'token_type_hint': tokenTypeHint,
        },
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );
      return OAuthRevokeResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw _mapOAuthError(e);
    }
  }

  /// Introspects an OAuth token via `/oauth/introspect`.
  Future<OAuthIntrospectResponse> introspectToken({
    required String token,
  }) async {
    try {
      final response = await client.post(
        '/oauth/introspect',
        data: {'token': token},
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );
      return OAuthIntrospectResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw _mapOAuthError(e);
    }
  }

  /// Converts Feeef OAuth error payloads (`error`, `error_description`)
  /// into SDK-standard [FeeefValidationException].
  FeeefValidationException _mapOAuthError(DioException error) {
    final data = error.response?.data;
    if (data is Map<String, dynamic>) {
      final oauthError = data['error']?.toString();
      final oauthDescription = data['error_description']?.toString();
      if (oauthError != null || oauthDescription != null) {
        return FeeefValidationException(
          errors: [
            FeeefViolation(
              message: oauthDescription ?? oauthError ?? 'OAuth request failed',
              rule: oauthError,
            ),
          ],
        );
      }

      try {
        return FeeefValidationException.fromJson(data);
      } catch (_) {
        // Fall through to generic payload below.
      }
    }

    return FeeefValidationException(
      errors: [
        FeeefViolation(
          message: 'OAuth request failed',
          rule: error.response?.statusCode?.toString(),
        ),
      ],
    );
  }
}
