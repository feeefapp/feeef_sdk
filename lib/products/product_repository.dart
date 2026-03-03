import 'dart:developer' as developer;

import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/products/models/product.dart';
import 'package:feeef/products/models/product_report.dart';

/// Repository for Product CRUD, list with filters, sells chart, and report.
class ProductRepository
    extends ResourceRepository<Product, ProductCreate, ProductUpdate> {
  ProductRepository({required super.client}) : super(table: 'products');

  @override
  ProductCreate createFromJson(json) => ProductCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(ProductCreate model) => model.toJson();

  @override
  Product modelFromJson(json) => Product.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(Product model) => model.toJson();

  @override
  ProductUpdate updateFromJson(json) => ProductUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(ProductUpdate model) => model.toJson();

  @override
  Future<ListResponse<Product>> list({
    String? storeId,
    Map<String, dynamic>? filterParams,
    String? searchQuery,
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) {
    final Map<String, dynamic> merged = {
      if (params != null) ...params,
      if (storeId != null) 'store_id': storeId,
      if (filterParams != null) ...filterParams,
      if (filterParams == null && searchQuery?.isNotEmpty == true) 'q': searchQuery,
    };
    return super.list(page: page, offset: offset, limit: limit, params: merged);
  }

  Future<Map<DateTime, int>> sells({
    required String productId,
    required String storeId,
  }) async {
    try {
      final response = await client.get(
        '/stores/$storeId/$table/$productId/sells',
      );
      developer.log('${response.data}');
      var sells = (response.data as Map).map(
        (key, value) =>
            MapEntry(DateTime.parse(key), int.tryParse(value.toString()) ?? 0),
      );
      return sells;
    } catch (e) {
      rethrow;
    }
  }

  Future<ProductReport> report({
    required String productId,
    required String storeId,
  }) async {
    try {
      final response = await client.get(
        '/stores/xp4wtahsvq7j/products/udjomo15ahb1/report',
      );
      return ProductReport.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
