import 'dart:typed_data';

/// A file descriptor for uploads (storage, files, feedback attachments).
///
/// The SDK does not depend on Flutter or file_picker. The host app creates
/// instances (e.g. from PlatformFile in a Flutter app, or from dart:io File in a Dart CLI app).
class FeeefUploadFile {
  const FeeefUploadFile({
    required this.name,
    required this.size,
    this.path,
    this.bytes,
  }) : assert(path != null || bytes != null, 'Either path or bytes must be set');

  final String name;
  final int size;
  final String? path;
  final Uint8List? bytes;
}
