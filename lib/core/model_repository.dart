import 'dart:async';

import 'package:dio/dio.dart';

import 'package:feeef/core/batch_models.dart';
import 'package:feeef/core/feeef_storage.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/realtime/realtime.dart';

/// Base repository for API-backed models.
///
/// Subclasses implement [modelFromJson] / [modelToJson] and compose
/// [ModelCreateMixin], [ModelUpdateMixin], etc. as needed.
///
/// [modelFindStreamController] is shared by [ModelFindMixin] and [ModelUpdateMixin]
/// so that both find() and update() results are emitted on [modelFindStream].
///
/// Optional [getPushToken] is used by [ModelAuthMixin] to obtain a push token
/// (e.g. FCM) for auth flows. The SDK does not depend on Firebase; the app
/// provides this callback if it uses push notifications.
abstract class ModelRepository<T extends Model> {
  final String table;
  final Dio client;
  final Realtime? realtime;

  /// Optional callback to obtain the current push token (e.g. FCM).
  /// Used when signing in/up to register the device for push. If null, no
  /// token is sent (e.g. app does not use push or uses a different provider).
  final Future<String?> Function()? getPushToken;

  /// Optional persistent storage for auth (token, user). Required for [ModelAuthMixin].
  /// The SDK does not depend on Flutter or shared_preferences; the app provides this.
  final FeeefStorage? storage;

  /// Shared stream controller for find and update results (used by mixins).
  StreamController<T>? modelFindStreamController;

  CancelToken? _modelFindCancelToken;

  /// Shared cancel token for find (used by [ModelFindMixin] and [ModelUpdateMixin]).
  CancelToken get modelFindCancelToken =>
      _modelFindCancelToken ??= CancelToken();

  ModelRepository({
    required this.client,
    required this.table,
    this.realtime,
    this.getPushToken,
    this.storage,
  });

  Stream<T> get modelFindStream =>
      (modelFindStreamController ??= StreamController<T>.broadcast()).stream;

  T modelFromJson(dynamic json);
  Map<String, dynamic> modelToJson(T model);

  /// Batch delete by resource name/id (`POST /{table}:batchDelete`).
  ///
  /// Override via [ModelDeleteManyMixin] on repositories that support it.
  Future<BatchResult<T>> deleteMany({required BatchDeleteRequest request}) {
    throw UnimplementedError('deleteMany is not supported for $table');
  }

  /// Batch update with field mask (`POST /{table}:batchUpdate`).
  Future<BatchResult<T>> updateMany({required BatchUpdateManyRequest request}) {
    throw UnimplementedError('updateMany is not supported for $table');
  }

  /// Batch create (`POST /{table}:batchCreate`).
  Future<BatchResult<T>> createMany({required BatchCreateManyRequest request}) {
    throw UnimplementedError('createMany is not supported for $table');
  }

  /// POST a batch action and parse the partial-success envelope (200 or 400 body).
  Future<BatchResult<R>> postBatch<R>({
    required String path,
    required Map<String, dynamic> body,
    R Function(Map<String, dynamic> json)? resourceFromJson,
  }) async {
    try {
      final response = await client.post(path, data: body);
      return BatchResult.fromJson(
        response.data,
        resourceFromJson: resourceFromJson,
      );
    } on DioException catch (e) {
      if (e.response?.data != null) {
        return BatchResult.fromJson(
          e.response!.data,
          resourceFromJson: resourceFromJson,
        );
      }
      rethrow;
    }
  }

  /// `POST /{table}:{action}` for resource-specific batch ops (e.g. `:batchRelease`).
  Future<BatchResult<R>> postBatchAction<R>({
    required String action,
    required Map<String, dynamic> body,
    R Function(Map<String, dynamic> json)? resourceFromJson,
  }) =>
      postBatch<R>(
        path: '/$table:$action',
        body: body,
        resourceFromJson: resourceFromJson,
      );
}
