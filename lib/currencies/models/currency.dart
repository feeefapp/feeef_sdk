import 'package:feeef/interfaces/currency.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

/// Currency model representing a monetary currency with exchange rate
@freezed
abstract class Currency extends CurrencyEntity
    with _$Currency
    implements Model, ModelMetadata {
  Currency._();

  factory Currency({
    /// ISO 4217 currency code (e.g., USD, EUR, DZD)
    required String code,

    /// Currency name (e.g., US Dollar, Euro, Algerian Dinar)
    required String name,

    /// Currency symbol (e.g., $, €, د.ج)
    String? symbol,

    /// Number of decimal places for this currency (0-8)
    required int decimals,

    /// Exchange rate to USD (1 USD = rate * this currency)
    required num rate,

    /// Additional metadata as key-value pairs
    @Default({}) Map<String, dynamic> metadata,

    /// Creation timestamp
    required DateTime createdAt,
  }) = _Currency;

  /// ID getter returns the currency code
  String get id => code;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}

/// Currency creation request
@freezed
abstract class CurrencyCreate with _$CurrencyCreate implements ModelCreate {
  const factory CurrencyCreate({
    /// ISO 4217 currency code (e.g., USD, EUR, DZD)
    required String code,

    /// Currency name (e.g., US Dollar, Euro, Algerian Dinar)
    required String name,

    /// Currency symbol (e.g., $, €, د.ج)
    String? symbol,

    /// Number of decimal places for this currency (0-8)
    required int decimals,

    /// Exchange rate to USD (1 USD = rate * this currency)
    required num rate,

    /// Additional metadata as key-value pairs
    @Default({}) Map<String, dynamic>? metadata,
  }) = _CurrencyCreate;

  factory CurrencyCreate.fromJson(Map<String, dynamic> json) =>
      _$CurrencyCreateFromJson(json);
}

/// Currency update request
@freezed
abstract class CurrencyUpdate with _$CurrencyUpdate implements ModelUpdate {
  const factory CurrencyUpdate({
    /// Currency name (e.g., US Dollar, Euro, Algerian Dinar)
    String? name,

    /// Currency symbol (e.g., $, €, د.ج)
    String? symbol,

    /// Number of decimal places for this currency (0-8)
    int? decimals,

    /// Exchange rate to USD (1 USD = rate * this currency)
    num? rate,

    /// Additional metadata as key-value pairs
    Map<String, dynamic>? metadata,
    @Default([]) List<String> setToNull,
  }) = _CurrencyUpdate;

  factory CurrencyUpdate.fromJson(Map<String, dynamic> json) =>
      _$CurrencyUpdateFromJson(json);
}
