import 'package:feeef/attachments/attachment.dart';

/// Aspect ratios accepted by `POST /ai/image-landing-pages`.
///
/// Keep in sync with backend `IMAGE_LANDING_PAGE_ASPECT_RATIOS`
/// (`backend/app/validators/generate_image_landing_page.ts`).
const List<String> kImageLandingPageAspectRatios = [
  'auto',
  '1:8',
  '1:6',
  '1:5',
  '1:4',
  '9:16',
  '9:32',
  '1:1',
  '3:4',
  '4:3',
  '16:9',
  '32:9',
];

/// JSON body keys for [buildGenerateImageLandingPageRequestData].
///
/// Contract mirror of the Vine schema on the AdonisJS endpoint — used by SDK
/// unit tests and merchant↔backend contract tests so a renamed key fails CI.
abstract final class ImageLandingPageRequestKeys {
  static const text = 'text';
  static const attachments = 'attachments';
  static const inlineTemplate = 'inlineTemplate';
  static const templateId = 'templateId';
  static const answers = 'answers';
  static const storeId = 'storeId';
  static const aspectRatio = 'aspectRatio';
  static const imageModel = 'imageModel';
  static const textModel = 'textModel';
  static const mediaResolution = 'mediaResolution';
  static const imageSize = 'imageSize';
  static const size = 'size';
  static const background = 'background';
  static const loadProductImage = 'loadProductImage';
  static const sectionsCount = 'sectionsCount';
}

/// Pure request-body builder for image landing page generation.
///
/// Keeps [ActionsService.generateImageLandingPage] thin and makes every wire
/// param unit-testable without Dio. Empty optional strings are omitted so the
/// server applies its own defaults.
Map<String, dynamic> buildGenerateImageLandingPageRequestData({
  required String text,
  List<Attachment>? attachments,
  Map<String, dynamic>? inlineTemplate,
  String? templateId,
  Map<String, Object>? answers,
  String? storeId,
  String? aspectRatio,
  String? imageModel,
  String? textModel,
  String? mediaResolution,
  String? imageSize,
  /// Exact `WIDTHxHEIGHT` for models that take a pixel size instead of an aspect ratio.
  String? size,
  String? background,
  bool? loadProductImage,
  int? sectionsCount,
}) {
  final trimmed = text.trim();
  final attachmentMaps = attachments != null && attachments.isNotEmpty
      ? attachments.map((a) => a.toJson()).toList()
      : null;

  return <String, dynamic>{
    ImageLandingPageRequestKeys.text: trimmed,
    // Prefer explicit `if` over null-aware map entries so null values are never
    // serialized (Dio would send `"loadProductImage": null` otherwise).
    if (attachmentMaps != null)
      ImageLandingPageRequestKeys.attachments: attachmentMaps,
    if (inlineTemplate != null)
      ImageLandingPageRequestKeys.inlineTemplate: inlineTemplate,
    if (templateId != null && templateId.trim().isNotEmpty)
      ImageLandingPageRequestKeys.templateId: templateId.trim(),
    if (answers != null && answers.isNotEmpty)
      ImageLandingPageRequestKeys.answers: answers,
    if (storeId != null && storeId.trim().isNotEmpty)
      ImageLandingPageRequestKeys.storeId: storeId.trim(),
    if (aspectRatio != null && aspectRatio.trim().isNotEmpty)
      ImageLandingPageRequestKeys.aspectRatio: aspectRatio.trim(),
    if (imageModel != null && imageModel.trim().isNotEmpty)
      ImageLandingPageRequestKeys.imageModel: imageModel.trim(),
    if (textModel != null && textModel.trim().isNotEmpty)
      ImageLandingPageRequestKeys.textModel: textModel.trim(),
    if (mediaResolution != null && mediaResolution.trim().isNotEmpty)
      ImageLandingPageRequestKeys.mediaResolution: mediaResolution.trim(),
    if (imageSize != null && imageSize.trim().isNotEmpty)
      ImageLandingPageRequestKeys.imageSize: imageSize.trim(),
    if (size != null && size.trim().isNotEmpty)
      ImageLandingPageRequestKeys.size: size.trim(),
    if (background != null && background.trim().isNotEmpty)
      ImageLandingPageRequestKeys.background: background.trim(),
    if (loadProductImage != null)
      ImageLandingPageRequestKeys.loadProductImage: loadProductImage,
    if (sectionsCount != null)
      ImageLandingPageRequestKeys.sectionsCount: sectionsCount,
  };
}
