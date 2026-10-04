import 'package:feeef/orders/orders_v1_api.dart';
import 'package:test/test.dart';

void main() {
  test('OrderApplyManyResult parses partial success', () {
    final result = OrderApplyManyResult.fromJson({
      'resources': [
        {'id': 'o1', 'statusId': 'st_1', 'room': 'pack', 'kind': 'pack'},
      ],
      'failedRequests': {
        'o2': {'code': 'NOT_FOUND', 'message': 'Order not found'},
      },
      'summary': {'total': 2, 'succeeded': 1, 'failed': 1},
    });

    expect(result.applied, hasLength(1));
    expect(result.applied.single['id'], 'o1');
    expect(result.failed['o2'], 'Order not found');
    expect(result.succeeded, 1);
    expect(result.failedCount, 1);
    expect(result.allFailed, isFalse);
  });

  test('OrderApplyManyResult treats a full abort as allFailed', () {
    final result = OrderApplyManyResult.fromJson({
      'code': 'ABORTED',
      'message': 'None of the requests succeeded',
      'resources': [],
      'failedRequests': {
        'o1': {'code': 'INTERNAL', 'message': 'nope'},
      },
      'summary': {'total': 1, 'succeeded': 0, 'failed': 1},
    });

    expect(result.allFailed, isTrue);
    expect(result.message, 'None of the requests succeeded');
    expect(result.failed['o1'], 'nope');
  });
}
