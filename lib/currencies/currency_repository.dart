import 'package:dio/dio.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/currencies/models/currency.dart';
import 'package:feeef/feeef.dart';

/// Repository for managing currency data
///
/// Provides CRUD operations for currencies including:
/// - List all currencies with filtering
/// - Find currency by code
/// - Create new currency
/// - Update existing currency
/// - Delete currency
class CurrencyRepository extends ModelRepository<Currency>
    with
        ModelCreateMixin<Currency, CurrencyCreate>,
        ModelListMixin<Currency>,
        ModelDeleteMixin<Currency>,
        ModelUpdateMixin<Currency, CurrencyUpdate> {
  CurrencyRepository({required super.client}) : super(table: 'currencies');

  @override
  CurrencyCreate createFromJson(json) => CurrencyCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(CurrencyCreate model) => model.toJson();

  @override
  Currency modelFromJson(json) => Currency.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(Currency model) => model.toJson();

  @override
  CurrencyUpdate updateFromJson(json) => CurrencyUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(CurrencyUpdate model) => model.toJson();
}
