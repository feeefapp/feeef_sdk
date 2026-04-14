/// Shipping Price Entity Interface
///
/// A simplified, country-aware shipping pricing system that replaces
/// the legacy array-based shipping rates with a structured approach.
abstract class ShippingPriceEntity {
  /// Display name for this pricing configuration
  String get name;

  /// Optional logo URL for branding
  String? get logoUrl;

  /// Store this pricing belongs to
  String get storeId;

  /// Pricing data structured by country and state codes.
  /// Format: { [countryCode]: { [stateCode]: { home, desk, pickup } } }
  Map<String, Map<String, ShippingStateRates>> get prices;

  /// Publication status
  ShippingPriceStatus get status;
}

/// Individual state shipping rates with named price types.
class ShippingStateRates {
  /// Price for home delivery (nullable if unavailable)
  final num? home;

  /// Stopdesk / carrier relay office in the region (nullable if unavailable).
  ///
  /// Billed when the order's shipping type is `pickup` (customer collects at the hub/stopdesk).
  final num? desk;

  /// Merchant store branch pickup (nullable if unavailable).
  ///
  /// Billed when the order's shipping type is `store`.
  final num? pickup;

  const ShippingStateRates({this.home, this.desk, this.pickup});

  factory ShippingStateRates.fromJson(Map<String, dynamic> json) {
    return ShippingStateRates(
      home: json['home'] != null ? (json['home'] as num) : null,
      desk: json['desk'] != null ? (json['desk'] as num) : null,
      pickup: json['pickup'] != null ? (json['pickup'] as num) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {'home': home, 'desk': desk, 'pickup': pickup};
  }
}

/// Status of the shipping price configuration.
enum ShippingPriceStatus {
  /// Not yet published, only visible to store owner
  draft,

  /// Active and used for shipping calculations
  published,
}
