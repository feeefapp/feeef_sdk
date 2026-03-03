import 'package:feeef/interfaces/embadded/order_item.dart';
import 'package:feeef/interfaces/shipping_method.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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

  Color get color {
    switch (this) {
      case OrderStatus.draft:
        return Colors.grey;
      case OrderStatus.pending:
        return Colors.orange;
      case OrderStatus.review:
        return Colors.teal;
      case OrderStatus.accepted:
        return Colors.green;
      case OrderStatus.processing:
        return Colors.blue;
      case OrderStatus.completed:
        return Colors.green;
      case OrderStatus.cancelled:
        return Colors.red;
      default:
        return Colors.black;
    }
  }

  // icon
  IconData get icon {
    switch (this) {
      case OrderStatus.draft:
        return PhosphorIconsRegular.fileText;
      case OrderStatus.pending:
        return PhosphorIconsRegular.clock;
      case OrderStatus.review:
        // thinking or time
        return PhosphorIconsRegular.eye;
      case OrderStatus.accepted:
        return PhosphorIconsRegular.checkCircle;
      case OrderStatus.processing:
        return PhosphorIconsRegular.hourglassSimple;
      case OrderStatus.completed:
        return PhosphorIconsRegular.checks;
      case OrderStatus.cancelled:
        return PhosphorIconsRegular.xCircle;
    }
  }

  String get tr => name;
}

// PaymentStatus
enum PaymentStatus {
  unpaid,
  paid,
  received;

  Color get color {
    switch (this) {
      case PaymentStatus.unpaid:
        return Colors.red;
      case PaymentStatus.paid:
        return Colors.green;
      case PaymentStatus.received:
        return Colors.blue;
      default:
        return Colors.black;
    }
  }

  IconData get icon {
    switch (this) {
      case PaymentStatus.unpaid:
        return Icons.money_off;
      case PaymentStatus.paid:
        return Icons.attach_money;
      case PaymentStatus.received:
        return Icons.account_balance_wallet;
    }
  }

  String get tr => name;
}

// DeliveryStatus
enum DeliveryStatus {
  pending,
  delivering,
  delivered,
  returned;

  Color get color {
    switch (this) {
      case DeliveryStatus.pending:
        return Colors.orange;
      case DeliveryStatus.delivering:
        return Colors.blue;
      case DeliveryStatus.delivered:
        return Colors.green;
      case DeliveryStatus.returned:
        return Colors.red;
      default:
        return Colors.black;
    }
  }

  IconData get icon {
    switch (this) {
      case DeliveryStatus.pending:
        return Icons.access_time;
      case DeliveryStatus.delivering:
        return Icons.local_shipping;
      case DeliveryStatus.delivered:
        return Icons.check_circle;
      case DeliveryStatus.returned:
        return Icons.undo;
    }
  }

  String get tr => name;
}

// ShippingType
enum ShippingType {
  home,
  pickup,
  store;

  Color get color {
    switch (this) {
      case ShippingType.home:
        return Colors.blue;
      case ShippingType.pickup:
        return Colors.orange;
      case ShippingType.store:
        return Colors.green;
      default:
        return Colors.black;
    }
  }

  IconData get icon {
    switch (this) {
      case ShippingType.home:
        return PhosphorIconsThin.house;
      case ShippingType.pickup:
        return PhosphorIconsThin.truck;
      case ShippingType.store:
        return PhosphorIconsThin.storefront;
    }
  }

  String get tr => name;
}
