import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/interfaces/store_template.dart';
import 'package:feeef/interfaces/template_component.dart';

export 'package:feeef/interfaces/template_component.dart' show TemplateComponentPolicy;

/// Concrete model for a `store_templates` row.
class StoreTemplate extends StoreTemplateEntity implements Model {
  const StoreTemplate({
    required this.id,
    required this.storeId,
    required this.userId,
    required this.title,
    this.subtitle,
    this.body,
    this.category,
    this.tags = const [],
    this.imageUrl,
    this.screenshots = const [],
    this.demoUrl,
    this.price = 0,
    this.discount,
    this.license,
    this.schema = const {},
    this.data = const {},
    this.policy = TemplateComponentPolicy.private,
    this.parentId,
    this.version = 1,
    this.owned,
    this.effectivePrice,
    this.updateAvailable,
    this.installedReleaseId,
    this.latestRelease,
    this.ratingAvg,
    this.ratingCount,
    this.featured,
    this.salesClosed,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  @override
  final String id;
  @override
  final String storeId;
  @override
  final String userId;

  @override
  final String title;
  @override
  final String? subtitle;
  @override
  final String? body;
  @override
  final String? category;
  @override
  final List<String> tags;
  @override
  final String? imageUrl;
  @override
  final List<String> screenshots;
  @override
  final String? demoUrl;

  @override
  final num price;
  @override
  final num? discount;
  @override
  final String? license;

  @override
  final Map<String, dynamic> schema;
  @override
  final Map<String, dynamic> data;

  @override
  final TemplateComponentPolicy policy;
  @override
  final String? parentId;
  @override
  final int version;

  /// Marketplace: store already owns a license (or is author).
  final bool? owned;

  /// price − discount (from API enrichment).
  final num? effectivePrice;

  /// Newer release than the store’s pinned install.
  final bool? updateAvailable;

  final String? installedReleaseId;

  final StoreTemplateReleaseSummary? latestRelease;

  final num? ratingAvg;
  final int? ratingCount;
  final bool? featured;
  final bool? salesClosed;

  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  factory StoreTemplate.fromJson(Map<String, dynamic> json) {
    return StoreTemplate(
      id: json['id'] as String,
      storeId: (json['storeId'] ?? json['store_id']) as String,
      userId: (json['userId'] ?? json['user_id']) as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      body: json['body'] as String?,
      category: json['category'] as String?,
      tags: _stringList(json['tags']),
      imageUrl: (json['imageUrl'] ?? json['image_url']) as String?,
      screenshots: _stringList(json['screenshots']),
      demoUrl: (json['demoUrl'] ?? json['demo_url']) as String?,
      price: (json['price'] as num?) ?? 0,
      discount: json['discount'] as num?,
      license: json['license'] as String?,
      schema: _stringKeyedMap(json['schema']),
      data: _stringKeyedMap(json['data']),
      policy: TemplateComponentPolicy.fromWire(json['policy'] as String?),
      parentId: (json['parentId'] ?? json['parent_id']) as String?,
      version: (json['version'] as num?)?.toInt() ?? 1,
      owned: json['owned'] as bool?,
      effectivePrice: json['effectivePrice'] as num? ?? json['effective_price'] as num?,
      updateAvailable:
          json['updateAvailable'] as bool? ?? json['update_available'] as bool?,
      installedReleaseId: (json['installedReleaseId'] ??
          json['installed_release_id']) as String?,
      latestRelease: json['latestRelease'] is Map
          ? StoreTemplateReleaseSummary.fromJson(
              Map<String, dynamic>.from(json['latestRelease'] as Map),
            )
          : json['latest_release'] is Map
              ? StoreTemplateReleaseSummary.fromJson(
                  Map<String, dynamic>.from(json['latest_release'] as Map),
                )
              : null,
      ratingAvg: json['ratingAvg'] as num? ?? json['rating_avg'] as num?,
      ratingCount:
          ((json['ratingCount'] ?? json['rating_count']) as num?)?.toInt(),
      featured: json['featured'] as bool?,
      salesClosed:
          json['salesClosed'] as bool? ?? json['sales_closed'] as bool?,
      createdAt: _parseDate(json['createdAt'] ?? json['created_at']) ??
          DateTime.now(),
      updatedAt: _parseDate(json['updatedAt'] ?? json['updated_at']),
      deletedAt: _parseDate(json['deletedAt'] ?? json['deleted_at']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'storeId': storeId,
        'userId': userId,
        'title': title,
        'subtitle': subtitle,
        'body': body,
        'category': category,
        'tags': tags,
        'imageUrl': imageUrl,
        'screenshots': screenshots,
        'demoUrl': demoUrl,
        'price': price,
        'discount': discount,
        'license': license,
        'schema': schema,
        'data': data,
        'policy': policy.wire,
        'parentId': parentId,
        'version': version,
        if (owned != null) 'owned': owned,
        if (effectivePrice != null) 'effectivePrice': effectivePrice,
        if (updateAvailable != null) 'updateAvailable': updateAvailable,
        if (installedReleaseId != null) 'installedReleaseId': installedReleaseId,
        if (latestRelease != null) 'latestRelease': latestRelease!.toJson(),
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'deletedAt': deletedAt?.toIso8601String(),
      };
}

class StoreTemplateCreate implements ModelCreate {
  const StoreTemplateCreate({
    required this.storeId,
    required this.title,
    this.subtitle,
    this.body,
    this.category,
    this.tags = const [],
    this.imageUrl,
    this.screenshots = const [],
    this.demoUrl,
    this.price = 0,
    this.discount,
    this.license,
    this.schema = const {},
    this.data = const {},
    this.policy,
    this.parentId,
    this.salesClosed,
  });

  final String storeId;
  final String title;
  final String? subtitle;
  final String? body;
  final String? category;
  final List<String> tags;
  final String? imageUrl;
  final List<String> screenshots;
  final String? demoUrl;
  final num price;
  final num? discount;
  final String? license;
  final Map<String, dynamic> schema;
  final Map<String, dynamic> data;
  final TemplateComponentPolicy? policy;
  final String? parentId;
  final bool? salesClosed;

  @override
  Map<String, dynamic> toJson() => {
        'storeId': storeId,
        'title': title,
        'subtitle': subtitle,
        'body': body,
        'category': category,
        'tags': tags,
        'imageUrl': imageUrl,
        'screenshots': screenshots,
        'demoUrl': demoUrl,
        'price': price,
        'discount': discount,
        'license': license,
        'schema': schema,
        'data': data,
        if (policy != null) 'policy': policy!.wire,
        'parentId': parentId,
        if (salesClosed != null) 'salesClosed': salesClosed,
      };
}

class StoreTemplateUpdate implements ModelUpdate {
  const StoreTemplateUpdate({
    this.title,
    this.subtitle,
    this.body,
    this.category,
    this.tags,
    this.imageUrl,
    this.screenshots,
    this.demoUrl,
    this.price,
    this.discount,
    this.license,
    this.schema,
    this.data,
    this.policy,
    this.salesClosed,
    this.setToNull = const [],
  });

  final String? title;
  final String? subtitle;
  final String? body;
  final String? category;
  final List<String>? tags;
  final String? imageUrl;
  final List<String>? screenshots;
  final String? demoUrl;
  final num? price;
  final num? discount;
  final String? license;
  final Map<String, dynamic>? schema;
  final Map<String, dynamic>? data;
  final TemplateComponentPolicy? policy;

  /// Author-only marketplace flag (stop new purchases).
  final bool? salesClosed;

  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'subtitle': subtitle,
        'body': body,
        'category': category,
        'tags': tags,
        'imageUrl': imageUrl,
        'screenshots': screenshots,
        'demoUrl': demoUrl,
        'price': price,
        'discount': discount,
        'license': license,
        'schema': schema,
        'data': data,
        'policy': policy?.wire,
        if (salesClosed != null) 'salesClosed': salesClosed,
      };
}

List<String> _stringList(dynamic value) {
  if (value is! List) return const [];
  return value.map((item) => item.toString()).toList(growable: false);
}

Map<String, dynamic> _stringKeyedMap(dynamic value) {
  if (value is! Map) return const {};
  return Map<String, dynamic>.from(value);
}

DateTime? _parseDate(dynamic value) {
  if (value == null) return null;
  if (value is DateTime) return value;
  if (value is String && value.isNotEmpty) {
    try {
      return DateTime.parse(value);
    } catch (_) {
      return null;
    }
  }
  return null;
}

/// Result of `POST /store_templates/:id/install` — the installed catalog row
/// (same as request id) and the updated [store] map.
class StoreTemplateInstallResult {
  const StoreTemplateInstallResult({
    required this.storeTemplate,
    required this.store,
    this.release,
    this.license,
  });

  final StoreTemplate storeTemplate;
  final Map<String, dynamic> store;
  final StoreTemplateReleaseSummary? release;
  final Map<String, dynamic>? license;

  factory StoreTemplateInstallResult.fromJson(Map<String, dynamic> json) {
    return StoreTemplateInstallResult(
      storeTemplate: StoreTemplate.fromJson(
        Map<String, dynamic>.from(json['storeTemplate'] as Map),
      ),
      store: Map<String, dynamic>.from(json['store'] as Map),
      release: json['release'] is Map
          ? StoreTemplateReleaseSummary.fromJson(
              Map<String, dynamic>.from(json['release'] as Map),
            )
          : null,
      license: json['license'] is Map
          ? Map<String, dynamic>.from(json['license'] as Map)
          : null,
    );
  }
}

/// Catalog summary of an immutable release (no payload required).
class StoreTemplateReleaseSummary {
  const StoreTemplateReleaseSummary({
    required this.id,
    required this.storeTemplateId,
    required this.version,
    required this.versionCode,
    this.changelog,
    this.publishedAt,
  });

  final String id;
  final String storeTemplateId;
  final String version;
  final int versionCode;
  final String? changelog;
  final DateTime? publishedAt;

  factory StoreTemplateReleaseSummary.fromJson(Map<String, dynamic> json) {
    return StoreTemplateReleaseSummary(
      id: json['id'] as String,
      storeTemplateId:
          (json['storeTemplateId'] ?? json['store_template_id']) as String? ??
              '',
      version: json['version'] as String? ?? '',
      versionCode:
          ((json['versionCode'] ?? json['version_code']) as num?)?.toInt() ?? 0,
      changelog: json['changelog'] as String?,
      publishedAt: _parseDate(json['publishedAt'] ?? json['published_at']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'storeTemplateId': storeTemplateId,
        'version': version,
        'versionCode': versionCode,
        'changelog': changelog,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
      };
}

class StoreTemplateReviewListResult {
  const StoreTemplateReviewListResult({
    required this.data,
    required this.ratingAvg,
    required this.ratingCount,
  });

  final List<Map<String, dynamic>> data;
  final num ratingAvg;
  final int ratingCount;

  factory StoreTemplateReviewListResult.fromJson(Map<String, dynamic> json) {
    final raw = json['data'];
    return StoreTemplateReviewListResult(
      data: raw is List
          ? raw
              .whereType<Map>()
              .map((e) => Map<String, dynamic>.from(e))
              .toList(growable: false)
          : const [],
      ratingAvg: (json['ratingAvg'] as num?) ?? 0,
      ratingCount: (json['ratingCount'] as num?)?.toInt() ?? 0,
    );
  }
}

class StoreTemplateReviewUpsertResult {
  const StoreTemplateReviewUpsertResult({
    required this.review,
    required this.ratingAvg,
    required this.ratingCount,
  });

  final Map<String, dynamic> review;
  final num ratingAvg;
  final int ratingCount;

  factory StoreTemplateReviewUpsertResult.fromJson(Map<String, dynamic> json) {
    return StoreTemplateReviewUpsertResult(
      review: Map<String, dynamic>.from(json['review'] as Map),
      ratingAvg: (json['ratingAvg'] as num?) ?? 0,
      ratingCount: (json['ratingCount'] as num?)?.toInt() ?? 0,
    );
  }
}

class StoreTemplateEarnings {
  const StoreTemplateEarnings({
    required this.totalSales,
    required this.totalAuthorAmount,
    required this.totalPlatformAmount,
    this.byTemplate = const [],
  });

  final int totalSales;
  final num totalAuthorAmount;
  final num totalPlatformAmount;
  final List<StoreTemplateEarningRow> byTemplate;

  factory StoreTemplateEarnings.fromJson(Map<String, dynamic> json) {
    final raw = json['byTemplate'] ?? json['by_template'];
    return StoreTemplateEarnings(
      totalSales: (json['totalSales'] as num?)?.toInt() ?? 0,
      totalAuthorAmount: (json['totalAuthorAmount'] as num?) ?? 0,
      totalPlatformAmount: (json['totalPlatformAmount'] as num?) ?? 0,
      byTemplate: raw is List
          ? raw
              .whereType<Map>()
              .map(
                (e) => StoreTemplateEarningRow.fromJson(
                  Map<String, dynamic>.from(e),
                ),
              )
              .toList(growable: false)
          : const [],
    );
  }
}

class StoreTemplateEarningRow {
  const StoreTemplateEarningRow({
    required this.storeTemplateId,
    required this.title,
    required this.sales,
    required this.authorAmount,
    required this.platformAmount,
  });

  final String storeTemplateId;
  final String title;
  final int sales;
  final num authorAmount;
  final num platformAmount;

  factory StoreTemplateEarningRow.fromJson(Map<String, dynamic> json) {
    return StoreTemplateEarningRow(
      storeTemplateId:
          (json['storeTemplateId'] ?? json['store_template_id']) as String? ??
              '',
      title: json['title'] as String? ?? '',
      sales: (json['sales'] as num?)?.toInt() ?? 0,
      authorAmount: (json['authorAmount'] as num?) ?? 0,
      platformAmount: (json['platformAmount'] as num?) ?? 0,
    );
  }
}

/// Result of `POST /store_templates/:id/purchase`.
class StoreTemplatePurchaseResult {
  const StoreTemplatePurchaseResult({
    required this.license,
    required this.created,
    required this.storeTemplate,
  });

  final Map<String, dynamic> license;
  final bool created;
  final StoreTemplate storeTemplate;

  factory StoreTemplatePurchaseResult.fromJson(Map<String, dynamic> json) {
    return StoreTemplatePurchaseResult(
      license: Map<String, dynamic>.from(json['license'] as Map),
      created: json['created'] == true,
      storeTemplate: StoreTemplate.fromJson(
        Map<String, dynamic>.from(json['storeTemplate'] as Map),
      ),
    );
  }
}

/// One row in `store_template_locales`.
class StoreTemplateLocale {
  const StoreTemplateLocale({
    required this.id,
    required this.storeTemplateId,
    required this.locale,
    this.messages = const {},
    this.isDefault = false,
    this.createdAt,
    this.updatedAt,
  });

  final String id;
  final String storeTemplateId;
  final String locale;
  final Map<String, dynamic> messages;
  final bool isDefault;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory StoreTemplateLocale.fromJson(Map<String, dynamic> json) {
    return StoreTemplateLocale(
      id: json['id'] as String,
      storeTemplateId:
          (json['storeTemplateId'] ?? json['store_template_id']) as String,
      locale: json['locale'] as String,
      messages: _stringKeyedMap(json['messages']),
      isDefault: (json['isDefault'] ?? json['is_default']) == true,
      createdAt: _parseDate(json['createdAt'] ?? json['created_at']),
      updatedAt: _parseDate(json['updatedAt'] ?? json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'storeTemplateId': storeTemplateId,
        'locale': locale,
        'messages': messages,
        'isDefault': isDefault,
        if (createdAt != null) 'createdAt': createdAt!.toIso8601String(),
        if (updatedAt != null) 'updatedAt': updatedAt!.toIso8601String(),
      };
}

/// Input for create / replace locale rows.
class StoreTemplateLocaleInput {
  const StoreTemplateLocaleInput({
    required this.locale,
    required this.messages,
    this.isDefault = false,
  });

  final String locale;
  final Map<String, dynamic> messages;
  final bool isDefault;

  Map<String, dynamic> toJson() => {
        'locale': locale,
        'messages': messages,
        'isDefault': isDefault,
      };
}

/// Storefront-friendly i18n bundle from GET/PUT locales.
class StoreTemplateLocalesBundle {
  const StoreTemplateLocalesBundle({
    required this.defaultLocale,
    required this.locales,
    required this.messages,
    this.rows = const [],
  });

  final String defaultLocale;
  final List<String> locales;
  final Map<String, Map<String, dynamic>> messages;
  final List<StoreTemplateLocale> rows;

  factory StoreTemplateLocalesBundle.fromJson(Map<String, dynamic> json) {
    final rawMessages = json['messages'];
    final messages = <String, Map<String, dynamic>>{};
    if (rawMessages is Map) {
      for (final e in rawMessages.entries) {
        messages[e.key.toString()] = _stringKeyedMap(e.value);
      }
    }
    return StoreTemplateLocalesBundle(
      defaultLocale: (json['defaultLocale'] ?? json['default_locale'] ?? 'en')
          as String,
      locales: _stringList(json['locales']),
      messages: messages,
      rows: (json['rows'] as List?)
              ?.whereType<Map>()
              .map(
                (m) =>
                    StoreTemplateLocale.fromJson(Map<String, dynamic>.from(m)),
              )
              .toList(growable: false) ??
          const [],
    );
  }
}
