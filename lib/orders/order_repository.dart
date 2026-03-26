import 'package:dio/dio.dart';

import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/model_repository.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/interfaces/embadded/order_item.dart';
import 'package:feeef/interfaces/embadded/orders_dispatch_strategy.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:feeef/mixins/repository_mixins.dart';
import 'package:feeef/orders/models/order.dart';

/// Repository for Order CRUD and order-specific API (calculate, assign, dispatch).
class OrderRepository extends ModelRepository<Order>
    with
        ModelCreateMixin<Order, OrderCreate>,
        ModelFindMixin<Order>,
        ModelListMixin<Order>,
        ModelUpdateMixin<Order, OrderUpdate>,
        ModelDeleteMixin<Order> {
  OrderRepository({required super.client}) : super(table: 'orders');

  @override
  OrderCreate createFromJson(json) => OrderCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(OrderCreate model) => model.toJson();

  @override
  Order modelFromJson(json) => Order.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(Order model) => model.toJson();

  @override
  OrderUpdate updateFromJson(json) => OrderUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(OrderUpdate model) => model.toJson();

  @override
  Future<ListResponse<Order>> list({
    String? storeId,
    /// When non-empty, requests orders from multiple stores (unified inbox).
    /// Takes precedence over [storeId] when both are set.
    List<String>? storeIds,
    int? page,
    int? offset,
    int? limit,
    List<OrderStatus>? status,
    List<String>? tags,
    DateTime? createdBefore,
    DateTime? createdAfter,
    String? q,
    Map<String, dynamic>? params,
    String? confirmer,
    List<String>? products,
    String? shippingState,
    String? shippingCity,
    String? deliveryService,
    DeliveryStatus? deliveryStatus,
    PaymentStatus? paymentStatus,
    dynamic customStatus,
    dynamic source,
  }) {
    assert(storeId != null || storeIds != null, 'storeId or storeIds must be provided');
    assert(
      !(storeId != null && storeIds != null),
      'storeId and storeIds cannot be provided together',
    );
    final useMultiStore =
        storeIds != null && storeIds.isNotEmpty;
    var data = super.list(
      page: page,
      offset: offset,
      limit: limit,
      params: {
        if (useMultiStore) 'store_ids': storeIds,
        if (!useMultiStore && storeId != null) 'store_id': storeId,
        if (status != null) 'status': status.map((e) => e.name).toList(),
        if (tags != null) 'tags': tags,
        if (createdBefore != null)
          'created_before': createdBefore.toIso8601String(),
        if (createdAfter != null)
          'created_after': createdAfter.toIso8601String(),
        if (q != null) 'q': q,
        if (confirmer != null) 'confirmer': confirmer,
        if (products != null) 'products': products,
        if (shippingState != null) 'shippingState': shippingState,
        if (shippingCity != null) 'shippingCity': shippingCity,
        if (deliveryService != null) 'deliveryService': deliveryService,
        if (deliveryStatus != null) 'deliveryStatus': deliveryStatus.name,
        if (paymentStatus != null) 'paymentStatus': paymentStatus.name,
        if (customStatus != null) 'customStatus': customStatus,
        if (source != null) 'source': source,
        ...?params,
      },
    );
    return data;
  }

  /// Calculates order pricing based on items, shipping details, etc.
  Future<OrderPricing> calculate({
    required String storeId,
    required List<OrderItem> items,
    String? shippingState,
    String? shippingCountry,
    ShippingType? shippingType,
    String? shippingAddress,
  }) async {
    try {
      final response = await client.post(
        '/orders/calculate',
        data: {
          'storeId': storeId,
          'items': items
              .map(
                (item) => {
                  'productId': item.productId,
                  'quantity': item.quantity,
                  'variantPath': item.variantPath,
                  'offerCode': item.offerCode,
                  "addons": item.addons,
                  "price": item.price,
                  "discount": item.discount,
                },
              )
              .toList(),
          if (shippingState != null) 'shippingState': shippingState,
          if (shippingCountry != null) 'shippingCountry': shippingCountry,
          if (shippingType != null) 'shippingType': shippingType.name,
          if (shippingAddress != null) 'shippingAddress': shippingAddress,
        },
      );

      return OrderPricing(
        subtotal: response.data['pricing']['subtotal'] as num,
        shippingPrice: response.data['pricing']['shippingPrice'] as num?,
        calculatedTotal: response.data['pricing']['calculatedTotal'] as num,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  /// Assigns a single order to a member (as confirmer).
  Future<Order> assign({
    required String orderId,
    required String memberId,
    required String storeId,
  }) async {
    try {
      final response = await client.post(
        '/orders/assign',
        data: {'orderId': orderId, 'memberId': memberId, 'storeId': storeId},
      );
      return modelFromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  /// Assigns multiple orders to a member (as confirmer).
  Future<Map<String, dynamic>> assignMany({
    required List<String> orderIds,
    required String memberId,
    required String storeId,
  }) async {
    try {
      final response = await client.post(
        '/orders/assignMany',
        data: {'orderIds': orderIds, 'memberId': memberId, 'storeId': storeId},
      );
      return response.data;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  /// Dispatches selected orders to confirmers using the given strategy.
  Future<Map<String, dynamic>> dispatch({
    required List<String> orderIds,
    required String storeId,
    required OrdersDispatchStrategy strategy,
  }) async {
    try {
      final response = await client.post(
        '/stores/$storeId/integrations/dispatcher/dispatch',
        data: {
          'orderIds': orderIds,
          'strategy': strategy.toJson(),
        },
      );
      return response.data;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }
}

/// Represents the calculated pricing for an order.
class OrderPricing {
  final num subtotal;
  final num? shippingPrice;
  final num calculatedTotal;

  OrderPricing({
    required this.subtotal,
    this.shippingPrice,
    required this.calculatedTotal,
  });
}
