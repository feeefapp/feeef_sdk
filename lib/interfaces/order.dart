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

// ShippingType
enum ShippingType {
  home,
  pickup,
  store;

  String get tr => switch (this) {
    ShippingType.home => 'إلى المنزل',
    ShippingType.pickup => 'إلى المكتب',
    ShippingType.store => 'إلى المتجر',
  };
}
