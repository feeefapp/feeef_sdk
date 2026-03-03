import 'dart:async';

import 'package:dio/dio.dart';

import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/realtime/realtime.dart';

/// Base repository for API-backed models.
///
/// Subclasses implement [modelFromJson] / [modelToJson] and compose
/// [ModelCreateMixin], [ModelUpdateMixin], etc. as needed.
///
/// [modelFindStreamController] is shared by [ModelFindMixin] and [ModelUpdateMixin]
/// so that both find() and update() results are emitted on [modelFindStream].
abstract class ModelRepository<T extends Model> {
  final String table;
  final Dio client;
  final Realtime? realtime;

  /// Shared stream controller for find and update results (used by mixins).
  StreamController<T>? modelFindStreamController;

  CancelToken? _modelFindCancelToken;

  /// Shared cancel token for find (used by [ModelFindMixin] and [ModelUpdateMixin]).
  CancelToken get modelFindCancelToken =>
      _modelFindCancelToken ??= CancelToken();

  ModelRepository({required this.client, required this.table, this.realtime});

  Stream<T> get modelFindStream =>
      (modelFindStreamController ??= StreamController<T>.broadcast()).stream;

  T modelFromJson(dynamic json);
  Map<String, dynamic> modelToJson(T model);
}
