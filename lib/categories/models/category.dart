import 'package:feeef/interfaces/category.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'category.freezed.dart';
part 'category.g.dart';

@freezed
abstract class Category extends CategoryEntity
    with _$Category
    implements Model, ModelMetadata {
  Category._();
  factory Category({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String storeId,
    String? parentId,
    required String name,
    String? description,
    String? photoUrl,
    @Default({}) Map<String, dynamic> metadata,
    Category? parent,
    List<Category>? children,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
abstract class CategoryCreate with _$CategoryCreate implements ModelCreate {
  const factory CategoryCreate({
    required String storeId,
    String? parentId,
    required String name,
    String? description,
    String? photoUrl,
    @Default({}) Map<String, dynamic> metadata,
  }) = _CategoryCreate;

  factory CategoryCreate.fromJson(Map<String, dynamic> json) =>
      _$CategoryCreateFromJson(json);
}

@freezed
abstract class CategoryUpdate with _$CategoryUpdate implements ModelUpdate {
  const factory CategoryUpdate({
    String? parentId,
    String? name,
    String? description,
    String? photoUrl,
    Map<String, dynamic>? metadata,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _CategoryUpdate;

  factory CategoryUpdate.fromJson(Map<String, dynamic> json) =>
      _$CategoryUpdateFromJson(json);
}
