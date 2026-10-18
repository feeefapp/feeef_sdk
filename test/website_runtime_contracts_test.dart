import 'package:dio/dio.dart';
import 'package:feeef/stores/models/store.dart';
import 'package:feeef/template_components/template_component.dart';
import 'package:feeef/template_components/template_component_repository.dart';
import 'package:test/test.dart';

void main() {
  test(
    'public URL selects the installed runtime and keeps explicit domains',
    () {
      Store shop(
        Map<String, dynamic> metadata, [
        Map<String, dynamic>? domain,
      ]) => Store.fromJson({
        'id': 'shop',
        'userId': 'owner',
        'name': 'Shop',
        'slug': 'shop',
        'metadata': metadata,
        'domain': domain,
        'createdAt': '2026-10-18T00:00:00Z',
        'updatedAt': '2026-10-18T00:00:00Z',
      });
      expect(
        shop({
          'templateData': {'runtime': 'helium', 'schemaVersion': 2},
        }).getPublicUrl(),
        'https://shop.h.feeef.store',
      );
      expect(
        shop({
          'templateData': {'pages': {}},
        }).getPublicUrl(),
        'https://shop.alpha.feeef.store',
      );
      expect(
        shop({}, {'name': 'shop.example.test'}).getPublicUrl(),
        'https://shop.example.test',
      );
    },
  );

  test('component drafts and explicit publication preserve their concurrency guard', () async {
    final calls = <RequestOptions>[];
    final client = Dio(BaseOptions(baseUrl: 'https://example.test/v1'));
    client.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) {
          calls.add(request);
          handler.resolve(
            Response(
              requestOptions: request,
              statusCode: 200,
              data: {
                'id': 'component',
                'storeId': 'shop',
                'userId': 'owner',
                'title': 'Component',
                'code': '() => null',
                'version': 3,
                'publishedVersion': 2,
              },
            ),
          );
        },
      ),
    );
    final repo = TemplateComponentsRepository(client: client);
    final saved = await repo.update(
      id: 'component',
      data: const TemplateComponentUpdate(
        expectedVersion: 2,
        code: '() => null',
      ),
    );
    expect(calls.single.data['expectedVersion'], 2);
    expect(calls.single.data.containsKey('publish'), false);
    expect(saved.version, 3);
    expect(saved.publishedVersion, 2);
    calls.clear();
    await repo.update(
      id: 'component',
      data: const TemplateComponentUpdate(expectedVersion: 3, publish: true),
    );
    expect(calls.single.data['expectedVersion'], 3);
    expect(calls.single.data['publish'], true);
    client.close();
  });
}
