import 'dart:convert';

/// One parcel of an order's shipping (`orders.shipping_breakdown`, and
/// `shipping.breakdown` from `POST /orders/calculate`): the items of one
/// courier account and their fee.
class ShippingBreakdownEntry {
  const ShippingBreakdownEntry({
    this.carrierAccountId,
    this.items = const [],
    this.fee,
  });

  /// `ca_…` the parcel ships with; null when priced by the unassigned fee
  /// card or the cheapest courier.
  final String? carrierAccountId;

  /// Product ids in this parcel.
  final List<String> items;

  /// Parcel fee; null when nobody could price it.
  final num? fee;

  /// Lenient parse: numeric strings, a missing `items` list and unknown keys
  /// are tolerated. Returns null for anything that is not a map.
  static ShippingBreakdownEntry? tryParse(Object? value) {
    if (value is! Map) return null;
    final rawId = value['carrierAccountId'];
    final id = rawId is String && rawId.trim().isNotEmpty ? rawId.trim() : null;
    final rawItems = value['items'];
    final items = <String>[
      if (rawItems is List)
        for (final item in rawItems)
          if (item is String && item.isNotEmpty)
            item
          else if (item is Map && item['productId'] is String)
            item['productId'] as String,
    ];
    final rawFee = value['fee'];
    final fee = rawFee is num
        ? rawFee
        : rawFee is String
        ? num.tryParse(rawFee.trim())
        : null;
    return ShippingBreakdownEntry(carrierAccountId: id, items: items, fee: fee);
  }

  Map<String, dynamic> toJson() => {
    'carrierAccountId': carrierAccountId,
    'items': items,
    'fee': fee,
  };

  @override
  bool operator ==(Object other) =>
      other is ShippingBreakdownEntry &&
      other.carrierAccountId == carrierAccountId &&
      other.fee == fee &&
      other.items.length == items.length &&
      Iterable<int>.generate(items.length).every(
        (i) => other.items[i] == items[i],
      );

  @override
  int get hashCode => Object.hash(carrierAccountId, fee, Object.hashAll(items));

  @override
  String toString() =>
      'ShippingBreakdownEntry($carrierAccountId, $items, fee: $fee)';
}

/// Parses a breakdown list (also a JSON-encoded string); null when absent or
/// not a list. Entries that are not maps are dropped.
List<ShippingBreakdownEntry>? shippingBreakdownFromJson(Object? value) {
  var raw = value;
  if (raw is String) {
    try {
      raw = jsonDecode(raw);
    } catch (_) {
      return null;
    }
  }
  if (raw is! List) return null;
  return [
    for (final entry in raw)
      if (ShippingBreakdownEntry.tryParse(entry) case final parsed?) parsed,
  ];
}

Object? shippingBreakdownToJson(List<ShippingBreakdownEntry>? value) =>
    value?.map((e) => e.toJson()).toList();
