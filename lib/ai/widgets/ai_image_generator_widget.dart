import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import '../services/ai_image_service.dart' as ai;

/// Widget for AI-powered image generation and editing
class AiImageGeneratorWidget extends StatefulWidget {
  final String storeId;
  final ai.AiImageService aiImageService;
  final Function(String imageUrl)? onImageGenerated;

  const AiImageGeneratorWidget({
    Key? key,
    required this.storeId,
    required this.aiImageService,
    this.onImageGenerated,
  }) : super(key: key);

  @override
  State<AiImageGeneratorWidget> createState() => _AiImageGeneratorWidgetState();
}

class _AiImageGeneratorWidgetState extends State<AiImageGeneratorWidget> {
  final _promptController = TextEditingController();
  PlatformFile? _selectedImage;
  bool _isGenerating = false;
  double _progress = 0.0;
  String? _generatedImageUrl;
  String? _errorMessage;
  ai.AspectRatio _aspectRatio = ai.AspectRatio.square;
  ai.ImageResolution _resolution = ai.ImageResolution.medium;

  @override
  void dispose() {
    _promptController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        _selectedImage = result.files.first;
        _errorMessage = null;
      });
    }
  }

  Future<void> _generateOrEditImage() async {
    if (_promptController.text.isEmpty && _selectedImage == null) {
      setState(() {
        _errorMessage = 'Please provide a prompt or select an image';
      });
      return;
    }

    setState(() {
      _isGenerating = true;
      _progress = 0.0;
      _errorMessage = null;
      _generatedImageUrl = null;
    });

    try {
      ai.AiImageResult result;

      if (_selectedImage != null) {
        // Edit mode
        result = await widget.aiImageService.editImage(
          storeId: widget.storeId,
          imageFile: _selectedImage!,
          prompt: _promptController.text.isNotEmpty
              ? _promptController.text
              : 'Enhance and improve this image',
          aspectRatio: _aspectRatio,
          resolution: _resolution,
          onProgress: (sent, total) {
            setState(() {
              _progress = sent / total;
            });
          },
        );
      } else {
        // Generate mode
        result = await widget.aiImageService.generateImage(
          storeId: widget.storeId,
          prompt: _promptController.text,
          aspectRatio: _aspectRatio,
          resolution: _resolution,
          onProgress: (sent, total) {
            setState(() {
              _progress = sent / total;
            });
          },
        );
      }

      if (result.success && result.imageUrl != null) {
        setState(() {
          _generatedImageUrl = result.imageUrl;
        });

        widget.onImageGenerated?.call(result.imageUrl!);

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(result.message),
              backgroundColor: Colors.green,
            ),
          );
        }
      } else {
        setState(() {
          _errorMessage = result.error ?? 'Failed to generate image';
        });
      }
    } catch (error) {
      setState(() {
        _errorMessage = error.toString();
      });
    } finally {
      setState(() {
        _isGenerating = false;
        _progress = 0.0;
      });
    }
  }

  void _clear() {
    setState(() {
      _promptController.clear();
      _selectedImage = null;
      _generatedImageUrl = null;
      _errorMessage = null;
      _aspectRatio = ai.AspectRatio.square;
      _resolution = ai.ImageResolution.medium;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title
            Text(
              '🎨 AI Image Generator',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Prompt input
            TextField(
              controller: _promptController,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Describe the image you want',
                hintText:
                    'e.g., "A professional product photo with studio lighting"',
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.edit_note),
              ),
            ),
            const SizedBox(height: 16),

            // Image picker
            if (_selectedImage != null)
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.image, color: Colors.blue),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _selectedImage!.name,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        setState(() {
                          _selectedImage = null;
                        });
                      },
                    ),
                  ],
                ),
              )
            else
              OutlinedButton.icon(
                onPressed: _pickImage,
                icon: const Icon(Icons.upload_file),
                label: const Text('Upload Image to Edit (Optional)'),
              ),
            const SizedBox(height: 16),

            // Aspect ratio selector
            DropdownButtonFormField<ai.AspectRatio>(
              value: _aspectRatio,
              decoration: const InputDecoration(
                labelText: 'Aspect Ratio',
                border: OutlineInputBorder(),
              ),
              items: ai.AspectRatio.values.map((ratio) {
                return DropdownMenuItem(value: ratio, child: Text(ratio.value));
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _aspectRatio = value;
                  });
                }
              },
            ),
            const SizedBox(height: 16),

            // Resolution selector
            DropdownButtonFormField<ai.ImageResolution>(
              value: _resolution,
              decoration: const InputDecoration(
                labelText: 'Resolution',
                border: OutlineInputBorder(),
              ),
              items: ai.ImageResolution.values.map((res) {
                return DropdownMenuItem(
                  value: res,
                  child: Text(res.name.toUpperCase()),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _resolution = value;
                  });
                }
              },
            ),
            const SizedBox(height: 16),

            // Progress indicator
            if (_isGenerating) ...[
              LinearProgressIndicator(value: _progress > 0 ? _progress : null),
              const SizedBox(height: 8),
              const Center(
                child: Text('Generating image... This may take 5-15 seconds'),
              ),
              const SizedBox(height: 16),
            ],

            // Error message
            if (_errorMessage != null) ...[
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red.shade200),
                ),
                child: Row(
                  children: [
                    Icon(Icons.error_outline, color: Colors.red.shade700),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _errorMessage!,
                        style: TextStyle(color: Colors.red.shade700),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],

            // Generated image preview
            if (_generatedImageUrl != null) ...[
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    _generatedImageUrl!,
                    fit: BoxFit.contain,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 48,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Failed to load image',
                              style: TextStyle(color: Colors.red.shade700),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],

            // Action buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _isGenerating ? null : _generateOrEditImage,
                    icon: Icon(
                      _selectedImage != null ? Icons.edit : Icons.auto_awesome,
                    ),
                    label: Text(
                      _selectedImage != null ? 'Edit Image' : 'Generate Image',
                    ),
                  ),
                ),
                if (_generatedImageUrl != null || _selectedImage != null) ...[
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: _clear,
                    icon: const Icon(Icons.refresh),
                    tooltip: 'Clear and start over',
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Example usage in a screen:
///
/// ```dart
/// class ProductEditScreen extends StatelessWidget {
///   final String storeId;
///   final AiImageService aiImageService;
///
///   const ProductEditScreen({
///     Key? key,
///     required this.storeId,
///     required this.aiImageService,
///   }) : super(key: key);
///
///   @override
///   Widget build(BuildContext context) {
///     return Scaffold(
///       appBar: AppBar(
///         title: const Text('AI Image Generator'),
///       ),
///       body: SingleChildScrollView(
///         child: AiImageGeneratorWidget(
///           storeId: storeId,
///           aiImageService: aiImageService,
///           onImageGenerated: (imageUrl) {
///             // Handle the generated image URL
///             print('Image generated: $imageUrl');
///             // You can now use this URL to update your product, etc.
///           },
///         ),
///       ),
///     );
///   }
/// }
/// ```
