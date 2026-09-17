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
  Map<String, dynamic>? get claims; // System-only security data
  List<String> get references;
  OrderStatus get status;
  PaymentStatus get paymentStatus;
  DeliveryStatus get deliveryStatus;
  String? get customStatus;

  /// Opencod v1 — catalog status id (primary when FEEEF_ORDERS_V1_ENABLED).
  String? get statusId;

  /// Opencod v1 room: draft | open | pack | ship | done | fail
  String? get room;

  /// Opencod v1 kind token
  String? get kind;

  /// Opencod closeAs: none | done | fail
  String? get closeAs;

  /// Opencod cash token
  String? get cash;

  /// Opencod stock token
  String? get stock;

  DateTime get createdAt;
  DateTime get updatedAt;
  /// Optional schedule date. When set, list sort/filters use [effectiveAt].
  DateTime? get scheduledAt;
  /// Server COALESCE(scheduledAt, createdAt). Falls back to [createdAt] if absent.
  DateTime? get effectiveAt;
  StoreEntity? get store;
  ShippingMethodEntity? get shippingMethod;
}

/// Dual-write fulfillment column until 2027-01-15.
///
/// Merchant pickers must use Orders v1 `statusId` / `room` / `kind`. Inventory,
/// confirmation, pixels, and finance still read this enum from the reverse-write
/// in `applyOrderSticker`. Do not offer [OrderStatus.values] in UI menus.
enum OrderStatus {
  draft,
  pending,
  review,
  accepted,
  /// Confirmed, but still needs merchant action before [processing] / [completed].
  followup,
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
