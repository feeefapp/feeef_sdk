import 'dart:convert';

import 'lab_core.dart';

/// Most products one Lab request (chat message, image, poster, voice script) can carry.
/// Mirror of `LAB_RESOURCES_MAX` in `backend/shared/lab_chat_attachments.ts`.
const labResourcesMax = 4;

/// Chat part a client sends to attach a product; the server swaps it for the resolved facts.
const labChatResourcePart = 'data-feeef-resource';
const _resourcePrefix = '[Feeef resource attachment]\n';

/// A store whose catalog the signed-in person can read (`GET resources/api/stores`).
class LabResourceStore {
  const LabResourceStore({
    required this.id,
    required this.name,
    required this.slug,
    this.logoUrl,
  });

  factory LabResourceStore.fromJson(LabJson json) => LabResourceStore(
    id: '${json['id']}',
    name: '${json['name'] ?? ''}',
    slug: '${json['slug'] ?? ''}',
    logoUrl: json['logoUrl'] as String?,
  );

  final String id;
  final String name;
  final String slug;
  final String? logoUrl;
}

/// A product as pickers and chips show it (`GET resources/api/products`). The client only ever
/// sends its [id]; the server loads and authorizes the full product for each request.
class LabProductSummary {
  const LabProductSummary({
    required this.id,
    required this.storeId,
    required this.name,
    this.price,
    this.discount,
    this.imageUrl,
  });

  factory LabProductSummary.fromJson(LabJson json) => LabProductSummary(
    id: '${json['id']}',
    storeId: '${json['storeId'] ?? ''}',
    name: '${json['name'] ?? ''}',
    price: (json['price'] as num?),
    discount: (json['discount'] as num?),
    imageUrl: json['imageUrl'] as String?,
  );

  final String id;
  final String storeId;
  final String name;

  /// List price; [discount] is the amount taken off it.
  final num? price;
  final num? discount;
  final String? imageUrl;

  /// What the shopper pays.
  num? get salePrice => price == null ? null : price! - (discount ?? 0);

  /// `{type: 'product', value}`: the reference image, poster and voice requests take.
  LabJson get ref => {'type': 'product', 'value': id};

  /// The chat part for this product. Name and image only draw the sent message until the
  /// server's resolved copy replaces it.
  LabJson get chatPart => {
    'type': labChatResourcePart,
    'data': {
      'type': 'product',
      'value': id,
      'name': name,
      'imageUrl': imageUrl,
    },
  };

  @override
  bool operator ==(Object other) =>
      other is LabProductSummary && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

/// The product a user message part carries: the server's resolved text part (after send or
/// reload) or the client's [labChatResourcePart] (the optimistic copy). Null for other parts.
LabProductSummary? labChatPartProduct(LabJson part) {
  final type = part['type'];
  if (type == 'text') return parseLabChatResource(part['text']);
  if (type != labChatResourcePart) return null;
  final data = part['data'];
  if (data is! Map || data['type'] != 'product' || data['value'] is! String)
    return null;
  return LabProductSummary(
    id: data['value'] as String,
    storeId: '',
    name: data['name'] is String ? data['name'] as String : '',
    imageUrl: data['imageUrl'] as String?,
  );
}

/// Parses a resolved resource text part (`[Feeef resource attachment]\n{json}`).
LabProductSummary? parseLabChatResource(Object? text) {
  if (text is! String || !text.startsWith(_resourcePrefix)) return null;
  try {
    final data = jsonDecode(text.substring(_resourcePrefix.length));
    if (data is! Map ||
        data['type'] != 'product' ||
        data['id'] is! String ||
        data['name'] is! String) {
      return null;
    }
    return LabProductSummary.fromJson(Map<String, dynamic>.from(data));
  } catch (_) {
    return null;
  }
}

/// Store products the person can attach to Lab AI requests (`/api/v1/lab/resources/api/*`).
class LabResourcesApi {
  LabResourcesApi(this._http);
  final LabHttp _http;

  Future<List<LabResourceStore>> stores() async {
    final r = labMap(await _http.json('resources/api/stores'));
    return labList(r['data']).map(LabResourceStore.fromJson).toList();
  }

  /// One page of [storeId]'s products, newest first; [q] filters by name or SKU.
  Future<({List<LabProductSummary> data, int? next})> products({
    required String storeId,
    String? q,
    int page = 1,
  }) async {
    final r = labMap(
      await _http.json(
        'resources/api/products',
        query: {'store': storeId, 'q': q, if (page > 1) 'page': '$page'},
      ),
    );
    return (
      data: labList(r['data']).map(LabProductSummary.fromJson).toList(),
      next: (r['next'] as num?)?.toInt(),
    );
  }
}
