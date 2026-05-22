/// Shared types for AIP-style batch operations (`:batchDelete`, `:batchUpdate`, …).
///
/// Repositories that support batch calls override [ModelRepository.deleteMany],
/// [ModelRepository.updateMany], or [ModelRepository.createMany]. Others keep the
/// default [UnimplementedError].

class BatchRpcStatus {
  final String code;
  final String message;
  final dynamic details;

  const BatchRpcStatus({
    required this.code,
    required this.message,
    this.details,
  });

  factory BatchRpcStatus.fromJson(Map<String, dynamic> json) => BatchRpcStatus(
        code: json['code'] as String? ?? 'UNKNOWN',
        message: json['message'] as String? ?? 'Request failed',
        details: json['details'],
      );
}

class BatchSummary {
  final int total;
  final int succeeded;
  final int failed;

  const BatchSummary({
    required this.total,
    required this.succeeded,
    required this.failed,
  });

  factory BatchSummary.fromJson(Map<String, dynamic> json) => BatchSummary(
        total: (json['total'] as num?)?.toInt() ?? 0,
        succeeded: (json['succeeded'] as num?)?.toInt() ?? 0,
        failed: (json['failed'] as num?)?.toInt() ?? 0,
      );

  bool get hasFailures => failed > 0;
  bool get allFailed => total > 0 && succeeded == 0;
}

/// Batch operation result envelope (partial success allowed).
class BatchResult<T> {
  final List<T>? resources;
  final Map<String, BatchRpcStatus> failedRequests;
  final BatchSummary summary;
  final String? topLevelCode;
  final String? topLevelMessage;

  const BatchResult({
    this.resources,
    required this.failedRequests,
    required this.summary,
    this.topLevelCode,
    this.topLevelMessage,
  });

  static BatchResult<T> fromJson<T>(
    dynamic data, {
    T Function(Map<String, dynamic> json)? resourceFromJson,
  }) {
    final map = data is Map<String, dynamic> ? data : <String, dynamic>{};
    final failedRaw = map['failedRequests'] as Map? ?? {};
    final failed = failedRaw.map(
      (key, value) => MapEntry(
        key.toString(),
        BatchRpcStatus.fromJson(
          Map<String, dynamic>.from(value as Map),
        ),
      ),
    );

    List<T>? resources;
    if (resourceFromJson != null && map['resources'] is List) {
      resources = (map['resources'] as List)
          .map((e) => resourceFromJson(Map<String, dynamic>.from(e as Map)))
          .toList();
    }

    return BatchResult<T>(
      resources: resources,
      failedRequests: failed,
      summary: BatchSummary.fromJson(
        Map<String, dynamic>.from(map['summary'] as Map? ?? {}),
      ),
      topLevelCode: map['code'] as String?,
      topLevelMessage: map['message'] as String?,
    );
  }
}

/// Body for `POST /{resource}:batchDelete` (and similar name-based batch ops).
class BatchDeleteRequest {
  final String projectId;
  final List<String> names;
  final bool returnPartialSuccess;
  final String? requestId;

  const BatchDeleteRequest({
    required this.projectId,
    required this.names,
    this.returnPartialSuccess = true,
    this.requestId,
  });

  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'names': names,
        'returnPartialSuccess': returnPartialSuccess,
        if (requestId != null) 'requestId': requestId,
      };
}

/// Body for `POST /{resource}:batchUpdate` with field mask + hoisted patch fields.
class BatchUpdateManyRequest {
  final String projectId;
  final List<String> names;
  final List<String> updateMask;
  final Map<String, dynamic> fields;
  final bool returnPartialSuccess;
  final String? requestId;

  const BatchUpdateManyRequest({
    required this.projectId,
    required this.names,
    required this.updateMask,
    this.fields = const {},
    this.returnPartialSuccess = true,
    this.requestId,
  });

  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'names': names,
        'updateMask': updateMask,
        ...fields,
        'returnPartialSuccess': returnPartialSuccess,
        if (requestId != null) 'requestId': requestId,
      };
}

/// Body for `POST /{resource}:batchCreate` when supported by the API.
class BatchCreateManyRequest {
  final String projectId;
  final List<Map<String, dynamic>> items;
  final bool returnPartialSuccess;
  final String? requestId;

  const BatchCreateManyRequest({
    required this.projectId,
    required this.items,
    this.returnPartialSuccess = true,
    this.requestId,
  });

  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'items': items,
        'returnPartialSuccess': returnPartialSuccess,
        if (requestId != null) 'requestId': requestId,
      };
}

/// Body for reservation `POST /inventory/reservations:batchRelease`.
class BatchReleaseRequest {
  final String projectId;
  final List<String> names;
  final bool returnPartialSuccess;
  final String? requestId;

  const BatchReleaseRequest({
    required this.projectId,
    required this.names,
    this.returnPartialSuccess = true,
    this.requestId,
  });

  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'names': names,
        'returnPartialSuccess': returnPartialSuccess,
        if (requestId != null) 'requestId': requestId,
      };
}
