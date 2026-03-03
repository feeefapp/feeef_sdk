import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/interfaces/shipping_price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_price.freezed.dart';
part 'shipping_price.g.dart';

@freezed
// ignore: non_abstract_class_inherits_abstract_member
abstract class ShippingPrice extends ShippingPriceEntity
    with _$ShippingPrice
    implements Model, ModelMetadata {
  ShippingPrice._();
  factory ShippingPrice({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default({}) Map<String, dynamic> metadata,
    required String name,
    String? logoUrl,
    required String storeId,
    // ignore: invalid_annotation_target
    @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson)
    required Map<String, Map<String, ShippingStateRates>> prices,
    @Default(ShippingPriceStatus.draft) ShippingPriceStatus status,
  }) = _ShippingPrice;

  factory ShippingPrice.fromJson(Map<String, dynamic> json) =>
      _$ShippingPriceFromJson(json);
}

/// Helper function to convert JSON to prices map
Map<String, Map<String, ShippingStateRates>> _pricesFromJson(dynamic json) {
  if (json == null) return {};
  final Map<String, dynamic> jsonMap = json as Map<String, dynamic>;
  return jsonMap.map((countryCode, countryData) {
    final Map<String, dynamic> statesMap = countryData as Map<String, dynamic>;
    final Map<String, ShippingStateRates> states = statesMap.map(
      (stateCode, stateData) => MapEntry(
        stateCode,
        ShippingStateRates.fromJson(stateData as Map<String, dynamic>),
      ),
    );
    return MapEntry(countryCode, states);
  });
}

/// Helper function to convert prices map to JSON
Map<String, dynamic> _pricesToJson(
  Map<String, Map<String, ShippingStateRates>>? prices,
) {
  if (prices == null) return {};
  return prices.map((countryCode, states) {
    final Map<String, dynamic> statesJson = states.map(
      (stateCode, rates) => MapEntry(stateCode, rates.toJson()),
    );
    return MapEntry(countryCode, statesJson);
  });
}

// ShippingPriceCreate
@freezed
// ignore: non_abstract_class_inherits_abstract_member
abstract class ShippingPriceCreate
    with _$ShippingPriceCreate
    implements ModelCreate {
  const factory ShippingPriceCreate({
    String? id,
    @Default({}) Map<String, dynamic> metadata,
    required String name,
    String? logoUrl,
    required String storeId,
    // ignore: invalid_annotation_target
    @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson)
    @Default({})
    Map<String, Map<String, ShippingStateRates>> prices,
    @Default(ShippingPriceStatus.draft) ShippingPriceStatus status,
  }) = _ShippingPriceCreate;

  factory ShippingPriceCreate.fromJson(Map<String, dynamic> json) =>
      _$ShippingPriceCreateFromJson(json);
}

// ShippingPriceUpdate
@freezed
// ignore: non_abstract_class_inherits_abstract_member
abstract class ShippingPriceUpdate
    with _$ShippingPriceUpdate
    implements ModelUpdate {
  const factory ShippingPriceUpdate({
    Map<String, dynamic>? metadata,
    String? name,
    String? logoUrl,
    String? storeId,
    // ignore: invalid_annotation_target
    @JsonKey(fromJson: _pricesFromJson, toJson: _pricesToJson)
    Map<String, Map<String, ShippingStateRates>>? prices,
    ShippingPriceStatus? status,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _ShippingPriceUpdate;

  factory ShippingPriceUpdate.fromJson(Map<String, dynamic> json) =>
      _$ShippingPriceUpdateFromJson(json);
}
