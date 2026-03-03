import 'package:dio/dio.dart';

import 'package:feeef/core/model_repository.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/mixins/auth_mixin.dart';
import 'package:feeef/mixins/repository_mixins.dart';
import 'package:feeef/users/models/user.dart';

/// Repository for User auth and profile (find, update, signin, signup, passkeys, transfer).
class UserRepository extends ModelRepository<User>
    with
        ModelAuthMixin<User>,
        ModelFindMixin<User>,
        ModelUpdateMixin<User, UserUpdate> {
  UserRepository({required super.client, super.realtime})
      : super(table: 'users');

  @override
  User modelFromJson(json) => User.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(User model) => model.toJson();

  @override
  UserUpdate updateFromJson(json) => UserUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(UserUpdate model) => model.toJson();

  @override
  Future<User> update({
    required String id,
    User? old,
    required UserUpdate data,
    Map<String, dynamic>? params,
  }) async {
    var user = await super.update(
      id: id,
      data: data.copyWith(
        photoUrl: "https://picsum.photos/200/300",
        verifiedAt: DateTime.now(),
      ),
      params: params,
    );
    if (auth?.user.id == user.id) {
      auth = auth!.copyWith(user: user);
    }
    return user;
  }

  Future<User> linkSocialAccount({
    required String provider,
    required String code,
  }) async {
    try {
      final response = await client.post(
        '/social/$provider/link/callback',
        data: {'code': code},
      );
      final user = User.fromJson(response.data['user']);
      if (auth?.user.id == user.id) {
        auth = auth!.copyWith(user: user);
      }
      return user;
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

  Future<User> unlinkSocialAccount({required String provider}) async {
    try {
      final response = await client.post(
        '/social/unlink',
        data: {'provider': provider},
      );
      final user = User.fromJson(response.data['user']);
      if (auth?.user.id == user.id) {
        auth = auth!.copyWith(user: user);
      }
      return user;
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

  Future<User?> searchUser({String? id, String? email, String? phone}) async {
    try {
      if (id != null) {
        return await find(id: id);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<Map<String, dynamic>> transferMoney({
    String? recipientId,
    String? recipientEmail,
    String? recipientPhone,
    required double amount,
    String? note,
  }) async {
    try {
      final data = <String, dynamic>{
        'amount': amount,
        if (note != null) 'note': note,
      };

      if (recipientId != null) {
        data['recipientId'] = recipientId;
      } else if (recipientEmail != null) {
        data['recipientEmail'] = recipientEmail;
      } else if (recipientPhone != null) {
        data['recipientPhone'] = recipientPhone;
      }

      final response = await client.post('/users/auth/transfer', data: data);
      final result = response.data as Map<String, dynamic>;

      if (auth?.user.id == result['sender']['id']) {
        final updatedSender = User.fromJson(result['sender']);
        auth = auth!.copyWith(user: updatedSender);
      }

      return result;
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
