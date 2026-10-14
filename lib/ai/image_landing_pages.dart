import 'package:dio/dio.dart';
import 'package:feeef/attachments/attachment.dart';
import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/interfaces/helpers.dart';


Map<String, dynamic> _map(dynamic value) =>
    value is Map ? Map<String, dynamic>.from(value) : {};

/// Field types shared by template forms and AI-suggested questions.
enum StudioFieldType { text, textarea, select, multiselect, toggle, color, number }

/// One optional question in a template form or an AI-suggested form.
class StudioFormField {
  const StudioFormField({
    required this.key,
    required this.type,
    required this.label,
    this.hint,
    this.placeholder,
    this.options = const [],
    this.defaultValue,
  });

  factory StudioFormField.fromJson(Map<String, dynamic> json) =>
      StudioFormField(
        key: json['key'] as String? ?? '',
        type: StudioFieldType.values.firstWhere(
          (t) => t.name == json['type'],
          orElse: () => StudioFieldType.text,
        ),
        label: json['label'] as String? ?? '',
        hint: json['hint'] as String?,
        placeholder: json['placeholder'] as String?,
        options: (json['options'] as List? ?? const [])
            .whereType<String>()
            .toList(growable: false),
        defaultValue: json['default'],
      );

  final String key;
  final StudioFieldType type;
  final String label;
  final String? hint;
  final String? placeholder;
  final List<String> options;
  final Object? defaultValue;

  Map<String, dynamic> toJson() => {
    'key': key,
    'type': type.name,
    'label': label,
    'hint': ?hint,
    'placeholder': ?placeholder,
    if (options.isNotEmpty) 'options': options,
    'default': ?defaultValue,
  };

  static List<StudioFormField> listFrom(dynamic raw) => (raw is List ? raw : [])
      .whereType<Map>()
      .map((row) => StudioFormField.fromJson(_map(row)))
      .where((f) => f.key.isNotEmpty && f.label.isNotEmpty)
      .toList(growable: false);
}

/// Wizard questions: the template's own fields plus AI-suggested ones.
class ImageLandingQuestions {
  ImageLandingQuestions.fromJson(Map<String, dynamic> json)
    : summary = json['summary'] as String?,
      templateFields = StudioFormField.listFrom(json['templateFields']),
      fields = StudioFormField.listFrom(json['fields']),
      chargeDzd = _map(json['billing'])['chargeDzd'] as String?;
  final String? summary;
  final List<StudioFormField> templateFields;
  final List<StudioFormField> fields;
  final String? chargeDzd;

  List<StudioFormField> get all => [...templateFields, ...fields];
}

/// Image landing page template stored in Feeef Cloud: platform-wide or owned by a store.
class ImageLandingTemplate implements Model {
  const ImageLandingTemplate({
    required this.id,
    required this.name,
    this.isPlatform = false,
    this.description = '',
    this.requirements = '',
    this.prompt = '',
    this.previewImageUrl,
    this.fields = const [],
  });

  factory ImageLandingTemplate.fromJson(Map<String, dynamic> json) => ImageLandingTemplate(
    id: json['id'] as String,
    name: json['name'] as String? ?? '',
    isPlatform: json['scope'] == 'platform',
    description: json['description'] as String? ?? '',
    requirements: json['requirements'] as String? ?? '',
    prompt: json['prompt'] as String? ?? '',
    previewImageUrl: json['preview_image_url'] as String?,
    fields: StudioFormField.listFrom(json['fields']),
  );

  final String id;
  final String name;
  final bool isPlatform;
  final String description;
  final String requirements;
  final String prompt;
  final String? previewImageUrl;
  final List<StudioFormField> fields;

}

/// Create/update body for a template. Ids and scope are owned by Cloud.
class ImageLandingTemplateInput implements ModelCreate, ModelUpdate {
  const ImageLandingTemplateInput({
    required this.name,
    this.description = '',
    this.requirements = '',
    this.prompt = '',
    this.previewImageUrl,
    this.fields = const [],
  });

  factory ImageLandingTemplateInput.fromJson(Map<String, dynamic> json) =>
      ImageLandingTemplateInput(
        name: json['name'] as String? ?? '',
        description: json['description'] as String? ?? '',
        requirements: json['requirements'] as String? ?? '',
        prompt: json['prompt'] as String? ?? '',
        previewImageUrl: json['preview_image_url'] as String?,
        fields: StudioFormField.listFrom(json['fields']),
      );

  factory ImageLandingTemplateInput.of(ImageLandingTemplate template) =>
      ImageLandingTemplateInput(
        name: template.name,
        description: template.description,
        requirements: template.requirements,
        prompt: template.prompt,
        previewImageUrl: template.previewImageUrl,
        fields: template.fields,
      );

  final String name;
  final String description;
  final String requirements;
  final String prompt;
  final String? previewImageUrl;
  final List<StudioFormField> fields;

  @override
  List<String> get setToNull => const [];

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'description': description,
    'requirements': requirements,
    'prompt': prompt,
    'preview_image_url': previewImageUrl,
    'fields': fields.map((f) => f.toJson()).toList(),
  };
}

/// Templates as a resource: `ResourceController` + `ResourceControllerFilterBar`
/// work on it like products. `q` searches name and description; `scope` is
/// `platform` or `mine`. Both are applied to the list Cloud returns.
class ImageLandingTemplateRepository
    extends ResourceRepository<ImageLandingTemplate, ImageLandingTemplateInput, ImageLandingTemplateInput> {
  ImageLandingTemplateRepository({required super.client})
    : super(table: 'ai/image-landing-pages/templates');

  @override
  Future<ListResponse<ImageLandingTemplate>> list({
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) async {
    final response = await super.list(
      page: page,
      offset: offset,
      limit: limit,
      params: params,
    );
    final query = (params?['q'] as String? ?? '').trim().toLowerCase();
    final scope = params?['scope'];
    final data = response.data.where((template) {
      if (scope == 'platform' && !template.isPlatform) return false;
      if (scope == 'mine' && template.isPlatform) return false;
      return query.isEmpty ||
          '${template.name} ${template.description}'.toLowerCase().contains(query);
    }).toList(growable: false);
    return ListResponse(data: data, total: data.length);
  }

  @override
  ImageLandingTemplateInput createFromJson(json) =>
      ImageLandingTemplateInput.fromJson(json);

  @override
  Map<String, dynamic> createToJson(ImageLandingTemplateInput model) =>
      model.toJson();

  @override
  ImageLandingTemplate modelFromJson(json) => ImageLandingTemplate.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(ImageLandingTemplate model) => {
    ...ImageLandingTemplateInput.of(model).toJson(),
    'id': model.id,
  };

  @override
  ImageLandingTemplateInput updateFromJson(json) =>
      ImageLandingTemplateInput.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(ImageLandingTemplateInput model) =>
      model.toJson();
}

/// Image landing pages (one long poster image, not an HTML page). Usage: `ff.ai.imageLandingPages`.
/// Pass [storeId] to work in that store's Cloud workspace (its own templates).
class ImageLandingPagesApi {
  ImageLandingPagesApi(this.client);
  final Dio client;

  Future<ImageLandingQuestions> questions({
    required String idempotencyKey,
    String? storeId,
    String? text,
    List<Attachment>? attachments,
    String? templateId,
    String? textModel,
    String? locale,
  }) async {
    final response = await client.post(
      '/ai/image-landing-pages/questions',
      options: Options(headers: {'Idempotency-Key': idempotencyKey}),
      data: {
        'key': idempotencyKey,
        'storeId': ?storeId,
        if (text != null && text.trim().isNotEmpty) 'text': text.trim(),
        if (attachments != null && attachments.isNotEmpty)
          'attachments': attachments.map((a) => a.toJson()).toList(),
        'templateId': ?templateId,
        'textModel': ?textModel,
        'locale': ?locale,
      },
    );
    return ImageLandingQuestions.fromJson(_map(response.data));
  }
}
