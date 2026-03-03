import 'dart:async';
import 'dart:developer' as developer;

import 'package:dio/dio.dart';

import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/model_repository.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/interfaces/helpers.dart';

/// Parameters for an update operation (id + update payload).
typedef ModelUpdateParams<U extends ModelUpdate> = ({String id, U data});

mixin ModelCreateMixin<T extends Model, C extends ModelCreate>
    on ModelRepository<T> {
  final _modelCreateStreamController = StreamController<T>.broadcast();
  Stream<T> get modelCreateStream => _modelCreateStreamController.stream;
  final _modelCreateCancelToken = CancelToken();
  CancelToken get modelCreateCancelToken => _modelCreateCancelToken;

  Future<T> create({required C data, Map<String, dynamic>? params}) async {
    try {
      final response = await client.post(
        '/$table',
        data: {...data.toJson(), if (params != null) ...params},
        cancelToken: _modelCreateCancelToken,
      );
      var model = modelFromJson(response.data);
      _modelCreateStreamController.add(model);
      return model;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  C createFromJson(dynamic json);
  Map<String, dynamic> createToJson(C model);

  /// For custom create implementations (e.g. multipart) to notify create stream.
  void addToCreateStream(T model) => _modelCreateStreamController.add(model);
}

mixin ModelUpdateMixin<T extends Model, U extends ModelUpdate>
    on ModelRepository<T> {
  final _modelUpdateStreamController =
      StreamController<ModelUpdateParams<U>>.broadcast();
  Stream<ModelUpdateParams<U>> get modelUpdateStream =>
      _modelUpdateStreamController.stream;
  final _modelUpdateCancelToken = CancelToken();
  CancelToken get modelUpdateCancelToken => _modelUpdateCancelToken;

  Future<T> update({
    required String id,
    T? old,
    required U data,
    Map<String, dynamic>? params,
  }) async {
    try {
      Map<String, dynamic> jsonData = {...data.toUpdateJson()};
      var response = await client.put(
        '/$table/$id',
        data: {...jsonData, if (params != null) ...params},
        cancelToken: _modelUpdateCancelToken,
      );
      var model = modelFromJson({...response.data as Map<String, dynamic>});
      _modelUpdateStreamController.add((id: id, data: data));
      modelFindStreamController?.add(model);
      return model;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  U updateFromJson(dynamic json);
  Map<String, dynamic> updateToJson(U model);

  /// For custom update implementations (e.g. multipart) to notify update stream.
  void addToUpdateStream(String id, U data) =>
      _modelUpdateStreamController.add((id: id, data: data));
}

mixin ModelDeleteMixin<T extends Model> on ModelRepository<T> {
  final _modelDeleteStreamController = StreamController<String>.broadcast();
  Stream<String> get modelDeleteStream => _modelDeleteStreamController.stream;
  final _modelDeleteCancelToken = CancelToken();
  CancelToken get modelDeleteCancelToken => _modelDeleteCancelToken;

  Future<void> delete({
    required String id,
    Map<String, dynamic>? params,
  }) async {
    try {
      await client.delete('/$table/$id', cancelToken: _modelDeleteCancelToken);
      _modelDeleteStreamController.add(id);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }
}

mixin ModelFindMixin<T extends Model> on ModelRepository<T> {
  T? _modelFindModel;
  T? get modelFindModel => _modelFindModel;

  Future<T> find({required String id, Map<String, dynamic>? params}) async {
    final response = await client.get(
      '/$table/$id',
      queryParameters: params,
      cancelToken: modelFindCancelToken,
    );
    var model = modelFromJson(response.data);
    _modelFindModel = model;
    modelFindStreamController?.add(model);
    return model;
  }
}

mixin ModelListMixin<T extends Model> on ModelRepository<T> {
  final _modelListStreamController =
      StreamController<ListResponse<T>>.broadcast();
  Stream<ListResponse<T>> get modelListStream =>
      _modelListStreamController.stream;

  final _modelListCancelToken = CancelToken();
  CancelToken get modelListCancelToken => _modelListCancelToken;

  Future<ListResponse<T>> list({
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) async {
    developer.log('$table');
    final response = await client.get(
      '/$table',
      queryParameters: {
        if (page != null) 'page': page,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        if (params != null) ...params,
      },
      cancelToken: modelListCancelToken,
    );
    return ListResponse<T>.fromJson(response.data, modelFromJson);
  }
}
