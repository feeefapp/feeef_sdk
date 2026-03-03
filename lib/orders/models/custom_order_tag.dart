import 'dart:ui';

import 'package:feeef/interfaces/order.dart';
import 'package:feeef/interfaces/store.dart';
import 'package:feeef/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_order_tag.freezed.dart';
part 'custom_order_tag.g.dart';

@freezed
abstract class CustomOrderTag with _$CustomOrderTag {
  factory CustomOrderTag({
    String? userId,
    required String name,
    String? note,
    @ColorSerializer() required Color color,
  }) = _CustomOrderTag;

  factory CustomOrderTag.fromJson(Map<String, dynamic> json) =>
      _$CustomOrderTagFromJson(json);
}

@freezed
abstract class CustomOrderTagHistory with _$CustomOrderTagHistory {
  factory CustomOrderTagHistory({
    String? userId,
    required CustomOrderTag tag,
    String? note,
    required DateTime createdAt,
  }) = _CustomOrderTagHistory;

  factory CustomOrderTagHistory.fromJson(Map<String, dynamic> json) =>
      _$CustomOrderTagHistoryFromJson(json);
}

// extension to StoreEntity
extension CustomOrderTagExtension on StoreEntity {
  List<CustomOrderTag> get customOrderTags {
    if (metadata['customOrderTags'] == null) return [];
    return List<CustomOrderTag>.from(
      metadata['customOrderTags'].map((e) {
        return CustomOrderTag.fromJson(e);
      }),
    );
  }
}

// extension to OrderEntity
extension CustomOrderTagHistoryExtension on OrderEntity {
  List<CustomOrderTagHistory> get customOrderTagHistories {
    if (metadata['customOrderTagHistories'] == null) return [];
    return List<CustomOrderTagHistory>.from(
      metadata['customOrderTagHistories'].map((e) {
        return CustomOrderTagHistory.fromJson(e);
      }),
    );
  }
}
