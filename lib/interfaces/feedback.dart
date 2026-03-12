import 'helpers.dart';

/// Base interface for feedback entities
abstract class FeedbackEntity implements ModelId, ModelTimestamps {
  String get userId;
  String get title;
  String? get details;
  List<String> get tags;
  List<String> get attachments;
  FeedbackStatus get status;
  FeedbackPriority get priority;
  Map<String, dynamic> get metadata;
  String? get appVersion;
  List<FeedbackHistoryEvent> get history;
  DateTime? get resolvedAt;
}

/// Represents a feedback history event
class FeedbackHistoryEvent {
  final String action;
  final String? userId;
  final DateTime timestamp;
  final String? comment;
  final Map<String, dynamic>? changes;

  const FeedbackHistoryEvent({
    required this.action,
    this.userId,
    required this.timestamp,
    this.comment,
    this.changes,
  });

  factory FeedbackHistoryEvent.fromJson(Map<String, dynamic> json) {
    return FeedbackHistoryEvent(
      action: json['action'] as String,
      userId: json['userId'] as String?,
      timestamp: DateTime.parse(json['timestamp'] as String),
      comment: json['comment'] as String?,
      changes: json['changes'] as Map<String, dynamic>?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'action': action,
      if (userId != null) 'userId': userId,
      'timestamp': timestamp.toIso8601String(),
      if (comment != null) 'comment': comment,
      if (changes != null) 'changes': changes,
    };
  }
}

/// Feedback status enumeration
enum FeedbackStatus {
  pending,
  review,
  resolved,
  rejected;

  String get tr => switch (this) {
    FeedbackStatus.pending => 'Pending',
    FeedbackStatus.review => 'Under Review',
    FeedbackStatus.resolved => 'Resolved',
    FeedbackStatus.rejected => 'Rejected',
  };
}

/// Feedback priority enumeration
enum FeedbackPriority {
  low,
  medium,
  high,
  critical;

  String get tr => switch (this) {
    FeedbackPriority.low => 'Low',
    FeedbackPriority.medium => 'Medium',
    FeedbackPriority.high => 'High',
    FeedbackPriority.critical => 'Critical',
  };
}
