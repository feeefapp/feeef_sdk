import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

// productId: string;
// variantPath?: string;
// quantity: number;
// price: number;``
@freezed
abstract class OrderItem with _$OrderItem {
  factory OrderItem({
    required String productId,
    required String productName,
    String? productPhotoUrl,
    String? variantPath,
    String? offerCode,
    String? offerName,
    String? sku,
    @Default(0) num quantity,
    @Default(0) num price,
    @Default(0) num discount,
    // addons?: Record<string, number>
    Map<String, num>? addons,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}
