import 'package:feeef/core/string_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('StringNullIfEmpty', () {
    test('nullIfEmpty returns null for empty string', () {
      expect(''.nullIfEmpty, isNull);
    });

    test('nullIfEmpty returns this for non-empty string', () {
      expect('hello'.nullIfEmpty, 'hello');
    });
  });
}
