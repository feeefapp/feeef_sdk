/// How an order address was matched to Cloud geography.
enum OrderGeoMatchMethod {
  /// State / city picked from Cloud lists.
  list,

  /// Typed text matched by Cloud.
  resolve,

  /// Not matched.
  none;

  static OrderGeoMatchMethod? tryParse(Object? raw) => switch (raw) {
    'list' => OrderGeoMatchMethod.list,
    'resolve' => OrderGeoMatchMethod.resolve,
    'none' => OrderGeoMatchMethod.none,
    _ => null,
  };
}

/// Server-set geo match of an order address ([Order.shippingGeo]). Read-only.
///
/// When [matched] is false the order keeps the typed text.
class OrderGeoMatch {
  const OrderGeoMatch({
    this.matched = false,
    this.method = OrderGeoMatchMethod.none,
    this.stateCode,
    this.cityName,
    this.confidence,
  });

  final bool matched;
  final OrderGeoMatchMethod method;

  /// Cloud state code, e.g. `"16"`.
  final String? stateCode;

  /// Cloud city name key.
  final String? cityName;

  /// Match confidence; null for [OrderGeoMatchMethod.list].
  final num? confidence;

  /// Lenient parse. Returns null for anything that is not a map.
  static OrderGeoMatch? tryParse(Object? value) {
    if (value is! Map) return null;
    final rawConfidence = value['confidence'];
    return OrderGeoMatch(
      matched: value['matched'] == true,
      method:
          OrderGeoMatchMethod.tryParse(value['method']) ??
          OrderGeoMatchMethod.none,
      stateCode: value['stateCode'] is String
          ? value['stateCode'] as String
          : null,
      cityName: value['cityName'] is String
          ? value['cityName'] as String
          : null,
      confidence: rawConfidence is num
          ? rawConfidence
          : rawConfidence is String
          ? num.tryParse(rawConfidence.trim())
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
    'matched': matched,
    'method': method.name,
    'stateCode': stateCode,
    'cityName': cityName,
    'confidence': confidence,
  };

  @override
  bool operator ==(Object other) =>
      other is OrderGeoMatch &&
      other.matched == matched &&
      other.method == method &&
      other.stateCode == stateCode &&
      other.cityName == cityName &&
      other.confidence == confidence;

  @override
  int get hashCode =>
      Object.hash(matched, method, stateCode, cityName, confidence);

  @override
  String toString() =>
      'OrderGeoMatch($matched, ${method.name}, $stateCode, $cityName, $confidence)';
}

OrderGeoMatch? orderGeoMatchFromJson(Object? value) =>
    OrderGeoMatch.tryParse(value);

Object? orderGeoMatchToJson(OrderGeoMatch? value) => value?.toJson();
