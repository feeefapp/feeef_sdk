import 'package:dio/dio.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/countries/models/country.dart';
import 'package:feeef/feeef.dart';

/// Repository for managing country data
///
/// Provides CRUD operations for countries including:
/// - List all countries with filtering
/// - Find country by code
/// - Create new country
/// - Update existing country
/// - Delete country
class CountryRepository extends ModelRepository<Country>
    with
        ModelCreateMixin<Country, CountryCreate>,
        ModelListMixin<Country>,
        ModelDeleteMixin<Country>,
        ModelUpdateMixin<Country, CountryUpdate> {
  CountryRepository({required super.client}) : super(table: 'countries');

  @override
  CountryCreate createFromJson(json) => CountryCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(CountryCreate model) => model.toJson();

  @override
  Country modelFromJson(json) => Country.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(Country model) => model.toJson();

  @override
  CountryUpdate updateFromJson(json) => CountryUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(CountryUpdate model) => model.toJson();
}
