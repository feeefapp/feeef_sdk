import 'package:feeef/interfaces/embadded/order_item.dart';
import 'package:feeef/interfaces/shipping_method.dart';

import 'store.dart';

abstract class OrderEntity {
  String get id;
  String? get customerName;
  String? get customerPhone;
  String? get customerEmail;
  String? get customerNote;
  String? get customerIp;
  String? get shippingAddress;
  String? get shippingCity;
  String? get shippingState;
  String? get shippingCountry;
  String? get shippingMethodId;
  String? get shippingNote;
  ShippingType get shippingType;
  String? get paymentMethodId;
  List<OrderItem> get items;
  num get subtotal;
  num? get shippingPrice;
  num get total;
  num get discount;
  String? get coupon;
  String get storeId;
  String? get confirmerId;
  Map<String, dynamic> get metadata;
  List<String> get references;
  OrderStatus get status;
  PaymentStatus get paymentStatus;
  DeliveryStatus get deliveryStatus;
  String? get customStatus;
  DateTime get createdAt;
  DateTime get updatedAt;
  StoreEntity? get store;
  ShippingMethodEntity? get shippingMethod;
}

enum OrderStatus {
  draft,
  pending,
  review,
  accepted,
  processing,
  completed,
  cancelled;

  String get tr => name;
}

// PaymentStatus
enum PaymentStatus {
  unpaid,
  paid,
  received;

  String get tr => name;
}

// DeliveryStatus
enum DeliveryStatus {
  pending,
  delivering,
  delivered,
  returned;

  String get tr => name;
}

/// How the customer receives the order (API + order model).
///
/// Naming vs `ShippingStateRates` (shipping **price** rows): `pickup` here means stopdesk/relay
/// and maps to price field `desk`; `store` means collect at the merchant branch and maps to
/// price field `pickup`; `home` maps to price field `home`.
enum ShippingType {
  home,
  pickup,
  store;

  /// Short Arabic label for dashboards / legacy UIs (unchanged contract).
  String get tr => switch (this) {
        ShippingType.home => 'إلى المنزل',
        ShippingType.pickup => 'إلى المكتب',
        ShippingType.store => 'إلى المتجر',
      };
}

/// Canonical API values: `home`, `pickup`, `store`.
///
/// Also accepts **legacy** payloads that reused shipping-**price** names or carrier wording:
/// `desk`, `stopdesk`, `stop_desk` → [ShippingType.pickup]; `in_store` / `instore` → [ShippingType.store].
/// Unknown values default to [ShippingType.home].
ShippingType shippingTypeFromJson(Object? json) {
  if (json == null) return ShippingType.home;
  final raw = json.toString().trim();
  if (raw.isEmpty) return ShippingType.home;
  final s = raw.toLowerCase();
  switch (s) {
    case 'home':
      return ShippingType.home;
    case 'pickup':
    case 'desk':
    case 'stopdesk':
    case 'stop_desk':
    case 'relay':
    case 'pickup-point':
    case 'pickup_point':
      return ShippingType.pickup;
    case 'store':
    case 'in_store':
    case 'instore':
    case 'branch':
      return ShippingType.store;
    default:
      return ShippingType.home;
  }
}

String shippingTypeToJson(ShippingType value) => value.name;

/// Nullable variant for create/update DTOs.
ShippingType? shippingTypeNullableFromJson(Object? json) {
  if (json == null) return null;
  return shippingTypeFromJson(json);
}

String? shippingTypeNullableToJson(ShippingType? value) =>
    value == null ? null : shippingTypeToJson(value);
