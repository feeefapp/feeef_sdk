// Product reviews SDK — request shapes sent by `ReviewsRepository` (no network).
// Protects: public, review-page and merchant paths, idempotency on paid AI calls, and
// parsing of the public/merchant payloads the backend returns.
import 'package:dio/dio.dart';
import 'package:feeef/ai/workflow_intents.dart';
import 'package:feeef/feeef.dart';
import 'package:test/test.dart';

class _Recorder {
  _Recorder(this.response) {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          calls.add(options);
          handler.resolve(
            Response(requestOptions: options, data: response, statusCode: 200),
          );
        },
      ),
    );
  }

  final dynamic response;
  final calls = <RequestOptions>[];
  final dio = Dio(BaseOptions(baseUrl: 'https://feeef.test/v1'));
  late final reviews = ReviewsRepository(client: dio);
}

void main() {
  group('shopper calls', () {
    test(
      'list sends verified-only and sort as query params and parses the page',
      () async {
        final r = _Recorder({
          'data': [
            {
              'id': 'r1',
              'productId': 'p1',
              'rating': 5,
              'authorName': 'Amina B.',
              'source': 'order',
              'verified': true,
              'photos': <String>[],
              'createdAt': '2026-10-17T00:00:00.000Z',
            },
          ],
          'meta': {'total': 1, 'perPage': 10, 'currentPage': 1, 'lastPage': 1},
          'summary': {
            'avg': 5,
            'count': 1,
            'histogram': {'1': 0, '2': 0, '3': 0, '4': 0, '5': 1},
            'total': 1,
            'withPhotos': 0,
          },
          'settings': {'active': true, 'storefrontForm': false},
        });
        final page = await r.reviews.list(
          'p1',
          verifiedOnly: true,
          sort: 'rating_desc',
          limit: 5,
        );
        expect(r.calls.single.method, 'GET');
        expect(r.calls.single.uri.path, '/v1/products/p1/reviews');
        expect(r.calls.single.queryParameters, {
          'verifiedOnly': true,
          'sort': 'rating_desc',
          'limit': 5,
        });
        expect(page.data.single.verified, isTrue);
        expect(page.summary.avg, 5.0);
        expect(page.summary.histogram?.five, 1);
        expect(page.settings.storefrontForm, isFalse);
      },
    );

    test('review page submit sends items and anonymous, parses the refreshed request', () async {
      final r = _Recorder({
        'active': true,
        'open': true,
        'anonymous': true,
        'items': [
          {
            'productId': 'p1',
            'name': 'Shirt',
            'active': true,
            'review': {
              'id': 'r1',
              'productId': 'p1',
              'rating': 4,
              'authorName': '',
              'status': 'published',
              'editable': true,
            },
          },
        ],
      });
      final request = await r.reviews.submit(
        'rv_abc.def',
        items: const [
          ReviewLinkItemInput(productId: 'p1', rating: 4, body: 'Nice'),
        ],
        anonymous: true,
      );
      expect(r.calls.single.method, 'PUT');
      expect(
        r.calls.single.uri.toString(),
        'https://feeef.test/v1/reviews/requests/rv_abc.def',
      );
      expect(r.calls.single.data['anonymous'], isTrue);
      expect(r.calls.single.data['items'].first['rating'], 4);
      expect(request.items.single.review!.authorName, isEmpty);
      expect(request.items.single.review!.editable, isTrue);
    });

    test(
      'storefront create posts to the product and returns the chosen status',
      () async {
        final r = _Recorder({'id': 'r2', 'status': 'pending'});
        final result = await r.reviews.create('p1', rating: 3, name: 'Walid');
        expect(
          r.calls.single.uri.toString(),
          'https://feeef.test/v1/products/p1/reviews',
        );
        expect(result.status, 'pending');
      },
    );
  });

  group('merchant and AI calls', () {
    test('moderation and asks use the store path; reply null is sent when clearing', () async {
      final r = _Recorder({
        'id': 'r9',
        'storeId': 's1',
        'productId': 'p1',
        'rating': 2,
        'status': 'hidden',
      });
      await r.reviews.moderate('s1', 'r9', clearReply: true);
      expect(r.calls.single.method, 'PATCH');
      expect(
        r.calls.single.uri.toString(),
        'https://feeef.test/v1/stores/s1/reviews/r9',
      );
      expect(r.calls.single.data.containsKey('reply'), isTrue);
      expect(r.calls.single.data['reply'], isNull);
    });

    test('paid AI calls carry the caller-persisted Idempotency-Key', () async {
      final r = _Recorder({'success': true, 'reply': 'Thank you!'});
      final reply = await r.reviews.draftReply(
        storeId: 's1',
        reviewId: 'r1',
        idempotencyKey: 'reply-key-0001',
        tone: 'short',
      );
      expect(reply, 'Thank you!');
      expect(
        r.calls.single.uri.toString(),
        'https://feeef.test/v1/ai/text/review-reply',
      );
      expect(r.calls.single.headers['Idempotency-Key'], 'reply-key-0001');
    });
  });

  group('workflow intents', () {
    test('review AI paths are persisted-key workflow routes', () {
      final reply = RequestOptions(
        path: '/v1/ai/text/review-reply',
        method: 'POST',
      );
      final summary = RequestOptions(
        path: '/v1/ai/text/review-summary',
        method: 'POST',
      );
      expect(CloudAiWorkflowIntents.applies(reply), isTrue);
      expect(CloudAiWorkflowIntents.applies(summary), isTrue);
    });
  });
}
