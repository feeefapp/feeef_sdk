import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/interfaces/shipping_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_method.freezed.dart';
part 'shipping_method.g.dart';

@freezed
abstract class ShippingMethod extends ShippingMethodEntity
    with _$ShippingMethod
    implements Model, ModelMetadata {
  ShippingMethod._();
  factory ShippingMethod({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default({}) Map<String, dynamic> metadata,
    required String name,
    String? description,
    String? logoUrl,
    String? ondarkLogoUrl,
    @Default(0) num price,
    @Default(0) num forks,
    String? sourceId,
    required String storeId,
    @Default([]) List<List<num?>?> rates,
    required ShippingMethodStatus status,
    required ShippingMethodPolicy policy,
    DateTime? verifiedAt,
  }) = _ShippingMethod;

  factory ShippingMethod.fromJson(Map<String, dynamic> json) =>
      _$ShippingMethodFromJson(json);
}

// ShippingMethodCreate
@freezed
abstract class ShippingMethodCreate
    with _$ShippingMethodCreate
    implements ModelCreate {
  const factory ShippingMethodCreate({
    String? id,
    @Default({}) Map<String, dynamic> metadata,
    required String name,
    String? description,
    String? logoUrl,
    String? ondarkLogoUrl,
    @Default(0) num price,
    @Default(0) num forks,
    String? sourceId,
    required String storeId,
    @Default([]) List<List<num?>?> rates,
    required ShippingMethodStatus status,
    required ShippingMethodPolicy policy,
    DateTime? verifiedAt,
  }) = _ShippingMethodCreate;

  factory ShippingMethodCreate.fromJson(Map<String, dynamic> json) =>
      _$ShippingMethodCreateFromJson(json);
}

// ShippingMethodUpdate
@freezed
abstract class ShippingMethodUpdate
    with _$ShippingMethodUpdate
    implements ModelUpdate {
  const factory ShippingMethodUpdate({
    Map<String, dynamic>? metadata,
    String? name,
    String? description,
    String? logoUrl,
    String? ondarkLogoUrl,
    num? price,
    // String? sourceId,
    String? storeId,
    List<List<num?>?>? rates,
    ShippingMethodStatus? status,
    ShippingMethodPolicy? policy,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _ShippingMethodUpdate;

  factory ShippingMethodUpdate.fromJson(Map<String, dynamic> json) =>
      _$ShippingMethodUpdateFromJson(json);
}
