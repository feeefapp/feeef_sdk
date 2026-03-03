import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';

import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/model_repository.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/feedbacks/models/feedback.dart';
import 'package:feeef/interfaces/feedback.dart';
import 'package:feeef/mixins/repository_mixins.dart';

/// Repository for Feedback CRUD and comments / file attachments.
class FeedbackRepository extends ModelRepository<Feedback>
    with
        ModelCreateMixin<Feedback, FeedbackCreate>,
        ModelFindMixin<Feedback>,
        ModelListMixin<Feedback>,
        ModelUpdateMixin<Feedback, FeedbackUpdate>,
        ModelDeleteMixin<Feedback> {
  FeedbackRepository({required super.client}) : super(table: 'feedbacks');

  @override
  FeedbackCreate createFromJson(json) => FeedbackCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(FeedbackCreate model) => model.toJson();

  @override
  Feedback modelFromJson(json) => Feedback.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(Feedback model) => model.toJson();

  @override
  FeedbackUpdate updateFromJson(json) => FeedbackUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(FeedbackUpdate model) => model.toJson();

  @override
  Future<ListResponse<Feedback>> list({
    int? page,
    int? offset,
    int? limit,
    List<FeedbackStatus>? status,
    List<FeedbackPriority>? priority,
    List<String>? tags,
    String? q,
    DateTime? createdAfter,
    DateTime? createdBefore,
    DateTime? updatedAfter,
    DateTime? updatedBefore,
    DateTime? resolvedAfter,
    DateTime? resolvedBefore,
    bool? resolved,
    Map<String, dynamic>? params,
  }) {
    return super.list(
      page: page,
      offset: offset,
      limit: limit,
      params: {
        if (status != null) 'status': status.map((e) => e.name).toList(),
        if (priority != null) 'priority': priority.map((e) => e.name).toList(),
        if (tags != null) 'tags': tags,
        if (q != null) 'q': q,
        if (createdAfter != null)
          'created_after': createdAfter.toIso8601String(),
        if (createdBefore != null)
          'created_before': createdBefore.toIso8601String(),
        if (updatedAfter != null)
          'updated_after': updatedAfter.toIso8601String(),
        if (updatedBefore != null)
          'updated_before': updatedBefore.toIso8601String(),
        if (resolvedAfter != null)
          'resolved_after': resolvedAfter.toIso8601String(),
        if (resolvedBefore != null)
          'resolved_before': resolvedBefore.toIso8601String(),
        if (resolved != null) 'resolved': resolved,
        ...?params,
      },
    );
  }

  /// Add a comment to existing feedback.
  Future<Feedback> addComment({
    required String id,
    required String comment,
  }) async {
    try {
      final response = await client.post(
        '/$table/$id/comments',
        data: {'comment': comment},
      );
      return modelFromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  /// Create feedback with file attachments.
  Future<Feedback> createWithFiles({
    required FeedbackCreate data,
    List<PlatformFile>? files,
    Map<String, dynamic>? params,
  }) async {
    try {
      final formData = FormData();

      formData.fields.addAll([
        MapEntry('title', data.title),
        if (data.details != null) MapEntry('details', data.details!),
        MapEntry('priority', data.priority.name),
        if (data.appVersion != null) MapEntry('appVersion', data.appVersion!),
        MapEntry('tags', jsonEncode(data.tags)),
        MapEntry('attachments', jsonEncode(data.attachments)),
        MapEntry('metadata', jsonEncode(data.metadata)),
      ]);

      if (files != null) {
        for (int i = 0; i < files.length; i++) {
          final file = files[i];
          if (file.bytes != null) {
            formData.files.add(
              MapEntry(
                'files',
                MultipartFile.fromBytes(file.bytes!, filename: file.name),
              ),
            );
          } else if (file.path != null) {
            formData.files.add(
              MapEntry(
                'files',
                await MultipartFile.fromFile(file.path!, filename: file.name),
              ),
            );
          }
        }
      }

      if (params != null) {
        for (var entry in params.entries) {
          formData.fields.add(MapEntry(entry.key, entry.value.toString()));
        }
      }

      final response = await client.post(
        '/$table',
        data: formData,
        cancelToken: modelCreateCancelToken,
      );

      var model = modelFromJson(response.data);
      addToCreateStream(model);
      return model;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  /// Update feedback with additional files.
  Future<Feedback> updateWithFiles({
    required String id,
    Feedback? old,
    required FeedbackUpdate data,
    List<PlatformFile>? files,
    Map<String, dynamic>? params,
  }) async {
    try {
      final formData = FormData();

      if (data.title != null)
        formData.fields.add(MapEntry('title', data.title!));
      if (data.details != null)
        formData.fields.add(MapEntry('details', data.details!));
      if (data.priority != null)
        formData.fields.add(MapEntry('priority', data.priority!.name));
      if (data.appVersion != null)
        formData.fields.add(MapEntry('appVersion', data.appVersion!));
      if (data.tags != null)
        formData.fields.add(MapEntry('tags', jsonEncode(data.tags)));
      if (data.attachments != null)
        formData.fields.add(
          MapEntry('attachments', jsonEncode(data.attachments)),
        );
      if (data.metadata != null)
        formData.fields.add(MapEntry('metadata', jsonEncode(data.metadata)));
      if (data.comment != null)
        formData.fields.add(MapEntry('comment', data.comment!));

      if (files != null) {
        for (int i = 0; i < files.length; i++) {
          final file = files[i];
          if (file.bytes != null) {
            formData.files.add(
              MapEntry(
                'files',
                MultipartFile.fromBytes(file.bytes!, filename: file.name),
              ),
            );
          } else if (file.path != null) {
            formData.files.add(
              MapEntry(
                'files',
                await MultipartFile.fromFile(file.path!, filename: file.name),
              ),
            );
          }
        }
      }

      if (params != null) {
        for (var entry in params.entries) {
          formData.fields.add(MapEntry(entry.key, entry.value.toString()));
        }
      }

      final response = await client.put(
        '/$table/$id',
        data: formData,
        cancelToken: modelUpdateCancelToken,
      );

      var model = modelFromJson(response.data);
      addToUpdateStream(id, data);
      return model;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }
}
