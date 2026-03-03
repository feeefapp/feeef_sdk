import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/model_repository.dart';
import 'package:feeef/mixins/repository_mixins.dart';
import 'package:feeef/shipping_methods/models/shipping_method.dart';

/// Repository for ShippingMethod CRUD.
class ShippingMethodRepository extends ModelRepository<ShippingMethod>
    with
        ModelCreateMixin<ShippingMethod, ShippingMethodCreate>,
        ModelFindMixin<ShippingMethod>,
        ModelListMixin<ShippingMethod>,
        ModelUpdateMixin<ShippingMethod, ShippingMethodUpdate>,
        ModelDeleteMixin<ShippingMethod> {
  ShippingMethodRepository({required super.client})
      : super(table: 'shipping_methods');

  @override
  ShippingMethodCreate createFromJson(json) =>
      ShippingMethodCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(ShippingMethodCreate model) =>
      model.toJson();

  @override
  ShippingMethod modelFromJson(json) => ShippingMethod.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(ShippingMethod model) => model.toJson();

  @override
  ShippingMethodUpdate updateFromJson(json) =>
      ShippingMethodUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(ShippingMethodUpdate model) =>
      model.toJson();

  @override
  Future<ListResponse<ShippingMethod>> list({
    String? storeId,
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) {
    return super.list(
      page: page,
      offset: offset,
      limit: limit,
      params: {if (storeId != null) 'store_id': storeId},
    );
  }
}
