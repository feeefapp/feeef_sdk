import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

/// Product reviews (docs/product-reviews.md §6). Mirrors `feeef.js` `core/entities/review.ts`.
///
/// `source`, `status`, `state` and `reason` stay plain strings on purpose: an app built today
/// keeps working when the backend adds a value. Compare with the constants below.
abstract final class ReviewSource {
  static const order = 'order';
  static const storefront = 'storefront';
  static const merchant = 'merchant';
  static const import_ = 'import';
}

abstract final class ReviewStatus {
  static const pending = 'pending';
  static const published = 'published';
  static const hidden = 'hidden';
  static const rejected = 'rejected';
}

abstract final class ReviewAskState {
  static const todo = 'todo';
  static const sent = 'sent';
  static const reviewed = 'reviewed';
}

@freezed
abstract class ReviewHistogram with _$ReviewHistogram {
  const factory ReviewHistogram({
    @JsonKey(name: '1') @Default(0) int one,
    @JsonKey(name: '2') @Default(0) int two,
    @JsonKey(name: '3') @Default(0) int three,
    @JsonKey(name: '4') @Default(0) int four,
    @JsonKey(name: '5') @Default(0) int five,
  }) = _ReviewHistogram;

  factory ReviewHistogram.fromJson(Map<String, dynamic> json) =>
      _$ReviewHistogramFromJson(json);
}

/// Stars come from verified reviews only. `total` counts every published review.
@freezed
abstract class ReviewSummary with _$ReviewSummary {
  const factory ReviewSummary({
    @Default(0) double avg,
    @Default(0) int count,
    ReviewHistogram? histogram,
    int? total,
    int? withPhotos,
  }) = _ReviewSummary;

  factory ReviewSummary.fromJson(Map<String, dynamic> json) =>
      _$ReviewSummaryFromJson(json);
}

@freezed
abstract class ReviewReply with _$ReviewReply {
  const factory ReviewReply({required String body, String? at}) = _ReviewReply;

  factory ReviewReply.fromJson(Map<String, dynamic> json) =>
      _$ReviewReplyFromJson(json);
}

/// A review as shoppers see it. Never carries phone, IP, order id or moderation fields.
@freezed
abstract class PublicReview with _$PublicReview {
  const factory PublicReview({
    required String id,
    required String productId,
    required int rating,
    String? title,
    String? body,
    @Default(<String>[]) List<String> photos,
    /// Empty when the customer chose to stay anonymous.
    @Default('') String authorName,
    @Default(ReviewSource.order) String source,
    @Default(false) bool verified,
    String? variantLabel,
    ReviewReply? reply,
    String? createdAt,
  }) = _PublicReview;

  factory PublicReview.fromJson(Map<String, dynamic> json) =>
      _$PublicReviewFromJson(json);
}

/// The customer's own review as the review page shows it.
@freezed
abstract class OwnReview with _$OwnReview {
  const factory OwnReview({
    required String id,
    required String productId,
    required int rating,
    String? title,
    String? body,
    @Default(<String>[]) List<String> photos,
    @Default('') String authorName,
    @Default(ReviewSource.order) String source,
    @Default(false) bool verified,
    String? variantLabel,
    ReviewReply? reply,
    String? createdAt,
    @Default(ReviewStatus.published) String status,
    @Default(false) bool editable,
  }) = _OwnReview;

  factory OwnReview.fromJson(Map<String, dynamic> json) =>
      _$OwnReviewFromJson(json);
}

/// Effective settings for one product (store settings + product override).
@freezed
abstract class PublicReviewSettings with _$PublicReviewSettings {
  const factory PublicReviewSettings({
    @Default(true) bool active,
    @Default(false) bool storefrontForm,
  }) = _PublicReviewSettings;

  factory PublicReviewSettings.fromJson(Map<String, dynamic> json) =>
      _$PublicReviewSettingsFromJson(json);
}

@freezed
abstract class ReviewPageMeta with _$ReviewPageMeta {
  const factory ReviewPageMeta({
    @Default(0) int total,
    @Default(10) int perPage,
    @Default(1) int currentPage,
    @Default(1) int lastPage,
  }) = _ReviewPageMeta;

  factory ReviewPageMeta.fromJson(Map<String, dynamic> json) =>
      _$ReviewPageMetaFromJson(json);
}

@freezed
abstract class ProductReviewsPage with _$ProductReviewsPage {
  const factory ProductReviewsPage({
    @Default(<PublicReview>[]) List<PublicReview> data,
    required ReviewPageMeta meta,
    required ReviewSummary summary,
    required PublicReviewSettings settings,
  }) = _ProductReviewsPage;

  factory ProductReviewsPage.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewsPageFromJson(json);
}

/// Storefront form (unverified) answer: `202 { id, status }`.
@freezed
abstract class StorefrontReviewResult with _$StorefrontReviewResult {
  const factory StorefrontReviewResult({
    required String id,
    @Default(ReviewStatus.pending) String status,
  }) = _StorefrontReviewResult;

  factory StorefrontReviewResult.fromJson(Map<String, dynamic> json) =>
      _$StorefrontReviewResultFromJson(json);
}

/// One line of the review page submission.
@freezed
abstract class ReviewLinkItemInput with _$ReviewLinkItemInput {
  const factory ReviewLinkItemInput({
    required String productId,
    required int rating,
    String? title,
    String? body,
    List<String>? photos,
  }) = _ReviewLinkItemInput;

  factory ReviewLinkItemInput.fromJson(Map<String, dynamic> json) =>
      _$ReviewLinkItemInputFromJson(json);
}

@freezed
abstract class ReviewRequestItem with _$ReviewRequestItem {
  const factory ReviewRequestItem({
    required String productId,
    @Default('') String name,
    String? photoUrl,
    String? variant,
    @Default(true) bool active,
    OwnReview? review,
  }) = _ReviewRequestItem;

  factory ReviewRequestItem.fromJson(Map<String, dynamic> json) =>
      _$ReviewRequestItemFromJson(json);
}

@freezed
abstract class ReviewRequestStore with _$ReviewRequestStore {
  const factory ReviewRequestStore({
    required String name,
    String? logoUrl,
    required String url,
    String? color,
    String? phone,
    String? whatsapp,
  }) = _ReviewRequestStore;

  factory ReviewRequestStore.fromJson(Map<String, dynamic> json) =>
      _$ReviewRequestStoreFromJson(json);
}

/// Order context for the review page (`GET /reviews/requests/:token`).
@freezed
abstract class ReviewRequest with _$ReviewRequest {
  const factory ReviewRequest({
    @Default(true) bool active,
    @Default(false) bool open,
    /// `disabled`, `not_delivered`, `window_closed` or null.
    String? reason,
    String? deliveredAt,
    String? closesAt,
    String? customerFirstName,
    /// The name a review shows when the customer does not stay anonymous.
    String? authorPreview,
    @Default(false) bool anonymous,
    ReviewRequestStore? store,
    @Default(<ReviewRequestItem>[]) List<ReviewRequestItem> items,
  }) = _ReviewRequest;

  factory ReviewRequest.fromJson(Map<String, dynamic> json) =>
      _$ReviewRequestFromJson(json);
}

@freezed
abstract class MerchantReviewProduct with _$MerchantReviewProduct {
  const factory MerchantReviewProduct({
    required String id,
    @Default('') String name,
    String? photoUrl,
    @Default('') String slug,
  }) = _MerchantReviewProduct;

  factory MerchantReviewProduct.fromJson(Map<String, dynamic> json) =>
      _$MerchantReviewProductFromJson(json);
}

/// Merchant view of a review, moderation state included.
@freezed
abstract class MerchantReview with _$MerchantReview {
  const factory MerchantReview({
    required String id,
    required String storeId,
    required String productId,
    String? orderId,
    @Default(ReviewSource.order) String source,
    @Default(ReviewStatus.pending) String status,
    @Default(false) bool verified,
    required int rating,
    String? title,
    String? body,
    @Default(<String>[]) List<String> photos,
    @Default('') String authorName,
    String? variantLabel,
    String? locale,
    String? replyBody,
    String? replyAt,
    String? moderatedBy,
    String? publishedAt,
    String? createdAt,
    String? updatedAt,
    MerchantReviewProduct? product,
  }) = _MerchantReview;

  factory MerchantReview.fromJson(Map<String, dynamic> json) =>
      _$MerchantReviewFromJson(json);
}

@freezed
abstract class ReviewStatusCounts with _$ReviewStatusCounts {
  const factory ReviewStatusCounts({
    @Default(0) int pending,
    @Default(0) int published,
    @Default(0) int hidden,
    @Default(0) int rejected,
  }) = _ReviewStatusCounts;

  factory ReviewStatusCounts.fromJson(Map<String, dynamic> json) =>
      _$ReviewStatusCountsFromJson(json);
}

@freezed
abstract class MerchantReviewsPage with _$MerchantReviewsPage {
  const factory MerchantReviewsPage({
    @Default(<MerchantReview>[]) List<MerchantReview> data,
    required ReviewPageMeta meta,
    required ReviewStatusCounts counts,
    required ReviewSummary summary,
  }) = _MerchantReviewsPage;

  factory MerchantReviewsPage.fromJson(Map<String, dynamic> json) =>
      _$MerchantReviewsPageFromJson(json);
}

@freezed
abstract class ReviewAskItem with _$ReviewAskItem {
  const factory ReviewAskItem({
    required String productId,
    @Default('') String name,
    String? photoUrl,
  }) = _ReviewAskItem;

  factory ReviewAskItem.fromJson(Map<String, dynamic> json) =>
      _$ReviewAskItemFromJson(json);
}

/// A delivered order the store may ask for a review.
@freezed
abstract class ReviewAsk with _$ReviewAsk {
  const factory ReviewAsk({
    required String orderId,
    String? customerName,
    String? customerPhone,
    required String deliveredAt,
    @Default(<ReviewAskItem>[]) List<ReviewAskItem> items,
    @Default(ReviewAskState.todo) String state,
    String? sentAt,
    @Default(0) int sentCount,
  }) = _ReviewAsk;

  factory ReviewAsk.fromJson(Map<String, dynamic> json) =>
      _$ReviewAskFromJson(json);
}

@freezed
abstract class ReviewAskCounts with _$ReviewAskCounts {
  const factory ReviewAskCounts({
    @Default(0) int todo,
    @Default(0) int sent,
    @Default(0) int reviewed,
  }) = _ReviewAskCounts;

  factory ReviewAskCounts.fromJson(Map<String, dynamic> json) =>
      _$ReviewAskCountsFromJson(json);
}

@freezed
abstract class ReviewAsksPage with _$ReviewAsksPage {
  const factory ReviewAsksPage({
    @Default(<ReviewAsk>[]) List<ReviewAsk> data,
    required ReviewPageMeta meta,
    required ReviewAskCounts counts,
  }) = _ReviewAsksPage;

  factory ReviewAsksPage.fromJson(Map<String, dynamic> json) =>
      _$ReviewAsksPageFromJson(json);
}

@freezed
abstract class ReviewLink with _$ReviewLink {
  const factory ReviewLink({
    @Default(false) bool eligible,
    String? reason,
    required String url,
    String? deliveredAt,
    String? closesAt,
    @Default(0) int productCount,
    String? sentAt,
    @Default(0) int sentCount,
  }) = _ReviewLink;

  factory ReviewLink.fromJson(Map<String, dynamic> json) =>
      _$ReviewLinkFromJson(json);
}

/// AI "what customers say" for one product.
@freezed
abstract class ReviewAiSummary with _$ReviewAiSummary {
  const factory ReviewAiSummary({
    required String text,
    @Default(<String>[]) List<String> pros,
    @Default(<String>[]) List<String> cons,
    @Default(0) int basedOn,
    String? locale,
    String? generatedAt,
  }) = _ReviewAiSummary;

  factory ReviewAiSummary.fromJson(Map<String, dynamic> json) =>
      _$ReviewAiSummaryFromJson(json);
}

/// Store settings at `integrations.reviews` (free; on by default).
@freezed
abstract class ReviewsIntegration with _$ReviewsIntegration {
  const factory ReviewsIntegration({
    bool? active,
    bool? autoPublishVerified,
    bool? storefrontForm,
    bool? autoPublishStorefront,
    bool? showReplies,
    /// Store-only: push the team on new customer reviews.
    bool? notifyNewReviews,
    /// Store-only: WhatsApp text for "Ask for a review" (max 500 chars).
    String? requestMessage,
  }) = _ReviewsIntegration;

  factory ReviewsIntegration.fromJson(Map<String, dynamic> json) =>
      _$ReviewsIntegrationFromJson(json);
}

/// Per-product override at `integrationsData.reviewsData`. Unset keys inherit the store.
@freezed
abstract class ProductReviewsData with _$ProductReviewsData {
  const factory ProductReviewsData({
    @Default(false) bool useProductSettings,
    bool? active,
    bool? autoPublishVerified,
    bool? storefrontForm,
    bool? autoPublishStorefront,
    bool? showReplies,
  }) = _ProductReviewsData;

  factory ProductReviewsData.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewsDataFromJson(json);
}
