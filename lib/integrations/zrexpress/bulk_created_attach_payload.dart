import 'package:feeef/orders/models/order.dart';

/// Converts a Feeef `POST .../sendMany` `data.created[]` row (canonical
/// `tracking` + `provider.parcelId`, or legacy flat keys) into the flat
/// `metadata.delivery.payload` shape expected by `Order.zrexpressParcelId` /
/// `zrexpressTrackingNumber` (see `zrexpress/service.dart`).
///
/// Returns `null` when no parcel id can be resolved (attach should be skipped).
Map<String, dynamic>? zrexpressBulkCreatedRowToAttachPayload(
  Map<String, dynamic> row,
  Order order,
) {
  final provider = row['provider'];
  Map<String, dynamic>? prov;
  if (provider is Map) {
    prov = Map<String, dynamic>.from(provider);
  }

  String? parcelId = row['parcelId']?.toString().trim();
  if (parcelId == null || parcelId.isEmpty) {
    parcelId = prov?['parcelId']?.toString().trim();
  }
  if (parcelId == null || parcelId.isEmpty) {
    parcelId = prov?['id']?.toString().trim();
  }
  if (parcelId == null || parcelId.isEmpty) return null;

  String? tracking = row['trackingNumber']?.toString().trim();
  if (tracking == null || tracking.isEmpty) {
    tracking = row['tracking']?.toString().trim();
  }
  if (tracking == null || tracking.isEmpty) {
    tracking = prov?['trackingNumber']?.toString().trim();
  }

  final externalId =
      row['externalId']?.toString() ?? row['reference']?.toString() ?? order.id;

  return {
    'parcelId': parcelId,
    if (tracking != null && tracking.isNotEmpty) 'trackingNumber': tracking,
    'externalId': externalId,
  };
}
