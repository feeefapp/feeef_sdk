import 'package:feeef/core/validation/validation_exception.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FeeefValidationException', () {
    test('fromJson builds exception with errors', () {
      final e = FeeefValidationException.fromJson({
        'errors': [
          {'message': 'Required', 'field': 'name'},
          {'message': 'Invalid', 'rule': 'email'},
        ],
      });
      expect(e.errors.length, 2);
      expect(e.errors[0].message, 'Required');
      expect(e.errors[0].field, 'name');
      expect(e.errors[1].message, 'Invalid');
      expect(e.errors[1].rule, 'email');
    });

    test('toJson round-trip', () {
      final e = FeeefValidationException(errors: [
        FeeefViolation(message: 'err', field: 'f'),
      ]);
      final j = e.toJson();
      expect(j['errors'], isA<List>());
      final e2 = FeeefValidationException.fromJson(j);
      expect(e2.errors.length, 1);
      expect(e2.errors[0].message, 'err');
      expect(e2.errors[0].field, 'f');
    });
  });

  group('GetField extension', () {
    test('getField returns first violation for field', () {
      final e = FeeefValidationException(errors: [
        FeeefViolation(message: 'a', field: 'x'),
        FeeefViolation(message: 'b', field: 'y'),
      ]);
      expect(e.getField('x')?.message, 'a');
      expect(e.getField('y')?.message, 'b');
      expect(e.getField('z'), isNull);
    });

    test('getFieldMessage returns message or null', () {
      final e = FeeefValidationException(errors: [
        FeeefViolation(message: 'required', field: 'name'),
      ]);
      expect(e.getFieldMessage('name'), 'required');
      expect(e.getFieldMessage('other'), isNull);
    });

    test('messages returns list of all messages', () {
      final e = FeeefValidationException(errors: [
        FeeefViolation(message: 'one'),
        FeeefViolation(message: 'two'),
      ]);
      expect(e.messages, ['one', 'two']);
    });
  });
}
