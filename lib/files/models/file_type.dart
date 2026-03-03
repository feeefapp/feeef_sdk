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

  String get displayName {
    switch (this) {
      case FileType.directory:
        return 'Folder';
      case FileType.image:
        return 'Image';
      case FileType.video:
        return 'Video';
      case FileType.audio:
        return 'Audio';
      case FileType.document:
        return 'Document';
      case FileType.other:
        return 'File';
    }
  }
}
