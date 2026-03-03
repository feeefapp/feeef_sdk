import 'package:feeef/orders/models/order.dart';

/// Extensions for Zimou integration on [Order]
extension OrderZimou on Order {
  /// Get the zimou delivery data from order metadata
  Map<String, dynamic>? get zimouData {
    if (metadata['delivery'] == null) return null;
    // service match
    if (metadata['delivery']['service'] != 'zimou') return null;
    return metadata['delivery'];
  }

  String? get zimouTrackingId => zimouData?["payload"]?["tracking"];
}
