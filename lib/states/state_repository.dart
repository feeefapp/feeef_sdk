import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/states/models/state.dart';
import 'package:dio/dio.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/interfaces/helpers.dart';

/// Repository for state/province CRUD via filterator-friendly [ResourceRepository].
///
/// List: `GET /states?countryCode=DZ&q=…`
/// Mutate: nested `…/countries/:countryCode/states/:code` (composite key).
class StateRepository
    extends ResourceRepository<State, StateCreate, StateUpdate> {
  StateRepository({required super.client}) : super(table: 'states');

  @override
  StateCreate createFromJson(json) => StateCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(StateCreate model) => model.toJson();

  @override
  State modelFromJson(json) => State.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(State model) => model.toJson();

  @override
  StateUpdate updateFromJson(json) => StateUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(StateUpdate model) => model.toJson();

  /// Creates under `POST /countries/:countryCode/states`.
  @override
  Future<State> create({
    required StateCreate data,
    Map<String, dynamic>? params,
  }) async {
    try {
      final response = await client.post(
        '/countries/${data.countryCode}/states',
        data: {...data.toJson(), if (params != null) ...params},
        cancelToken: modelCreateCancelToken,
      );
      final model = modelFromJson(response.data);
      addToCreateStream(model);
      return model;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response?.data);
      }
      rethrow;
    }
  }

  /// Updates via `PUT /countries/:countryCode/states/:code`.
  ///
  /// Pass [id] as composite `countryCode-code` (see [State.id]) or bare code
  /// with `params['countryCode']`.
  @override
  Future<State> update({
    required String id,
    State? old,
    required StateUpdate data,
    Map<String, dynamic>? params,
  }) async {
    final countryCode = params?['countryCode']?.toString() ??
        old?.countryCode ??
        (id.contains('-') ? id.split('-').first : null);
    final code = old?.code ??
        (id.contains('-') ? id.substring(id.indexOf('-') + 1) : id);
    if (countryCode == null || countryCode.isEmpty) {
      throw ArgumentError(
        'State update requires countryCode (params or composite id)',
      );
    }
    try {
      final body = <String, dynamic>{
        ...data.toUpdateJson(),
        if (params != null) ...params,
      }..remove('countryCode');
      final response = await client.put(
        '/countries/$countryCode/states/$code',
        data: body,
        cancelToken: modelUpdateCancelToken,
      );
      final model = modelFromJson(response.data);
      addToUpdateStream(id, data);
      modelFindStreamController?.add(model);
      return model;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response?.data);
      }
      rethrow;
    }
  }
}
