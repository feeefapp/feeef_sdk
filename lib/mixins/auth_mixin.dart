import 'dart:async';
import 'dart:convert';
import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:transmit_client/transmit.dart';

import 'package:feeef/auth/models/token.dart';
import 'package:feeef/auth/models/user_auth_response.dart';
import 'package:feeef/core/errors.dart';
import 'package:feeef/core/model_repository.dart';
import 'package:feeef/core/realtime_events.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/users/models/user.dart';

/// Mixin that adds auth state, signin/signup/signout, realtime user channel,
/// and persistence via [FeeefStorage]. Used by [UserRepository].
mixin ModelAuthMixin<T extends Model> on ModelRepository<T> {
  AuthResponse<T>? _auth;

  AuthResponse<T>? get auth => _auth;

  /// Resolves the current push token via the repository's [getPushToken] callback, if set.
  Future<String?> _getPushToken() async {
    final getter = getPushToken;
    if (getter == null) return null;
    try {
      return await getter();
    } catch (e) {
      developer.log('$e');
      return null;
    }
  }

  Subscription? _realtimeSubscription;
  Subscription? get realtimeSubscription => _realtimeSubscription;

  Future<void> _listenToRealtimeSubscription() async {
    if (auth == null) return;
    if (_realtimeSubscription != null &&
        _realtimeSubscription?.isCreated == true) {
      developer.log('Realtime subscription already exists for user ${auth!.user.id}');
      return;
    }
    try {
      final channel = 'users/${auth!.user.id}';
      developer.log('Setting up realtime subscription for channel: $channel');
      _realtimeSubscription = await realtime?.subscribe(channel);
      _realtimeSubscription?.onMessage((data) {
        developer.log('Received realtime message on users/${auth?.user.id}: $data');
        if (data is Map<String, dynamic>) {
          try {
            var event = RealtimeCrudEvent.fromJson(data);
            var user = modelFromJson(event.data);
            developer.log(
              'Processing realtime event: ${event.event} for user ${user.id}',
            );
            auth = auth!.copyWith(user: user);
            developer.log('Updated auth with new user data: ${user}');
          } catch (e) {
            developer.log('Error processing realtime message: $e');
            developer.log('Message data: $data');
          }
        } else {
          developer.log('Cant parse realtime message - not a Map: ${data.runtimeType}');
        }
      });
      developer.log(
        'Realtime subscription set up successfully for user ${auth!.user.id}',
      );
    } catch (e) {
      developer.log('Error setting up realtime subscription: $e');
    }
  }

  Future<void> init() async {
    final s = storage;
    if (s == null) return;
    final token = await s.get('services.auth.token');
    if (token != null && token.isNotEmpty) {
      client.options.headers['Authorization'] = 'Bearer $token';
      await _loadCachedUserData();
      await _verifyWithServer();
    }
  }

  Future<void> _loadCachedUserData() async {
    final s = storage;
    if (s == null) return;
    try {
      final userJson = await s.get('services.auth.user');
      final tokenJson = await s.get('services.auth.tokenData');

      if (userJson != null && tokenJson != null) {
        final userData = jsonDecode(userJson);
        final tokenData = jsonDecode(tokenJson);

        _auth = AuthResponse(
          user: modelFromJson(userData),
          token: AuthToken.fromJson(tokenData),
        );
        await _listenToRealtimeSubscription();

        _authController.add(_auth);
        developer.log('Loaded cached user data for offline mode');
      }
    } catch (e) {
      developer.log('Error loading cached user data: $e');
    }
  }

  Future<void> _verifyWithServer() async {
    try {
      await me();
      await _listenToRealtimeSubscription();
      developer.log('Server verification successful');
    } catch (e) {
      developer.log('Server verification failed, but keeping cached data: $e');
    }
  }

  Future<void> _saveUserData(AuthResponse<T>? auth) async {
    final s = storage;
    if (s == null) return;
    try {
      if (auth == null) {
        await s.remove('services.auth.user');
        await s.remove('services.auth.tokenData');
        await s.remove('services.auth.token');
      } else {
        if (auth.user is User) {
          await s.set(
            'services.auth.user',
            jsonEncode((auth.user as User).toJson()),
          );
        }
        await s.set(
          'services.auth.tokenData',
          jsonEncode(auth.token.toJson()),
        );
        await s.set('services.auth.token', auth.token.token!);
      }
    } catch (e) {
      developer.log('Error saving user data: $e');
    }
  }

  Future<void> _saveAuthToken(AuthResponse<T>? auth) async {
    await _saveUserData(auth);
  }

  set auth(AuthResponse<T>? value) {
    _auth = value;
    _saveAuthToken(_auth);
    _authController.add(value);
    if (value == null && _realtimeSubscription != null) {
      _realtimeSubscription?.delete().catchError((e) {
        developer.log('Error cleaning up realtime subscription: $e');
      });
      _realtimeSubscription = null;
    }
  }

  final _authController = StreamController<AuthResponse<T>?>.broadcast();

  Stream<AuthResponse<T>?> get authStream => _authController.stream;

  Future<AuthResponse<T>> signin({
    required String email,
    required String password,
  }) async {
    try {
      String? token;
      try {
        token = await _getPushToken();
      } catch (e) {
        developer.log('$e');
      }
      var data = {'email': email, 'password': password, 'fcmToken': token};
      final response = await client.post('/$table/auth/signin', data: data);
      auth = AuthResponse(
        user: modelFromJson(response.data['user']),
        token: AuthToken.fromJson(response.data['token']),
      );
      client.options.headers['Authorization'] = 'Bearer ${auth!.token.token}';
      await _listenToRealtimeSubscription();
      return auth!;
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<AuthResponse<T>> signinWithToken({required String token}) async {
    try {
      developer.log("Attempting to sign in with token: ${token.substring(0, 5)}...");

      String? fcmToken;
      try {
        fcmToken = await _getPushToken();
        developer.log("FCM token obtained: ${fcmToken?.substring(0, 10)}...");
      } catch (e) {
        developer.log("Failed to get FCM token: $e");
      }

      client.options.headers['Authorization'] = 'Bearer $token';
      developer.log("Set Authorization header with token");

      developer.log("Calling auth endpoint to get user data");
      final response = await client.get('/$table/auth');
      developer.log("Auth response received: ${response.statusCode}");

      developer.log("User data: ${response.data['user']['id']}");
      developer.log("Token data available: ${response.data['token'] != null}");

      auth = AuthResponse(
        user: modelFromJson(response.data['user']),
        token: AuthToken.fromJson({...response.data['token'], 'token': token}),
      );
      await _listenToRealtimeSubscription();

      developer.log("Auth response created successfully");

      if (fcmToken != null) {
        try {
          developer.log("Updating FCM token");
          await client.post(
            '/$table/auth/fcm-token',
            data: {'fcmToken': fcmToken},
          );
          developer.log("FCM token updated successfully");
        } catch (e) {
          developer.log('Failed to update FCM token: $e');
        }
      }

      developer.log("Setting up realtime connection");
      developer.log("Realtime connection set up successfully");

      developer.log("Token authentication completed successfully");
      return auth!;
    } on DioException catch (e) {
      client.options.headers.remove('Authorization');

      developer.log("DioException during token authentication: ${e.type}");
      developer.log("Status code: ${e.response?.statusCode}");
      developer.log("Response data: ${e.response?.data}");

      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        developer.log("Validation errors: ${errors.messages.join(', ')}");
        throw errors;
      }
      rethrow;
    } catch (e) {
      client.options.headers.remove('Authorization');
      developer.log("Unexpected error during token authentication: $e");
      rethrow;
    }
  }

  Future<AuthResponse<T>> signup({
    required String referral,
    required String name,
    required String email,
    String? phone,
    required String password,
  }) async {
    try {
      String? token;
      try {
        token = await _getPushToken();
      } catch (e) {
        developer.log('$e');
      }
      final response = await client.post(
        '/$table/auth/signup',
        data: {
          'referral': referral,
          'name': name,
          'email': email,
          'phone': phone,
          'password': password,
          'fcmToken': token,
        },
      );
      auth = AuthResponse(
        user: modelFromJson(response.data['user']),
        token: AuthToken.fromJson(response.data['token']),
      );
      client.options.headers['Authorization'] = 'Bearer ${auth!.token.token}';
      await _listenToRealtimeSubscription();
      return auth!;
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<AuthResponse<T>> signinWithGoogle({
    required String code,
    String? fcmToken,
  }) async {
    try {
      if (fcmToken == null) {
        try {
          fcmToken = await _getPushToken();
        } catch (e) {
          developer.log('$e');
        }
      }
      developer.log(
        'Calling social/google/callback with code: $code and fcmToken: $fcmToken',
      );
      final response = await client.post(
        '/social/google/callback',
        data: {'code': code, if (fcmToken != null) 'fcmToken': fcmToken},
      );
      auth = AuthResponse(
        user: modelFromJson(response.data['user']),
        token: AuthToken.fromJson(response.data['token']),
      );
      client.options.headers['Authorization'] = 'Bearer ${auth!.token.token}';
      await _listenToRealtimeSubscription();
      return auth!;
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<AuthResponse<T>> signinWithGitHub({
    required String code,
    String? fcmToken,
  }) async {
    try {
      if (fcmToken == null) {
        try {
          fcmToken = await _getPushToken();
        } catch (e) {
          developer.log('$e');
        }
      }
      final response = await client.post(
        '/social/github/callback',
        data: {'code': code, if (fcmToken != null) 'fcmToken': fcmToken},
      );
      auth = AuthResponse(
        user: modelFromJson(response.data['user']),
        token: AuthToken.fromJson(response.data['token']),
      );
      client.options.headers['Authorization'] = 'Bearer ${auth!.token.token}';
      await _listenToRealtimeSubscription();
      return auth!;
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<AuthResponse<T>> signinWithApple({
    required String code,
    String? fcmToken,
  }) async {
    try {
      if (fcmToken == null) {
        try {
          fcmToken = await _getPushToken();
        } catch (e) {
          developer.log('$e');
        }
      }
      developer.log(
        'Calling social/apple/callback with code: $code and fcmToken: $fcmToken',
      );
      final response = await client.post(
        '/social/apple/callback',
        data: {'code': code, if (fcmToken != null) 'fcmToken': fcmToken},
      );
      auth = AuthResponse(
        user: modelFromJson(response.data['user']),
        token: AuthToken.fromJson(response.data['token']),
      );
      client.options.headers['Authorization'] = 'Bearer ${auth!.token.token}';
      await _listenToRealtimeSubscription();
      return auth!;
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<AuthResponse<T>> signinWithFacebook({
    required String code,
    String? fcmToken,
  }) async {
    try {
      if (fcmToken == null) {
        try {
          fcmToken = await _getPushToken();
        } catch (e) {
          developer.log('$e');
        }
      }
      developer.log(
        'Calling social/facebook/callback with code: $code and fcmToken: $fcmToken',
      );
      final response = await client.post(
        '/social/facebook/callback',
        data: {'code': code, if (fcmToken != null) 'fcmToken': fcmToken},
      );
      auth = AuthResponse(
        user: modelFromJson(response.data['user']),
        token: AuthToken.fromJson(response.data['token']),
      );
      client.options.headers['Authorization'] = 'Bearer ${auth!.token.token}';
      await _listenToRealtimeSubscription();
      return auth!;
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<void> sendResetPasswordEmail({required String email}) async {
    try {
      await client.post(
        '/$table/auth/reset-password',
        queryParameters: {'email': email},
      );
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<void> signout() async {
    if (_realtimeSubscription != null) {
      try {
        await _realtimeSubscription?.delete();
        developer.log('Cleaned up realtime subscription on signout');
      } catch (e) {
        developer.log('Error cleaning up realtime subscription: $e');
      }
      _realtimeSubscription = null;
    }
    auth = null;
    client.options.headers.remove('Authorization');
  }

  Future<T?> me() async {
    try {
      developer.log('Verifying authentication with server...');
      final response = await client.get('/$table/auth');
      developer.log('Server verification successful');

      auth = AuthResponse(
        user: modelFromJson(response.data["user"]),
        token: AuthToken.fromJson({
          ...response.data["token"],
          "token": client.options.headers['Authorization']
              .toString()
              .split('Bearer ')
              .last,
        }),
      );
      await _listenToRealtimeSubscription();
      return auth!.user;
    } on DioException catch (e) {
      developer.log('DioException during server verification: ${e.type}');
      developer.log('Status code: ${e.response?.statusCode}');

      if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
        developer.log('Authentication error detected, clearing cached data');
        auth = null;
        client.options.headers.remove('Authorization');
        rethrow;
      } else {
        developer.log('Network error during verification, keeping cached data');
        throw NetworkException(
          'Network error during authentication verification',
        );
      }
    } catch (e) {
      developer.log('Unexpected error during server verification: $e');
      throw NetworkException(
        'Unexpected error during authentication verification',
      );
    }
  }

  Future<List<AccessToken>> tokens() async {
    final response = await client.get('/$table/auth/tokens');
    return (response.data as List).map((e) => AccessToken.fromJson(e)).toList();
  }

  Future<T> updateMe({required UserUpdateMe data}) async {
    try {
      final response = await client.put('/$table/auth', data: data.toJson());
      auth = AuthResponse(
        user: modelFromJson(response.data),
        token: auth!.token,
      );
      await _listenToRealtimeSubscription();
      return auth!.user;
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<Map<String, dynamic>> startPasskeyRegistration({
    String? deviceName,
  }) async {
    try {
      final response = await client.post(
        '/passkeys/register/start',
        data: {if (deviceName != null) 'deviceName': deviceName},
      );
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<AuthResponse<T>> finishPasskeyRegistration({
    required Map<String, dynamic> registrationResponse,
    String? deviceName,
  }) async {
    try {
      final response = await client.post(
        '/passkeys/register/finish',
        data: {
          'response': registrationResponse,
          if (deviceName != null) 'deviceName': deviceName,
        },
      );
      auth = AuthResponse(
        user: modelFromJson(response.data['user']),
        token: AuthToken.fromJson(response.data['token']),
      );
      client.options.headers['Authorization'] = 'Bearer ${auth!.token.token}';
      await _listenToRealtimeSubscription();
      return auth!;
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<Map<String, dynamic>> startPasskeyAuthentication({
    String? email,
  }) async {
    try {
      final response = await client.post(
        '/passkeys/authenticate/start',
        data: {if (email != null) 'email': email},
      );
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<AuthResponse<T>> finishPasskeyAuthentication({
    required Map<String, dynamic> authenticationResponse,
  }) async {
    try {
      final response = await client.post(
        '/passkeys/authenticate/finish',
        data: {'response': authenticationResponse},
      );
      auth = AuthResponse(
        user: modelFromJson(response.data['user']),
        token: AuthToken.fromJson(response.data['token']),
      );
      client.options.headers['Authorization'] = 'Bearer ${auth!.token.token}';
      await _listenToRealtimeSubscription();
      return auth!;
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<List<Map<String, dynamic>>> listPasskeys() async {
    try {
      final response = await client.get('/passkeys');
      return (response.data['passkeys'] as List).cast<Map<String, dynamic>>();
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<void> deletePasskey(String passkeyId) async {
    try {
      await client.delete('/passkeys/$passkeyId');
    } on DioException catch (e) {
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }
}
