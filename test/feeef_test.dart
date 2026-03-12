// Smoke test: package exports resolve and core types work.
import 'package:feeef/feeef.dart';
import 'package:test/test.dart';

void main() {
  test('package exports Attachment and core types', () {
    expect(Attachment.from('image', 'https://x.com/1'), isA<ImageAttachment>());
    expect(NetworkException('err').toString(), contains('NetworkException'));
  });
}
