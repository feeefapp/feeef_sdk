import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';

/// Result of an AI image generation/editing operation
class AiImageResult {
  final bool success;
  final String? imageUrl;
  final String? imagePath;
  final String message;
  final String? error;
  final AiImageMetadata? metadata;

  AiImageResult({
    required this.success,
    this.imageUrl,
    this.imagePath,
    required this.message,
    this.error,
    this.metadata,
  });

  factory AiImageResult.fromJson(Map<String, dynamic> json) {
    return AiImageResult(
      success: json['success'] as bool,
      imageUrl: json['imageUrl'] as String?,
      imagePath: json['imagePath'] as String?,
      message: json['message'] as String,
      error: json['error'] as String?,
      metadata: json['metadata'] != null
          ? AiImageMetadata.fromJson(json['metadata'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'imageUrl': imageUrl,
      'imagePath': imagePath,
      'message': message,
      'error': error,
      'metadata': metadata?.toJson(),
    };
  }
}

/// Metadata about the generated/edited image
class AiImageMetadata {
  final String? mimeType;
  final String? generatedText;
  final String? aspectRatio;
  final String? resolution;

  AiImageMetadata({
    this.mimeType,
    this.generatedText,
    this.aspectRatio,
    this.resolution,
  });

  factory AiImageMetadata.fromJson(Map<String, dynamic> json) {
    return AiImageMetadata(
      mimeType: json['mimeType'] as String?,
      generatedText: json['generatedText'] as String?,
      aspectRatio: json['aspectRatio'] as String?,
      resolution: json['resolution'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mimeType': mimeType,
      'generatedText': generatedText,
      'aspectRatio': aspectRatio,
      'resolution': resolution,
    };
  }
}

/// Aspect ratio options for image generation
enum AspectRatio {
  square('1:1'),
  widescreen('16:9'),
  portrait('9:16'),
  standardPhoto('4:3'),
  verticalPhoto('3:4');

  final String value;
  const AspectRatio(this.value);
}

/// Resolution options for image generation
enum ImageResolution {
  low('MEDIA_RESOLUTION_LOW'),
  medium('MEDIA_RESOLUTION_MEDIUM'),
  high('MEDIA_RESOLUTION_HIGH');

  final String value;
  const ImageResolution(this.value);
}

/// Service for AI-powered image generation and editing
class AiImageService {
  final Dio client;

  AiImageService({required this.client});

  /// Generate a new image from a text prompt
  Future<AiImageResult> generateImage({
    required String storeId,
    required String prompt,
    AspectRatio aspectRatio = AspectRatio.square,
    ImageResolution resolution = ImageResolution.medium,
    void Function(int sent, int total)? onProgress,
    CancelToken? cancelToken,
  }) async {
    final formData = FormData.fromMap({
      'storeId': storeId,
      'prompt': prompt,
      'aspectRatio': aspectRatio.value,
      'resolution': resolution.value,
    });

    try {
      final response = await client.post(
        '/actions/editOrGenerateSimpleImage',
        data: formData,
        onSendProgress: onProgress,
        cancelToken: cancelToken,
      );

      return AiImageResult.fromJson(response.data);
    } catch (error) {
      return AiImageResult(
        success: false,
        message: 'Failed to generate image',
        error: error.toString(),
      );
    }
  }

  /// Edit an existing image using AI
  Future<AiImageResult> editImage({
    required String storeId,
    required PlatformFile imageFile,
    required String prompt,
    AspectRatio aspectRatio = AspectRatio.square,
    ImageResolution resolution = ImageResolution.medium,
    void Function(int sent, int total)? onProgress,
    CancelToken? cancelToken,
  }) async {
    final formData = FormData.fromMap({
      'storeId': storeId,
      'prompt': prompt,
      'aspectRatio': aspectRatio.value,
      'resolution': resolution.value,
      'imageFile': imageFile.bytes == null
          ? await MultipartFile.fromFile(imageFile.path!)
          : MultipartFile.fromBytes(imageFile.bytes!, filename: imageFile.name),
    });

    try {
      final response = await client.post(
        '/actions/editOrGenerateSimpleImage',
        data: formData,
        onSendProgress: onProgress,
        cancelToken: cancelToken,
      );

      return AiImageResult.fromJson(response.data);
    } catch (error) {
      return AiImageResult(
        success: false,
        message: 'Failed to edit image',
        error: error.toString(),
      );
    }
  }

  /// Enhance/improve an existing image without specific instructions
  /// (AI will automatically enhance the image)
  Future<AiImageResult> enhanceImage({
    required String storeId,
    required PlatformFile imageFile,
    AspectRatio? aspectRatio,
    ImageResolution resolution = ImageResolution.high,
    void Function(int sent, int total)? onProgress,
    CancelToken? cancelToken,
  }) async {
    final formData = FormData.fromMap({
      'storeId': storeId,
      // AI will use default enhancement prompt if not provided
      'imageFile': imageFile.bytes == null
          ? await MultipartFile.fromFile(imageFile.path!)
          : MultipartFile.fromBytes(imageFile.bytes!, filename: imageFile.name),
      if (aspectRatio != null) 'aspectRatio': aspectRatio.value,
      'resolution': resolution.value,
    });

    try {
      final response = await client.post(
        '/actions/editOrGenerateSimpleImage',
        data: formData,
        onSendProgress: onProgress,
        cancelToken: cancelToken,
      );

      return AiImageResult.fromJson(response.data);
    } catch (error) {
      return AiImageResult(
        success: false,
        message: 'Failed to enhance image',
        error: error.toString(),
      );
    }
  }
}

/// Example usage:
///
/// ```dart
/// // Initialize service
/// final aiImageService = AiImageService(client: dio);
///
/// // Generate new image
/// final result = await aiImageService.generateImage(
///   storeId: 'store_123',
///   prompt: 'A professional product photo of a luxury watch',
///   aspectRatio: AspectRatio.square,
///   resolution: ImageResolution.high,
/// );
///
/// if (result.success) {
///   print('Image generated: ${result.imageUrl}');
/// } else {
///   print('Error: ${result.error}');
/// }
///
/// // Edit existing image
/// final imageFile = await FilePicker.platform.pickFiles(type: FileType.image);
/// if (imageFile != null && imageFile.files.isNotEmpty) {
///   final editResult = await aiImageService.editImage(
///     storeId: 'store_123',
///     imageFile: imageFile.files.first,
///     prompt: 'Remove background and add shadow',
///     aspectRatio: AspectRatio.widescreen,
///   );
///
///   if (editResult.success) {
///     print('Image edited: ${editResult.imageUrl}');
///   }
/// }
///
/// // Enhance image automatically
/// final enhanceResult = await aiImageService.enhanceImage(
///   storeId: 'store_123',
///   imageFile: imageFile.files.first,
///   resolution: ImageResolution.high,
/// );
/// ```
