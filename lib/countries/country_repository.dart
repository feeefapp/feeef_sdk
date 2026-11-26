import 'package:feeef/countries/models/country.dart';
import 'package:feeef/feeef.dart';

/// Read-only repository for the Feeef Cloud country catalog.
///
/// List: `GET /countries`. The backend exposes no write routes for geography.
class CountryRepository extends ModelRepository<Country>
    with ModelListMixin<Country> {
  CountryRepository({required super.client}) : super(table: 'countries');

  @override
  Country modelFromJson(json) => Country.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(Country model) => model.toJson();
}
