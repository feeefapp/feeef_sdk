import 'package:feeef/integrations/delivery/parcel.dart';

/// Unified surface for carrier integrations (mirrors backend `DeliveryService`).
///
/// Implementations should throw a typed error when an operation is unsupported
/// (same idea as backend `DeliveryOperationNotSupportedError`).
abstract class DeliveryCarrierClient {
  String get providerId;

  Future<Map<String, dynamic>> send(ParcelCreate parcel);

  Future<Map<String, dynamic>> sendMany(List<ParcelCreate> parcels);

  Future<void> unsend(String trackingOrCarrierId);

  Future<void> unsendMany(List<String> ids);

  Future<void> update(ParcelUpdate input);

  Future<void> updateMany(List<ParcelUpdate> updates);

  /// Alias for cancel/remove when the carrier maps it to [unsend].
  Future<void> delete(String id);

  Future<void> deleteMany(List<String> ids);

  Future<dynamic> label(String tracking, [Map<String, dynamic>? options]);

  Future<dynamic> labels(List<String> ids, [Map<String, dynamic>? options]);

  Future<dynamic> show(String id);

  Future<dynamic> list([Map<String, dynamic>? query]);
}
