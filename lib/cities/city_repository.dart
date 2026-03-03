import 'package:feeef/cities/models/city.dart';
import 'package:feeef/feeef.dart';

/// Repository for managing city data
///
/// Cities have composite keys (countryCode + stateCode + name) and are nested under states.
/// Provides operations including:
/// - List cities for a state
/// - Find city by composite key
/// - Create new city
/// - Update existing city
/// - Delete city
/// - Global search across all cities
class CityRepository extends ModelRepository<City>
    with
        ModelCreateMixin<City, CityCreate>,
        ModelListMixin<City>,
        ModelDeleteMixin<City>,
        ModelUpdateMixin<City, CityUpdate> {
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
}
