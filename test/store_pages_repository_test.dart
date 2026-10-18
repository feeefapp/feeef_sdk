import 'package:dio/dio.dart';
import 'package:feeef/store_pages/store_page.dart';
import 'package:feeef/store_pages/store_pages_repository.dart';
import 'package:test/test.dart';

void main() {
  late Dio client;
  late StorePagesRepository pages;
  late List<RequestOptions> calls;
  setUp(() {
    calls = [];
    client = Dio(BaseOptions(baseUrl: 'https://example.test/v1'));
    client.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) {
          calls.add(request);
          handler.resolve(
            Response(
              requestOptions: request,
              statusCode: 200,
              data: {
                'id': 'page-1',
                'storeId': 'store-1',
                'path': '/pages/guide',
                'draftRevision': 8,
                'publishedRevision': 7,
                'status': 'published',
                'root': {'type': 'custom'},
                'locales': {
                  'messages': {
                    'en': {'title': 'Guide'},
                  },
                },
                'extensions': {'future': true},
              },
            ),
          );
        },
      ),
    );
    pages = StorePagesRepository(client: client);
  });
  tearDown(() => client.close());
  test('clone creation omits untouched fields but explicit empty maps replace defaults', () async {
    await pages.create(
      storeId: 'store-1',
      path: '/pages/clone',
      createdFromPage: 'home',
    );
    expect(calls.single.data, {
      'path': '/pages/clone',
      'createdFromPage': 'home',
    });
    calls.clear();
    await pages.create(
      storeId: 'store-1',
      path: '/pages/blank',
      props: {},
      sections: {},
    );
    expect(calls.single.data, {
      'path': '/pages/blank',
      'props': {},
      'sections': {},
    });
  });
  test(
    'save sends the editor revision once and distinguishes clear from omission',
    () async {
      final result = await pages.update(
        storeId: 'store-1',
        id: 'page-1',
        expectedRevision: 3,
        root: null,
        title: null,
        seo: {},
        locales: {'messages': {}},
        extensions: {'future': true},
      );
      expect(calls, hasLength(1));
      expect(calls.single.method, 'PUT');
      expect(calls.single.data['expectedRevision'], 3);
      expect(calls.single.data.containsKey('createdFromPage'), false);
      expect(calls.single.data.containsKey('root'), true);
      expect(calls.single.data['root'], null);
      expect(result.hasDraftChanges, true);
      expect(result.isPublished, true);
      expect(result.locales['messages']['en']['title'], 'Guide');
      expect(result.extensions['future'], true);
    },
  );
  test(
    'deletion uses the loaded revision without silently refetching it',
    () async {
      await pages.delete(storeId: 'store-1', id: 'page-1', expectedRevision: 2);
      expect(calls, hasLength(1));
      expect(calls.single.method, 'DELETE');
      expect(calls.single.data, {'expectedRevision': 2});
    },
  );
  test('bulk sends explicit identities and revisions with a stable caller operation id', () async {
    await pages.bulk(
      storeId: 'store-1',
      action: 'duplicate',
      operationId: 'operation-123',
      pages: const [
        StorePage(
          id: 'p1',
          storeId: 'store-1',
          path: '/pages/one',
          draftRevision: 4,
        ),
        StorePage(
          id: 'p2',
          storeId: 'store-1',
          path: '/pages/two',
          draftRevision: 9,
        ),
      ],
    );
    expect(calls.single.data, {
      'action': 'duplicate',
      'operationId': 'operation-123',
      'items': [
        {'id': 'p1', 'expectedRevision': 4},
        {'id': 'p2', 'expectedRevision': 9},
      ],
    });
  });
}
