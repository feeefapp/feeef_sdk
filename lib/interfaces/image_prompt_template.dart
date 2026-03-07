import 'package:feeef/attachments/attachment.dart';

abstract class ImagePromptTemplateEntity {
  const ImagePromptTemplateEntity();

  String get id;
  String get name;
  String? get description;
  String get prompt;
  List<String> get tags;
  List<Attachment> get attachments;
  String? get previewImageUrl;
  Map<String, dynamic> get propsSchema;
  Map<String, dynamic> get props;
  DateTime get createdAt;
  DateTime get updatedAt;
}
