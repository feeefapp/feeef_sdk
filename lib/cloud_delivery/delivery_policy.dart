/// What a commune without a pickup desk does at checkout.
enum NoDeskCityPolicy {
  /// Pickup stays on; the parcel goes to the closest commune that has a desk.
  nearest,

  /// Pickup is not offered there (home delivery only).
  block;

  static NoDeskCityPolicy? tryParse(Object? raw) => switch (raw) {
        'nearest' => NoDeskCityPolicy.nearest,
        'block' => NoDeskCityPolicy.block,
        _ => null,
      };
}

/// Delivery policy: which types are offered and the no-desk rule.
///
/// Every field is nullable = inherit. A courier account override inherits from the
/// store (`store.configs.delivery`), the store from the platform default
/// ([DeliveryPolicy.platformDefault]).
class DeliveryPolicy {
  const DeliveryPolicy({this.home, this.pickup, this.noDeskCity});

  static const platformDefault = DeliveryPolicy(
    home: true,
    pickup: true,
    noDeskCity: NoDeskCityPolicy.nearest,
  );

  final bool? home;
  final bool? pickup;
  final NoDeskCityPolicy? noDeskCity;

  bool get isEmpty => home == null && pickup == null && noDeskCity == null;

  static DeliveryPolicy? fromJsonOrNull(Object? raw) {
    if (raw is! Map) return null;
    final policy = DeliveryPolicy(
      home: raw['home'] is bool ? raw['home'] as bool : null,
      pickup: raw['pickup'] is bool ? raw['pickup'] as bool : null,
      noDeskCity: NoDeskCityPolicy.tryParse(raw['noDeskCity']),
    );
    return policy.isEmpty ? null : policy;
  }

  factory DeliveryPolicy.fromJson(Map<String, dynamic> json) =>
      fromJsonOrNull(json) ?? const DeliveryPolicy();

  Map<String, dynamic> toJson() => {
        if (home != null) 'home': home,
        if (pickup != null) 'pickup': pickup,
        if (noDeskCity != null) 'noDeskCity': noDeskCity!.name,
      };

  /// Fields set here win over [fallback].
  DeliveryPolicy over(DeliveryPolicy? fallback) => DeliveryPolicy(
        home: home ?? fallback?.home,
        pickup: pickup ?? fallback?.pickup,
        noDeskCity: noDeskCity ?? fallback?.noDeskCity,
      );

  /// Effective policy: [account] over [store] over the platform default.
  static DeliveryPolicy resolve(DeliveryPolicy? store, [DeliveryPolicy? account]) =>
      (account ?? const DeliveryPolicy())
          .over((store ?? const DeliveryPolicy()).over(platformDefault));

  DeliveryPolicy copyWith({
    bool? home,
    bool? pickup,
    NoDeskCityPolicy? noDeskCity,
  }) =>
      DeliveryPolicy(
        home: home ?? this.home,
        pickup: pickup ?? this.pickup,
        noDeskCity: noDeskCity ?? this.noDeskCity,
      );

  @override
  bool operator ==(Object other) =>
      other is DeliveryPolicy &&
      other.home == home &&
      other.pickup == pickup &&
      other.noDeskCity == noDeskCity;

  @override
  int get hashCode => Object.hash(home, pickup, noDeskCity);
}
