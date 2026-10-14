import 'package:dio/dio.dart';
import 'package:feeef/attachments/attachment.dart';


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
class ImageLandingTemplate {
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

  /// Body for create/update; ids and scope are owned by Cloud.
  Map<String, dynamic> toInput() => {
    'name': name,
    'description': description,
    'requirements': requirements,
    'prompt': prompt,
    'preview_image_url': previewImageUrl,
    'fields': fields.map((f) => f.toJson()).toList(),
  };
}

/// Image landing pages (one long poster image, not an HTML page). Usage: `ff.ai.imageLandingPages`.
/// Pass [storeId] to work in that store's Cloud workspace (its own templates).
class ImageLandingPagesApi {
  ImageLandingPagesApi(this.client);
  final Dio client;

  /// Platform templates next to the store's own.
  Future<List<ImageLandingTemplate>> templates({String? storeId}) async {
    final response = await client.get(
      '/ai/image-landing-pages/templates',
      queryParameters: {'storeId': ?storeId},
    );
    return (response.data['data'] as List? ?? const [])
        .whereType<Map>()
        .map((row) => ImageLandingTemplate.fromJson(_map(row)))
        .toList(growable: false);
  }

  Future<ImageLandingTemplate> createTemplate({
    required String storeId,
    required ImageLandingTemplate template,
  }) async {
    final response = await client.post(
      '/ai/image-landing-pages/templates',
      queryParameters: {'storeId': storeId},
      data: template.toInput(),
    );
    return ImageLandingTemplate.fromJson(_map(response.data));
  }

  Future<ImageLandingTemplate> updateTemplate({
    required String storeId,
    required ImageLandingTemplate template,
  }) async {
    final response = await client.patch(
      '/ai/image-landing-pages/templates/${template.id}',
      queryParameters: {'storeId': storeId},
      data: template.toInput(),
    );
    return ImageLandingTemplate.fromJson(_map(response.data));
  }

  Future<void> deleteTemplate({required String storeId, required String id}) =>
      client.delete(
        '/ai/image-landing-pages/templates/$id',
        queryParameters: {'storeId': storeId},
      );

  /// Ask a text model for optional wizard questions. Reuse [idempotencyKey]
  /// when retrying so the same request is never billed twice.
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
