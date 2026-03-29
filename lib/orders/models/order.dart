import 'package:feeef/interfaces/embadded/order_item.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:feeef/shipping_methods/models/shipping_method.dart';
import 'package:feeef/stores/models/store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    @Default({}) Map<String, dynamic> metadata,
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
    String? paymentMethodId,
    @Default(ShippingType.home) ShippingType shippingType,
    @Default([]) List<String> tags,
    required List<OrderItem> items,
    required num subtotal,
    num? shippingPrice,
    required num total,
    required num calculatedTotal,
    num? manualTotal,
    @Default(0) num discount,
    String? coupon,
    required String storeId,
    String? source,
    String? confirmerId,
    required OrderStatus status,
    @Default(PaymentStatus.unpaid) PaymentStatus paymentStatus,
    @Default(DeliveryStatus.pending) DeliveryStatus deliveryStatus,
    String? customStatus,
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
    OrderStatus? status,
    PaymentStatus? paymentStatus,
    DeliveryStatus? deliveryStatus,
    Map<String, dynamic>? customFields,
    // metadata
    Map<String, dynamic>? metadata,
    List<String>? references,
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
    OrderStatus? status,
    PaymentStatus? paymentStatus,
    DeliveryStatus? deliveryStatus,
    String? customStatus,
    Map<String, dynamic>? customFields,
    // metadata
    Map<String, dynamic>? metadata,
    List<String>? references,
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
    required OrderStatus status,
    required DeliveryStatus deliveryStatus,
    required PaymentStatus paymentStatus,
    required String message,
    required String code,
    required String userId,
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

// extension history
extension OrderHistory on Order {
  List<OrderHistoryEvent> get history => metadata["history"] != null
      ? List<OrderHistoryEvent>.from(
          metadata["history"].map((x) => OrderHistoryEvent.fromJson(x)),
        )
      : [];
}
