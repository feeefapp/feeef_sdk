import 'package:dio/dio.dart';

import 'package:feeef/apps/models/app.dart';
import 'package:feeef/core/model_repository.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/mixins/repository_mixins.dart';

/// Repository for developer-registered apps (CRUD and regenerate secret).
///
/// Requires an authenticated user (Bearer token). Use when the app owner
/// manages their registered apps or needs the OAuth authorize URL.
///
/// Terminology: "app" / "apps" is used consistently; OAuth is used only
/// for the flow (authorize, token endpoints).
class AppRepository extends ModelRepository<App>
    with
        ModelCreateMixin<App, AppCreate>,
        ModelFindMixin<App>,
        ModelListMixin<App>,
        ModelUpdateMixin<App, AppUpdate>,
        ModelDeleteMixin<App> {
  AppRepository({required super.client}) : super(table: 'apps');

  /// Regenerates the client secret for the app. Returns the app with
  /// [App.clientSecret] set once; store it securely.
  Future<App> regenerateSecret(String id) async {
    try {
      final response = await client.post('/$table/$id/regenerate-secret');
      return modelFromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        final errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  /// Builds the OAuth authorize URL to which the user should be redirected.
  ///
  /// This is step 1 of the authorization-code flow (Google-like):
  /// - open `/oauth/authorize` in browser
  /// - if API returns `login_required`, redirect to `login_url`
  /// - after login, authorize returns to your callback with `code`
  /// - exchange code via `/oauth/token`
  ///
  /// [baseUrl] should be the API base (e.g. `https://api.feeef.org/api/v1`).
  /// [codeChallenge] and [codeChallengeMethod] are required when using PKCE.
  /// Public app JSON (`apps.public_data`). No auth required; use a [client]
  /// whose interceptors do not block unauthenticated GET if applicable.
  Future<Map<String, dynamic>> getPublicData(String appId) async {
    final response = await client.get('/$table/$appId/public-data');
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Owner/admin: [apps.private_data].
  Future<Map<String, dynamic>> getPrivateData(String appId) async {
    final response = await client.get('/$table/$appId/private-data');
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Owner/admin: replace `public_data` (body `{ "public": { ... } }`).
  Future<Map<String, dynamic>> putPublicData(
    String appId,
    Map<String, dynamic> publicNamespaces,
  ) async {
    final response = await client.put(
      '/$table/$appId/public-data',
      data: {'public': publicNamespaces},
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Owner/admin: replace `private_data`.
  Future<Map<String, dynamic>> putPrivateData(
    String appId,
    Map<String, dynamic> privateNamespaces,
  ) async {
    final response = await client.put(
      '/$table/$appId/private-data',
      data: {'private': privateNamespaces},
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Authenticated user: `public` + `protected` for this app (no `private`).
  Future<Map<String, dynamic>> getUserDataMe(String appId) async {
    final response = await client.get('/$table/$appId/user-data/me');
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Authenticated user: replace only [publicNamespaces] (`PUT` body `public`).
  Future<Map<String, dynamic>> putUserDataMe(
    String appId,
    Map<String, dynamic> publicNamespaces,
  ) async {
    final response = await client.put(
      '/$table/$appId/user-data/me',
      data: {'public': publicNamespaces},
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Developer OAuth token (`apps` scope, `app_id` on token): full pivot row.
  Future<Map<String, dynamic>> getUserDataForUser(
    String appId,
    String userId,
  ) async {
    final response =
        await client.get('/$table/$appId/user-data/users/$userId');
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Developer: partial update; include only keys to replace.
  Future<Map<String, dynamic>> putUserDataForUser(
    String appId,
    String userId, {
    Map<String, dynamic>? publicNamespaces,
    Map<String, dynamic>? privateNamespaces,
    Map<String, dynamic>? protectedNamespaces,
  }) async {
    final data = <String, dynamic>{};
    if (publicNamespaces != null) data['public'] = publicNamespaces;
    if (privateNamespaces != null) data['private'] = privateNamespaces;
    if (protectedNamespaces != null) data['protected'] = protectedNamespaces;
    final response = await client.put(
      '/$table/$appId/user-data/users/$userId',
      data: data,
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  static String buildAuthorizeUrl({
    required String baseUrl,
    required String clientId,
    required String redirectUri,
    required String responseType,
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
      'response_type': responseType,
      if (scope != null && scope.isNotEmpty) 'scope': scope.join(' '),
      if (state != null && state.isNotEmpty) 'state': state,
      if (codeChallenge != null && codeChallenge.isNotEmpty)
        'code_challenge': codeChallenge,
      if (codeChallengeMethod != null && codeChallengeMethod.isNotEmpty)
        'code_challenge_method': codeChallengeMethod,
    };
    return uri.replace(queryParameters: query).toString();
  }

  @override
  App modelFromJson(dynamic json) =>
      App.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(App model) => model.toJson();

  @override
  AppCreate createFromJson(dynamic json) =>
      AppCreate.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> createToJson(AppCreate model) => model.toJson();

  @override
  AppUpdate updateFromJson(dynamic json) =>
      AppUpdate.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> updateToJson(AppUpdate model) => model.toJson();
}
