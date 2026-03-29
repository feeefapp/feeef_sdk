import 'package:feeef/interfaces/product_landing_page.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../interfaces/helpers.dart';
import '../orders/models/lite_orders_report.dart';
import '../product_landing_page_templates/product_landing_page_template.dart';
import '../products/models/product.dart';
import '../stores/models/store.dart';

part 'product_landing_page.freezed.dart';
part 'product_landing_page.g.dart';

LiteOrdersReport? _landingLorFromJson(Object? o) {
  if (o == null) return null;
  if (o is Map<String, dynamic>) return LiteOrdersReport.fromJson(o);
  if (o is Map) return LiteOrdersReport.fromJson(Map<String, dynamic>.from(o));
  return null;
}

@freezed
abstract class ProductLandingPage extends ProductLandingPageEntity
    with _$ProductLandingPage
    implements Model {
  ProductLandingPage._();
  factory ProductLandingPage({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String name,
    String? description,
    String? templateId,
    Map<String, dynamic>? schema,
    required Map<String, dynamic> defaults,
    required String productId,
    required String storeId,
    ProductLandingPageTemplate? template,
    Product? product,
    Store? store,
    /// Present when list/show is called with `with[]=lor` and the user may view analytics.
    @JsonKey(fromJson: _landingLorFromJson) LiteOrdersReport? lor,
  }) = _ProductLandingPage;

  /// Deserializes from API JSON. Normalizes null [defaults] so the generated
  /// code does not throw when the API omits it.
  // factory ProductLandingPage.fromJson(Map<String, dynamic> json) {
  //   final normalized = Map<String, dynamic>.from(json);
  //   if (normalized['defaults'] == null || normalized['defaults'] is! Map) {
  //     normalized['defaults'] = <String, dynamic>{};
  //   }
  //   return _$ProductLandingPageFromJson(normalized);
  // }

  factory ProductLandingPage.fromJson(Map<String, dynamic> json) => _$ProductLandingPageFromJson(json);
}

@freezed
abstract class ProductLandingPageCreate
    with _$ProductLandingPageCreate
    implements ModelCreate {
  const factory ProductLandingPageCreate({
    required String name,
    String? description,
    String? templateId,
    Map<String, dynamic>? schema,
    required Map<String, dynamic> defaults,
    String? productId,
    required String storeId,
  }) = _ProductLandingPageCreate;

  factory ProductLandingPageCreate.fromJson(Map<String, dynamic> json) =>
      _$ProductLandingPageCreateFromJson(json);
}

@freezed
abstract class ProductLandingPageUpdate
    with _$ProductLandingPageUpdate
    implements ModelUpdate {
  const factory ProductLandingPageUpdate({
    String? name,
    String? description,
    String? templateId,
    Map<String, dynamic>? schema,
    Map<String, dynamic>? defaults,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
    String? productId,
    String? storeId,
  }) = _ProductLandingPageUpdate;

  factory ProductLandingPageUpdate.fromJson(Map<String, dynamic> json) =>
      _$ProductLandingPageUpdateFromJson(json);
}
