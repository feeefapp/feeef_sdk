import 'package:feeef/core/list_response.dart';
import 'package:test/test.dart';

void main() {
  int fromJson(dynamic j) => j as int;
  Map<String, dynamic> toJson(int i) => {'v': i};

  group('ListResponse', () {
    test('fromJson with list uses list as data', () {
      final r = ListResponse.fromJson([1, 2, 3], fromJson);
      expect(r.data, [1, 2, 3]);
      expect(r.total, isNull);
      expect(r.page, isNull);
      expect(r.limit, isNull);
    });

    test('fromJson with meta object parses data and meta', () {
      final r = ListResponse.fromJson({
        'data': [10, 20],
        'meta': {
          'total': 100,
          'currentPage': 2,
          'perPage': 10,
        },
      }, fromJson);
      expect(r.data, [10, 20]);
      expect(r.total, 100);
      expect(r.page, 2);
      expect(r.limit, 10);
    });

    test('toJson returns data and optional meta', () {
      final r = ListResponse(data: [1, 2], total: 5, page: 1, limit: 2);
      final out = r.toJson(toJson);
      expect(out['data'], isA<List>());
      expect((out['data'] as List).length, 2);
      expect(out['total'], 5);
      expect(out['page'], 1);
      expect(out['limit'], 2);
    });

    test('hasMore is true when page is null', () {
      final r = ListResponse<int>(data: []);
      expect(r.hasMore, isTrue);
    });

    test('hasMore is false when total <= page * limit', () {
      final r = ListResponse(data: <int>[], total: 10, page: 2, limit: 10);
      expect(r.hasMore, isFalse);
    });

    test('hasMore is true when total > page * limit', () {
      final r = ListResponse(data: <int>[], total: 25, page: 2, limit: 10);
      expect(r.hasMore, isTrue);
    });

    test('nextPage returns 2 when page is null', () {
      final r = ListResponse<int>(data: []);
      expect(r.nextPage, 2);
    });

    test('nextPage returns page+1 when page is set', () {
      final r = ListResponse(data: <int>[], total: 50, page: 3, limit: 10);
      expect(r.nextPage, 4);
    });
  });
}
