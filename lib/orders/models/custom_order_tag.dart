// ignore_for_file: invalid_annotation_target

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
    @ColorSerializer() required int color,
  }) = _CustomOrderTag;

  factory CustomOrderTag.fromJson(Map<String, dynamic> json) =>
      _$CustomOrderTagFromJson(json);
}

@freezed
abstract class CustomOrderTagHistory with _$CustomOrderTagHistory {
  /// Nested [tag] must serialize via `tag.toJson()` (see generated
  /// `_$CustomOrderTagHistoryToJson`). Without that, writing histories into
  /// `metadata` and reading them back throws
  /// `type 'CustomOrderTag' is not a subtype of type 'Map<String, dynamic>'`
  /// (minified as `minified:LS` in release builds).
  @JsonSerializable(explicitToJson: true)
  factory CustomOrderTagHistory({
    String? userId,
    required CustomOrderTag tag,
    String? note,
    required DateTime createdAt,
  }) = _CustomOrderTagHistory;

  factory CustomOrderTagHistory.fromJson(Map<String, dynamic> json) =>
      _$CustomOrderTagHistoryFromJson(json);
}

/// Coerces a metadata entry into a JSON map for [CustomOrderTag.fromJson].
Map<String, dynamic> _asJsonMap(dynamic value) {
  if (value is Map<String, dynamic>) return value;
  if (value is Map) return Map<String, dynamic>.from(value);
  if (value is CustomOrderTag) return value.toJson();
  if (value is CustomOrderTagHistory) return value.toJson();
  throw ArgumentError(
    'Expected Map or tag model, got ${value.runtimeType}',
  );
}

// extension to StoreEntity
extension CustomOrderTagExtension on StoreEntity {
  List<CustomOrderTag> get customOrderTags {
    final raw = metadata['customOrderTags'];
    if (raw is! List) return const [];
    return [
      for (final e in raw)
        if (e is CustomOrderTag)
          e
        else
          CustomOrderTag.fromJson(_asJsonMap(e)),
    ];
  }
}

// extension to OrderEntity
extension CustomOrderTagHistoryExtension on OrderEntity {
  List<CustomOrderTagHistory> get customOrderTagHistories {
    final raw = metadata['customOrderTagHistories'];
    if (raw is! List) return const [];
    return [
      for (final e in raw)
        if (e is CustomOrderTagHistory)
          e
        else
          CustomOrderTagHistory.fromJson(_historyJsonMap(e)),
    ];
  }
}

/// Normalizes a history metadata row, including a nested `tag` that may still
/// be a live [CustomOrderTag] from a buggy serializer.
Map<String, dynamic> _historyJsonMap(dynamic value) {
  final map = _asJsonMap(value);
  final tag = map['tag'];
  if (tag is CustomOrderTag) {
    return {...map, 'tag': tag.toJson()};
  }
  if (tag is Map && tag is! Map<String, dynamic>) {
    return {...map, 'tag': Map<String, dynamic>.from(tag)};
  }
  return map;
}
