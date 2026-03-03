import 'package:feeef/integrations/integrations.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/orders/models/order.dart';

// SC: State City encoding system
// becouse every delivery service has its own names of states and cities

class ProcolisDeliveryService
    extends DeliveryService<ProcolisDeliveryIntegration> {
  @override
  String get name => 'procolis';

  ProcolisDeliveryService({required super.client, required super.integration});

  @override
  /// [send] send order to procolis
  Future<void> deliverOrder({required Order order, String? storeName}) async {
    throw UnimplementedError();
    // await attach(order: order, payload: response.data);
  }

  /// [send] send order to procolis
  /// return [String] the tracking id
  Future<ProcolisOrderCreateResponse> send(Order order) async {
    final response = await client.post(
      '/stores/${order.storeId}/integrations/procolis/send',
      data: {
        'key': integration.key,
        'token': integration.token,
        'orderId': order.id,
      },
    );
    await attach(order: order, payload: response.data);
    return (tracking: response.data["Colis"][0]['Tracking'] as String?);
  }

  /// [list] list orders from procolis
  Future<List<Map<String, dynamic>>> list(
    List<String> trackings, {
    required String storeId,
  }) async {
    final response = await client.post(
      '/stores/$storeId/integrations/procolis/list',
      data: {'trackings': trackings},
    );
    return response.data;
  }
}

typedef ProcolisOrderCreateResponse = ({String? tracking});

/// extentions in [Order]
extension OrderProcolis on Order {
  // get the procolis data
  Map<String, dynamic>? get procolisData {
    if (metadata['delivery'] == null) return null;
    // service match
    if (metadata['delivery']['service'] != 'procolis') return null;
    return metadata['delivery'];
  }

  String? get procolisTrackingId =>
      procolisData?["payload"]?["Colis"][0]['Tracking'] as String;
}
