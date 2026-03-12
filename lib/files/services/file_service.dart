import 'package:dio/dio.dart';

import 'package:feeef/core/feeef_upload_file.dart';
import '../models/file.dart';

/// Service for managing files in the media library
class FileService {
  final Dio client;

  FileService({required this.client});

  /// List files in a directory
  Future<FileListResponse> list({
    String? path,
    bool recursive = false,
    String? paginationToken,
    int? limit,
    CancelToken? cancelToken,
  }) async {
    // path always should end with a /
    if (path != null && !path.endsWith('/')) {
      path = '$path/';
    }

    final response = await client.get(
      '/services/files',
      queryParameters: {
        if (path != null) 'path': path,
        if (recursive) 'recursive': recursive,
        if (paginationToken != null) 'paginationToken': paginationToken,
        if (limit != null) 'limit': limit,
      },
      cancelToken: cancelToken,
    );
    return FileListResponse.fromJson(response.data);
  }

  /// Get Objects (flat list without directory grouping)
  Future<FileListResponse> objects({
    String? path,
    String? paginationToken,
    int? limit,
    CancelToken? cancelToken,
  }) async {
    final response = await client.get(
      '/services/files/objects',
      queryParameters: {
        if (path != null) 'path': path,
        if (paginationToken != null) 'paginationToken': paginationToken,
        if (limit != null) 'limit': limit,
      },
      cancelToken: cancelToken,
    );
    return FileListResponse.fromJson(response.data);
  }

  /// Upload a file
  Future<FileObject> upload({
    required FeeefUploadFile file,
    String? folder,
    int? width,
    int? height,
    int? quality,
    String? fit,
    void Function(int sent, int total)? onProgress,
    CancelToken? cancelToken,
  }) async {
    final formData = FormData.fromMap({
      'file': file.bytes == null
          ? await MultipartFile.fromFile(file.path!)
          : MultipartFile.fromBytes(file.bytes!, filename: file.name),
      if (folder != null) 'folder': folder,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (quality != null) 'quality': quality,
      if (fit != null) 'fit': fit,
    });

    final response = await client.post(
      '/services/files',
      data: formData,
      onSendProgress: onProgress,
      cancelToken: cancelToken,
    );

    return FileObject.fromJson(response.data);
  }

  /// Upload multiple files
  Future<List<FileObject>> uploadMany({
    required List<FeeefUploadFile> files,
    String? folder,
    int? width,
    int? height,
    int? quality,
    String? fit,
    void Function(int sent, int total)? onProgress,
    CancelToken? cancelToken,
  }) async {
    final formData = FormData();

    for (final file in files) {
      formData.files.add(
        MapEntry(
          'files',
          file.bytes == null
              ? await MultipartFile.fromFile(file.path!)
              : MultipartFile.fromBytes(file.bytes!, filename: file.name),
        ),
      );
    }

    if (folder != null) formData.fields.add(MapEntry('folder', folder));
    if (width != null) formData.fields.add(MapEntry('width', width.toString()));
    if (height != null)
      formData.fields.add(MapEntry('height', height.toString()));
    if (quality != null)
      formData.fields.add(MapEntry('quality', quality.toString()));
    if (fit != null) formData.fields.add(MapEntry('fit', fit));

    final response = await client.post(
      '/services/files/many',
      data: formData,
      onSendProgress: onProgress,
      cancelToken: cancelToken,
    );

    final results = response.data['results'] as List;
    return results.map((r) => FileObject.fromJson(r)).toList();
  }

  /// Delete a file or directory
  Future<void> delete({required String path}) async {
    await client.delete('/services/files', queryParameters: {'path': path});
  }

  /// Delete multiple files or directories
  Future<void> deleteMany({required List<String> paths}) async {
    await client.delete(
      '/services/files/many',
      queryParameters: {'paths': paths},
    );
  }

  /// Get file metadata
  Future<FileMetadata> metadata({required String path}) async {
    final response = await client.get(
      '/services/files/metadata',
      queryParameters: {'path': path},
    );
    return FileMetadata.fromJson(response.data);
  }

  /// Move/rename a file
  Future<void> move({
    required String source,
    required String destination,
  }) async {
    await client.post(
      '/services/files/move',
      queryParameters: {'source': source, 'destination': destination},
    );
  }
}
