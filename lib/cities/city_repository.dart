import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/cities/models/city.dart';

/// Read-only repository for the Feeef Cloud city catalog.
///
/// List: `GET /cities?countryCode=DZ&stateCode=16&q=…`
///
/// The backend exposes no write routes for geography; [create], [update] and
/// [delete] throw [UnsupportedError]. The class still extends
/// [ResourceRepository] so generic resource views can list it.
class CityRepository extends ResourceRepository<City, CityCreate, CityUpdate> {
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

  @override
  Future<City> create({
    required CityCreate data,
    Map<String, dynamic>? params,
  }) => throw UnsupportedError(_readOnly);

  @override
  Future<City> update({
    required String id,
    City? old,
    required CityUpdate data,
    Map<String, dynamic>? params,
  }) => throw UnsupportedError(_readOnly);

  @override
  Future<void> delete({required String id, Map<String, dynamic>? params}) =>
      throw UnsupportedError(_readOnly);

  static const _readOnly =
      'Cities are a read-only Feeef Cloud catalog (no write routes).';
}
