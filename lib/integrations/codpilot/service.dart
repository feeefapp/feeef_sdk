import 'package:feeef/integrations/integrations.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/orders/models/order.dart';
import 'package:feeef/integrations/codpilot/codpilot_delivery_integration_api.dart';

/// Codpilot mini-ERP client — syncs Feeef orders to Codpilot via Feeef backend.
///
/// Not a delivery carrier. The backend writes `metadata.codpilot` (never
/// `metadata.delivery`); callers should refresh the order after [deliverOrder].
class CodpilotDeliveryService extends DeliveryService<CodpilotIntegration> {
  @override
  String get name => 'codpilot';

  final String storeId;

  CodpilotDeliveryService({
    required super.client,
    required super.integration,
    required this.storeId,
  });

  CodpilotIntegrationApi get _api => CodpilotIntegrationApi(
        client: client,
        integration: integration,
        storeId: storeId,
      );

  @override
  Future<void> deliverOrder({required Order order}) async {
    if (order.isSyncedToCodpilot) {
      throw StateError(
        'Order ${order.id} is already synced to Codpilot (ref: ${order.codpilotTrackingId})',
      );
    }
    // Backend persists `metadata.codpilot` — do not call [attach] (that writes delivery).
    await _api.send(order: order);
  }
}
