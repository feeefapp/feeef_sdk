import 'package:dio/dio.dart';
import 'package:feeef/files/services/ai_http_failure.dart';
import 'package:test/test.dart';

DioException _http(int status, Object? data) {
  final options = RequestOptions(
    path: '/ai/voiceovers',
    headers: {'Idempotency-Key': 'mcp-abc'},
  );
  return DioException(
    requestOptions: options,
    response: Response(requestOptions: options, statusCode: status, data: data),
    type: DioExceptionType.badResponse,
  );
}

void main() {
  test('503 ai_recovery_required surfaces the server code and message', () {
    final f = describeAiHttpFailure(
      _http(503, {
        'error': {
          'code': 'ai_recovery_required',
          'message':
              'Retry the original request and key; a paid workflow step is still reconciling',
        },
      }),
    );
    expect(f.message, startsWith('ai_recovery_required: Retry the original'));
    expect(f.error, isNot(contains('internet connection')));
    expect(f.metadata['statusCode'], 503);
    expect(f.metadata['retryable'], isTrue);
    expect(f.metadata['idempotencyKey'], 'mcp-abc');
  });

  test('plain { message } bodies are used as-is', () {
    final f = describeAiHttpFailure(_http(422, {'message': 'text required'}));
    expect(f.message, 'text required');
    expect(f.metadata['retryable'], isFalse);
    expect(f.metadata.containsKey('idempotencyKey'), isFalse);
  });

  test('no response is still reported as a connectivity failure', () {
    final f = describeAiHttpFailure(
      DioException(
        requestOptions: RequestOptions(path: '/ai/voiceovers'),
        type: DioExceptionType.connectionError,
      ),
    );
    expect(f.message, 'Network error occurred');
    expect(f.metadata['statusCode'], isNull);
  });

  test('receive timeout is reported as a timeout, not offline', () {
    final f = describeAiHttpFailure(
      DioException(
        requestOptions: RequestOptions(path: '/ai/voiceovers'),
        type: DioExceptionType.receiveTimeout,
      ),
    );
    expect(f.message, 'Request timed out');
  });
}
