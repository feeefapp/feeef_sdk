import 'package:feeef/feeef_client.dart';
import 'package:feeef/integrations/delivery/bulk_send_result.dart';
import 'package:feeef/integrations/delivery/parcel_send_api_models.dart';
import 'package:feeef/integrations/integrations.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/orders/models/order.dart';

/// Response from `POST .../integrations/mdmExpress/send`.
class MdmExpressParcelCreateResponse {
  final String trackingId;
  final String? mdmOrderId;

  MdmExpressParcelCreateResponse({required this.trackingId, this.mdmOrderId});
}

/// MDM Express — single + bulk send (parcel JSON to the Feeef API).
///
/// Auth and `mdmStoreId` are configured on the store integration; the Feeef API proxies to MDM.
class MdmExpressDeliveryService
    extends DeliveryService<MdmExpressDeliveryIntegration> {
  @override
  String get name => 'mdmExpress';

  final String? storeId;

  MdmExpressDeliveryService({
    required super.client,
    required super.integration,
    this.storeId,
  });

  @override
  Future<void> deliverOrder({required Order order, String? storeName}) async {
    throw UnimplementedError(
      'Use send() from the merchant UI with a built parcel create request.',
    );
  }

  Map<String, dynamic> _parcelPayload(
    Order order,
    ParcelSendRequest request,
  ) {
    return {
      'externalId': request.externalId ?? order.id,
      'customer': {
        'name': request.customer.name,
        'phone': {
          'number1': request.customer.phone.number1,
          if (request.customer.phone.number2 != null)
            'number2': request.customer.phone.number2,
        },
        if (request.customer.customerId != null)
          'customerId': request.customer.customerId,
      },
      'deliveryAddress': {
        'street': request.deliveryAddress.street,
        if (request.deliveryAddress.city.isNotEmpty)
          'city': request.deliveryAddress.city,
        if (request.deliveryAddress.district.isNotEmpty)
          'district': request.deliveryAddress.district,
        if (request.deliveryAddress.postalCode.isNotEmpty)
          'postalCode': request.deliveryAddress.postalCode,
        'country': request.deliveryAddress.country,
        if (request.deliveryAddress.cityTerritoryId != null)
          'cityTerritoryId': request.deliveryAddress.cityTerritoryId,
        if (request.deliveryAddress.districtTerritoryId != null)
          'districtTerritoryId': request.deliveryAddress.districtTerritoryId,
      },
      'orderedProducts': request.orderedProducts
          .map(
            (p) => {
              'productName': p.productName,
              'quantity': p.quantity,
              'unitPrice': p.unitPrice,
              'stockType': p.stockType,
            },
          )
          .toList(),
      'amount': request.amount,
      'deliveryType': request.deliveryType == ParcelSendDeliveryType.home
          ? 'home'
          : 'pickup-point',
      if (request.hubId != null) 'hubId': request.hubId,
      if (request.description != null) 'description': request.description,
      if (request.stateCode != null) 'stateCode': request.stateCode,
      if (request.cityCode != null) 'cityCode': request.cityCode,
      'freeShipping': order.shippingPrice != null && order.shippingPrice == 0,
      if (order.shippingPrice != null) 'shippingPrice': order.shippingPrice!.toDouble(),
    };
  }

  /// Sends one parcel (validated body). Backend maps to MDM `POST /api/v2/orders`.
  Future<MdmExpressParcelCreateResponse> send(
    Order order,
    ParcelSendRequest request,
  ) async {
    if (order.mdmExpressTrackingId?.isNotEmpty == true) {
      throw StateError(
        'Order ${order.id} is already sent to MDM Express (${order.mdmExpressTrackingId})',
      );
    }

    final payload = _parcelPayload(order, request);
    final response = await Feeef.instance.client.post(
      '/stores/${storeId ?? order.storeId}/integrations/mdmExpress/send',
      data: payload,
    );
    final data = response.data as Map<String, dynamic>;
    final trackingId = data['trackingId'] as String? ?? '';
    if (trackingId.isEmpty) {
      throw StateError('MDM Express: missing trackingId in response');
    }
    await attach(order: order, payload: data);
    return MdmExpressParcelCreateResponse(
      trackingId: trackingId,
      mdmOrderId: data['orderId'] as String?,
    );
  }

  /// Bulk send (native MDM bulk on the backend).
  Future<DeliveryBulkSendApiResult> sendMany(
    List<Order> orders,
    List<ParcelSendRequest> requests,
  ) async {
    if (orders.isEmpty || requests.isEmpty) {
      throw ArgumentError('Orders and requests must not be empty');
    }
    if (orders.length != requests.length) {
      throw ArgumentError('Orders and requests length mismatch');
    }

    final targetStoreId = storeId ?? orders.first.storeId;
    final parcels = <Map<String, dynamic>>[];
    for (var i = 0; i < orders.length; i++) {
      parcels.add(_parcelPayload(orders[i], requests[i]));
    }

    final response = await Feeef.instance.client.post(
      '/stores/$targetStoreId/integrations/mdmExpress/sendMany',
      data: {'parcels': parcels},
    );
    return DeliveryBulkSendApiResult.fromHttpBody(
      response.data as Map<String, dynamic>,
    );
  }
}

/// Order helpers for MDM Express (`metadata.delivery`).
extension OrderMdmExpress on Order {
  Map<String, dynamic>? get mdmExpressData {
    final d = metadata['delivery'];
    if (d is! Map) return null;
    if (d['service'] != 'mdmExpress') return null;
    return d as Map<String, dynamic>;
  }

  String? get mdmExpressTrackingId =>
      mdmExpressData?['payload']?['trackingId'] as String?;

  String? get mdmExpressMdmOrderId =>
      mdmExpressData?['payload']?['mdmOrderId'] as String?;
}
