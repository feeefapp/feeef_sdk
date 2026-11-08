// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewHistogram _$ReviewHistogramFromJson(Map<String, dynamic> json) =>
    _ReviewHistogram(
      one: (json['1'] as num?)?.toInt() ?? 0,
      two: (json['2'] as num?)?.toInt() ?? 0,
      three: (json['3'] as num?)?.toInt() ?? 0,
      four: (json['4'] as num?)?.toInt() ?? 0,
      five: (json['5'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ReviewHistogramToJson(_ReviewHistogram instance) =>
    <String, dynamic>{
      '1': instance.one,
      '2': instance.two,
      '3': instance.three,
      '4': instance.four,
      '5': instance.five,
    };

_ReviewSummary _$ReviewSummaryFromJson(Map<String, dynamic> json) =>
    _ReviewSummary(
      avg: (json['avg'] as num?)?.toDouble() ?? 0,
      count: (json['count'] as num?)?.toInt() ?? 0,
      histogram: json['histogram'] == null
          ? null
          : ReviewHistogram.fromJson(json['histogram'] as Map<String, dynamic>),
      total: (json['total'] as num?)?.toInt(),
      withPhotos: (json['withPhotos'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReviewSummaryToJson(_ReviewSummary instance) =>
    <String, dynamic>{
      'avg': instance.avg,
      'count': instance.count,
      'histogram': instance.histogram?.toJson(),
      'total': instance.total,
      'withPhotos': instance.withPhotos,
    };

_ReviewReply _$ReviewReplyFromJson(Map<String, dynamic> json) =>
    _ReviewReply(body: json['body'] as String, at: json['at'] as String?);

Map<String, dynamic> _$ReviewReplyToJson(_ReviewReply instance) =>
    <String, dynamic>{'body': instance.body, 'at': instance.at};

_PublicReview _$PublicReviewFromJson(Map<String, dynamic> json) =>
    _PublicReview(
      id: json['id'] as String,
      productId: json['productId'] as String,
      rating: (json['rating'] as num).toInt(),
      title: json['title'] as String?,
      body: json['body'] as String?,
      photos:
          (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      authorName: json['authorName'] as String? ?? '',
      source: json['source'] as String? ?? ReviewSource.order,
      verified: json['verified'] as bool? ?? false,
      variantLabel: json['variantLabel'] as String?,
      reply: json['reply'] == null
          ? null
          : ReviewReply.fromJson(json['reply'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$PublicReviewToJson(_PublicReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'rating': instance.rating,
      'title': instance.title,
      'body': instance.body,
      'photos': instance.photos,
      'authorName': instance.authorName,
      'source': instance.source,
      'verified': instance.verified,
      'variantLabel': instance.variantLabel,
      'reply': instance.reply?.toJson(),
      'createdAt': instance.createdAt,
    };

_OwnReview _$OwnReviewFromJson(Map<String, dynamic> json) => _OwnReview(
  id: json['id'] as String,
  productId: json['productId'] as String,
  rating: (json['rating'] as num).toInt(),
  title: json['title'] as String?,
  body: json['body'] as String?,
  photos:
      (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  authorName: json['authorName'] as String? ?? '',
  source: json['source'] as String? ?? ReviewSource.order,
  verified: json['verified'] as bool? ?? false,
  variantLabel: json['variantLabel'] as String?,
  reply: json['reply'] == null
      ? null
      : ReviewReply.fromJson(json['reply'] as Map<String, dynamic>),
  createdAt: json['createdAt'] as String?,
  status: json['status'] as String? ?? ReviewStatus.published,
  editable: json['editable'] as bool? ?? false,
);

Map<String, dynamic> _$OwnReviewToJson(_OwnReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'rating': instance.rating,
      'title': instance.title,
      'body': instance.body,
      'photos': instance.photos,
      'authorName': instance.authorName,
      'source': instance.source,
      'verified': instance.verified,
      'variantLabel': instance.variantLabel,
      'reply': instance.reply?.toJson(),
      'createdAt': instance.createdAt,
      'status': instance.status,
      'editable': instance.editable,
    };

_PublicReviewSettings _$PublicReviewSettingsFromJson(
  Map<String, dynamic> json,
) => _PublicReviewSettings(
  active: json['active'] as bool? ?? true,
  storefrontForm: json['storefrontForm'] as bool? ?? false,
);

Map<String, dynamic> _$PublicReviewSettingsToJson(
  _PublicReviewSettings instance,
) => <String, dynamic>{
  'active': instance.active,
  'storefrontForm': instance.storefrontForm,
};

_ReviewPageMeta _$ReviewPageMetaFromJson(Map<String, dynamic> json) =>
    _ReviewPageMeta(
      total: (json['total'] as num?)?.toInt() ?? 0,
      perPage: (json['perPage'] as num?)?.toInt() ?? 10,
      currentPage: (json['currentPage'] as num?)?.toInt() ?? 1,
      lastPage: (json['lastPage'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$ReviewPageMetaToJson(_ReviewPageMeta instance) =>
    <String, dynamic>{
      'total': instance.total,
      'perPage': instance.perPage,
      'currentPage': instance.currentPage,
      'lastPage': instance.lastPage,
    };

_ProductReviewsPage _$ProductReviewsPageFromJson(Map<String, dynamic> json) =>
    _ProductReviewsPage(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => PublicReview.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PublicReview>[],
      meta: ReviewPageMeta.fromJson(json['meta'] as Map<String, dynamic>),
      summary: ReviewSummary.fromJson(json['summary'] as Map<String, dynamic>),
      settings: PublicReviewSettings.fromJson(
        json['settings'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ProductReviewsPageToJson(_ProductReviewsPage instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
      'summary': instance.summary.toJson(),
      'settings': instance.settings.toJson(),
    };

_StorefrontReviewResult _$StorefrontReviewResultFromJson(
  Map<String, dynamic> json,
) => _StorefrontReviewResult(
  id: json['id'] as String,
  status: json['status'] as String? ?? ReviewStatus.pending,
);

Map<String, dynamic> _$StorefrontReviewResultToJson(
  _StorefrontReviewResult instance,
) => <String, dynamic>{'id': instance.id, 'status': instance.status};

_ReviewLinkItemInput _$ReviewLinkItemInputFromJson(Map<String, dynamic> json) =>
    _ReviewLinkItemInput(
      productId: json['productId'] as String,
      rating: (json['rating'] as num).toInt(),
      title: json['title'] as String?,
      body: json['body'] as String?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ReviewLinkItemInputToJson(
  _ReviewLinkItemInput instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'rating': instance.rating,
  'title': instance.title,
  'body': instance.body,
  'photos': instance.photos,
};

_ReviewRequestItem _$ReviewRequestItemFromJson(Map<String, dynamic> json) =>
    _ReviewRequestItem(
      productId: json['productId'] as String,
      name: json['name'] as String? ?? '',
      photoUrl: json['photoUrl'] as String?,
      variant: json['variant'] as String?,
      active: json['active'] as bool? ?? true,
      review: json['review'] == null
          ? null
          : OwnReview.fromJson(json['review'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewRequestItemToJson(_ReviewRequestItem instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'variant': instance.variant,
      'active': instance.active,
      'review': instance.review?.toJson(),
    };

_ReviewRequestStore _$ReviewRequestStoreFromJson(Map<String, dynamic> json) =>
    _ReviewRequestStore(
      name: json['name'] as String,
      logoUrl: json['logoUrl'] as String?,
      url: json['url'] as String,
      color: json['color'] as String?,
      phone: json['phone'] as String?,
      whatsapp: json['whatsapp'] as String?,
    );

Map<String, dynamic> _$ReviewRequestStoreToJson(_ReviewRequestStore instance) =>
    <String, dynamic>{
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'url': instance.url,
      'color': instance.color,
      'phone': instance.phone,
      'whatsapp': instance.whatsapp,
    };

_ReviewRequest _$ReviewRequestFromJson(Map<String, dynamic> json) =>
    _ReviewRequest(
      active: json['active'] as bool? ?? true,
      open: json['open'] as bool? ?? false,
      reason: json['reason'] as String?,
      deliveredAt: json['deliveredAt'] as String?,
      closesAt: json['closesAt'] as String?,
      customerFirstName: json['customerFirstName'] as String?,
      authorPreview: json['authorPreview'] as String?,
      anonymous: json['anonymous'] as bool? ?? false,
      store: json['store'] == null
          ? null
          : ReviewRequestStore.fromJson(json['store'] as Map<String, dynamic>),
      items:
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) => ReviewRequestItem.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <ReviewRequestItem>[],
    );

Map<String, dynamic> _$ReviewRequestToJson(_ReviewRequest instance) =>
    <String, dynamic>{
      'active': instance.active,
      'open': instance.open,
      'reason': instance.reason,
      'deliveredAt': instance.deliveredAt,
      'closesAt': instance.closesAt,
      'customerFirstName': instance.customerFirstName,
      'authorPreview': instance.authorPreview,
      'anonymous': instance.anonymous,
      'store': instance.store?.toJson(),
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_MerchantReviewProduct _$MerchantReviewProductFromJson(
  Map<String, dynamic> json,
) => _MerchantReviewProduct(
  id: json['id'] as String,
  name: json['name'] as String? ?? '',
  photoUrl: json['photoUrl'] as String?,
  slug: json['slug'] as String? ?? '',
);

Map<String, dynamic> _$MerchantReviewProductToJson(
  _MerchantReviewProduct instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'photoUrl': instance.photoUrl,
  'slug': instance.slug,
};

_MerchantReview _$MerchantReviewFromJson(
  Map<String, dynamic> json,
) => _MerchantReview(
  id: json['id'] as String,
  storeId: json['storeId'] as String,
  productId: json['productId'] as String,
  orderId: json['orderId'] as String?,
  source: json['source'] as String? ?? ReviewSource.order,
  status: json['status'] as String? ?? ReviewStatus.pending,
  verified: json['verified'] as bool? ?? false,
  rating: (json['rating'] as num).toInt(),
  title: json['title'] as String?,
  body: json['body'] as String?,
  photos:
      (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  authorName: json['authorName'] as String? ?? '',
  variantLabel: json['variantLabel'] as String?,
  locale: json['locale'] as String?,
  replyBody: json['replyBody'] as String?,
  replyAt: json['replyAt'] as String?,
  moderatedBy: json['moderatedBy'] as String?,
  publishedAt: json['publishedAt'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  product: json['product'] == null
      ? null
      : MerchantReviewProduct.fromJson(json['product'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MerchantReviewToJson(_MerchantReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'productId': instance.productId,
      'orderId': instance.orderId,
      'source': instance.source,
      'status': instance.status,
      'verified': instance.verified,
      'rating': instance.rating,
      'title': instance.title,
      'body': instance.body,
      'photos': instance.photos,
      'authorName': instance.authorName,
      'variantLabel': instance.variantLabel,
      'locale': instance.locale,
      'replyBody': instance.replyBody,
      'replyAt': instance.replyAt,
      'moderatedBy': instance.moderatedBy,
      'publishedAt': instance.publishedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'product': instance.product?.toJson(),
    };

_ReviewStatusCounts _$ReviewStatusCountsFromJson(Map<String, dynamic> json) =>
    _ReviewStatusCounts(
      pending: (json['pending'] as num?)?.toInt() ?? 0,
      published: (json['published'] as num?)?.toInt() ?? 0,
      hidden: (json['hidden'] as num?)?.toInt() ?? 0,
      rejected: (json['rejected'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ReviewStatusCountsToJson(_ReviewStatusCounts instance) =>
    <String, dynamic>{
      'pending': instance.pending,
      'published': instance.published,
      'hidden': instance.hidden,
      'rejected': instance.rejected,
    };

_MerchantReviewsPage _$MerchantReviewsPageFromJson(Map<String, dynamic> json) =>
    _MerchantReviewsPage(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => MerchantReview.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MerchantReview>[],
      meta: ReviewPageMeta.fromJson(json['meta'] as Map<String, dynamic>),
      counts: ReviewStatusCounts.fromJson(
        json['counts'] as Map<String, dynamic>,
      ),
      summary: ReviewSummary.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MerchantReviewsPageToJson(
  _MerchantReviewsPage instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'meta': instance.meta.toJson(),
  'counts': instance.counts.toJson(),
  'summary': instance.summary.toJson(),
};

_ReviewAskItem _$ReviewAskItemFromJson(Map<String, dynamic> json) =>
    _ReviewAskItem(
      productId: json['productId'] as String,
      name: json['name'] as String? ?? '',
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$ReviewAskItemToJson(_ReviewAskItem instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
    };

_ReviewAsk _$ReviewAskFromJson(Map<String, dynamic> json) => _ReviewAsk(
  orderId: json['orderId'] as String,
  customerName: json['customerName'] as String?,
  customerPhone: json['customerPhone'] as String?,
  deliveredAt: json['deliveredAt'] as String,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => ReviewAskItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ReviewAskItem>[],
  state: json['state'] as String? ?? ReviewAskState.todo,
  sentAt: json['sentAt'] as String?,
  sentCount: (json['sentCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$ReviewAskToJson(_ReviewAsk instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'customerName': instance.customerName,
      'customerPhone': instance.customerPhone,
      'deliveredAt': instance.deliveredAt,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'state': instance.state,
      'sentAt': instance.sentAt,
      'sentCount': instance.sentCount,
    };

_ReviewAskCounts _$ReviewAskCountsFromJson(Map<String, dynamic> json) =>
    _ReviewAskCounts(
      todo: (json['todo'] as num?)?.toInt() ?? 0,
      sent: (json['sent'] as num?)?.toInt() ?? 0,
      reviewed: (json['reviewed'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ReviewAskCountsToJson(_ReviewAskCounts instance) =>
    <String, dynamic>{
      'todo': instance.todo,
      'sent': instance.sent,
      'reviewed': instance.reviewed,
    };

_ReviewAsksPage _$ReviewAsksPageFromJson(Map<String, dynamic> json) =>
    _ReviewAsksPage(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => ReviewAsk.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ReviewAsk>[],
      meta: ReviewPageMeta.fromJson(json['meta'] as Map<String, dynamic>),
      counts: ReviewAskCounts.fromJson(json['counts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewAsksPageToJson(_ReviewAsksPage instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
      'counts': instance.counts.toJson(),
    };

_ReviewLink _$ReviewLinkFromJson(Map<String, dynamic> json) => _ReviewLink(
  eligible: json['eligible'] as bool? ?? false,
  reason: json['reason'] as String?,
  url: json['url'] as String,
  deliveredAt: json['deliveredAt'] as String?,
  closesAt: json['closesAt'] as String?,
  productCount: (json['productCount'] as num?)?.toInt() ?? 0,
  sentAt: json['sentAt'] as String?,
  sentCount: (json['sentCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$ReviewLinkToJson(_ReviewLink instance) =>
    <String, dynamic>{
      'eligible': instance.eligible,
      'reason': instance.reason,
      'url': instance.url,
      'deliveredAt': instance.deliveredAt,
      'closesAt': instance.closesAt,
      'productCount': instance.productCount,
      'sentAt': instance.sentAt,
      'sentCount': instance.sentCount,
    };

_ReviewAiSummary _$ReviewAiSummaryFromJson(Map<String, dynamic> json) =>
    _ReviewAiSummary(
      text: json['text'] as String,
      pros:
          (json['pros'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      cons:
          (json['cons'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      basedOn: (json['basedOn'] as num?)?.toInt() ?? 0,
      locale: json['locale'] as String?,
      generatedAt: json['generatedAt'] as String?,
    );

Map<String, dynamic> _$ReviewAiSummaryToJson(_ReviewAiSummary instance) =>
    <String, dynamic>{
      'text': instance.text,
      'pros': instance.pros,
      'cons': instance.cons,
      'basedOn': instance.basedOn,
      'locale': instance.locale,
      'generatedAt': instance.generatedAt,
    };

_ReviewsIntegration _$ReviewsIntegrationFromJson(Map<String, dynamic> json) =>
    _ReviewsIntegration(
      active: json['active'] as bool?,
      autoPublishVerified: json['autoPublishVerified'] as bool?,
      storefrontForm: json['storefrontForm'] as bool?,
      autoPublishStorefront: json['autoPublishStorefront'] as bool?,
      showReplies: json['showReplies'] as bool?,
      notifyNewReviews: json['notifyNewReviews'] as bool?,
      requestMessage: json['requestMessage'] as String?,
    );

Map<String, dynamic> _$ReviewsIntegrationToJson(_ReviewsIntegration instance) =>
    <String, dynamic>{
      'active': instance.active,
      'autoPublishVerified': instance.autoPublishVerified,
      'storefrontForm': instance.storefrontForm,
      'autoPublishStorefront': instance.autoPublishStorefront,
      'showReplies': instance.showReplies,
      'notifyNewReviews': instance.notifyNewReviews,
      'requestMessage': instance.requestMessage,
    };

_ProductReviewsData _$ProductReviewsDataFromJson(Map<String, dynamic> json) =>
    _ProductReviewsData(
      useProductSettings: json['useProductSettings'] as bool? ?? false,
      active: json['active'] as bool?,
      autoPublishVerified: json['autoPublishVerified'] as bool?,
      storefrontForm: json['storefrontForm'] as bool?,
      autoPublishStorefront: json['autoPublishStorefront'] as bool?,
      showReplies: json['showReplies'] as bool?,
    );

Map<String, dynamic> _$ProductReviewsDataToJson(_ProductReviewsData instance) =>
    <String, dynamic>{
      'useProductSettings': instance.useProductSettings,
      'active': instance.active,
      'autoPublishVerified': instance.autoPublishVerified,
      'storefrontForm': instance.storefrontForm,
      'autoPublishStorefront': instance.autoPublishStorefront,
      'showReplies': instance.showReplies,
    };
