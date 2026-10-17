import 'package:dio/dio.dart';
import 'package:feeef/reviews/models/review.dart';

/// Product reviews (docs/product-reviews.md §6). Mirrors `ff.reviews` in feeef.js.
///
/// Shopper calls need no login. The review page is keyed by the token from the customer's
/// link. Merchant calls need `reviews.read` / `reviews.write` (or `orders.read` for asks).
/// AI calls are paid workflow steps: pass a key you persisted before sending.
class ReviewsRepository {
  ReviewsRepository({required this.client});

  final Dio client;

  Map<String, dynamic> _map(Response<dynamic> res) =>
      Map<String, dynamic>.from(res.data as Map);

  // ─── Shoppers ──────────────────────────────────────────────────────────

  /// Published reviews of a product, plus the verified-only summary and effective settings.
  Future<ProductReviewsPage> list(
    String productId, {
    int? page,
    int? limit,
    int? rating,
    bool? withPhotos,
    bool? verifiedOnly,
    /// `relevant`, `recent`, `rating_desc` or `rating_asc`.
    String? sort,
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      '/products/${Uri.encodeComponent(productId)}/reviews',
      queryParameters: {
        'page': ?page,
        'limit': ?limit,
        'rating': ?rating,
        'withPhotos': ?withPhotos,
        'verifiedOnly': ?verifiedOnly,
        'sort': ?sort,
      },
      cancelToken: cancelToken,
    );
    return ProductReviewsPage.fromJson(_map(res));
  }

  /// Storefront form (only when the store or product allows it). Usually lands as `pending`.
  Future<StorefrontReviewResult> create(
    String productId, {
    required int rating,
    required String name,
    String? title,
    String? body,
    String? phone,
    List<String>? photos,
    String? locale,
    CancelToken? cancelToken,
  }) async {
    final res = await client.post(
      '/products/${Uri.encodeComponent(productId)}/reviews',
      data: {
        'rating': rating,
        'name': name,
        'title': ?title,
        'body': ?body,
        'phone': ?phone,
        'photos': ?photos,
        'locale': ?locale,
      },
      cancelToken: cancelToken,
    );
    return StorefrontReviewResult.fromJson(_map(res));
  }

  /// Upload one photo for the review page (`token`) or the storefront form (`productId`).
  /// Returns the CDN URL to put in `photos`.
  Future<String> uploadPhoto(
    FormData form, {
    CancelToken? cancelToken,
  }) async {
    final res = await client.post(
      '/reviews/photos',
      data: form,
      cancelToken: cancelToken,
    );
    return _map(res)['url'] as String;
  }

  /// Order context for the review page: products, the customer's own reviews, eligibility.
  Future<ReviewRequest> request(String token, {CancelToken? cancelToken}) async {
    final res = await client.get(
      '/reviews/requests/${Uri.encodeComponent(token)}',
      cancelToken: cancelToken,
    );
    return ReviewRequest.fromJson(_map(res));
  }

  /// Create or edit the reviews of one order. Returns the refreshed request.
  Future<ReviewRequest> submit(
    String token, {
    required List<ReviewLinkItemInput> items,
    bool? anonymous,
    String? authorName,
    String? locale,
    CancelToken? cancelToken,
  }) async {
    final res = await client.put(
      '/reviews/requests/${Uri.encodeComponent(token)}',
      data: {
        'items': items.map((i) => i.toJson()).toList(),
        'anonymous': ?anonymous,
        'authorName': ?authorName,
        'locale': ?locale,
      },
      cancelToken: cancelToken,
    );
    return ReviewRequest.fromJson(_map(res));
  }

  // ─── Merchants ─────────────────────────────────────────────────────────

  Future<MerchantReviewsPage> listForStore(
    String storeId, {
    int? page,
    int? limit,
    String? status,
    String? source,
    String? productId,
    int? rating,
    String? q,
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      '/stores/${Uri.encodeComponent(storeId)}/reviews',
      queryParameters: {
        'page': ?page,
        'limit': ?limit,
        'status': ?status,
        'source': ?source,
        'productId': ?productId,
        'rating': ?rating,
        'q': ?q,
      },
      cancelToken: cancelToken,
    );
    return MerchantReviewsPage.fromJson(_map(res));
  }

  /// Merchant testimonial: published, labelled "Added by the store", never counted in stars.
  Future<MerchantReview> createTestimonial(
    String storeId, {
    required String productId,
    required int rating,
    required String authorName,
    String? title,
    String? body,
    List<String>? photos,
    CancelToken? cancelToken,
  }) async {
    final res = await client.post(
      '/stores/${Uri.encodeComponent(storeId)}/reviews',
      data: {
        'productId': productId,
        'rating': rating,
        'authorName': authorName,
        'title': ?title,
        'body': ?body,
        'photos': ?photos,
      },
      cancelToken: cancelToken,
    );
    return MerchantReview.fromJson(_map(res));
  }

  /// Change status and/or the public reply. `reply: null` clears it.
  Future<MerchantReview> moderate(
    String storeId,
    String reviewId, {
    String? status,
    String? reply,
    bool clearReply = false,
    CancelToken? cancelToken,
  }) async {
    final res = await client.patch(
      '/stores/${Uri.encodeComponent(storeId)}/reviews/${Uri.encodeComponent(reviewId)}',
      data: {
        'status': ?status,
        if (reply != null || clearReply) 'reply': reply,
      },
      cancelToken: cancelToken,
    );
    return MerchantReview.fromJson(_map(res));
  }

  /// Publish, hide, reject or delete up to 100 reviews at once.
  Future<int> bulk(
    String storeId, {
    required List<String> ids,
    String? status,
    bool? delete,
    CancelToken? cancelToken,
  }) async {
    final res = await client.post(
      '/stores/${Uri.encodeComponent(storeId)}/reviews/bulk',
      data: {'ids': ids, 'status': ?status, 'delete': ?delete},
      cancelToken: cancelToken,
    );
    return (_map(res)['updated'] as num).toInt();
  }

  Future<void> remove(String storeId, String reviewId, {CancelToken? cancelToken}) =>
      client.delete(
        '/stores/${Uri.encodeComponent(storeId)}/reviews/${Uri.encodeComponent(reviewId)}',
        cancelToken: cancelToken,
      );

  /// Delivered orders by ask state: `todo`, `sent`, `reviewed` (or `all`).
  Future<ReviewAsksPage> requests(
    String storeId, {
    String? state,
    int? page,
    int? limit,
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      '/stores/${Uri.encodeComponent(storeId)}/reviews/requests',
      queryParameters: {'state': ?state, 'page': ?page, 'limit': ?limit},
      cancelToken: cancelToken,
    );
    return ReviewAsksPage.fromJson(_map(res));
  }

  /// The review link for one order, plus whether it can be asked for now.
  Future<ReviewLink> reviewLink(
    String storeId,
    String orderId, {
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      '/stores/${Uri.encodeComponent(storeId)}/orders/${Uri.encodeComponent(orderId)}/review-link',
      cancelToken: cancelToken,
    );
    return ReviewLink.fromJson(_map(res));
  }

  /// Record that the store asked this customer (after sending the WhatsApp/SMS text).
  Future<({String sentAt, int sentCount})> markRequestSent(
    String storeId,
    String orderId, {
    CancelToken? cancelToken,
  }) async {
    final res = await client.post(
      '/stores/${Uri.encodeComponent(storeId)}/orders/${Uri.encodeComponent(orderId)}/review-link/sent',
      cancelToken: cancelToken,
    );
    final json = _map(res);
    return (sentAt: json['sentAt'] as String, sentCount: (json['sentCount'] as num).toInt());
  }

  /// Remove the saved AI summary of a product.
  Future<void> deleteSummary(
    String storeId,
    String productId, {
    CancelToken? cancelToken,
  }) =>
      client.delete(
        '/stores/${Uri.encodeComponent(storeId)}/products/${Uri.encodeComponent(productId)}/review-summary',
        cancelToken: cancelToken,
      );

  // ─── AI (paid workflow steps) ──────────────────────────────────────────

  /// Draft a public reply. The merchant reviews it before saving with [moderate].
  Future<String> draftReply({
    required String storeId,
    required String reviewId,
    required String idempotencyKey,
    String? tone,
    String? instructions,
    String? locale,
    CancelToken? cancelToken,
  }) async {
    final res = await client.post(
      '/ai/text/review-reply',
      data: {
        'storeId': storeId,
        'reviewId': reviewId,
        'tone': ?tone,
        'instructions': ?instructions,
        'locale': ?locale,
      },
      options: Options(headers: {'Idempotency-Key': idempotencyKey}),
      cancelToken: cancelToken,
    );
    return _map(res)['reply'] as String;
  }

  /// Summarize a product's verified reviews (needs at least 3). Saved on the product.
  Future<ReviewAiSummary> summarize({
    required String storeId,
    required String productId,
    required String idempotencyKey,
    String? locale,
    CancelToken? cancelToken,
  }) async {
    final res = await client.post(
      '/ai/text/review-summary',
      data: {'storeId': storeId, 'productId': productId, 'locale': ?locale},
      options: Options(headers: {'Idempotency-Key': idempotencyKey}),
      cancelToken: cancelToken,
    );
    return ReviewAiSummary.fromJson(Map<String, dynamic>.from(_map(res)['summary'] as Map));
  }
}
