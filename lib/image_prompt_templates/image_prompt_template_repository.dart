import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/image_prompt_templates/image_prompt_template.dart';

/// Repository for ImagePromptTemplate CRUD.
class ImagePromptTemplateRepository
    extends
        ResourceRepository<
          ImagePromptTemplate,
          ImagePromptTemplateCreate,
          ImagePromptTemplateUpdate
        > {
  ImagePromptTemplateRepository({required super.client})
    : super(table: 'image_prompt_templates');

  @override
  ImagePromptTemplateCreate createFromJson(json) =>
      ImagePromptTemplateCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(ImagePromptTemplateCreate model) =>
      model.toJson();

  @override
  ImagePromptTemplate modelFromJson(json) => ImagePromptTemplate.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(ImagePromptTemplate model) => model.toJson();

  @override
  ImagePromptTemplateUpdate updateFromJson(json) =>
      ImagePromptTemplateUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(ImagePromptTemplateUpdate model) =>
      model.toJson();
}
