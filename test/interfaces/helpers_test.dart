import 'package:feeef/interfaces/helpers.dart';
import 'package:flutter_test/flutter_test.dart';

/// Minimal [ModelUpdate] implementation for testing [ModelUpdateToJson].
class _TestModelUpdate implements ModelUpdate {
  _TestModelUpdate({this.id, this.name, this.setToNull = const []});
  final String? id;
  final String? name;
  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

void main() {
  group('ModelUpdateToJson', () {
    test('toUpdateJson drops keys that are null and not in setToNull', () {
      final m = _TestModelUpdate(id: '1', name: null);
      final j = m.toUpdateJson();
      expect(j.containsKey('id'), isTrue);
      expect(j.containsKey('name'), isFalse);
    });

    test('toUpdateJson keeps keys that are in setToNull even when null', () {
      final m = _TestModelUpdate(id: null, name: null, setToNull: ['name']);
      final j = m.toUpdateJson();
      expect(j.containsKey('name'), isTrue);
      expect(j['name'], isNull);
    });

    test('toUpdateJson keeps non-null values', () {
      final m = _TestModelUpdate(id: '1', name: 'foo');
      final j = m.toUpdateJson();
      expect(j['id'], '1');
      expect(j['name'], 'foo');
    });
  });
}
