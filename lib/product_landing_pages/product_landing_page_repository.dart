import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/orders/models/lite_orders_report.dart';
import 'package:feeef/product_landing_page_templates/product_landing_page_template.dart';
import 'package:feeef/product_landing_pages/product_landing_page.dart';

/// Result of publishing a product landing page into the public template catalog.
class ProductLandingTemplatePublishResult {
  const ProductLandingTemplatePublishResult({
    required this.created,
    required this.publishedTemplateId,
    required this.template,
  });

  /// True when this call created the listing. False when it updated one.
  final bool created;

  /// Id stored on the page so the next publish updates the same row.
  final String publishedTemplateId;

  final ProductLandingPageTemplate template;
}

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

  /// Publishes [id] as a public product-landing template, or updates that listing.
  ///
  /// [schema] is omitted when the editor has no raw schema, so the server
  /// keeps the schema already stored on the page. [defaults] is the current
  /// editor document and becomes the template's starting content.
  Future<ProductLandingTemplatePublishResult> publishAsTemplate({
    required String id,
    required String name,
    String? description,
    String? imageUrl,
    /// When false, the cover already stored on the listing is left alone.
    bool sendImageUrl = false,
    Map<String, dynamic>? schema,
    required Map<String, dynamic> defaults,
  }) async {
    final response = await client.post<dynamic>(
      '/product_landing_pages/$id/publish_template',
      data: {
        'name': name,
        'description': description,
        'defaults': defaults,
        'schema': ?schema,
        if (sendImageUrl) 'imageUrl': imageUrl,
      },
    );
    final body = response.data;
    if (body is! Map) {
      throw StateError('Empty publish response');
    }
    final json = Map<String, dynamic>.from(body);
    final templateJson = json['template'];
    if (templateJson is! Map) {
      throw StateError('Publish response is missing the template');
    }
    return ProductLandingTemplatePublishResult(
      created: json['created'] == true,
      publishedTemplateId: json['publishedTemplateId'] as String,
      template: ProductLandingPageTemplate.fromJson(
        Map<String, dynamic>.from(templateJson),
      ),
    );
  }

  /// Lite orders report for [landingPageId] in [storeId].
  Future<LiteOrdersReport> liteOrdersReport({
    required String landingPageId,
    required String storeId,
  }) async {
    final response = await client.get(
      '/stores/$storeId/product_landing_pages/$landingPageId/analytics/lor',
    );
    return LiteOrdersReport.fromApiResponse(response.data);
  }
}
