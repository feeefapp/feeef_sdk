import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/product_landing_page_templates/product_landing_page_template.dart';

/// Repository for ProductLandingPageTemplate CRUD.
class ProductLandingPageTemplateRepository
    extends ResourceRepository<
        ProductLandingPageTemplate,
        ProductLandingPageTemplateCreate,
        ProductLandingPageTemplateUpdate> {
  ProductLandingPageTemplateRepository({required super.client})
      : super(table: 'product_landing_page_templates');

  @override
  ProductLandingPageTemplateCreate createFromJson(json) =>
      ProductLandingPageTemplateCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(ProductLandingPageTemplateCreate model) =>
      model.toJson();

  @override
  ProductLandingPageTemplate modelFromJson(json) =>
      ProductLandingPageTemplate.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(ProductLandingPageTemplate model) =>
      model.toJson();

  @override
  ProductLandingPageTemplateUpdate updateFromJson(json) =>
      ProductLandingPageTemplateUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(ProductLandingPageTemplateUpdate model) =>
      model.toJson();
}
