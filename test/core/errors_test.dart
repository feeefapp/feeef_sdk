import 'package:feeef/core/errors.dart';
import 'package:test/test.dart';

void main() {
  group('NetworkException', () {
    test('stores message and implements Exception', () {
      const msg = 'Connection timeout';
      final e = NetworkException(msg);
      expect(e.message, msg);
      expect(e, isA<Exception>());
    });

    test('toString includes class name and message', () {
      final e = NetworkException('fail');
      expect(e.toString(), 'NetworkException: fail');
    });
  });
}
