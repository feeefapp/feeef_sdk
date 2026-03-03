// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FileObject _$FileObjectFromJson(Map<String, dynamic> json) => _FileObject(
  name: json['name'] as String,
  path: json['path'] as String,
  type: json['type'] as String? ?? 'file',
  size: (json['size'] as num?)?.toInt(),
  lastModified: json['lastModified'] == null
      ? null
      : DateTime.parse(json['lastModified'] as String),
  metadata: json['metadata'] == null
      ? null
      : FileMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  isBeingDeleted: json['isBeingDeleted'] as bool? ?? false,
);

Map<String, dynamic> _$FileObjectToJson(_FileObject instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'type': instance.type,
      'size': instance.size,
      'lastModified': instance.lastModified?.toIso8601String(),
      'metadata': instance.metadata?.toJson(),
      'isBeingDeleted': instance.isBeingDeleted,
    };

_FileMetadata _$FileMetadataFromJson(Map<String, dynamic> json) =>
    _FileMetadata(
      exists: json['exists'] as bool,
      path: json['path'] as String,
      contentType: json['contentType'] as String,
      size: (json['size'] as num).toInt(),
      etag: json['etag'] as String?,
      lastModified: DateTime.parse(json['lastModified'] as String),
      extra: json['extra'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$FileMetadataToJson(_FileMetadata instance) =>
    <String, dynamic>{
      'exists': instance.exists,
      'path': instance.path,
      'contentType': instance.contentType,
      'size': instance.size,
      'etag': instance.etag,
      'lastModified': instance.lastModified.toIso8601String(),
      'extra': instance.extra,
    };

_FileListResponse _$FileListResponseFromJson(Map<String, dynamic> json) =>
    _FileListResponse(
      objects: (json['objects'] as List<dynamic>)
          .map((e) => FileObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      paginationToken: json['paginationToken'] as String?,
    );

Map<String, dynamic> _$FileListResponseToJson(_FileListResponse instance) =>
    <String, dynamic>{
      'objects': instance.objects.map((e) => e.toJson()).toList(),
      'paginationToken': instance.paginationToken,
    };
