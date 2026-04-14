// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  references:
      (json['references'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  customerName: json['customerName'] as String?,
  customerPhone: json['customerPhone'] as String?,
  customerEmail: json['customerEmail'] as String?,
  customerNote: json['customerNote'] as String?,
  customerIp: json['customerIp'] as String?,
  internalNote: json['internalNote'] as String?,
  shippingAddress: json['shippingAddress'] as String?,
  shippingCity: json['shippingCity'] as String?,
  shippingState: json['shippingState'] as String?,
  shippingCountry: json['shippingCountry'] as String?,
  shippingMethodId: json['shippingMethodId'] as String?,
  shippingNote: json['shippingNote'] as String?,
  trackingCode: json['trackingCode'] as String?,
  paymentMethodId: json['paymentMethodId'] as String?,
  shippingType: shippingTypeFromJson(json['shippingType']),
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  items: (json['items'] as List<dynamic>)
      .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  subtotal: json['subtotal'] as num,
  shippingPrice: json['shippingPrice'] as num?,
  total: json['total'] as num,
  calculatedTotal: json['calculatedTotal'] as num,
  manualTotal: json['manualTotal'] as num?,
  discount: json['discount'] as num? ?? 0,
  coupon: json['coupon'] as String?,
  storeId: json['storeId'] as String,
  source: json['source'] as String?,
  confirmerId: json['confirmerId'] as String?,
  status: $enumDecode(_$OrderStatusEnumMap, json['status']),
  paymentStatus:
      $enumDecodeNullable(_$PaymentStatusEnumMap, json['paymentStatus']) ??
      PaymentStatus.unpaid,
  deliveryStatus:
      $enumDecodeNullable(_$DeliveryStatusEnumMap, json['deliveryStatus']) ??
      DeliveryStatus.pending,
  customStatus: json['customStatus'] as String?,
  customFields: json['customFields'] as Map<String, dynamic>? ?? const {},
  store: _storeFromJson(json['store'] as Map<String, dynamic>?),
  shippingMethod: _shippingMethodFromJson(
    json['shippingMethod'] as Map<String, dynamic>?,
  ),
);

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'metadata': instance.metadata,
  'references': instance.references,
  'customerName': instance.customerName,
  'customerPhone': instance.customerPhone,
  'customerEmail': instance.customerEmail,
  'customerNote': instance.customerNote,
  'customerIp': instance.customerIp,
  'internalNote': instance.internalNote,
  'shippingAddress': instance.shippingAddress,
  'shippingCity': instance.shippingCity,
  'shippingState': instance.shippingState,
  'shippingCountry': instance.shippingCountry,
  'shippingMethodId': instance.shippingMethodId,
  'shippingNote': instance.shippingNote,
  'trackingCode': instance.trackingCode,
  'paymentMethodId': instance.paymentMethodId,
  'shippingType': shippingTypeToJson(instance.shippingType),
  'tags': instance.tags,
  'items': instance.items.map((e) => e.toJson()).toList(),
  'subtotal': instance.subtotal,
  'shippingPrice': instance.shippingPrice,
  'total': instance.total,
  'calculatedTotal': instance.calculatedTotal,
  'manualTotal': instance.manualTotal,
  'discount': instance.discount,
  'coupon': instance.coupon,
  'storeId': instance.storeId,
  'source': instance.source,
  'confirmerId': instance.confirmerId,
  'status': _$OrderStatusEnumMap[instance.status]!,
  'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
  'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus]!,
  'customStatus': instance.customStatus,
  'customFields': instance.customFields,
  'store': _storeToJson(instance.store),
  'shippingMethod': _shippingMethodToJson(instance.shippingMethod),
};

const _$OrderStatusEnumMap = {
  OrderStatus.draft: 'draft',
  OrderStatus.pending: 'pending',
  OrderStatus.review: 'review',
  OrderStatus.accepted: 'accepted',
  OrderStatus.processing: 'processing',
  OrderStatus.completed: 'completed',
  OrderStatus.cancelled: 'cancelled',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.unpaid: 'unpaid',
  PaymentStatus.paid: 'paid',
  PaymentStatus.received: 'received',
};

const _$DeliveryStatusEnumMap = {
  DeliveryStatus.pending: 'pending',
  DeliveryStatus.delivering: 'delivering',
  DeliveryStatus.delivered: 'delivered',
  DeliveryStatus.returned: 'returned',
};

_OrderCreate _$OrderCreateFromJson(Map<String, dynamic> json) => _OrderCreate(
  id: json['id'] as String?,
  customerName: json['customerName'] as String?,
  shippingNote: json['shippingNote'] as String?,
  customerPhone: json['customerPhone'] as String?,
  customerEmail: json['customerEmail'] as String?,
  customerNote: json['customerNote'] as String?,
  customerIp: json['customerIp'] as String?,
  shippingAddress: json['shippingAddress'] as String?,
  shippingCity: json['shippingCity'] as String?,
  shippingState: json['shippingState'] as String?,
  shippingCountry: json['shippingCountry'] as String?,
  shippingType: shippingTypeNullableFromJson(json['shippingType']),
  shippingMethodId: json['shippingMethodId'] as String?,
  trackingCode: json['trackingCode'] as String?,
  paymentMethodId: json['paymentMethodId'] as String?,
  items: (json['items'] as List<dynamic>)
      .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  internalNote: json['internalNote'] as String?,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  subtotal: json['subtotal'] as num?,
  shippingPrice: json['shippingPrice'] as num?,
  total: json['total'] as num?,
  manualTotal: json['manualTotal'] as num?,
  discount: json['discount'] as num?,
  coupon: json['coupon'] as String?,
  storeId: json['storeId'] as String,
  source: json['source'] as String?,
  status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']),
  paymentStatus: $enumDecodeNullable(
    _$PaymentStatusEnumMap,
    json['paymentStatus'],
  ),
  deliveryStatus: $enumDecodeNullable(
    _$DeliveryStatusEnumMap,
    json['deliveryStatus'],
  ),
  customFields: json['customFields'] as Map<String, dynamic>?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  references: (json['references'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$OrderCreateToJson(_OrderCreate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerName': instance.customerName,
      'shippingNote': instance.shippingNote,
      'customerPhone': instance.customerPhone,
      'customerEmail': instance.customerEmail,
      'customerNote': instance.customerNote,
      'customerIp': instance.customerIp,
      'shippingAddress': instance.shippingAddress,
      'shippingCity': instance.shippingCity,
      'shippingState': instance.shippingState,
      'shippingCountry': instance.shippingCountry,
      'shippingType': shippingTypeNullableToJson(instance.shippingType),
      'shippingMethodId': instance.shippingMethodId,
      'trackingCode': instance.trackingCode,
      'paymentMethodId': instance.paymentMethodId,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'internalNote': instance.internalNote,
      'tags': instance.tags,
      'subtotal': instance.subtotal,
      'shippingPrice': instance.shippingPrice,
      'total': instance.total,
      'manualTotal': instance.manualTotal,
      'discount': instance.discount,
      'coupon': instance.coupon,
      'storeId': instance.storeId,
      'source': instance.source,
      'status': _$OrderStatusEnumMap[instance.status],
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus],
      'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus],
      'customFields': instance.customFields,
      'metadata': instance.metadata,
      'references': instance.references,
    };

_OrderUpdate _$OrderUpdateFromJson(Map<String, dynamic> json) => _OrderUpdate(
  customerName: json['customerName'] as String?,
  shippingNote: json['shippingNote'] as String?,
  customerPhone: json['customerPhone'] as String?,
  customerEmail: json['customerEmail'] as String?,
  customerNote: json['customerNote'] as String?,
  customerIp: json['customerIp'] as String?,
  shippingAddress: json['shippingAddress'] as String?,
  shippingCity: json['shippingCity'] as String?,
  shippingState: json['shippingState'] as String?,
  shippingCountry: json['shippingCountry'] as String?,
  shippingType: shippingTypeNullableFromJson(json['shippingType']),
  shippingMethodId: json['shippingMethodId'] as String?,
  trackingCode: json['trackingCode'] as String?,
  paymentMethodId: json['paymentMethodId'] as String?,
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  subtotal: json['subtotal'] as num?,
  shippingPrice: json['shippingPrice'] as num?,
  total: json['total'] as num?,
  manualTotal: json['manualTotal'] as num?,
  discount: json['discount'] as num?,
  coupon: json['coupon'] as String?,
  source: json['source'] as String?,
  internalNote: json['internalNote'] as String?,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  storeId: json['storeId'] as String,
  status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']),
  paymentStatus: $enumDecodeNullable(
    _$PaymentStatusEnumMap,
    json['paymentStatus'],
  ),
  deliveryStatus: $enumDecodeNullable(
    _$DeliveryStatusEnumMap,
    json['deliveryStatus'],
  ),
  customStatus: json['customStatus'] as String?,
  customFields: json['customFields'] as Map<String, dynamic>?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  references: (json['references'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$OrderUpdateToJson(_OrderUpdate instance) =>
    <String, dynamic>{
      'customerName': instance.customerName,
      'shippingNote': instance.shippingNote,
      'customerPhone': instance.customerPhone,
      'customerEmail': instance.customerEmail,
      'customerNote': instance.customerNote,
      'customerIp': instance.customerIp,
      'shippingAddress': instance.shippingAddress,
      'shippingCity': instance.shippingCity,
      'shippingState': instance.shippingState,
      'shippingCountry': instance.shippingCountry,
      'shippingType': shippingTypeNullableToJson(instance.shippingType),
      'shippingMethodId': instance.shippingMethodId,
      'trackingCode': instance.trackingCode,
      'paymentMethodId': instance.paymentMethodId,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'subtotal': instance.subtotal,
      'shippingPrice': instance.shippingPrice,
      'total': instance.total,
      'manualTotal': instance.manualTotal,
      'discount': instance.discount,
      'coupon': instance.coupon,
      'source': instance.source,
      'internalNote': instance.internalNote,
      'tags': instance.tags,
      'storeId': instance.storeId,
      'status': _$OrderStatusEnumMap[instance.status],
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus],
      'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus],
      'customStatus': instance.customStatus,
      'customFields': instance.customFields,
      'metadata': instance.metadata,
      'references': instance.references,
    };

_OrderHistoryEvent _$OrderHistoryEventFromJson(Map<String, dynamic> json) =>
    _OrderHistoryEvent(
      createdAt: DateTime.parse(json['createdAt'] as String),
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      deliveryStatus: $enumDecode(
        _$DeliveryStatusEnumMap,
        json['deliveryStatus'],
      ),
      paymentStatus: $enumDecode(_$PaymentStatusEnumMap, json['paymentStatus']),
      message: json['message'] as String,
      code: json['code'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$OrderHistoryEventToJson(_OrderHistoryEvent instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'status': _$OrderStatusEnumMap[instance.status]!,
      'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus]!,
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
      'message': instance.message,
      'code': instance.code,
      'userId': instance.userId,
    };
