// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Feedback _$FeedbackFromJson(Map<String, dynamic> json) => _Feedback(
  id: json['id'] as String,
  userId: json['userId'] as String,
  title: json['title'] as String,
  details: json['details'] as String?,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  attachments:
      (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  status:
      $enumDecodeNullable(_$FeedbackStatusEnumMap, json['status']) ??
      FeedbackStatus.pending,
  priority:
      $enumDecodeNullable(_$FeedbackPriorityEnumMap, json['priority']) ??
      FeedbackPriority.medium,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  appVersion: json['appVersion'] as String?,
  history:
      (json['history'] as List<dynamic>?)
          ?.map((e) => FeedbackHistoryEvent.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  resolvedAt: json['resolvedAt'] == null
      ? null
      : DateTime.parse(json['resolvedAt'] as String),
);

Map<String, dynamic> _$FeedbackToJson(_Feedback instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'title': instance.title,
  'details': instance.details,
  'tags': instance.tags,
  'attachments': instance.attachments,
  'status': _$FeedbackStatusEnumMap[instance.status]!,
  'priority': _$FeedbackPriorityEnumMap[instance.priority]!,
  'metadata': instance.metadata,
  'appVersion': instance.appVersion,
  'history': instance.history.map((e) => e.toJson()).toList(),
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'resolvedAt': instance.resolvedAt?.toIso8601String(),
};

const _$FeedbackStatusEnumMap = {
  FeedbackStatus.pending: 'pending',
  FeedbackStatus.review: 'review',
  FeedbackStatus.resolved: 'resolved',
  FeedbackStatus.rejected: 'rejected',
};

const _$FeedbackPriorityEnumMap = {
  FeedbackPriority.low: 'low',
  FeedbackPriority.medium: 'medium',
  FeedbackPriority.high: 'high',
  FeedbackPriority.critical: 'critical',
};

_FeedbackCreate _$FeedbackCreateFromJson(Map<String, dynamic> json) =>
    _FeedbackCreate(
      id: json['id'] as String?,
      title: json['title'] as String,
      details: json['details'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      attachments:
          (json['attachments'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      priority:
          $enumDecodeNullable(_$FeedbackPriorityEnumMap, json['priority']) ??
          FeedbackPriority.medium,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      appVersion: json['appVersion'] as String?,
    );

Map<String, dynamic> _$FeedbackCreateToJson(_FeedbackCreate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'details': instance.details,
      'tags': instance.tags,
      'attachments': instance.attachments,
      'priority': _$FeedbackPriorityEnumMap[instance.priority]!,
      'metadata': instance.metadata,
      'appVersion': instance.appVersion,
    };

_FeedbackUpdate _$FeedbackUpdateFromJson(Map<String, dynamic> json) =>
    _FeedbackUpdate(
      title: json['title'] as String?,
      details: json['details'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      priority: $enumDecodeNullable(
        _$FeedbackPriorityEnumMap,
        json['priority'],
      ),
      metadata: json['metadata'] as Map<String, dynamic>?,
      appVersion: json['appVersion'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$FeedbackUpdateToJson(_FeedbackUpdate instance) =>
    <String, dynamic>{
      'title': instance.title,
      'details': instance.details,
      'tags': instance.tags,
      'attachments': instance.attachments,
      'priority': _$FeedbackPriorityEnumMap[instance.priority],
      'metadata': instance.metadata,
      'appVersion': instance.appVersion,
      'comment': instance.comment,
    };
