import 'package:feeef/interfaces/product.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

part 'product_variant.freezed.dart';
part 'product_variant.g.dart';

enum ProductVariantView {
  list,
  chips,
  dropdown;

  IconData get icon => switch (this) {
    ProductVariantView.list => PhosphorIconsThin.list,
    ProductVariantView.chips => PhosphorIconsThin.tag,
    ProductVariantView.dropdown => PhosphorIconsThin.caretDown,
  };

  String get tr => switch (this) {
    ProductVariantView.list => 'List',
    ProductVariantView.chips => 'Chips',
    ProductVariantView.dropdown => 'Dropdown',
  };
}

// ProductVariant
@freezed
abstract class ProductVariant with _$ProductVariant {
  factory ProductVariant({
    @Default("option") String name,
    @Default(ProductVariantView.chips) ProductVariantView view,
    @Default(false) bool required,
    @Default([]) List<ProductVariantOption> options,
  }) = _ProductVariant;

  factory ProductVariant.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantFromJson(json);
}

// ProductVariantOption
@freezed
abstract class ProductVariantOption with _$ProductVariantOption {
  factory ProductVariantOption({
    @Default("option") String name,
    @Default(false) bool hidden,
    @Default(VariantOptionType.text) VariantOptionType type,
    dynamic value,
    ProductVariant? child,
    //
    String? sku,
    num? price,
    num? discount,
    num? stock,
    num? sold,
    @Default(false) bool mustSelectChild,
  }) = _ProductVariantOption;

  factory ProductVariantOption.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantOptionFromJson(json);
}
