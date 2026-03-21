/// OAuth 2.0 token response returned by `/oauth/token`.
class OAuthTokenResponse {
  const OAuthTokenResponse({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.scope,
  });

  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final String scope;

  factory OAuthTokenResponse.fromJson(Map<String, dynamic> json) {
    return OAuthTokenResponse(
      accessToken: json['access_token'] as String? ?? '',
      tokenType: json['token_type'] as String? ?? 'Bearer',
      expiresIn: (json['expires_in'] as num?)?.toInt() ?? 0,
      scope: json['scope'] as String? ?? '',
    );
  }
}

/// OAuth 2.0 token revocation response returned by `/oauth/revoke`.
class OAuthRevokeResponse {
  const OAuthRevokeResponse({required this.revoked});

  final bool revoked;

  factory OAuthRevokeResponse.fromJson(Map<String, dynamic> json) {
    return OAuthRevokeResponse(revoked: json['revoked'] == true);
  }
}

/// OAuth 2.0 token introspection response returned by `/oauth/introspect`.
class OAuthIntrospectResponse {
  const OAuthIntrospectResponse({
    required this.active,
    this.scope,
    this.clientId,
    this.username,
    this.tokenType,
    this.exp,
  });

  final bool active;
  final String? scope;
  final String? clientId;
  final String? username;
  final String? tokenType;
  final int? exp;

  factory OAuthIntrospectResponse.fromJson(Map<String, dynamic> json) {
    return OAuthIntrospectResponse(
      active: json['active'] == true,
      scope: json['scope'] as String?,
      clientId: json['client_id'] as String?,
      username: json['username'] as String?,
      tokenType: json['token_type'] as String?,
      exp: (json['exp'] as num?)?.toInt(),
    );
  }
}
