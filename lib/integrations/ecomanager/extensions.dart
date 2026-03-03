import 'package:feeef/orders/models/order.dart';

/// Extensions for Ecomanager integration on [Order]
extension OrderEcomanager on Order {
  /// Get the ecomanager delivery data from order metadata
  Map<String, dynamic>? get ecomanagerData {
    // Check if ecomanager data exists in metadata
    if (metadata['ecomanager'] == null) return null;
    return metadata['ecomanager'];
  }

  /// Get ecomanager order reference
  String? get ecomanagerReference => ecomanagerData?['reference'];

  /// Get ecomanager tracking ID
  String? get ecomanagerTracking => ecomanagerData?['tracking'];

  /// Get ecomanager order ID
  int? get ecomanagerId => ecomanagerData?['orderId'];

  /// Get ecomanager order state ID
  int? get ecomanagerOrderStateId => ecomanagerData?['orderStateId'];

  /// Get ecomanager order state name
  String? get ecomanagerOrderStateName => ecomanagerData?['orderStateName'];
}
