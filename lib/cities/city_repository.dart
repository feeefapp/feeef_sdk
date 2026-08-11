import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/cities/models/city.dart';
import 'package:dio/dio.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/interfaces/helpers.dart';

/// Repository for city CRUD via filterator-friendly [ResourceRepository].
///
/// List: `GET /cities?countryCode=DZ&stateCode=16&q=…`
/// Mutate: nested under country + state (composite key).
class CityRepository
    extends ResourceRepository<City, CityCreate, CityUpdate> {
  CityRepository({required super.client}) : super(table: 'cities');

  @override
  CityCreate createFromJson(json) => CityCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(CityCreate model) => model.toJson();

  @override
  City modelFromJson(json) => City.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(City model) => model.toJson();

  @override
  CityUpdate updateFromJson(json) => CityUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(CityUpdate model) => model.toJson();

  /// Creates under `POST /countries/:cc/states/:sc/cities`.
  @override
  Future<City> create({
    required CityCreate data,
    Map<String, dynamic>? params,
  }) async {
    try {
      final response = await client.post(
        '/countries/${data.countryCode}/states/${data.stateCode}/cities',
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

  /// Updates via `PUT /countries/:cc/states/:sc/cities/:name`.
  ///
  /// [id] is composite `countryCode-stateCode-name` (see [City.id]).
  @override
  Future<City> update({
    required String id,
    City? old,
    required CityUpdate data,
    Map<String, dynamic>? params,
  }) async {
    final countryCode =
        params?['countryCode']?.toString() ?? old?.countryCode;
    final stateCode = params?['stateCode']?.toString() ?? old?.stateCode;
    final name = old?.name ?? _cityNameFromCompositeId(id);
    if (countryCode == null ||
        countryCode.isEmpty ||
        stateCode == null ||
        stateCode.isEmpty ||
        name.isEmpty) {
      throw ArgumentError(
        'City update requires countryCode, stateCode, and name',
      );
    }
    try {
      final body = <String, dynamic>{
        ...data.toUpdateJson(),
        if (params != null) ...params,
      }
        ..remove('countryCode')
        ..remove('stateCode');
      final response = await client.put(
        '/countries/$countryCode/states/$stateCode/cities/${Uri.encodeComponent(name)}',
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

  /// Composite id is `countryCode-stateCode-name` (name may contain `-`).
  static String _cityNameFromCompositeId(String id) {
    final parts = id.split('-');
    if (parts.length < 3) return id;
    return parts.sublist(2).join('-');
  }
}
