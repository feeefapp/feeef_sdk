import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/product_landing_pages/product_landing_page.dart';

/// Repository for ProductLandingPage CRUD and list by store.
class ProductLandingPageRepository
    extends ResourceRepository<
        ProductLandingPage,
        ProductLandingPageCreate,
        ProductLandingPageUpdate> {
  ProductLandingPageRepository({required super.client})
      : super(table: 'product_landing_pages');

  @override
  ProductLandingPageCreate createFromJson(json) =>
      ProductLandingPageCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(ProductLandingPageCreate model) =>
      model.toJson();

  @override
  ProductLandingPage modelFromJson(json) => ProductLandingPage.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(ProductLandingPage model) => model.toJson();

  @override
  ProductLandingPageUpdate updateFromJson(json) =>
      ProductLandingPageUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(ProductLandingPageUpdate model) =>
      model.toJson();

  @override
  Future<ListResponse<ProductLandingPage>> list({
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
      params: {if (storeId != null) 'store_id': storeId, ...?params},
    );
  }
}
