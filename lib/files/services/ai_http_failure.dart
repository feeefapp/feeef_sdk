import 'package:dio/dio.dart';

/// Server error codes that mean "retry the SAME request with the SAME
/// Idempotency-Key"; a new key would start (and bill) a second workflow.
const retryableAiErrorCodes = {'ai_recovery_required', 'ai_workflow_pending'};

/// Turns a failed `/v1/ai/*` call into a caller-facing message.
///
/// The backend answers paid AI routes with `{ error: { code, message } }`
/// (e.g. 503 `ai_recovery_required` while Feeef Cloud billing reconciles).
/// Only a request that never got an HTTP response is a connectivity problem.
({String message, String error, Map<String, dynamic> metadata})
describeAiHttpFailure(DioException e) {
  final response = e.response;
  final status = response?.statusCode;
  final body = response?.data;

  if (response == null) {
    final timedOut =
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.connectionTimeout;
    return (
      message: timedOut ? 'Request timed out' : 'Network error occurred',
      error: timedOut
          ? 'The server did not answer in time. Retry the same request.'
          : 'Failed to connect to the server. Please check your internet connection.',
      metadata: {'statusCode': null, 'dioType': e.type.name},
    );
  }

  String? code;
  String? serverMessage;
  if (body is Map) {
    final err = body['error'];
    if (err is Map) {
      code = err['code']?.toString();
      serverMessage = err['message']?.toString();
    } else if (err is String && err.trim().isNotEmpty) {
      serverMessage = err;
    }
    serverMessage ??= body['message']?.toString();
    code ??= body['code']?.toString();
  } else if (body is String && body.trim().isNotEmpty && body.length < 500) {
    serverMessage = body.trim();
  }

  final retryable = code != null && retryableAiErrorCodes.contains(code);
  final idempotencyKey = e.requestOptions.headers['Idempotency-Key']
      ?.toString();
  final detail = serverMessage ?? 'Server returned HTTP $status';

  return (
    message: code != null ? '$code: $detail' : detail,
    error: detail,
    metadata: {
      'statusCode': status,
      'code': ?code,
      'retryable': retryable,
      if (retryable && idempotencyKey != null) 'idempotencyKey': idempotencyKey,
    },
  );
}
