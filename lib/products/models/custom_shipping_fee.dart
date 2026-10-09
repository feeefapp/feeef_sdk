/// Product custom shipping fee (shipping P2, backend `products.custom_shipping_fee`).
///
/// Overrides the courier account rate for one product:
/// `{home?, desk?, states?: {<stateCode>: {home?, desk?}}}`; `null` = no override.
/// A state entry wins over the flat value, per field. State keys are the
/// order's `shippingState` code as stored on orders (e.g. `"16"`); the
/// backend looks them up verbatim.
///
/// Parsing is lenient: a JSON string, numeric strings, wrong types and unknown
/// keys never throw; invalid amounts are dropped.
library;

import 'dart:convert';

/// A home / desk amount pair. A null side falls through to the next level.
class ShippingFeePair {
  const ShippingFeePair({this.home, this.desk});

  final num? home;
  final num? desk;

  bool get isEmpty => home == null && desk == null;

  /// Amount for one delivery column (`home: true` = home, else desk).
  num? amountFor({required bool home}) => home ? this.home : desk;

  static ShippingFeePair? tryParse(Object? value) {
    final map = _jsonObject(value);
    if (map == null) return null;
    return ShippingFeePair(
      home: _amount(map['home']),
      desk: _amount(map['desk']),
    );
  }

  /// Omits null sides.
  Map<String, dynamic> toJson() => {
        if (home != null) 'home': home,
        if (desk != null) 'desk': desk,
      };

  ShippingFeePair copyWith({
    num? Function()? home,
    num? Function()? desk,
  }) =>
      ShippingFeePair(
        home: home == null ? this.home : home(),
        desk: desk == null ? this.desk : desk(),
      );

  @override
  bool operator ==(Object other) =>
      other is ShippingFeePair && other.home == home && other.desk == desk;

  @override
  int get hashCode => Object.hash(home, desk);

  @override
  String toString() => 'ShippingFeePair(home: $home, desk: $desk)';
}

/// `Product.customShippingFee`.
class CustomShippingFee {
  const CustomShippingFee({
    this.home,
    this.desk,
    this.states = const {},
  });

  final num? home;
  final num? desk;

  /// Per-state overrides keyed by the order state code (e.g. `"16"`).
  final Map<String, ShippingFeePair> states;

  /// Nothing set anywhere (no flat amount and no non-empty state entry).
  bool get isEmpty =>
      home == null && desk == null && states.values.every((p) => p.isEmpty);

  /// States with at least one amount.
  int get customisedStateCount =>
      states.values.where((p) => !p.isEmpty).length;

  /// Lenient parse; returns null for null / invalid input.
  static CustomShippingFee? tryParse(Object? value) {
    final map = _jsonObject(value);
    if (map == null) return null;
    final states = <String, ShippingFeePair>{};
    final rawStates = _jsonObject(map['states']);
    if (rawStates != null) {
      for (final entry in rawStates.entries) {
        final key = entry.key.trim();
        final pair = ShippingFeePair.tryParse(entry.value);
        if (key.isEmpty || pair == null) continue;
        states[key] = pair;
      }
    }
    return CustomShippingFee(
      home: _amount(map['home']),
      desk: _amount(map['desk']),
      states: states,
    );
  }

  /// Wire shape: null sides omitted, empty state entries dropped, empty
  /// `states` omitted.
  Map<String, dynamic> toJson() {
    final nonEmpty = {
      for (final e in states.entries)
        if (!e.value.isEmpty) e.key: e.value.toJson(),
    };
    return {
      if (home != null) 'home': home,
      if (desk != null) 'desk': desk,
      if (nonEmpty.isNotEmpty) 'states': nonEmpty,
    };
  }

  /// `null` when [isEmpty] (what the API should store), else this value
  /// without empty state entries.
  CustomShippingFee? normalized() {
    if (isEmpty) return null;
    return CustomShippingFee(
      home: home,
      desk: desk,
      states: {
        for (final e in states.entries)
          if (!e.value.isEmpty) e.key: e.value,
      },
    );
  }

  /// The product's fee for a destination, or null when it has none
  /// (state entry first, then the flat amount; same as the backend).
  num? feeFor({required bool home, String? stateCode}) {
    final key = stateCode?.trim() ?? '';
    final byState = key.isEmpty ? null : states[key];
    return byState?.amountFor(home: home) ??
        (home ? this.home : desk);
  }

  CustomShippingFee copyWith({
    num? Function()? home,
    num? Function()? desk,
    Map<String, ShippingFeePair>? states,
  }) =>
      CustomShippingFee(
        home: home == null ? this.home : home(),
        desk: desk == null ? this.desk : desk(),
        states: states ?? this.states,
      );

  @override
  bool operator ==(Object other) {
    if (other is! CustomShippingFee) return false;
    if (other.home != home || other.desk != desk) return false;
    if (other.states.length != states.length) return false;
    for (final e in states.entries) {
      if (other.states[e.key] != e.value) return false;
    }
    return true;
  }

  @override
  int get hashCode => Object.hash(
        home,
        desk,
        Object.hashAllUnordered(
          states.entries.map((e) => Object.hash(e.key, e.value)),
        ),
      );

  @override
  String toString() =>
      'CustomShippingFee(home: $home, desk: $desk, states: $states)';
}

/// json_serializable reader for `customShippingFee`.
CustomShippingFee? customShippingFeeFromJson(Object? value) =>
    CustomShippingFee.tryParse(value);

/// json_serializable writer for `customShippingFee` (null stays null).
Map<String, dynamic>? customShippingFeeToJson(CustomShippingFee? value) =>
    value?.toJson();

Map<String, dynamic>? _jsonObject(Object? value) {
  if (value is Map<String, dynamic>) return value;
  if (value is Map) {
    return {for (final e in value.entries) '${e.key}': e.value};
  }
  if (value is String && value.trim().startsWith('{')) {
    try {
      return _jsonObject(jsonDecode(value));
    } catch (_) {
      return null;
    }
  }
  return null;
}

num? _amount(Object? value) {
  num? n;
  if (value is num) {
    n = value;
  } else if (value is String) {
    n = num.tryParse(value.trim());
  }
  if (n == null || !n.isFinite || n < 0) return null;
  return n;
}
