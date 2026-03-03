import 'package:freezed_annotation/freezed_annotation.dart';

part 'file.freezed.dart';
part 'file.g.dart';

/// File type enum for categorizing files
enum FileType {
  directory,
  image,
  video,
  audio,
  document,
  other;

  factory FileType.fromMimeType(String? mimeType) {
    if (mimeType == null) return FileType.other;

    if (mimeType.startsWith('image/')) return FileType.image;
    if (mimeType.startsWith('video/')) return FileType.video;
    if (mimeType.startsWith('audio/')) return FileType.audio;
    if (mimeType.startsWith('application/')) return FileType.document;

    return FileType.other;
  }
}

/// Represents a file in the media library
/// Basic information returned from R2/S3 list operation
@freezed
abstract class FileObject with _$FileObject {
  const FileObject._(); // Add this to enable custom methods/getters

  const factory FileObject({
    /// The name of the file (without path)
    required String name,

    /// The full path of the file including name
    required String path,

    /// The type of object (file/directory)
    @Default('file') String type,

    /// The size of the file in bytes
    int? size,

    /// Last modified timestamp
    DateTime? lastModified,

    /// Optional metadata that needs to be fetched separately
    FileMetadata? metadata,

    /// Whether the file is being deleted
    @Default(false) bool isBeingDeleted,
  }) = _FileObject;

  /// Get the public URL for accessing this file
  String get url => 'https://storage.feeef.net/$path';

  /// Get the MIME type from the file extension
  String? get mimeType {
    if (type == 'directory') return null;

    final ext = name.split('.').last.toLowerCase();
    switch (ext) {
      case 'jpg':
      case 'jpeg':
        return 'image/jpeg';
      case 'png':
        return 'image/png';
      case 'gif':
        return 'image/gif';
      case 'webp':
        return 'image/webp';
      case 'mp4':
        return 'video/mp4';
      case 'mp3':
        return 'audio/mpeg';
      case 'wav':
        return 'audio/wav';
      case 'pdf':
        return 'application/pdf';
      case 'doc':
      case 'docx':
        return 'application/msword';
      case 'xls':
      case 'xlsx':
        return 'application/vnd.ms-excel';
      default:
        return 'application/octet-stream';
    }
  }

  /// Get the file type enum
  FileType get fileType {
    if (type == 'directory') return FileType.directory;
    return FileType.fromMimeType(mimeType);
  }

  /// Check if the file is an image based on MIME type
  bool get isImage => fileType == FileType.image;

  /// Check if the file is a video based on MIME type
  bool get isVideo => fileType == FileType.video;

  /// Check if the file is an audio based on MIME type
  bool get isAudio => fileType == FileType.audio;

  /// Check if the file is a document (pdf, doc, etc)
  bool get isDocument => fileType == FileType.document;

  factory FileObject.fromJson(Map<String, dynamic> json) =>
      _$FileObjectFromJson(json);
}

extension FileObjectX on FileObject {
  String get niceName {
    var tokens = name.split('/');
    if (tokens.last == '') {
      tokens.removeLast();
    }
    return tokens.last;
  }
}

/// Represents file metadata that needs to be fetched separately
@freezed
abstract class FileMetadata with _$FileMetadata {
  const factory FileMetadata({
    /// Whether the file exists
    required bool exists,

    /// The full path of the file
    required String path,

    /// The content type (MIME type)
    required String contentType,

    /// The size of the file in bytes
    required int size,

    /// The ETag of the file
    String? etag,

    /// Last modified timestamp
    required DateTime lastModified,

    /// Any additional metadata stored with the file
    Map<String, dynamic>? extra,
  }) = _FileMetadata;

  factory FileMetadata.fromJson(Map<String, dynamic> json) =>
      _$FileMetadataFromJson(json);
}

/// Response from listing files
@freezed
abstract class FileListResponse with _$FileListResponse {
  const factory FileListResponse({
    required List<FileObject> objects,
    String? paginationToken,
  }) = _FileListResponse;

  factory FileListResponse.fromJson(Map<String, dynamic> json) =>
      _$FileListResponseFromJson(json);
}
