import 'package:feeef/interfaces/product_landing_page_template.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../interfaces/helpers.dart';

part 'product_landing_page_template.freezed.dart';
part 'product_landing_page_template.g.dart';

@freezed
abstract class ProductLandingPageTemplate
    extends ProductLandingPageTemplateEntity
    with _$ProductLandingPageTemplate
    implements Model {
  ProductLandingPageTemplate._();
  factory ProductLandingPageTemplate({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String name,
    required String description,
    required String imageUrl,
    Map<String, dynamic>? schema,
    required Map<String, dynamic> defaults,
  }) = _ProductLandingPageTemplate;

  /// Deserializes from API JSON. Normalizes null or invalid [schema] and [defaults]
  /// so the generated code does not throw when the API omits or sends wrong types.
  // factory ProductLandingPageTemplate.fromJson(Map<String, dynamic> json) {
  //   final normalized = Map<String, dynamic>.from(json);
  //   if (normalized['defaults'] == null || normalized['defaults'] is! Map) {
  //     normalized['defaults'] = <String, dynamic>{};
  //   }
  //   if (normalized['schema'] != null && normalized['schema'] is! Map) {
  //     normalized['schema'] = null;
  //   }
  //   return _$ProductLandingPageTemplateFromJson(normalized);
  // }

  factory ProductLandingPageTemplate.fromJson(Map<String, dynamic> json) => _$ProductLandingPageTemplateFromJson(json);
}

@freezed
abstract class ProductLandingPageTemplateCreate
    with _$ProductLandingPageTemplateCreate
    implements ModelCreate {
  const factory ProductLandingPageTemplateCreate({
    required String name,
    required String description,
    required String imageUrl,
    required Map<String, dynamic> schema,
    required Map<String, dynamic> defaults,
  }) = _ProductLandingPageTemplateCreate;

  factory ProductLandingPageTemplateCreate.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductLandingPageTemplateCreateFromJson(json);
}

@freezed
abstract class ProductLandingPageTemplateUpdate
    with _$ProductLandingPageTemplateUpdate
    implements ModelUpdate {
  const factory ProductLandingPageTemplateUpdate({
    String? name,
    String? description,
    String? imageUrl,
    Map<String, dynamic>? schema,
    Map<String, dynamic>? defaults,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _ProductLandingPageTemplateUpdate;

  factory ProductLandingPageTemplateUpdate.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductLandingPageTemplateUpdateFromJson(json);
}
