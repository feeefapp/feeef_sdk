import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_addon.freezed.dart';
part 'product_addon.g.dart';

@freezed
abstract class ProductAddon with _$ProductAddon {
  factory ProductAddon({
    String? photoUrl,
    required String title,
    String? subtitle,
    num? stock,
    num? price,
    num? min,
    num? max,
  }) = _ProductAddon;

  factory ProductAddon.fromJson(Map<String, dynamic> json) =>
      _$ProductAddonFromJson(json);
}
