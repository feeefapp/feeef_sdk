import 'package:feeef/stores/models/store.dart';
import 'package:test/test.dart';

Store _store({Map<String, dynamic> metadata = const {}}) {
  final now = DateTime.utc(2024, 1, 1);
  return Store(
    id: 'store1',
    createdAt: now,
    updatedAt: now,
    slug: 'my-store',
    name: 'My Store',
    userId: 'user1',
    metadata: metadata,
  );
}

/// Builds a large nested templateData-like tree (simulates Lithium JSX docs).
Map<String, dynamic> _hugeTemplateData({int pages = 40, int codeChars = 8000}) {
  final code = 'x' * codeChars;
  return {
    'pages': {
      for (var i = 0; i < pages; i++)
        'page_$i': {
          'sections': [
            for (var s = 0; s < 8; s++)
              {
                'id': 'sec_${i}_$s',
                'components': [
                  for (var c = 0; c < 6; c++)
                    {
                      'id': 'c_${i}_${s}_$c',
                      'code': code,
                      'props': {'title': 'Hello $i-$s-$c'},
                    },
                ],
              },
          ],
        },
    },
    'props': {'theme': 'light'},
  };
}

void main() {
  group('storeMetadataEquals / Store.==', () {
    test('identical metadata maps are equal', () {
      final meta = {
        'foo': 1,
        kStoreMetadataTemplateDataKey: _hugeTemplateData(pages: 2, codeChars: 100),
      };
      expect(storeMetadataEquals(meta, meta), isTrue);
      expect(_store(metadata: meta), equals(_store(metadata: meta)));
    });

    test('templateData compared by identity only (same content, different map)',
        () {
      final tree = _hugeTemplateData(pages: 5, codeChars: 2000);
      final a = {
        'flag': true,
        kStoreMetadataTemplateDataKey: Map<String, dynamic>.from(tree),
      };
      final b = {
        'flag': true,
        kStoreMetadataTemplateDataKey: Map<String, dynamic>.from(tree),
      };
      // Deep content matches, but templateData maps are different instances.
      expect(identical(a[kStoreMetadataTemplateDataKey],
          b[kStoreMetadataTemplateDataKey]), isFalse);
      expect(storeMetadataEquals(a, b), isFalse);
    });

    test('shared templateData reference + other keys deep-equal', () {
      final templateData = _hugeTemplateData(pages: 5, codeChars: 2000);
      final a = {
        'flag': true,
        'nested': {'a': 1},
        kStoreMetadataTemplateDataKey: templateData,
      };
      final b = {
        'flag': true,
        'nested': {'a': 1},
        kStoreMetadataTemplateDataKey: templateData,
      };
      expect(storeMetadataEquals(a, b), isTrue);
      expect(_store(metadata: a), equals(_store(metadata: b)));
    });

    test('non-templateData key changes are detected', () {
      final templateData = _hugeTemplateData(pages: 2, codeChars: 100);
      final a = {'flag': true, kStoreMetadataTemplateDataKey: templateData};
      final b = {'flag': false, kStoreMetadataTemplateDataKey: templateData};
      expect(storeMetadataEquals(a, b), isFalse);
    });

    test('Store.== with huge templateData finishes quickly', () {
      final templateData = _hugeTemplateData();
      final meta = {
        'templateFollowDefault': false,
        kStoreMetadataTemplateDataKey: templateData,
      };
      final a = _store(metadata: meta);
      final b = _store(metadata: Map<String, dynamic>.from(meta));

      final sw = Stopwatch()..start();
      var equalCount = 0;
      for (var i = 0; i < 500; i++) {
        if (a == b) equalCount++;
        if (a.hashCode == b.hashCode) equalCount++;
      }
      sw.stop();

      expect(equalCount, greaterThan(0));
      // Deep-walking the fixture via DeepCollectionEquality routinely takes
      // seconds for 500 compares; identity-aware path should stay well under
      // a few hundred ms even on slow CI.
      expect(sw.elapsedMilliseconds, lessThan(500),
          reason: 'Store.== must not deep-walk templateData '
              '(took ${sw.elapsedMilliseconds}ms)');
    });

    test('toString does not embed templateData body', () {
      final templateData = _hugeTemplateData(pages: 2, codeChars: 5000);
      final s = _store(metadata: {
        kStoreMetadataTemplateDataKey: templateData,
      });
      final text = s.toString();
      expect(text.contains('xxxxx'), isFalse);
      expect(text.contains('templateData: present'), isTrue);
    });
  });
}
