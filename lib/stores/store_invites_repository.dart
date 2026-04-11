import 'package:dio/dio.dart';

import 'package:feeef/core/validation/validation_exception.dart'
    show FeeefValidationException, FeeefViolation;
import 'package:feeef/interfaces/embadded/store.dart';

/// Repository for store invites. Exposed as [StoreRepository.invites].
///
/// Use [ff.stores.invites.list], [ff.stores.invites.create], etc.
/// All methods require a [storeId] since invites are scoped to a store.
class StoreInvitesRepository {
  StoreInvitesRepository({required this.client, required this.table});

  final Dio client;
  final String table;

  /// Lists invites for a store.
  Future<List<StoreInvite>> list(
    String storeId, {
    String? status,
  }) async {
    try {
      final res = await client.get(
        '/$table/$storeId/invites',
        queryParameters: status != null ? {'status': status} : null,
      );
      final list = res.data as List;
      return list
          .map((e) => StoreInvite.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response?.data);
      }
      rethrow;
    }
  }

  /// Creates a store invite and sends an email to the invitee.
  Future<StoreInvite> create(
    String storeId, {
    required String email,
    required StoreMemberRole role,
    DateTime? expiresAt,
    Map<String, dynamic>? metadata,
  }) async {
    try {
      final res = await client.post(
        '/$table/$storeId/invites',
        data: {
          'email': email,
          'role': role.name,
          if (expiresAt != null) 'expiresAt': expiresAt.toIso8601String(),
          if (metadata != null) 'metadata': metadata,
        },
      );
      return StoreInvite.fromJson(res.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        final data = e.response?.data;
        if (data is Map<String, dynamic> && data['errors'] != null) {
          throw FeeefValidationException.fromJson(data);
        }
      }
      if (e.response?.statusCode != null &&
          e.response!.statusCode! >= 400 &&
          e.response!.statusCode! < 500) {
        final data = e.response?.data;
        if (data is Map) {
          final errors = data['errors'];
          if (errors is List && errors.isNotEmpty) {
            throw FeeefValidationException(
              errors: errors
                  .map((v) => v is Map
                      ? FeeefViolation(
                          message: v['message']?.toString() ?? 'Request failed',
                          field: v['field']?.toString(),
                        )
                      : FeeefViolation(message: v.toString()))
                  .toList(),
            );
          }
          final message = data['message']?.toString();
          if (message != null && message.isNotEmpty) {
            throw FeeefValidationException(
              errors: [FeeefViolation(message: message, field: 'email')],
            );
          }
        }
      }
      rethrow;
    }
  }

  /// Gets invite details (public or full if authorized).
  Future<StoreInvite> get(String storeId, String inviteId) async {
    try {
      final res = await client.get('/$table/$storeId/invites/$inviteId');
      return StoreInvite.fromJson(res.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response?.data);
      }
      rethrow;
    }
  }

  /// Revokes a pending invite.
  Future<void> revoke(String storeId, String inviteId) async {
    try {
      await client.delete('/$table/$storeId/invites/$inviteId');
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response?.data);
      }
      rethrow;
    }
  }

  /// Pending invites for the signed-in user's email (GET /me/store-invites).
  Future<List<StoreInvite>> listPendingForMe() async {
    try {
      final res = await client.get('/me/store-invites');
      final list = res.data as List;
      return list
          .map((e) => StoreInvite.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response?.data);
      }
      rethrow;
    }
  }

  /// Invitee declines a pending invite (POST .../decline).
  Future<void> decline(String storeId, String inviteId) async {
    try {
      await client.post('/$table/$storeId/invites/$inviteId/decline');
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response?.data);
      }
      rethrow;
    }
  }

  /// Accepts an invite. Authenticated user's email must match invite email.
  Future<StoreMember> accept(
    String storeId,
    String inviteId,
    String token,
  ) async {
    try {
      final res = await client.post(
        '/$table/$storeId/invites/$inviteId/accept',
        data: {'token': token},
      );
      return StoreMember.fromJson(res.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response?.data);
      }
      rethrow;
    }
  }
}
