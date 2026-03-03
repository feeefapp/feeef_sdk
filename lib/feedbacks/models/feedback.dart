import 'package:freezed_annotation/freezed_annotation.dart';
import '../../interfaces/feedback.dart';
import '../../interfaces/helpers.dart';

part 'feedback.freezed.dart';
part 'feedback.g.dart';

@freezed
abstract class Feedback extends FeedbackEntity
    with _$Feedback
    implements Model, ModelMetadata {
  Feedback._();
  factory Feedback({
    required String id,
    required String userId,
    required String title,
    String? details,
    @Default([]) List<String> tags,
    @Default([]) List<String> attachments,
    @Default(FeedbackStatus.pending) FeedbackStatus status,
    @Default(FeedbackPriority.medium) FeedbackPriority priority,
    @Default({}) Map<String, dynamic> metadata,
    String? appVersion,
    @Default([]) List<FeedbackHistoryEvent> history,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? resolvedAt,
  }) = _Feedback;

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);
}

@freezed
abstract class FeedbackCreate with _$FeedbackCreate implements ModelCreate {
  const factory FeedbackCreate({
    String? id,
    required String title,
    String? details,
    @Default([]) List<String> tags,
    @Default([]) List<String> attachments,
    @Default(FeedbackPriority.medium) FeedbackPriority priority,
    @Default({}) Map<String, dynamic> metadata,
    String? appVersion,
  }) = _FeedbackCreate;

  factory FeedbackCreate.fromJson(Map<String, dynamic> json) =>
      _$FeedbackCreateFromJson(json);
}

@freezed
abstract class FeedbackUpdate with _$FeedbackUpdate implements ModelUpdate {
  const factory FeedbackUpdate({
    String? title,
    String? details,
    List<String>? tags,
    List<String>? attachments,
    FeedbackPriority? priority,
    Map<String, dynamic>? metadata,
    String? appVersion,
    String? comment, // For adding comments
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _FeedbackUpdate;

  factory FeedbackUpdate.fromJson(Map<String, dynamic> json) =>
      _$FeedbackUpdateFromJson(json);
}
