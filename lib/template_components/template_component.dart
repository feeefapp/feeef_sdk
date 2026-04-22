import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/interfaces/template_component.dart';

export 'package:feeef/interfaces/template_component.dart'
    show TemplateComponentPolicy;

/// Concrete model for a `template_components` row.
///
/// Implements the SDK's [Model] contract so it works with the standard
/// [ResourceRepository] mixins (find / list / update / delete), and
/// [TemplateComponentEntity] so callers can pass it where the abstract
/// shape is expected.
///
/// JSON parsing is intentionally tolerant: snake_case and camelCase
/// keys are both accepted, timestamps tolerate `null` (the row may
/// have been freshly inserted before `autoUpdate` ran), and unknown
/// `policy` strings collapse to [TemplateComponentPolicy.private]
/// (fail-closed). This mirrors the patterns in `Product` /
/// `ImagePromptTemplate`.
class TemplateComponent extends TemplateComponentEntity implements Model {
  const TemplateComponent({
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
    this.discount = 0,
    this.license,
    required this.code,
    this.propsSchema = const {},
    this.slotsSchema,
    this.propsDefault = const {},
    this.slotsDefault,
    this.slotsLayout,
    this.policy = TemplateComponentPolicy.private,
    this.parentId,
    this.version = 1,
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
  final String code;
  @override
  final Map<String, dynamic> propsSchema;
  @override
  final Map<String, dynamic>? slotsSchema;
  @override
  final Map<String, dynamic> propsDefault;
  @override
  final Map<String, dynamic>? slotsDefault;
  @override
  final Map<String, dynamic>? slotsLayout;

  @override
  final TemplateComponentPolicy policy;
  @override
  final String? parentId;
  @override
  final int version;

  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  factory TemplateComponent.fromJson(Map<String, dynamic> json) {
    return TemplateComponent(
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
      code: (json['code'] as String?) ?? '',
      propsSchema: _stringKeyedMap(json['propsSchema'] ?? json['props_schema']),
      slotsSchema: _nullableStringKeyedMap(
        json['slotsSchema'] ?? json['slots_schema'],
      ),
      propsDefault: _stringKeyedMap(
        json['propsDefault'] ?? json['props_default'],
      ),
      slotsDefault: _nullableStringKeyedMap(
        json['slotsDefault'] ?? json['slots_default'],
      ),
      slotsLayout: _nullableStringKeyedMap(
        json['slotsLayout'] ?? json['slots_layout'],
      ),
      policy: TemplateComponentPolicy.fromWire(json['policy'] as String?),
      parentId: (json['parentId'] ?? json['parent_id']) as String?,
      version: (json['version'] as num?)?.toInt() ?? 1,
      createdAt: _parseDate(json['createdAt'] ?? json['created_at']) ??
          DateTime.now(),
      updatedAt: _parseDate(json['updatedAt'] ?? json['updated_at']),
      deletedAt: _parseDate(json['deletedAt'] ?? json['deleted_at']),
    );
  }

  /// Wire shape sent to and accepted from the backend. Snake-case keys
  /// are intentionally NOT emitted on the way out — the canonical wire
  /// is camelCase across the stack.
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
        'code': code,
        'propsSchema': propsSchema,
        'slotsSchema': slotsSchema,
        'propsDefault': propsDefault,
        'slotsDefault': slotsDefault,
        'slotsLayout': slotsLayout,
        'policy': policy.wire,
        'parentId': parentId,
        'version': version,
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'deletedAt': deletedAt?.toIso8601String(),
      };

  /// Convenience for editor flows: produce a copy with selected fields
  /// replaced. `version` is intentionally not exposed — that field is
  /// server-managed and any client-side bump would lie.
  TemplateComponent copyWith({
    String? title,
    String? subtitle,
    String? body,
    String? category,
    List<String>? tags,
    String? imageUrl,
    List<String>? screenshots,
    String? demoUrl,
    num? price,
    num? discount,
    String? license,
    String? code,
    Map<String, dynamic>? propsSchema,
    Map<String, dynamic>? slotsSchema,
    Map<String, dynamic>? propsDefault,
    Map<String, dynamic>? slotsDefault,
    Map<String, dynamic>? slotsLayout,
    TemplateComponentPolicy? policy,
  }) {
    return TemplateComponent(
      id: id,
      storeId: storeId,
      userId: userId,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      body: body ?? this.body,
      category: category ?? this.category,
      tags: tags ?? this.tags,
      imageUrl: imageUrl ?? this.imageUrl,
      screenshots: screenshots ?? this.screenshots,
      demoUrl: demoUrl ?? this.demoUrl,
      price: price ?? this.price,
      discount: discount ?? this.discount,
      license: license ?? this.license,
      code: code ?? this.code,
      propsSchema: propsSchema ?? this.propsSchema,
      slotsSchema: slotsSchema ?? this.slotsSchema,
      propsDefault: propsDefault ?? this.propsDefault,
      slotsDefault: slotsDefault ?? this.slotsDefault,
      slotsLayout: slotsLayout ?? this.slotsLayout,
      policy: policy ?? this.policy,
      parentId: parentId,
      version: version,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// Payload accepted by `POST /template_components`.
///
/// `userId` is derived from the authenticated request and `version`
/// is server-managed — both are intentionally absent here. `storeId`
/// is required because a single user can own multiple stores.
class TemplateComponentCreate implements ModelCreate {
  const TemplateComponentCreate({
    required this.storeId,
    required this.title,
    required this.code,
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
    this.propsSchema = const {},
    this.slotsSchema,
    this.propsDefault = const {},
    this.slotsDefault,
    this.slotsLayout,
    this.policy,
    this.parentId,
  });

  final String storeId;
  final String title;
  final String code;
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
  final Map<String, dynamic> propsSchema;
  final Map<String, dynamic>? slotsSchema;
  final Map<String, dynamic> propsDefault;
  final Map<String, dynamic>? slotsDefault;
  final Map<String, dynamic>? slotsLayout;
  final TemplateComponentPolicy? policy;
  final String? parentId;

  @override
  Map<String, dynamic> toJson() => {
        'storeId': storeId,
        'title': title,
        'code': code,
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
        'propsSchema': propsSchema,
        'slotsSchema': slotsSchema,
        'propsDefault': propsDefault,
        'slotsDefault': slotsDefault,
        'slotsLayout': slotsLayout,
        if (policy != null) 'policy': policy!.wire,
        'parentId': parentId,
      };
}

/// Payload accepted by `PUT /template_components/:id`.
///
/// Per the SDK convention:
///  - `null` field that is in [setToNull] → server clears the column.
///  - `null` field absent from [setToNull] → field unchanged.
///  - non-null field → field replaced with the given value.
///
/// `version` is intentionally absent — the server bumps it on
/// meaningful changes.
class TemplateComponentUpdate implements ModelUpdate {
  const TemplateComponentUpdate({
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
    this.code,
    this.propsSchema,
    this.slotsSchema,
    this.propsDefault,
    this.slotsDefault,
    this.slotsLayout,
    this.policy,
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
  final String? code;
  final Map<String, dynamic>? propsSchema;
  final Map<String, dynamic>? slotsSchema;
  final Map<String, dynamic>? propsDefault;
  final Map<String, dynamic>? slotsDefault;
  final Map<String, dynamic>? slotsLayout;
  final TemplateComponentPolicy? policy;

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
        'code': code,
        'propsSchema': propsSchema,
        'slotsSchema': slotsSchema,
        'propsDefault': propsDefault,
        'slotsDefault': slotsDefault,
        'slotsLayout': slotsLayout,
        'policy': policy?.wire,
      };
}

// ─────────────────────────────────────────────────────────────────────
// JSON parsing helpers — kept private because they only make sense in
// the `template_components` shapes (jsonb columns + soft-deleted rows).
// ─────────────────────────────────────────────────────────────────────

List<String> _stringList(dynamic value) {
  if (value is! List) return const [];
  return value.map((item) => item.toString()).toList(growable: false);
}

Map<String, dynamic> _stringKeyedMap(dynamic value) {
  if (value is! Map) return const {};
  return Map<String, dynamic>.from(value);
}

Map<String, dynamic>? _nullableStringKeyedMap(dynamic value) {
  if (value == null) return null;
  if (value is! Map) return null;
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
