import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_package_request.freezed.dart';
part 'create_package_request.g.dart';

/// Zimou Package Creation Request Model
@freezed
abstract class ZimouPackageCreateRequest with _$ZimouPackageCreateRequest {
  const factory ZimouPackageCreateRequest({
    required String type, // 'ecommerce', 'dropship', or 'warehouse'
    int? warehouseId,
    required String name,
    required String clientLastName,
    required String clientFirstName,
    required String clientPhone,
    String? clientPhone2,
    required String address,
    required String orderId,
    required String price,
    required bool freeDelivery,
    int? quantityItems,
    required String deliveryType,
    required String wilaya,
    required String commune,
    int? officeId,
    required bool canBeOpened,
    String? observation,
    String? returnedProduct,
    double? weight,
  }) = _ZimouPackageCreateRequest;

  factory ZimouPackageCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ZimouPackageCreateRequestFromJson(json);
}
