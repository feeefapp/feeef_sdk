/// Currency entity interface
abstract class CurrencyEntity {
  /// ISO 4217 currency code (e.g., USD, EUR, DZD)
  abstract final String code;

  /// Currency name (e.g., US Dollar, Euro, Algerian Dinar)
  abstract final String name;

  /// Currency symbol (e.g., $, €, د.ج)
  abstract final String? symbol;

  /// Number of decimal places for this currency (0-8)
  abstract final int decimals;

  /// Exchange rate to USD (1 USD = rate * this currency)
  abstract final num rate;

  /// Additional metadata as key-value pairs
  abstract final Map<String, dynamic>? metadata;

  /// Creation timestamp
  abstract final DateTime createdAt;
}
