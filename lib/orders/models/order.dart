import 'package:feeef/interfaces/embadded/order_item.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:feeef/shipping_methods/models/shipping_method.dart';
import 'package:feeef/stores/models/store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'shipping_breakdown.dart';

/// Typed `claims.security` (incl. trusted visitor geo) and the
/// `order.securityClaims` / `order.securityGeo` extension.
export 'order_security_claims.dart';
export 'shipping_breakdown.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
// ignore: non_abstract_class_inherits_abstract_member
abstract class Order extends OrderEntity
    with _$Order
    implements Model, ModelMetadata {
  Order._();
  factory Order({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    /// Optional schedule date. When set, the order appears on this date in lists.
    DateTime? scheduledAt,
    /// Server-computed COALESCE(scheduledAt, createdAt). Read-only.
    DateTime? effectiveAt,
    @Default({}) Map<String, dynamic> metadata,
    /// Server-only fields (e.g. security treatment); not for client editing.
    Map<String, dynamic>? claims,
    @Default([]) List<String> references,
    String? customerName,
    String? customerPhone,
    String? customerEmail,
    String? customerNote,
    String? customerIp,
    // internal
    String? internalNote,
    // end internal
    String? shippingAddress,
    String? shippingCity,
    String? shippingState,
    String? shippingCountry,
    String? shippingMethodId,
    String? shippingNote,
    String? trackingCode,

    /// Feeef Cloud carrier account (`ca_…`). Null until the order is shipped.
    /// Cleared when that Cloud parcel is deleted.
    String? carrierAccountId,

    /// Feeef Cloud parcel id (`pcl_…`). Null until the order is shipped.
    /// Cleared when that Cloud parcel is deleted.
    String? parcelId,
    String? paymentMethodId,
    @JsonKey(
      fromJson: shippingTypeFromJson,
      toJson: shippingTypeToJson,
    )
    @Default(ShippingType.home)
    ShippingType shippingType,
    @Default([]) List<String> tags,
    required List<OrderItem> items,
    required num subtotal,
    num? shippingPrice,
    /// Per-parcel shipping stored at order time (one entry per courier
    /// account); null on older orders.
    @JsonKey(
      fromJson: shippingBreakdownFromJson,
      toJson: shippingBreakdownToJson,
    )
    List<ShippingBreakdownEntry>? shippingBreakdown,
    required num total,
    required num calculatedTotal,
    num? manualTotal,
    @Default(0) num discount,
    String? coupon,
    required String storeId,
    String? source,
    String? confirmerId,
    /// Legacy, still sent by the API until the 2027-01-15 hard cut. Read the
    /// rooms fields ([room], [kind], [statusId], [closeAs]) instead.
    @Deprecated('Use room / kind / statusId / closeAs')
    @Default(OrderStatus.pending)
    OrderStatus status,
    @Default(PaymentStatus.unpaid) PaymentStatus paymentStatus,
    @Deprecated('Use room / kind / closeAs')
    @Default(DeliveryStatus.pending)
    DeliveryStatus deliveryStatus,
    @Deprecated('Use statusId / kind')
    String? customStatus,

    /// Why the order was lost, recorded when it moves to a cancelling status.
    String? cancelReason,

    /// Opencod v1 fields (identical API names).
    String? statusId,
    String? room,
    String? kind,
    String? closeAs,
    String? cash,
    String? stock,

    @Default({}) Map<String, dynamic>? customFields,
    @JsonKey(fromJson: _storeFromJson, toJson: _storeToJson) Store? store,
    @JsonKey(fromJson: _shippingMethodFromJson, toJson: _shippingMethodToJson)
    ShippingMethod? shippingMethod,
    // metadata
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

// // OrderCreate
@freezed
// ignore: non_abstract_class_inherits_abstract_member
abstract class OrderCreate with _$OrderCreate implements ModelCreate {
  const factory OrderCreate({
    String? id,
    String? customerName,
    String? shippingNote,
    String? customerPhone,
    String? customerEmail,
    String? customerNote,
    String? customerIp,
    String? shippingAddress,
    String? shippingCity,
    String? shippingState,
    String? shippingCountry,
    @JsonKey(
      fromJson: shippingTypeNullableFromJson,
      toJson: shippingTypeNullableToJson,
    )
    ShippingType? shippingType,
    String? shippingMethodId,
    String? trackingCode,
    String? paymentMethodId,
    required List<OrderItem> items,
    // internal
    String? internalNote,
    // tags
    List<String>? tags,
    num? subtotal,
    num? shippingPrice,
    num? total,
    num? manualTotal,
    num? discount,
    String? coupon,
    required String storeId,
    String? source,
    /// Catalog status the order is created on (rooms model).
    String? statusId,
    /// Catalog slug / kind (e.g. `draft`, `new`, `confirmed`) when no id is known.
    String? statusSlug,
    PaymentStatus? paymentStatus,
    Map<String, dynamic>? customFields,
    // metadata
    Map<String, dynamic>? metadata,
    List<String>? references,
    /// Optional schedule date (ISO). Null via [setToNull] clears.
    DateTime? scheduledAt,
  }) = _OrderCreate;

  factory OrderCreate.fromJson(Map<String, dynamic> json) =>
      _$OrderCreateFromJson(json);
}

// // OrderUpdate
@freezed
// ignore: non_abstract_class_inherits_abstract_member
abstract class OrderUpdate with _$OrderUpdate implements ModelUpdate {
  const factory OrderUpdate({
    String? customerName,
    String? shippingNote,
    String? customerPhone,
    String? customerEmail,
    String? customerNote,
    String? customerIp,
    String? shippingAddress,
    String? shippingCity,
    String? shippingState,
    String? shippingCountry,
    @JsonKey(
      fromJson: shippingTypeNullableFromJson,
      toJson: shippingTypeNullableToJson,
    )
    ShippingType? shippingType,
    String? shippingMethodId,
    String? trackingCode,
    String? paymentMethodId,
    List<OrderItem>? items,
    num? subtotal,
    num? shippingPrice,
    num? total,
    num? manualTotal,
    num? discount,
    String? coupon,
    String? source,
    // internal
    String? internalNote,
    // tags
    List<String>? tags,
    required String storeId,
    // Status changes go through `ordersV1.apply` (catalog status + reason).
    PaymentStatus? paymentStatus,
    String? cancelReason,
    Map<String, dynamic>? customFields,
    // metadata
    Map<String, dynamic>? metadata,
    List<String>? references,
    /// Optional schedule date. Use [setToNull] with `'scheduledAt'` to clear.
    DateTime? scheduledAt,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _OrderUpdate;

  factory OrderUpdate.fromJson(Map<String, dynamic> json) =>
      _$OrderUpdateFromJson(json);
}

// OrderHistoryEvent
@freezed
abstract class OrderHistoryEvent with _$OrderHistoryEvent {
  const factory OrderHistoryEvent({
    required DateTime createdAt,
    /// Rooms snapshot of this event.
    String? phase,
    String? room,
    String? kind,
    String? statusId,
    String? closeAs,
    @Deprecated('Use phase / statusId')
    @Default(OrderStatus.pending)
    OrderStatus status,
    @Deprecated('Use phase')
    @Default(DeliveryStatus.pending)
    DeliveryStatus deliveryStatus,
    @Default(PaymentStatus.unpaid) PaymentStatus paymentStatus,
    @Default('') String message,
    @Default('') String code,
    @Default('') String userId,
  }) = _OrderHistoryEvent;

  factory OrderHistoryEvent.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryEventFromJson(json);
}

// Helper functions for JSON serialization
Store? _storeFromJson(Map<String, dynamic>? json) =>
    json != null ? Store.fromJson(json) : null;
Map<String, dynamic>? _storeToJson(Store? store) => store?.toJson();

ShippingMethod? _shippingMethodFromJson(Map<String, dynamic>? json) =>
    json != null ? ShippingMethod.fromJson(json) : null;
Map<String, dynamic>? _shippingMethodToJson(ShippingMethod? method) =>
    method?.toJson();

// extension
extension IsInjectedOrder on Order {
  bool get isInjected => metadata["isInjected"] == true;
}

/// Display / filter date: prefers server [Order.effectiveAt], else scheduled, else created.
extension OrderEffectiveAt on Order {
  /// Date used for list ordering, day separators, and date-range client filters.
  DateTime get displayAt => effectiveAt ?? scheduledAt ?? createdAt;

  /// True when the order has a future schedule (still "waiting" to pop up).
  bool get isScheduledFuture {
    final s = scheduledAt;
    if (s == null) return false;
    return s.isAfter(DateTime.now());
  }

  /// True when any schedule is set (past or future).
  bool get isScheduled => scheduledAt != null;
}

// extension history
extension OrderHistory on Order {
  List<OrderHistoryEvent> get history => metadata["history"] != null
      ? List<OrderHistoryEvent>.from(
          metadata["history"].map((x) => OrderHistoryEvent.fromJson(x)),
        )
      : [];
}
