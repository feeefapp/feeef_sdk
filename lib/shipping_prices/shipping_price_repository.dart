import 'package:feeef/core/list_response.dart';

import '../feeef.dart';
import '../interfaces/shipping_price.dart';
import 'models/shipping_price.dart';

/// Repository for managing shipping prices
/// Simple CRUD operations similar to shipping methods
class ShippingPriceRepository extends ModelRepository<ShippingPrice>
    with
        ModelCreateMixin<ShippingPrice, ShippingPriceCreate>,
        ModelListMixin<ShippingPrice>,
        ModelUpdateMixin<ShippingPrice, ShippingPriceUpdate>,
        ModelDeleteMixin<ShippingPrice> {
  ShippingPriceRepository({required super.client})
    : super(table: 'shipping_prices');

  @override
  ShippingPriceCreate createFromJson(json) =>
      ShippingPriceCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(ShippingPriceCreate model) =>
      model.toJson();

  @override
  ShippingPrice modelFromJson(json) => ShippingPrice.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(ShippingPrice model) => model.toJson();

  @override
  ShippingPriceUpdate updateFromJson(json) =>
      ShippingPriceUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(ShippingPriceUpdate model) =>
      model.toJson();

  /// Find a shipping price by ID
  Future<ShippingPrice> find({
    required String id,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.get(
      '/$table/$id',
      queryParameters: params,
      cancelToken: modelFindCancelToken,
    );
    return modelFromJson(response.data);
  }

  // override list and add storeId filter
  @override
  Future<ListResponse<ShippingPrice>> list({
    String? storeId,
    ShippingPriceStatus? status,
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) {
    return super.list(
      page: page,
      offset: offset,
      limit: limit,
      params: {
        if (storeId != null) 'store_id': storeId,
        if (status != null) 'status': status.name,
        ...?params,
      },
    );
  }
}
