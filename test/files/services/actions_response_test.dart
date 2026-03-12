import 'package:feeef/files/services/actions.dart';
import 'package:test/test.dart';

void main() {
  group('AICodeGenerationResponse', () {
    test('fromJson parses success, data, message, error', () {
      final r = AICodeGenerationResponse.fromJson({
        'success': true,
        'data': 'code here',
        'message': 'OK',
        'error': null,
      });
      expect(r.success, isTrue);
      expect(r.data, 'code here');
      expect(r.message, 'OK');
      expect(r.error, isNull);
    });

    test('fromJson defaults for missing fields', () {
      final r = AICodeGenerationResponse.fromJson({});
      expect(r.success, isFalse);
      expect(r.data, isNull);
      expect(r.message, 'Unknown response');
    });

    test('hasError is true when !success and error non-null', () {
      expect(
        AICodeGenerationResponse(success: false, message: '', error: 'err').hasError,
        isTrue,
      );
      expect(
        AICodeGenerationResponse(success: true, message: '', error: 'x').hasError,
        isFalse,
      );
    });

    test('hasData is true when success and data non-empty', () {
      expect(
        AICodeGenerationResponse(success: true, message: '', data: 'x').hasData,
        isTrue,
      );
      expect(
        AICodeGenerationResponse(success: true, message: '', data: '').hasData,
        isFalse,
      );
    });
  });

  group('AICustomComponentResponse', () {
    test('fromJson parses all fields', () {
      final r = AICustomComponentResponse.fromJson({
        'success': true,
        'code': 'const X = () => null;',
        'propsSchema': {'type': 'object'},
        'props': {'a': 1},
        'message': 'OK',
        'title': 'MyComponent',
      });
      expect(r.success, isTrue);
      expect(r.code, 'const X = () => null;');
      expect(r.propsSchema, {'type': 'object'});
      expect(r.props, {'a': 1});
      expect(r.title, 'MyComponent');
    });

    test('hasError and hasPayload', () {
      final err = AICustomComponentResponse(
        success: false,
        message: '',
        error: 'fail',
      );
      expect(err.hasError, isTrue);
      expect(err.hasPayload, isFalse);

      final ok = AICustomComponentResponse(
        success: true,
        message: '',
        code: 'x',
        propsSchema: {},
        props: {},
      );
      expect(ok.hasError, isFalse);
      expect(ok.hasPayload, isTrue);
    });
  });

  group('Actions enums', () {
    test('SendEventToMetaPixelActionEvents values', () {
      expect(SendEventToMetaPixelActionEvents.values, isNotEmpty);
      expect(SendEventToMetaPixelActionEvents.purchase, SendEventToMetaPixelActionEvents.purchase);
    });
    test('SendEventToTiktokPixelActionEvents values', () {
      expect(SendEventToTiktokPixelActionEvents.values.length, greaterThan(4));
    });
    test('GenerateSimpleCodeLanguage values', () {
      expect(GenerateSimpleCodeLanguage.values, contains(GenerateSimpleCodeLanguage.markdown));
    });
    test('AICodeGenerationMode values', () {
      expect(AICodeGenerationMode.values, [AICodeGenerationMode.create, AICodeGenerationMode.edit]);
    });
  });
}
