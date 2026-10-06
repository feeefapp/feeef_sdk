import 'package:feeef/cloud_delivery/cloud_delivery_api.dart';
import 'package:test/test.dart';

void main() {
  test('CloudUnsendManyResult parses a partial detach', () {
    final result = CloudUnsendManyResult.fromJson({
      'detached': [
        {'orderId': 'o1', 'cloudParcelId': 'p1'},
        {'orderId': '  ', 'cloudParcelId': null},
      ],
      'failed': [
        {'orderId': 'o2', 'message': 'Order not found'},
        {'orderId': '', 'message': 'skip'},
      ],
    });

    expect(result.detachedIds, ['o1']);
    expect(result.failed, {'o2': 'Order not found'});
    expect(result.allFailed, isFalse);
  });

  test('CloudUnsendManyResult treats a full abort as allFailed', () {
    final result = CloudUnsendManyResult.fromJson({
      'code': 'ABORTED',
      'message': 'None of the orders were detached; see failed for details.',
      'detached': <Map<String, dynamic>>[],
      'failed': [
        {'orderId': 'o1', 'message': 'Could not detach order'},
      ],
    });

    expect(result.allFailed, isTrue);
    expect(result.detachedIds, isEmpty);
    expect(result.failed['o1'], 'Could not detach order');
  });
}
