import 'package:feeef/attachments/attachment.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/interfaces/image_prompt_template.dart';

List<Attachment> _attachmentsFromJson(List<dynamic>? json) {
  if (json == null) return const [];
  return json
      .whereType<Map>()
      .map((item) => Attachment.fromJson(Map<String, dynamic>.from(item)))
      .whereType<Attachment>()
      .toList(growable: false);
}

List<Map<String, dynamic>> _attachmentsToJson(List<Attachment> attachments) =>
    attachments.map((item) => item.toJson()).toList(growable: false);

class ImagePromptTemplate extends ImagePromptTemplateEntity implements Model {
  const ImagePromptTemplate({
    required this.id,
    required this.name,
    this.description,
    required this.prompt,
    this.tags = const [],
    this.attachments = const [],
    this.previewImageUrl,
    this.propsSchema = const {},
    this.props = const {},
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String prompt;
  @override
  final List<String> tags;
  @override
  final List<Attachment> attachments;
  @override
  final String? previewImageUrl;
  @override
  final Map<String, dynamic> propsSchema;
  @override
  final Map<String, dynamic> props;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory ImagePromptTemplate.fromJson(Map<String, dynamic> json) {
    return ImagePromptTemplate(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      prompt: json['prompt'] as String,
      tags:
          (json['tags'] as List?)
              ?.map((item) => item.toString())
              .toList(growable: false) ??
          const [],
      attachments: _attachmentsFromJson(json['attachments'] as List?),
      previewImageUrl:
          json['previewImageUrl'] as String? ??
          json['preview_image_url'] as String?,
      propsSchema: Map<String, dynamic>.from(
        (json['propsSchema'] as Map?) ??
            (json['props_schema'] as Map?) ??
            const {},
      ),
      props: Map<String, dynamic>.from((json['props'] as Map?) ?? const {}),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'prompt': prompt,
    'tags': tags,
    'attachments': _attachmentsToJson(attachments),
    'previewImageUrl': previewImageUrl,
    'propsSchema': propsSchema,
    'props': props,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt.toIso8601String(),
  };
}

class ImagePromptTemplateCreate implements ModelCreate {
  const ImagePromptTemplateCreate({
    required this.name,
    this.description,
    required this.prompt,
    this.tags = const [],
    this.attachments = const [],
    this.previewImageUrl,
    this.propsSchema = const {},
    this.props = const {},
  });

  final String name;
  final String? description;
  final String prompt;
  final List<String> tags;
  final List<Attachment> attachments;
  final String? previewImageUrl;
  final Map<String, dynamic> propsSchema;
  final Map<String, dynamic> props;

  factory ImagePromptTemplateCreate.fromJson(Map<String, dynamic> json) {
    return ImagePromptTemplateCreate(
      name: json['name'] as String,
      description: json['description'] as String?,
      prompt: json['prompt'] as String,
      tags:
          (json['tags'] as List?)
              ?.map((item) => item.toString())
              .toList(growable: false) ??
          const [],
      attachments: _attachmentsFromJson(json['attachments'] as List?),
      previewImageUrl:
          json['previewImageUrl'] as String? ??
          json['preview_image_url'] as String?,
      propsSchema: Map<String, dynamic>.from(
        (json['propsSchema'] as Map?) ??
            (json['props_schema'] as Map?) ??
            const {},
      ),
      props: Map<String, dynamic>.from((json['props'] as Map?) ?? const {}),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'description': description,
    'prompt': prompt,
    'tags': tags,
    'attachments': _attachmentsToJson(attachments),
    'previewImageUrl': previewImageUrl,
    'propsSchema': propsSchema,
    'props': props,
  };
}

class ImagePromptTemplateUpdate implements ModelUpdate {
  const ImagePromptTemplateUpdate({
    this.name,
    this.description,
    this.prompt,
    this.tags,
    this.attachments,
    this.previewImageUrl,
    this.propsSchema,
    this.props,
    this.setToNull = const [],
  });

  final String? name;
  final String? description;
  final String? prompt;
  final List<String>? tags;
  final List<Attachment>? attachments;
  final String? previewImageUrl;
  final Map<String, dynamic>? propsSchema;
  final Map<String, dynamic>? props;
  @override
  final List<String> setToNull;

  factory ImagePromptTemplateUpdate.fromJson(Map<String, dynamic> json) {
    return ImagePromptTemplateUpdate(
      name: json['name'] as String?,
      description: json['description'] as String?,
      prompt: json['prompt'] as String?,
      tags: (json['tags'] as List?)
          ?.map((item) => item.toString())
          .toList(growable: false),
      attachments: json['attachments'] is List
          ? _attachmentsFromJson(json['attachments'] as List?)
          : null,
      previewImageUrl:
          json['previewImageUrl'] as String? ??
          json['preview_image_url'] as String?,
      propsSchema: json['propsSchema'] is Map
          ? Map<String, dynamic>.from(json['propsSchema'] as Map)
          : json['props_schema'] is Map
          ? Map<String, dynamic>.from(json['props_schema'] as Map)
          : null,
      props: json['props'] is Map
          ? Map<String, dynamic>.from(json['props'] as Map)
          : null,
      setToNull:
          (json['setToNull'] as List?)
              ?.map((item) => item.toString())
              .toList(growable: false) ??
          const [],
    );
  }

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'description': description,
    'prompt': prompt,
    'tags': tags,
    'attachments': attachments == null
        ? null
        : _attachmentsToJson(attachments!),
    'previewImageUrl': previewImageUrl,
    'propsSchema': propsSchema,
    'props': props,
  };
}
