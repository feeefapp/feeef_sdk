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
    /// Presence (`kOrderFilterAny`) or a specific variant path.
    String? variant,
    /// Presence (`kOrderFilterAny`) or a specific offer code.
    String? offer,
    DeliveryStatus? deliveryStatus,
    PaymentStatus? paymentStatus,
    dynamic customStatus,
    dynamic source,
    dynamic references,
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
          // Force UTC so naive local bounds can't shift the day on the server.
          'created_before': createdBefore.toUtc().toIso8601String(),
        if (createdAfter != null)
          'created_after': createdAfter.toUtc().toIso8601String(),
        if (q != null) 'q': q,
        if (confirmer != null) 'confirmer': confirmer,
        if (products != null) 'products': products,
        if (shippingState != null) 'shippingState': shippingState,
        if (shippingCity != null) 'shippingCity': shippingCity,
        if (deliveryService != null) 'deliveryService': deliveryService,
        if (variant != null) 'variant': variant,
        if (offer != null) 'offer': offer,
        if (deliveryStatus != null) 'deliveryStatus': deliveryStatus.name,
        if (paymentStatus != null) 'paymentStatus': paymentStatus.name,
        if (customStatus != null) 'customStatus': customStatus,
        if (source != null) 'source': source,
        if (references != null) 'references': references,
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

  /// Claims the next order needing confirmation from any of [storeIds].
  ///
  /// The server picks a single order, assigns it to the caller, and guarantees
  /// no two confirmers receive the same one. [ConfirmationClaim.order] is null
  /// when nothing is due — a normal, non-error state for the confirmation
  /// screen.
  ///
  /// Store ids the caller is not authorized to claim from are dropped rather
  /// than rejected; compare against [ConfirmationClaim.searchedStoreIds] to
  /// detect that.
  Future<ConfirmationClaim> claimNext({required List<String> storeIds}) async {
    assert(storeIds.isNotEmpty, 'at least one storeId must be provided');
    try {
      final response = await client.post(
        '/orders/confirmation/next',
        data: {'storeIds': storeIds},
      );
      final data = Map<String, dynamic>.from(response.data as Map);
      final orderJson = data['order'];
      return ConfirmationClaim(
        order: orderJson == null ? null : modelFromJson(orderJson),
        searchedStoreIds: List<String>.from(data['searchedStoreIds'] ?? const []),
        backlog: Map<String, int>.from(
          (data['backlog'] as Map? ?? const {}).map(
            (key, value) => MapEntry(key as String, (value as num).toInt()),
          ),
        ),
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  /// Returns a claimed order to the confirmation pool so someone else can take
  /// it. Call this when the confirmer skips an order or leaves the screen.
  ///
  /// Pass [skip] to soft-snooze using the store's `skipDeferMinutes`. Optionally
  /// override with [deferMinutes]. Omit both when merely leaving the screen.
  ///
  /// Orders the store's dispatcher assigned automatically are kept; the returned
  /// value reports whether the release actually happened.
  Future<bool> releaseConfirmation({
    required String orderId,
    required String storeId,
    bool skip = false,
    int? deferMinutes,
  }) async {
    try {
      final response = await client.post(
        '/orders/confirmation/release',
        data: {
          'orderId': orderId,
          'storeId': storeId,
          if (skip) 'skip': true,
          if (deferMinutes != null) 'deferMinutes': deferMinutes,
        },
      );
      return (response.data as Map)['released'] == true;
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

  /// Returns items from an order to inventory.
  Future<Map<String, dynamic>> returnOrder({
    required String orderId,
    required String reason,
    String? correlationRef,
    String? projectId,
    required List<Map<String, dynamic>> deltas,
  }) async {
    try {
      final response = await client.post(
        '/orders/return',
        data: {
          'orderId': orderId,
          'reason': reason,
          if (correlationRef != null) 'correlationRef': correlationRef,
          if (projectId != null) 'projectId': projectId,
          'deltas': deltas,
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

/// Result of a confirmation queue claim.
class ConfirmationClaim {
  /// The claimed order, or null when no selected store had work due.
  final Order? order;

  /// Stores the server actually searched, after dropping unauthorized ids and
  /// stores that have the confirmation queue disabled.
  final List<String> searchedStoreIds;

  /// Due backlog per searched store, for UI badges.
  ///
  /// Approximate by design: the server memoizes these counts for a few seconds
  /// so a claim never pays for an exact count.
  final Map<String, int> backlog;

  const ConfirmationClaim({
    required this.order,
    required this.searchedStoreIds,
    required this.backlog,
  });

  /// Whether the queue had nothing to serve.
  bool get isEmpty => order == null;

  /// Total due orders across every searched store.
  int get totalBacklog =>
      backlog.values.fold<int>(0, (sum, count) => sum + count);
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
