import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart' show MediaType;
import 'package:feeef/attachments/attachment.dart';
import 'package:feeef/files/services/generate_image_landing_page_request.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef/interfaces/template_component.dart' show TemplateComponentPolicy;
import 'package:feeef/stores/models/store.dart';
import 'package:recase/recase.dart';
// Backend route reference (prefix: /api/v1/actions):
//   fetchYoucanProductsByHost?host=<youcan-store-host>
//   fetchWoocommerceProductsByHost?host=<woo-host>
//   fetchFoorwebProductsByHost?host=<foorweb-host>

typedef StoreOrdersCountByFieldType = (
  Map<String, int> counts,
  int total,
  String field,
  String storeId,
  DateTime? from,
  DateTime? to,
  int limit,
  bool truncated,
);

/// Dio / JSON often yields [Map<dynamic, dynamic>]. A naive `is Map<String, dynamic>`
/// check fails, so [product] was parsed as null despite a valid payload.
Map<String, dynamic>? _jsonObjectMap(dynamic value) {
  if (value is Map<String, dynamic>) return Map<String, dynamic>.from(value);
  if (value is Map) return Map<String, dynamic>.from(value);
  return null;
}

bool _jsonBool(dynamic value) {
  if (value is bool) return value;
  if (value is String) {
    final s = value.toLowerCase();
    return s == 'true' || s == '1';
  }
  if (value is num) return value != 0;
  return false;
}

enum SendEventToMetaPixelActionEvents {
  purchase,
  lead,
  viewContent,
  addToCart,
  initiateCheckout,
}

enum SendEventToTiktokPixelActionEvents {
  purchase,
  placeAnOrder,
  viewContent,
  addToWishlist,
  search,
  addPaymentInfo,
  addToCart,
  initiateCheckout,
  completeRegistration,
}

enum GenerateSimpleCodeLanguage { html, css, javascript, markdown }

enum AICodeGenerationMode { create, edit }

/// Result of [Actions.createTokenForEcotrackByEmailAndPassword] (carrier login proxied by API).
class EcotrackLoginTokenResult {
  final bool success;
  final String message;
  final String? apiToken;
  final Map<String, dynamic>? profile;

  const EcotrackLoginTokenResult({
    required this.success,
    required this.message,
    this.apiToken,
    this.profile,
  });

  factory EcotrackLoginTokenResult.fromJson(Map<String, dynamic> json) {
    return EcotrackLoginTokenResult(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      apiToken: json['apiToken'] as String?,
      profile: json['profile'] is Map
          ? Map<String, dynamic>.from(json['profile'] as Map)
          : null,
    );
  }
}

/// Result of [Actions.createMdmExpressApiKeyFromUserLogin] (MDM seller login proxied by API).
class MdmExpressProvisionResult {
  final bool success;
  final String message;
  final String? apiKey;
  final String? mdmStoreId;
  final String? mdmSellerId;
  final Map<String, dynamic>? profile;

  const MdmExpressProvisionResult({
    required this.success,
    required this.message,
    this.apiKey,
    this.mdmStoreId,
    this.mdmSellerId,
    this.profile,
  });

  factory MdmExpressProvisionResult.fromJson(Map<String, dynamic> json) {
    return MdmExpressProvisionResult(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      apiKey: json['apiKey'] as String?,
      mdmStoreId: json['mdmStoreId'] as String?,
      mdmSellerId: json['mdmSellerId'] as String?,
      profile: json['profile'] is Map
          ? Map<String, dynamic>.from(json['profile'] as Map)
          : null,
    );
  }
}

/// Response model for AI code generation
class AICodeGenerationResponse {
  final bool success;
  final String? data;
  final String message;
  final String? error;

  const AICodeGenerationResponse({
    required this.success,
    required this.message,
    this.data,
    this.error,
  });

  factory AICodeGenerationResponse.fromJson(Map<String, dynamic> json) {
    return AICodeGenerationResponse(
      success: json['success'] as bool? ?? false,
      data: json['data'] as String?,
      message: json['message'] as String? ?? 'Unknown response',
      error: json['error'] as String?,
    );
  }

  bool get hasError => !success && error != null;
  bool get hasData => success && data != null && data!.isNotEmpty;
}

/// Slot schema entry: display name and optional max children (e.g. logo: { name: "Logo", maxChildren: 1 }).
typedef SlotSchemaEntry = Map<String, dynamic>;

/// Response model for AI custom component generation (JSX + propsSchema + props + optional title, slotsSchema, slots, slotsLayout).
class AICustomComponentResponse {
  final bool success;
  final String? code;
  final Map<String, dynamic>? propsSchema;
  final Map<String, dynamic>? props;
  final String message;
  final String? error;
  /// Optional component name suggested by AI (empty or null when not provided).
  final String? title;
  /// Optional slot definitions (e.g. logo, links, actions) when the component has slots; keys match [slots].
  final Map<String, SlotSchemaEntry>? slotsSchema;
  /// Optional slot contents: slot key → list of component JSON; when present, editor shows drop zones for each slot.
  final Map<String, List<Map<String, dynamic>>>? slots;
  /// Optional responsive slot layout for template editor (sm/md/lg). Keys = breakpoint; value = { type: 'row'|'column', children: [...] }.
  final Map<String, dynamic>? slotsLayout;

  const AICustomComponentResponse({
    required this.success,
    required this.message,
    this.code,
    this.propsSchema,
    this.props,
    this.error,
    this.title,
    this.slotsSchema,
    this.slots,
    this.slotsLayout,
  });

  factory AICustomComponentResponse.fromJson(Map<String, dynamic> json) {
    Map<String, SlotSchemaEntry>? slotsSchema;
    if (json['slotsSchema'] is Map) {
      final raw = json['slotsSchema'] as Map;
      slotsSchema = raw.map((k, v) => MapEntry(k.toString(), Map<String, dynamic>.from(v as Map)));
    }
    Map<String, List<Map<String, dynamic>>>? slots;
    if (json['slots'] is Map) {
      final raw = json['slots'] as Map;
      slots = raw.map((k, v) {
        final list = v is List ? v : <dynamic>[];
        return MapEntry(
          k.toString(),
          list.map((e) => Map<String, dynamic>.from(e as Map)).toList(),
        );
      });
    }
    Map<String, dynamic>? slotsLayout;
    if (json['slotsLayout'] is Map) {
      final raw = json['slotsLayout'] as Map;
      slotsLayout = Map<String, dynamic>.from(raw.map((k, v) => MapEntry(k.toString(), v)));
    }
    return AICustomComponentResponse(
      success: json['success'] as bool? ?? false,
      code: json['code'] as String?,
      propsSchema: json['propsSchema'] != null
          ? Map<String, dynamic>.from(json['propsSchema'] as Map)
          : null,
      props: json['props'] != null
          ? Map<String, dynamic>.from(json['props'] as Map)
          : null,
      message: json['message'] as String? ?? 'Unknown response',
      error: json['error'] as String?,
      title: json['title'] as String?,
      slotsSchema: slotsSchema,
      slots: slots,
      slotsLayout: slotsLayout,
    );
  }

  bool get hasError => !success && error != null;
  bool get hasPayload =>
      success &&
      code != null &&
      code!.isNotEmpty &&
      propsSchema != null &&
      props != null;
}

/// Single materialized library component returned by
/// [Actions.resolveComponents]. Lean by design — only what `react-live`
/// needs to render a `reference` placement.
///
/// Catalog metadata (subtitle, tags, screenshots, pricing, …) is *not*
/// included because the renderer doesn't need it; browse those via the
/// standard `template_components` REST resource.
class ResolvedTemplateComponent {
  const ResolvedTemplateComponent({
    required this.id,
    required this.storeId,
    required this.version,
    required this.policy,
    required this.title,
    required this.code,
    required this.propsSchema,
    this.slotsSchema,
    required this.propsDefault,
    this.slotsDefault,
    this.slotsLayout,
    required this.deprecated,
  });

  final String id;
  final String storeId;

  /// Monotonic counter bumped server-side on meaningful edits. Useful for
  /// optimistic UI: if a placement caches `version` and the resolved
  /// version is newer, the editor can re-render without diffing the JSX.
  final int version;
  final TemplateComponentPolicy policy;
  final String title;
  final String code;
  final Map<String, dynamic> propsSchema;
  final Map<String, dynamic>? slotsSchema;
  final Map<String, dynamic> propsDefault;
  final Map<String, dynamic>? slotsDefault;
  final Map<String, dynamic>? slotsLayout;

  /// True iff the source library entry's policy is `deprecated`.
  /// Editors should surface a warning so users can migrate.
  final bool deprecated;

  factory ResolvedTemplateComponent.fromJson(Map<String, dynamic> json) {
    return ResolvedTemplateComponent(
      id: json['id'] as String,
      storeId: json['storeId'] as String,
      version: (json['version'] as num?)?.toInt() ?? 1,
      policy: TemplateComponentPolicy.fromWire(json['policy'] as String?),
      title: (json['title'] as String?) ?? '',
      code: (json['code'] as String?) ?? '',
      propsSchema: Map<String, dynamic>.from(
        (json['propsSchema'] as Map?) ?? const {},
      ),
      slotsSchema: json['slotsSchema'] is Map
          ? Map<String, dynamic>.from(json['slotsSchema'] as Map)
          : null,
      propsDefault: Map<String, dynamic>.from(
        (json['propsDefault'] as Map?) ?? const {},
      ),
      slotsDefault: json['slotsDefault'] is Map
          ? Map<String, dynamic>.from(json['slotsDefault'] as Map)
          : null,
      slotsLayout: json['slotsLayout'] is Map
          ? Map<String, dynamic>.from(json['slotsLayout'] as Map)
          : null,
      deprecated: (json['deprecated'] as bool?) ?? false,
    );
  }
}

/// Tuple-style return value for [Actions.resolveComponents].
///
///  - [resolved] is keyed by component id so `O(1)` lookup is trivial
///    in the renderer (e.g. while walking the template tree).
///  - [missing] enumerates ids the server refused or could not find,
///    so the editor can render a friendly "deleted / not accessible"
///    placeholder instead of an empty slot.
class ResolveComponentsResult {
  const ResolveComponentsResult({required this.resolved, required this.missing});

  final Map<String, ResolvedTemplateComponent> resolved;
  final List<String> missing;

  factory ResolveComponentsResult.fromJson(Map<String, dynamic> json) {
    final rawResolved = json['resolved'];
    final resolved = <String, ResolvedTemplateComponent>{};
    if (rawResolved is Map) {
      rawResolved.forEach((key, value) {
        if (value is Map) {
          resolved[key.toString()] = ResolvedTemplateComponent.fromJson(
            Map<String, dynamic>.from(value),
          );
        }
      });
    }
    final rawMissing = json['missing'];
    final missing = rawMissing is List
        ? rawMissing.map((e) => e.toString()).toList(growable: false)
        : const <String>[];
    return ResolveComponentsResult(resolved: resolved, missing: missing);
  }
}

class Actions {
  final Dio client;

  Actions({required this.client});

  /// getStoreOrdersCountByField
  /// example request:
  /// {
  ///   "storeId": "store_123",
  ///   "field": "status",
  ///   "from": "2023-01-01T00:00:00Z",
  ///   "to": "2023-12-31T23:59:59Z",
  /// }
  /// example response:
  /// {"counts":{"pending":2832,"draft":1257,"review":13,"accepted":1},"total":4103,"field":"status","storeId":"x2m5ue7luo3x","from":null,"to":null,"limit":20,"truncated":false}
  Future<StoreOrdersCountByFieldType> getStoreOrdersCountByField({
    required String storeId,
    required String field,
    DateTime? from,
    DateTime? to,
    int limit = 60,
  }) async {
    try {
      final response = await client.getUri(
        Uri(
          path: '/actions/getStoreOrdersCountByField',
          queryParameters: {
            "storeId": storeId,
            "field": field,
            if (from != null) "from": from.toIso8601String(),
            if (to != null) "to": to.toIso8601String(),
            "limit": limit.toString(),
          },
        ),
      );

      //   '/actions/getStoreOrdersCountByField', data: {
      //   "storeId": storeId,
      //   "field": field,
      //   if (from != null)
      //   "from": from.toIso8601String(),
      //   if (to != null)
      //   "to": to.toIso8601String(),
      //   "limit": limit,
      // });

      final data = response.data;
      return (
        Map<String, int>.from(data['counts']),
        data['total'] as int,
        data['field'] as String,
        data['storeId'] as String,
        from != null ? DateTime.parse(data['from']) : null,
        to != null ? DateTime.parse(data['to']) : null,
        data['limit'] as int,
        data['truncated'] as bool,
      );
    } catch (e) {
      // Handle the error
      developer.log('Error fetching store orders count by field: $e');
      rethrow;
    }
  }

  /// SyncEcotrackOrders
  Future<void> syncEcotrackOrders({
    required String storeId,
    required Map<String, dynamic> data,
    String by = 'id',
  }) async {
    try {
      await client.post(
        '/actions/syncEcotrackOrders',
        data: {"storeId": storeId, "data": data, "by": by},
      );
    } catch (e) {
      // Handle the error
      developer.log('Error syncing Ecotrack orders: $e');
      rethrow;
    }
  }

  /// Exchanges Ecotrack carrier email/password for an API token via Feeef backend proxy.
  Future<EcotrackLoginTokenResult> createTokenForEcotrackByEmailAndPassword({
    required String baseUrl,
    required String email,
    required String password,
  }) async {
    final response = await client.post<Map<String, dynamic>>(
      '/actions/createTokenForEcotrackByEmailAndPassword',
      data: {
        'baseUrl': baseUrl,
        'email': email,
        'password': password,
      },
    );
    final data = response.data ?? {};
    return EcotrackLoginTokenResult.fromJson(Map<String, dynamic>.from(data));
  }

  /// MDM Express: seller username/password → API key (default name `feeef`) + MDM store id via Feeef proxy.
  Future<MdmExpressProvisionResult> createMdmExpressApiKeyFromUserLogin({
    required String username,
    required String password,
    String? apiKeyName,
  }) async {
    final response = await client.post<Map<String, dynamic>>(
      '/actions/createMdmExpressApiKeyFromUserLogin',
      data: {
        'username': username,
        'password': password,
        if (apiKeyName != null && apiKeyName.trim().isNotEmpty)
          'apiKeyName': apiKeyName.trim(),
      },
    );
    final data = response.data ?? {};
    return MdmExpressProvisionResult.fromJson(Map<String, dynamic>.from(data));
  }

  /// Fetches products from a Youcan store.
  /// Returns raw JSON; host app may parse into app-specific types.
  /// [host] is sent as a query parameter (URI-encoded). Backend must validate to prevent SSRF.
  Future<List<Map<String, dynamic>>> fetchYoucanProductsByHost(String host) async {
    final response = await client.get(
      '/actions/fetchYoucanProductsByHost',
      queryParameters: {'host': host},
    );
    return (response.data as List)
        .map((e) => Map<String, dynamic>.from(e as Map))
        .toList();
  }

  /// Fetches products from a Woocommerce store.
  /// Returns raw JSON; host app may parse into app-specific types.
  /// [host] is sent as a query parameter (URI-encoded). Backend must validate to prevent SSRF.
  Future<List<Map<String, dynamic>>> fetchWoocommerceProductsByHost(
    String host,
  ) async {
    final response = await client.get(
      '/actions/fetchWoocommerceProductsByHost',
      queryParameters: {'host': host},
    );
    return (response.data as List)
        .map((e) => Map<String, dynamic>.from(e as Map))
        .toList();
  }

  /// Fetches products from a Foorweb store.
  /// Returns raw JSON; host app may parse into app-specific types.
  Future<List<Map<String, dynamic>>> fetchFoorwebProductsBySubdomain(
    String subdomain,
  ) async {
    final response = await client.get(
      '/actions/fetchFoorwebProductsBySubdomain',
      queryParameters: {'subdomain': subdomain},
    );
    return (response.data as List)
        .map((e) => Map<String, dynamic>.from(e as Map))
        .toList();
  }

  /// Fetches products from a Storeino store.
  /// Returns raw JSON; host app may parse into app-specific types.
  /// [url] is sent as a query parameter (URI-encoded). Backend must validate to prevent SSRF.
  Future<List<Map<String, dynamic>>> fetchStoreinoProductsByUrl(String url) async {
    final response = await client.get(
      '/actions/fetchStoreinoProductsByUrl',
      queryParameters: {'url': url},
    );
    return (response.data as List)
        .map((e) => Map<String, dynamic>.from(e as Map))
        .toList();
  }

  /// Fetches a product from Lightfunnels by URL.
  /// Returns raw JSON; host app may parse into app-specific types.
  /// [url] is sent as a query parameter (URI-encoded). Backend must validate to prevent SSRF.
  Future<Map<String, dynamic>> fetchLightfunnelsProductByUrl(String url) async {
    final response = await client.get(
      '/actions/fetchLightfunnelsProductByUrl',
      queryParameters: {'url': url},
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// sendMetaPixelTestEvent
  Future<Map<String, dynamic>> sendMetaPixelTestEvent({
    required MetaPixel pixel,
    String? testCode,
  }) async {
    try {
      final response = await client.post(
        '/actions/sendMetaPixelTestEvent',
        data: {
          "id": pixel.id,
          "key": pixel.key,
          "code": testCode ?? 'FEEEF_TEST_CODE',
        },
      );
      return response.data;
    } catch (e) {
      // Handle the error
      developer.log('Error sending Meta Pixel test event: $e');
      rethrow;
    }
  }

  /// sendTiktokPixelTestEvent
  Future<Map<String, dynamic>> sendTiktokPixelTestEvent({
    required TiktokPixel pixel,
    String? testCode,
  }) async {
    try {
      final response = await client.post(
        '/actions/sendTiktokPixelTestEvent',
        data: {
          "id": pixel.id,
          "accessToken": pixel.accessToken,
          "testCode": testCode ?? 'FEEEF_TEST_CODE',
        },
      );
      return response.data;
    } catch (e) {
      // Handle the error
      developer.log('Error sending TikTok Pixel test event: $e');
      rethrow;
    }
  }

  /// sendEventToMetaPixel
  /// Sends a MetaPixel event for an order
  /// Parameters:
  /// - event: Any valid Meta Pixel event (Purchase, Lead, ViewContent, AddToCart, InitiateCheckout)
  /// - storeId: The store ID
  /// - orderId: The order ID
  Future<Map<String, dynamic>> sendEventToMetaPixel({
    required SendEventToMetaPixelActionEvents event,
    required String storeId,
    required String orderId,
  }) async {
    try {
      final response = await client.post(
        '/actions/sendEventToMetaPixel',
        data: {
          "event": event.name.pascalCase,
          "storeId": storeId,
          "orderId": orderId,
        },
      );
      return response.data;
    } catch (e) {
      // Handle the error
      developer.log('Error sending Meta Pixel event: $e');
      rethrow;
    }
  }

  /// sendEventsToMetaPixel
  /// Sends bulk MetaPixel events for multiple orders
  /// Parameters:
  /// - event: Any valid Meta Pixel event (Purchase, Lead, ViewContent, AddToCart, InitiateCheckout)
  /// - storeId: The store ID
  /// - orderIds: List of order IDs
  /// - pixelIds: Optional subset of store Meta pixel ids; omit/empty = all configured pixels
  Future<Map<String, dynamic>> sendEventsToMetaPixel({
    required SendEventToMetaPixelActionEvents event,
    required String storeId,
    required List<String> orderIds,
    List<String>? pixelIds,
  }) async {
    try {
      final response = await client.post(
        '/actions/sendEventsToMetaPixel',
        data: {
          "event": event.name.pascalCase,
          "storeId": storeId,
          "orderIds": orderIds,
          if (pixelIds != null && pixelIds.isNotEmpty) "pixelIds": pixelIds,
        },
      );
      return response.data;
    } catch (e) {
      // Handle the error
      developer.log('Error sending bulk Meta Pixel events: $e');
      rethrow;
    }
  }

  /// sendEventToTiktokPixel
  /// Sends a TikTok Pixel event for an order
  /// Parameters:
  /// - event: Any valid TikTok Pixel event (Purchase, PlaceAnOrder, ViewContent, AddToWishlist, Search, AddPaymentInfo, AddToCart, InitiateCheckout, CompleteRegistration)
  /// - storeId: The store ID
  /// - orderId: The order ID
  Future<Map<String, dynamic>> sendEventToTiktokPixel({
    required SendEventToTiktokPixelActionEvents event,
    required String storeId,
    required String orderId,
  }) async {
    try {
      final response = await client.post(
        '/actions/sendEventToTiktokPixel',
        data: {
          "event": event.name.pascalCase,
          "storeId": storeId,
          "orderId": orderId,
        },
      );
      return response.data;
    } catch (e) {
      // Handle the error
      developer.log('Error sending TikTok Pixel event: $e');
      rethrow;
    }
  }

  /// sendEventsToTiktokPixel
  /// Sends bulk TikTok Pixel events for multiple orders
  /// Parameters:
  /// - event: Any valid TikTok Pixel event (Purchase, PlaceAnOrder, ViewContent, AddToWishlist, Search, AddPaymentInfo, AddToCart, InitiateCheckout, CompleteRegistration)
  /// - storeId: The store ID
  /// - orderIds: List of order IDs
  /// - pixelIds: Optional subset of store TikTok pixel ids; omit/empty = all configured pixels
  Future<Map<String, dynamic>> sendEventsToTiktokPixel({
    required SendEventToTiktokPixelActionEvents event,
    required String storeId,
    required List<String> orderIds,
    List<String>? pixelIds,
  }) async {
    try {
      final response = await client.post(
        '/actions/sendEventsToTiktokPixel',
        data: {
          "event": event.name.pascalCase,
          "storeId": storeId,
          "orderIds": orderIds,
          if (pixelIds != null && pixelIds.isNotEmpty) "pixelIds": pixelIds,
        },
      );
      return response.data;
    } catch (e) {
      // Handle the error
      developer.log('Error sending bulk TikTok Pixel events: $e');
      rethrow;
    }
  }

  /// generateCatalogCsv
  /// Gets direct download link for CSV catalog for TikTok and Facebook catalogs
  /// Parameters:
  /// - storeId: The store ID
  /// - platform: 'tiktok', 'facebook', or 'both'
  /// Returns: Direct download link that always provides up-to-date data
  Future<Map<String, dynamic>> generateCatalogCsv({
    required String storeId,
    String platform = 'both',
  }) async {
    try {
      final response = await client.post(
        '/actions/generateCatalogCsv',
        data: {"storeId": storeId, "platform": platform},
      );
      return response.data;
    } catch (e) {
      // Handle the error
      developer.log('Error getting catalog CSV download link: $e');
      rethrow;
    }
  }

  /// downloadCatalogCsv
  /// Downloads CSV catalog file directly
  /// Parameters:
  /// - storeId: The store ID
  /// - platform: 'tiktok', 'facebook', or 'both'
  /// - sign: Security token for access
  /// Returns: CSV file content as string
  Future<String> downloadCatalogCsv({
    required String storeId,
    String platform = 'both',
    required String sign,
  }) async {
    try {
      final response = await client.get(
        '/actions/downloadCatalogCsv',
        queryParameters: {
          "storeId": storeId,
          "platform": platform,
          "sign": sign,
        },
      );
      return response.data;
    } catch (e) {
      // Handle the error
      developer.log('Error downloading catalog CSV: $e');
      rethrow;
    }
  }

  /// getGoogleSheetsAuthUrl
  /// Gets the Google OAuth authorization URL for Google Sheets integration.
  /// The client_id and scopes are managed server-side for security.
  Future<String> getGoogleSheetsAuthUrl(String storeId) async {
    final response = await client.get(
      '/oauth2/google/sheets/auth-url?storeId=$storeId',
    );
    return response.data['authUrl'] as String;
  }

  /// fetchGoogleSheetsFilesByStoreId
  /// Returns raw JSON; host app may parse into app-specific types.
  Future<List<Map<String, dynamic>>> fetchGoogleSheetsFilesByStoreId(
    String storeId,
  ) async {
    final response = await client.get(
      '/actions/fetchGoogleSheetsFilesByStoreId?storeId=$storeId',
    );
    return (response.data as List)
        .map((e) => Map<String, dynamic>.from(e as Map))
        .toList();
  }

  /// fetchGoogleSheetsFileById
  Future<List<({int id, String title, int index})>>
  fetchGoogleSheetsTabsByFileId(String storeId, String fileId) async {
    final response = await client.get(
      '/actions/fetchGoogleSheetsTabsByFileId?storeId=$storeId&fileId=$fileId',
    );
    return <({int id, String title, int index})>[
      ...response.data
          .map(
            (sheet) =>
                (id: sheet['id'], title: sheet['title'], index: sheet['index']),
          )
          .toList(),
    ];
  }

  /// syncHeaders
  /// Synchronizes headers in a Google Sheet based on column configuration
  Future<Map<String, dynamic>> syncHeaders({
    required String storeId,
    String? sheetId,
    String? sheetName,
    List<Map<String, dynamic>>? columns,
  }) async {
    try {
      final response = await client.post(
        '/stores/$storeId/integrations/google-sheets/sync-headers',
        data: {
          if (sheetId != null) 'sheetId': sheetId,
          if (sheetName != null) 'sheetName': sheetName,
          if (columns != null) 'columns': columns,
        },
      );
      return response.data;
    } catch (e) {
      developer.log('Error syncing Google Sheets headers: $e');
      rethrow;
    }
  }

  /// generateSimpleCode
  /// Generates simple code snippets using AI for a store
  ///
  /// [storeId] The ID of the store
  /// [language] The programming language (html, css, javascript)
  /// [input] The input text describing what code to generate
  /// [mode] The generation mode ('create' or 'edit')
  ///
  /// Returns a structured response with success status, data, and error handling
  Future<AICodeGenerationResponse> generateSimpleCode({
    required String storeId,
    required GenerateSimpleCodeLanguage language,
    required String input,
    AICodeGenerationMode mode = AICodeGenerationMode.create,
  }) async {
    try {
      // Validate input parameters
      if (storeId.isEmpty) {
        throw ArgumentError('Store ID cannot be empty');
      }
      if (input.trim().isEmpty) {
        throw ArgumentError('Input description cannot be empty');
      }

      final requestData = {
        'storeId': storeId,
        'language': language.name,
        'input': input.trim(),
        'mode': mode.name,
      };

      final response = await client.post(
        '/actions/generateSimpleCode',
        data: requestData,
      );

      // Parse and validate the response
      final responseData = response.data as Map<String, dynamic>;
      final aiResponse = AICodeGenerationResponse.fromJson(responseData);

      // Log response for debugging
      developer.log(
        'AI Code Generation Response: success=${aiResponse.success}, hasData=${aiResponse.hasData}',
      );

      return aiResponse;
    } on DioException catch (e) {
      developer.log('Network error during AI code generation: ${e.message}');
      return AICodeGenerationResponse(
        success: false,
        message: 'Network error occurred',
        error:
            'Failed to connect to the server. Please check your internet connection.',
      );
    } catch (e) {
      developer.log('Error generating simple code: $e');
      return AICodeGenerationResponse(
        success: false,
        message: 'Failed to generate code',
        error: e is ArgumentError
            ? e.message
            : 'An unexpected error occurred. Please try again.',
      );
    }
  }

  /// generateCustomComponentCode
  /// Generates a custom React/JSX component plus propsSchema and default props using AI.
  /// Used by the template editor "custom" component (react-live).
  ///
  /// [storeId] The ID of the store
  /// [input] The user description of the component to generate
  /// [mode] 'create' or 'edit'
  /// [currentSlotsSchema], [currentSlots], [currentSlotsLayout]
  ///   Existing slot topology / contents / responsive layout of the component
  ///   being edited. Required for edit mode on any component that uses slots
  ///   — without them the server sends the AI no information about the
  ///   existing slot tree, so the AI routinely re-emits a best-guess tree
  ///   that the client then applies over the user's work. Safe to omit for
  ///   slot-less components; the server treats absence as "this component
  ///   has no slots".
  /// [attachments] Optional unified attachments: image (URL), url (page URL), product (product ID).
  ///   Each item: `{ type: 'image'|'url'|'product', value: string, label?: string, prompt?: string }`.
  /// [useSearchGrounding] When provided, enables or disables Gemini Google Search grounding.
  /// [textModel] Optional text model override. Accepts either a bare catalog id
  ///   (e.g. `gemini-flash-lite-latest`) or a composite chat model id
  ///   (`provider/model`, e.g. `google/gemini-3-pro`) so the template-editor
  ///   agent can route codegen through the same model the user selected for
  ///   the conversation. Unknown / inactive ids fall back server-side.
  /// [styleContext] Optional compact style digest of neighboring page
  ///   components so generated blocks visually match their siblings.
  Future<AICustomComponentResponse> generateCustomComponentCode({
    required String storeId,
    required String input,
    AICodeGenerationMode mode = AICodeGenerationMode.create,
    String? currentCode,
    Map<String, dynamic>? currentPropsSchema,
    Map<String, dynamic>? currentProps,
    Map<String, dynamic>? currentSlotsSchema,
    Map<String, List<Map<String, dynamic>>>? currentSlots,
    Map<String, dynamic>? currentSlotsLayout,
    /// Optional unified attachments (image, url, product) for reference context
    List<Map<String, dynamic>>? attachments,
    bool? useSearchGrounding,
    String? textModel,
    String? styleContext,
    /// When cancelled (e.g. user tapped Stop), Dio throws [DioExceptionType.cancel].
    CancelToken? cancelToken,
  }) async {
    try {
      if (storeId.isEmpty) {
        throw ArgumentError('Store ID cannot be empty');
      }
      if (input.trim().isEmpty) {
        throw ArgumentError('Input description cannot be empty');
      }

      final requestData = {
        'storeId': storeId,
        'input': input.trim(),
        'mode': mode.name,
        if (currentCode != null) 'currentCode': currentCode,
        if (currentPropsSchema != null) 'currentPropsSchema': currentPropsSchema,
        if (currentProps != null) 'currentProps': currentProps,
        if (currentSlotsSchema != null && currentSlotsSchema.isNotEmpty)
          'currentSlotsSchema': currentSlotsSchema,
        if (currentSlots != null && currentSlots.isNotEmpty) 'currentSlots': currentSlots,
        if (currentSlotsLayout != null && currentSlotsLayout.isNotEmpty)
          'currentSlotsLayout': currentSlotsLayout,
        if (attachments != null && attachments.isNotEmpty) 'attachments': attachments,
        if (useSearchGrounding != null) 'useSearchGrounding': useSearchGrounding,
        if (textModel != null && textModel.trim().isNotEmpty) 'textModel': textModel.trim(),
        if (styleContext != null && styleContext.trim().isNotEmpty)
          'styleContext': styleContext.trim(),
      };

      final response = await client.post(
        '/actions/generateCustomComponentCode',
        data: requestData,
        cancelToken: cancelToken,
      );

      final responseData = response.data as Map<String, dynamic>;
      // Debug: compare this log with backend `[generateCustomComponentCode]` logs
      // to see whether empty slots are produced server-side or lost during parse/UI.
      try {
        developer.log(
          const JsonEncoder.withIndent('  ').convert(responseData),
          name: 'feeef.generateCustomComponentCode.rawResponse',
        );
      } catch (e, st) {
        developer.log(
          'Could not JSON-encode raw response: $e; data=$responseData',
          name: 'feeef.generateCustomComponentCode.rawResponse',
          error: e,
          stackTrace: st,
        );
      }
      return AICustomComponentResponse.fromJson(responseData);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        rethrow;
      }
      developer.log('Network error during AI custom component generation: ${e.message}');
      return const AICustomComponentResponse(
        success: false,
        message: 'Network error occurred',
        error: 'Failed to connect to the server. Please check your internet connection.',
      );
    } catch (e) {
      developer.log('Error generating custom component: $e');
      return AICustomComponentResponse(
        success: false,
        message: 'Failed to generate custom component',
        error: e is ArgumentError
            ? e.message
            : 'An unexpected error occurred. Please try again.',
      );
    }
  }

  /// generateProductLandingPageTemplateData
  /// Generates landing page template data using AI.
  ///
  /// [storeId] The store ID
  /// [prompt] The AI instructions for generating the page
  /// [templateId] Optional template ID to base the generation on
  /// [productId] Optional product ID for context
  Future<
    ({
      bool success,
      Map<String, dynamic>? data,
      Map<String, dynamic>? schema,
      String? templateId,
      String message,
      String? error,
    })
  >
  generateProductLandingPageTemplateData({
    required String storeId,
    String prompt = '',
    String? templateId,
    String? productId,
    /// Optional attachments (image, url, audio, store, product). Same shape as updateProductUsingAi.
    /// When provided, prompt can be empty; backend uses store/product as default context.
    List<Attachment>? attachments,
  }) async {
    try {
      if (storeId.isEmpty) {
        throw ArgumentError('Store ID cannot be empty');
      }
      final promptTrim = prompt.trim();
      final hasAttachments = attachments != null && attachments.isNotEmpty;
      if (promptTrim.isEmpty && !hasAttachments) {
        throw ArgumentError('Prompt or attachments required');
      }
      final attachmentMaps = hasAttachments ? attachments.map((a) => a.toJson()).toList() : null;
      final requestData = {
        'storeId': storeId,
        if (promptTrim.isNotEmpty) 'prompt': promptTrim,
        if (templateId != null) 'templateId': templateId,
        if (productId != null) 'productId': productId,
        if (attachmentMaps != null) 'attachments': attachmentMaps,
      };

      final response = await client.post(
        '/actions/generateProductLandingPageTemplateData',
        data: requestData,
      );

      final responseData = response.data as Map<String, dynamic>;
      final success = responseData['success'] as bool? ?? false;
      final data = responseData['data'] as Map<String, dynamic>?;
      final schema = responseData['schema'] as Map<String, dynamic>?;
      final respTemplateId = responseData['templateId'] as String?;
      final message = responseData['message'] as String? ?? 'Unknown response';
      final error = responseData['error'] as String?;

      return (
        success: success,
        data: data,
        schema: schema,
        templateId: respTemplateId,
        message: message,
        error: error,
      );
    } on DioException catch (e) {
      return (
        success: false,
        data: null,
        schema: null,
        templateId: null,
        message: 'Network error',
        error: e.message ?? 'Failed to connect to the server.',
      );
    } catch (e) {
      return (
        success: false,
        data: null,
        schema: null,
        templateId: null,
        message: 'Failed to generate template data',
        error: e is ArgumentError
            ? e.message as String
            : 'An unexpected error occurred.',
      );
    }
  }

  /// generateAiLandingPage
  /// Starts async AI landing page generation (single-shot). Backend creates the page and sends a notification when ready.
  /// Returns [jobId]; client should poll [getAiLandingPageJobStatus] every 10s for status and [landingPageId] when completed.
  Future<
    ({
      bool success,
      String? jobId,
      String message,
      String? error,
    })
  >
  generateAiLandingPage({
    required String storeId,
    required String productId,
    String? name,
    String? prompt,
    List<Attachment>? attachments,
  }) async {
    try {
      if (storeId.isEmpty || productId.isEmpty) {
        throw ArgumentError('Store ID and product ID are required');
      }
      final attachmentMaps = attachments != null && attachments.isNotEmpty
          ? attachments.map((a) => a.toJson()).toList()
          : null;
      final requestData = <String, dynamic>{
        'storeId': storeId,
        'productId': productId,
        if (name != null && name.trim().isNotEmpty) 'name': name.trim(),
        if (prompt != null && prompt.trim().isNotEmpty) 'prompt': prompt.trim(),
        if (attachmentMaps != null) 'attachments': attachmentMaps,
      };

      final response = await client.post(
        '/actions/generateAiLandingPage',
        data: requestData,
      );

      final responseData = response.data as Map<String, dynamic>;

      return (
        success: responseData['success'] as bool? ?? false,
        jobId: responseData['jobId'] as String?,
        message: responseData['message'] as String? ?? 'Started',
        error: responseData['error'] as String?,
      );
    } on DioException catch (e) {
      return (
        success: false,
        jobId: null,
        message: 'Network error',
        error: e.message ?? 'Failed to connect to the server.',
      );
    } catch (e) {
      final String errorMessage = e is ArgumentError
          ? e.message
          : 'An unexpected error occurred.';
      return (
        success: false,
        jobId: null,
        message: 'Failed to start AI landing page generation',
        error: errorMessage,
      );
    }
  }

  /// getAiLandingPageJobStatus
  /// Poll this every ~10s after [generateAiLandingPage]. When [status] is 'completed', [landingPageId] is set; open edit page.
  Future<
    ({
      bool success,
      String status,
      String? landingPageId,
      String? error,
    })
  >
  getAiLandingPageJobStatus({required String jobId}) async {
    try {
      if (jobId.isEmpty) {
        throw ArgumentError('jobId is required');
      }
      final response = await client.get(
        '/actions/getAiLandingPageJobStatus',
        queryParameters: {'jobId': jobId},
      );
      final responseData = response.data as Map<String, dynamic>;
      return (
        success: responseData['success'] as bool? ?? false,
        status: responseData['status'] as String? ?? 'pending',
        landingPageId: responseData['landingPageId'] as String?,
        error: responseData['error'] as String?,
      );
    } on DioException catch (e) {
      return (
        success: false,
        status: 'pending',
        landingPageId: null,
        error: e.message ?? 'Failed to connect to the server.',
      );
    } catch (e) {
      return (
        success: false,
        status: 'pending',
        landingPageId: null,
        error: e is ArgumentError ? e.message as String : 'An unexpected error occurred.',
      );
    }
  }

  /// updateProductUsingAi
  /// Creates or updates a product using natural language instructions processed by backend AI.
  /// mode inferred: if productId provided => update else create unless explicit mode passed.
  /// Returns tuple-like record for ergonomic deconstruction.
  Future<
    ({
      bool success,
      String mode,
      Map<String, dynamic>? product,
      String message,
      String? error,
      Map<String, dynamic>? validationErrors,
      String? raw,
    })
  >
  updateProductUsingAi({
    required String storeId,
    required String input,
    String? productId,
    String? mode, // optional override
    String? forceStatus,
    /// Optional reference image URLs (legacy; prefer [attachments] with type 'image')
    List<String>? referenceImageUrls,
    /// Optional map of image URL to label (legacy; prefer [attachments])
    Map<String, String>? referenceImageLabels,
    /// Optional full attachments: image, url, audio, store, product. Backend supports all and merges with legacy refs.
    /// - image: URLs fetched and sent as reference images (vision). url: page content fetched and appended to input.
    /// - audio: sent as inline audio. store/product: loaded server-side and added to context.
    List<Attachment>? attachments,
    /// When true, backend enables Gemini Google Search grounding (e.g. for price suggestions). May incur extra cost.
    bool? useSearchGrounding,
    /// Catalog text model id (e.g. Gemini or OpenRouter slug). Optional; backend falls back to store default.
    String? modelId,
  }) async {
    try {
      if (storeId.isEmpty) throw ArgumentError('storeId required');
      if (input.trim().isEmpty) throw ArgumentError('input required');
      final attachmentMaps = attachments != null && attachments.isNotEmpty
          ? attachments.map((a) => a.toJson()).toList()
          : null;
      final trimmedCatalogModelId = modelId?.trim();
      final payload = <String, dynamic>{
        'storeId': storeId,
        'input': input.trim(),
        if (productId != null) 'productId': productId,
        if (mode != null) 'mode': mode,
        if (forceStatus != null) 'forceStatus': forceStatus,
        if (referenceImageUrls != null && referenceImageUrls.isNotEmpty)
          'referenceImageUrls': referenceImageUrls,
        if (referenceImageLabels != null && referenceImageLabels.isNotEmpty)
          'referenceImageLabels': referenceImageLabels,
        if (attachmentMaps != null) 'attachments': attachmentMaps,
        if (useSearchGrounding == true) 'useSearchGrounding': true,
        if (trimmedCatalogModelId != null && trimmedCatalogModelId.isNotEmpty)
          'modelId': trimmedCatalogModelId,
      };
      final resp = await client.post(
        '/actions/updateProductUsingAi',
        data: payload,
      );
      final d = _jsonObjectMap(resp.data) ?? <String, dynamic>{};
      return (
        success: _jsonBool(d['success']),
        mode: d['mode'] as String? ?? (productId != null ? 'update' : 'create'),
        product: _jsonObjectMap(d['product']),
        message: d['message'] as String? ?? '',
        error: d['error'] as String?,
        validationErrors: _jsonObjectMap(d['validationErrors']),
        raw: d['raw'] is String ? d['raw'] as String : null,
      );
    } on DioException catch (e) {
      final res = e.response?.data;
      final resMap = _jsonObjectMap(res);
      final serverError = resMap != null
          ? (resMap['error'] as String? ??
              resMap['message'] as String? ??
              e.message)
          : e.message;
      return (
        success: false,
        mode: productId != null ? 'update' : 'create',
        product: null,
        message: 'AI product request failed',
        error: serverError,
        validationErrors: resMap != null
            ? _jsonObjectMap(resMap['validationErrors'])
            : null,
        raw: resMap != null ? jsonEncode(resMap) : null,
      );
    } catch (e) {
      developer.log('Error in updateProductUsingAi: $e');
      return (
        success: false,
        mode: productId != null ? 'update' : 'create',
        product: null,
        message: 'Unexpected error',
        error: 'An unexpected error occurred. Please try again.',
        validationErrors: null,
        raw: null,
      );
    }
  }

  /// updateShippingPriceUsingAi
  /// Creates or updates a shipping price configuration using natural language
  /// instructions processed by backend AI. Mirrors [updateProductUsingAi] but
  /// targets the `shipping_prices` table.
  ///
  /// mode inferred: if shippingPriceId provided => update else create unless
  /// explicit mode passed.
  ///
  /// Returns a record for ergonomic deconstruction:
  /// `(success, mode, shippingPrice, message, error, validationErrors, raw)`.
  Future<
    ({
      bool success,
      String mode,
      Map<String, dynamic>? shippingPrice,
      String message,
      String? error,
      Map<String, dynamic>? validationErrors,
      String? raw,
    })
  >
  updateShippingPriceUsingAi({
    required String storeId,
    required String input,
    String? shippingPriceId,
    String? mode,
    String? forceStatus,
    List<String>? referenceImageUrls,
    Map<String, String>? referenceImageLabels,
    List<Attachment>? attachments,
    bool? useSearchGrounding,
    String? modelId,
  }) async {
    try {
      if (storeId.isEmpty) throw ArgumentError('storeId required');
      if (input.trim().isEmpty) throw ArgumentError('input required');
      final attachmentMaps = attachments != null && attachments.isNotEmpty
          ? attachments.map((a) => a.toJson()).toList()
          : null;
      final trimmedCatalogModelId = modelId?.trim();
      final payload = <String, dynamic>{
        'storeId': storeId,
        'input': input.trim(),
        if (shippingPriceId != null) 'shippingPriceId': shippingPriceId,
        if (mode != null) 'mode': mode,
        if (forceStatus != null) 'forceStatus': forceStatus,
        if (referenceImageUrls != null && referenceImageUrls.isNotEmpty)
          'referenceImageUrls': referenceImageUrls,
        if (referenceImageLabels != null && referenceImageLabels.isNotEmpty)
          'referenceImageLabels': referenceImageLabels,
        if (attachmentMaps != null) 'attachments': attachmentMaps,
        if (useSearchGrounding == true) 'useSearchGrounding': true,
        if (trimmedCatalogModelId != null && trimmedCatalogModelId.isNotEmpty)
          'modelId': trimmedCatalogModelId,
      };
      final resp = await client.post(
        '/actions/updateShippingPriceUsingAi',
        data: payload,
      );
      final d = _jsonObjectMap(resp.data) ?? <String, dynamic>{};
      return (
        success: _jsonBool(d['success']),
        mode: d['mode'] as String? ??
            (shippingPriceId != null ? 'update' : 'create'),
        shippingPrice: _jsonObjectMap(d['shippingPrice']),
        message: d['message'] as String? ?? '',
        error: d['error'] as String?,
        validationErrors: _jsonObjectMap(d['validationErrors']),
        raw: d['raw'] is String ? d['raw'] as String : null,
      );
    } on DioException catch (e) {
      final res = e.response?.data;
      final resMap = _jsonObjectMap(res);
      final serverError = resMap != null
          ? (resMap['error'] as String? ??
              resMap['message'] as String? ??
              e.message)
          : e.message;
      return (
        success: false,
        mode: shippingPriceId != null ? 'update' : 'create',
        shippingPrice: null,
        message: 'AI shipping price request failed',
        error: serverError,
        validationErrors:
            resMap != null ? _jsonObjectMap(resMap['validationErrors']) : null,
        raw: resMap != null ? jsonEncode(resMap) : null,
      );
    } catch (e) {
      developer.log('Error in updateShippingPriceUsingAi: $e');
      return (
        success: false,
        mode: shippingPriceId != null ? 'update' : 'create',
        shippingPrice: null,
        message: 'Unexpected error',
        error: 'An unexpected error occurred. Please try again.',
        validationErrors: null,
        raw: null,
      );
    }
  }

  /// editOrGenerateSimpleImage
  /// Generates or edits an image using AI based on a text prompt and/or existing image
  ///
  /// Parameters:
  /// - [storeId] The ID of the store
  /// - [prompt] Optional text description of the image to generate/edit
  /// - [imageBytes] Optional bytes of an existing image for editing
  /// - [aspectRatio] Optional aspect ratio (1:1, 16:9, 9:16, 4:3, 3:4, 3:2, 5:4, 4:5, 21:9, auto)
  /// - [resolution] Optional resolution (MEDIA_RESOLUTION_LOW, MEDIA_RESOLUTION_MEDIUM, MEDIA_RESOLUTION_HIGH)
  /// - [systemInstructions] Optional system instructions to guide the AI's behavior
  /// - [referenceImageUrls] Optional list of reference image URLs for style/composition guidance
  /// - [referenceImageLabels] Optional map of image URL to label/description for each reference image
  /// - [model] Optional AI model ID to use (defaults to 'gemini-2.5-flash-image')
  ///
  /// Returns a structured response with success status, image URL, and metadata
  Future<
    ({
      bool success,
      String? imageUrl,
      String? imagePath,
      String message,
      String? error,
      Map<String, dynamic>? metadata,
    })
  >
  editOrGenerateSimpleImage({
    required String storeId,
    String? prompt,
    Uint8List? imageBytes,
    String? aspectRatio,
    String resolution = 'MEDIA_RESOLUTION_MEDIUM',
    String? systemInstructions,
    List<String>? referenceImageUrls,
    Map<String, String>? referenceImageLabels,
    String? model,
  }) async {
    try {
      if (storeId.isEmpty) {
        throw ArgumentError('Store ID cannot be empty');
      }

      if ((prompt == null || prompt.trim().isEmpty) && imageBytes == null) {
        throw ArgumentError('Either prompt or image bytes must be provided');
      }

      // Create FormData for multipart upload
      final formData = FormData.fromMap({
        'storeId': storeId,
        if (prompt != null && prompt.trim().isNotEmpty) 'prompt': prompt.trim(),
        if (aspectRatio != null) 'aspectRatio': aspectRatio,
        'resolution': resolution,
        if (systemInstructions != null && systemInstructions.trim().isNotEmpty)
          'systemInstructions': systemInstructions.trim(),
        if (referenceImageUrls != null && referenceImageUrls.isNotEmpty)
          'referenceImageUrls': jsonEncode(
            referenceImageUrls,
          ), // Send as JSON string
        if (referenceImageLabels != null && referenceImageLabels.isNotEmpty)
          'referenceImageLabels': jsonEncode(
            referenceImageLabels,
          ), // Send as JSON string
        if (model != null && model.trim().isNotEmpty) 'model': model.trim(),
        if (imageBytes != null)
          'imageFile': MultipartFile.fromBytes(
            imageBytes,
            filename: 'image_${DateTime.now().millisecondsSinceEpoch}.png',
            contentType: MediaType('image', 'png'),
          ),
      });

      final response = await client.post(
        '/actions/editOrGenerateSimpleImage',
        data: formData,
      );

      // Parse response
      final responseData = response.data as Map<String, dynamic>;

      return (
        success: responseData['success'] as bool? ?? false,
        imageUrl: responseData['imageUrl'] as String?,
        imagePath: responseData['imagePath'] as String?,
        message: responseData['message'] as String? ?? 'Unknown response',
        error: responseData['error'] as String?,
        metadata: responseData['metadata'] is Map<String, dynamic>
            ? Map<String, dynamic>.from(responseData['metadata'])
            : null,
      );
    } on DioException catch (e) {
      developer.log('Network error during AI image generation: ${e.message}');
      return (
        success: false,
        imageUrl: null as String?,
        imagePath: null as String?,
        message: 'Network error occurred',
        error:
            'Failed to connect to the server. Please check your internet connection.'
                as String?,
        metadata: null as Map<String, dynamic>?,
      );
    } catch (e) {
      developer.log('Error generating/editing image: $e');
      final errorMessage = e is ArgumentError
          ? e.message
          : 'An unexpected error occurred. Please try again.';
      return (
        success: false,
        imageUrl: null as String?,
        imagePath: null as String?,
        message: 'Failed to generate/edit image',
        error: errorMessage as String?,
        metadata: null as Map<String, dynamic>?,
      );
    }
  }

  /// createImageGeneration
  /// Creates an async image generation task (image_generations table).
  ///
  /// Returns the created ImageGeneration JSON as Map.
  /// [imageSize]: output size "1K"|"2K"|"4K". Backend default 2K when omitted.
  /// [resolution]: input resolution for reference images. Default MEDIA_RESOLUTION_HIGH.
  Future<Map<String, dynamic>> createImageGeneration({
    required String storeId,
    String? title,
    String? prompt,
    Uint8List? imageBytes,
    String? aspectRatio,
    String? imageSize,
    String resolution = 'MEDIA_RESOLUTION_HIGH',
    String? systemInstructions,
    List<String>? referenceImageUrls,
    Map<String, String>? referenceImageLabels,
    String? model,
  }) async {
    final formData = FormData.fromMap({
      'storeId': storeId,
      if (title != null && title.trim().isNotEmpty) 'title': title.trim(),
      if (prompt != null && prompt.trim().isNotEmpty) 'prompt': prompt.trim(),
      if (aspectRatio != null) 'aspectRatio': aspectRatio,
      if (imageSize != null && imageSize.trim().isNotEmpty) 'imageSize': imageSize.trim(),
      'resolution': resolution,
      if (systemInstructions != null && systemInstructions.trim().isNotEmpty)
        'systemInstructions': systemInstructions.trim(),
      if (referenceImageUrls != null && referenceImageUrls.isNotEmpty)
        'referenceImageUrls': jsonEncode(referenceImageUrls),
      if (referenceImageLabels != null && referenceImageLabels.isNotEmpty)
        'referenceImageLabels': jsonEncode(referenceImageLabels),
      if (model != null && model.trim().isNotEmpty) 'model': model.trim(),
      if (imageBytes != null)
        'imageFile': MultipartFile.fromBytes(
          imageBytes,
          filename: 'image_${DateTime.now().millisecondsSinceEpoch}.png',
          contentType: MediaType('image', 'png'),
        ),
    });

    final response = await client.post('/image_generations', data: formData);
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// generateImageGeneration
  /// Re-run generation on the same ImageGeneration record (latest-wins).
  ///
  /// [attachments]: unified reference context (image, store, product, audio).
  /// Backend resolves store/product to structured context and reference images.
  /// [imageSize]: output size "1K"|"2K"|"4K". Default 2K when omitted on backend.
  /// [resolution]: input resolution for reference images. Default MEDIA_RESOLUTION_HIGH.
  Future<Map<String, dynamic>> generateImageGeneration({
    required String id,
    String? title,
    String? prompt,
    Uint8List? imageBytes,
    String? aspectRatio,
    String? imageSize,
    String resolution = 'MEDIA_RESOLUTION_HIGH',
    String? systemInstructions,
    List<Attachment>? attachments,
    String? model,
    String? storeId,
    bool? googleSearch,
    bool? imageSearch,
    String? background,
    String? quality,
    String? outputFormat,
  }) async {
    final attachmentMaps = attachments != null && attachments.isNotEmpty
        ? attachments.map((a) => a.toJson()).toList()
        : null;
    final formData = FormData.fromMap({
      if (storeId != null && storeId.trim().isNotEmpty)
        'storeId': storeId.trim(),
      if (title != null && title.trim().isNotEmpty) 'title': title.trim(),
      if (prompt != null && prompt.trim().isNotEmpty) 'prompt': prompt.trim(),
      if (aspectRatio != null) 'aspectRatio': aspectRatio,
      if (imageSize != null && imageSize.trim().isNotEmpty) 'imageSize': imageSize.trim(),
      'resolution': resolution,
      if (systemInstructions != null && systemInstructions.trim().isNotEmpty)
        'systemInstructions': systemInstructions.trim(),
      if (attachmentMaps != null && attachmentMaps.isNotEmpty)
        'attachments': jsonEncode(attachmentMaps),
      if (model != null && model.trim().isNotEmpty) 'model': model.trim(),
      if (googleSearch != null) 'googleSearch': googleSearch,
      if (imageSearch != null) 'imageSearch': imageSearch,
      if (background != null && background.trim().isNotEmpty)
        'background': background.trim(),
      if (quality != null && quality.trim().isNotEmpty) 'quality': quality.trim(),
      if (outputFormat != null && outputFormat.trim().isNotEmpty)
        'outputFormat': outputFormat.trim(),
      if (imageBytes != null)
        'imageFile': MultipartFile.fromBytes(
          imageBytes,
          filename: 'image_${DateTime.now().millisecondsSinceEpoch}.png',
          contentType: MediaType('image', 'png'),
        ),
    });

    final response = await client.post(
      '/image_generations/$id/generate',
      data: formData,
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// proxy
  /// Forwards HTTP requests through the server to external URLs.
  /// Useful for bypassing CORS restrictions or making requests that need server-side handling.
  ///
  /// Parameters:
  /// - [url] The URL to fetch
  /// - [method] HTTP method (GET, POST, PUT, DELETE, PATCH, HEAD, OPTIONS). Defaults to GET.
  /// - [headers] Optional headers to include in the request
  /// - [body] Optional body data for POST/PUT/PATCH requests
  /// - [params] Optional query parameters
  /// - [timeout] Request timeout in milliseconds (1000-60000). Defaults to 30000.
  ///
  /// Returns the proxied response with status, headers, and data
  Future<
    ({
      bool success,
      int status,
      String statusText,
      Map<String, dynamic> headers,
      dynamic data,
      String? encoding,
      String? error,
    })
  >
  proxy({
    required String url,
    String method = 'GET',
    Map<String, String>? headers,
    dynamic body,
    Map<String, dynamic>? params,
    int? timeout,
  }) async {
    try {
      final response = await client.post(
        '/actions/proxy',
        data: {
          'url': url,
          'method': method,
          if (headers != null) 'headers': headers,
          if (body != null) 'body': body,
          if (params != null) 'params': params,
          if (timeout != null) 'timeout': timeout,
        },
      );

      final responseData = response.data as Map<String, dynamic>;

      if (responseData['success'] == true) {
        return (
          success: true,
          status: responseData['status'] as int? ?? 200,
          statusText: responseData['statusText'] as String? ?? 'OK',
          headers: Map<String, dynamic>.from(responseData['headers'] ?? {}),
          data: responseData['data'],
          encoding: responseData['encoding'] as String?,
          error: null as String?,
        );
      } else {
        return (
          success: false,
          status: responseData['status'] as int? ?? 500,
          statusText: responseData['statusText'] as String? ?? 'Error',
          headers: <String, dynamic>{},
          data: null,
          encoding: null as String?,
          error:
              responseData['error'] as String? ??
              responseData['message'] as String?,
        );
      }
    } on DioException catch (e) {
      developer.log('Network error during proxy request: ${e.message}');
      return (
        success: false,
        status: e.response?.statusCode ?? 0,
        statusText: 'Network Error',
        headers: <String, dynamic>{},
        data: null,
        encoding: null as String?,
        error: 'Failed to proxy request: ${e.message}',
      );
    } catch (e) {
      developer.log('Error during proxy request: $e');
      return (
        success: false,
        status: 0,
        statusText: 'Error',
        headers: <String, dynamic>{},
        data: null,
        encoding: null as String?,
        error: 'An unexpected error occurred during the request.',
      );
    }
  }

  /// searchStore
  /// Searches for a store by ID, slug, or domain
  /// Returns public store data + subscription information
  Future<
    ({
      String id,
      String slug,
      String name,
      String? logoUrl,
      String? iconUrl,
      StoreSubscription? subscription,
      num? due,
    })?
  >
  searchStore({String? id, String? slug, String? domain}) async {
    try {
      if (id == null && slug == null && domain == null) {
        throw ArgumentError(
          'At least one search parameter (id, slug, or domain) must be provided',
        );
      }

      final queryParams = <String, dynamic>{};
      if (id != null) queryParams['id'] = id;
      if (slug != null) queryParams['slug'] = slug;
      if (domain != null) queryParams['domain'] = domain;

      final response = await client.get(
        '/actions/searchStore',
        queryParameters: queryParams,
      );

      if (response.data == null || response.data['store'] == null) {
        return null;
      }

      final storeData = response.data['store'] as Map<String, dynamic>;

      // Parse subscription if present
      StoreSubscription? subscription;
      if (storeData['subscription'] != null) {
        subscription = StoreSubscription.fromJson(
          storeData['subscription'] as Map<String, dynamic>,
        );
      }

      return (
        id: storeData['id'] as String,
        slug: storeData['slug'] as String,
        name: storeData['name'] as String,
        logoUrl: storeData['logoUrl'] as String?,
        iconUrl: storeData['iconUrl'] as String?,
        subscription: subscription,
        due: storeData['due'] as num?,
      );
    } catch (e) {
      developer.log('Error searching store: $e');
      rethrow;
    }
  }

  /// generateVoiceover
  /// Generates voiceover audio using AI TTS.
  ///
  /// Parameters:
  /// - [storeId] Optional ID of the store (if not provided, uses user folder)
  /// - [text] The text to convert to speech (optional when [attachments] are provided; backend may generate script from context)
  /// - [attachments] Optional reference attachments (URL, image, store, product) for context or script generation
  /// - [voiceName] Optional voice name (e.g., 'Leda', defaults to 'Leda')
  /// - [model] Optional AI model ID (defaults to 'gemini-2.5-pro-preview-tts')
  /// - [enhanceScript] Whether to enhance the script using text model first (defaults to true)
  /// - [styleInstructions] Optional TTS style / delivery instructions (replaces server default narrator prompt)
  /// - [speakers] Multi-speaker dialogue: exactly 2 entries `{ speakerAlias, voiceName }` (Gemini TTS); script lines `Alias: text`
  /// Returns a structured response with success status, audio URL, and metadata
  Future<
    ({
      bool success,
      String? audioUrl,
      String? audioPath,
      String message,
      String? error,
      Map<String, dynamic>? metadata,
    })
  >
  generateVoiceover({
    String? storeId,
    required String text,
    List<Attachment>? attachments,
    String? voiceName,
    String? model,
    bool? enhanceScript,
    String? styleInstructions,
    List<Map<String, String>>? speakers,
  }) async {
    try {
      final attachmentMaps = attachments != null && attachments.isNotEmpty
          ? attachments.map((a) => a.toJson()).toList()
          : null;
      // Allow empty text when attachments are given; backend returns error if both missing.
      final requestData = <String, dynamic>{
        'text': text.trim(),
        if (storeId != null && storeId.trim().isNotEmpty)
          'storeId': storeId.trim(),
        if (attachmentMaps != null) 'attachments': attachmentMaps,
        if (voiceName != null && voiceName.trim().isNotEmpty)
          'voiceName': voiceName.trim(),
        if (model != null && model.trim().isNotEmpty) 'model': model.trim(),
        if (enhanceScript != null) 'enhanceScript': enhanceScript,
        if (styleInstructions != null && styleInstructions.trim().isNotEmpty)
          'styleInstructions': styleInstructions.trim(),
        if (speakers != null && speakers.isNotEmpty) 'speakers': speakers,
      };

      final response = await client.post(
        '/actions/generateVoiceover',
        data: requestData,
      );

      final responseData = response.data as Map<String, dynamic>;

      return (
        success: responseData['success'] as bool? ?? false,
        audioUrl: responseData['audioUrl'] as String?,
        audioPath: responseData['audioPath'] as String?,
        message: responseData['message'] as String? ?? 'Unknown response',
        error: responseData['error'] as String?,
        metadata: responseData['metadata'] is Map<String, dynamic>
            ? Map<String, dynamic>.from(responseData['metadata'])
            : null,
      );
    } on DioException catch (e) {
      developer.log('Network error during voiceover generation: ${e.message}');
      return (
        success: false,
        audioUrl: null as String?,
        audioPath: null as String?,
        message: 'Network error occurred',
        error:
            'Failed to connect to the server. Please check your internet connection.'
                as String?,
        metadata: null as Map<String, dynamic>?,
      );
    } catch (e) {
      developer.log('Error generating voiceover: $e');
      final errorMessage = e is ArgumentError
          ? e.message
          : 'An unexpected error occurred. Please try again.';
      return (
        success: false,
        audioUrl: null as String?,
        audioPath: null as String?,
        message: 'Failed to generate voiceover',
        error: errorMessage as String?,
        metadata: null as Map<String, dynamic>?,
      );
    }
  }

  /// generateImageLandingPage
  /// Generates a landing page image using AI.
  ///
  /// [attachments]: image URLs, store IDs, product IDs (backend resolves store/product).
  Future<
    ({
      bool success,
      String? imageUrl,
      String? id,
      String message,
      String? error,
      Map<String, dynamic>? metadata,
    })
  >
  generateImageLandingPage({
    required String text,
    List<Attachment>? attachments,
    Map<String, dynamic>? templateData,
    /// Aspect ratio for the generated image (e.g. '9:32', '1:8', '1:1').
    /// Defaults to `'9:32'` on the server if omitted.
    String? aspectRatio,
    /// Final image model (step 2). Server allowlist; e.g. `gemini-3.1-flash-image-preview`.
    String? imageModel,
    /// Structured content text model (step 1). Server allowlist; e.g. `gemini-3.1-flash-lite-preview`.
    String? textModel,
    /// Reference/input media resolution (e.g. `MEDIA_RESOLUTION_HIGH`). Passed to step-2 image gen.
    String? mediaResolution,
    /// Output image dimensions for models that support 1K/2K/4K (e.g. Flash/Pro image preview).
    String? imageSize,
    String? background,

    /// When `false`, the server will NOT auto-resolve `product` attachments into
    /// reference images (i.e. it skips `product.photoUrl` and `product.media`).
    /// Use this when the merchant has manually curated which images to send via
    /// `image` attachments — saves provider tokens and avoids product-image bloat.
    /// When `null` (default), the server keeps the legacy behavior (`true`).
    bool? loadProductImage,

    /// Optional Step 1 hint: target N major content beats in the landing page
    /// (hook, benefits, offers, trust marks, CTA…). Range 2–12. Drives copy
    /// density without forcing a rigid count.
    int? sectionsCount,
  }) async {
    try {
      if (text.trim().isEmpty && (attachments == null || attachments.isEmpty)) {
        throw ArgumentError('Text cannot be empty');
      }
      final requestData = buildGenerateImageLandingPageRequestData(
        text: text,
        attachments: attachments,
        templateData: templateData,
        aspectRatio: aspectRatio,
        imageModel: imageModel,
        textModel: textModel,
        mediaResolution: mediaResolution,
        imageSize: imageSize,
        background: background,
        loadProductImage: loadProductImage,
        sectionsCount: sectionsCount,
      );

      final response = await client.post(
        '/actions/generateImageLandingPage',
        data: requestData,
      );

      final responseData = response.data as Map<String, dynamic>;

      return (
        success: responseData['success'] as bool? ?? false,
        imageUrl: responseData['imageUrl'] as String?,
        id: responseData['id'] as String?,
        message: responseData['message'] as String? ?? 'Unknown response',
        error: responseData['error'] as String?,
        metadata: responseData['metadata'] is Map<String, dynamic>
            ? Map<String, dynamic>.from(responseData['metadata'])
            : null,
      );
    } on DioException catch (e) {
      developer.log('Network error during image landing page generation: ${e.message}');
      return (
        success: false,
        imageUrl: null as String?,
        id: null as String?,
        message: 'Network error occurred',
        error:
            'Failed to connect to the server. Please check your internet connection.'
                as String?,
        metadata: null as Map<String, dynamic>?,
      );
    } catch (e) {
      developer.log('Error generating image landing page: $e');
      final String errorMessage = e is ArgumentError
          ? (e.message?.toString() ?? 'Invalid argument')
          : 'An unexpected error occurred. Please try again.';
      return (
        success: false,
        imageUrl: null as String?,
        id: null as String?,
        message: 'Failed to generate image landing page',
        error: errorMessage,
        metadata: null as Map<String, dynamic>?,
      );
    }
  }

  /// generateLogo (LogoStudio)
  /// Generates a PNG logo with transparent background (native alpha from the model).
  ///
  /// Provide either [colors] (ordered ARGB ints, client-enabled palette) or legacy
  /// [color1] + [color2]. When [colors] is non-empty it takes precedence.
  ///
  /// [imageModel]: optional catalog model id (server resolves like landing-page image step).
  /// [attachments]: optional image/store/product references.
  Future<
    ({
      bool success,
      String? id,
      String message,
      String? error,
      Map<String, dynamic>? metadata,
    })
  >
  generateLogo({
    required String logoName,
    required String description,
    int? color1,
    int? color2,
    List<int>? colors,
    String? aspectRatio,
    String? imageModel,
    List<Attachment>? attachments,
    List<String>? referenceImageUrls,
    Map<String, String>? referenceImageLabels,
  }) async {
    try {
      final hasPalette = colors != null && colors.isNotEmpty;
      if (!hasPalette && (color1 == null || color2 == null)) {
        throw ArgumentError(
          'generateLogo requires colors or both color1 and color2',
        );
      }
      final attachmentMaps = attachments != null && attachments.isNotEmpty
          ? attachments.map((a) => a.toJson()).toList()
          : null;
      final requestData = <String, dynamic>{
        'logoName': logoName.trim(),
        'description': description.trim(),
        if (aspectRatio != null && aspectRatio.isNotEmpty) 'aspectRatio': aspectRatio,
        if (imageModel != null && imageModel.trim().isNotEmpty)
          'imageModel': imageModel.trim(),
        if (attachmentMaps != null) 'attachments': attachmentMaps,
        if (referenceImageUrls != null && referenceImageUrls.isNotEmpty)
          'referenceImageUrls': referenceImageUrls,
        if (referenceImageLabels != null && referenceImageLabels.isNotEmpty)
          'referenceImageLabels': referenceImageLabels,
      };
      if (hasPalette) {
        requestData['colors'] = colors;
      } else {
        requestData['color1'] = color1!;
        requestData['color2'] = color2!;
      }

      final response = await client.post(
        '/actions/generateLogo',
        data: requestData,
      );

      final responseData = response.data as Map<String, dynamic>;

      return (
        success: responseData['success'] as bool? ?? false,
        id: responseData['id'] as String?,
        message: responseData['message'] as String? ?? 'Unknown response',
        error: responseData['error'] as String?,
        metadata: responseData['metadata'] is Map<String, dynamic>
            ? Map<String, dynamic>.from(responseData['metadata'])
            : null,
      );
    } on DioException catch (e) {
      developer.log('Network error during logo generation: ${e.message}');
      return (
        success: false,
        id: null as String?,
        message: 'Network error occurred',
        error:
            'Failed to connect to the server. Please check your internet connection.'
                as String?,
        metadata: null as Map<String, dynamic>?,
      );
    } catch (e) {
      developer.log('Error generating logo: $e');
      final errorMessage = e is ArgumentError
          ? e.message
          : 'An unexpected error occurred. Please try again.';
      return (
        success: false,
        id: null as String?,
        message: 'Failed to generate logo',
        error: errorMessage as String?,
        metadata: null as Map<String, dynamic>?,
      );
    }
  }

  /// resolveComponents
  ///
  /// Materializes a list of `template_components` by id for the storefront
  /// renderer. The backend serves a slim, cached payload (24h TTL) keyed
  /// on `(storeId, version, hash(sortedIds))`; the version is bumped
  /// automatically on any edit to a `TemplateComponent` or to the parent
  /// store, so callers always see fresh data with at most one round trip.
  ///
  /// The endpoint is intentionally **public**: storefront SSR is
  /// unauthenticated and must be able to call it. Authorization is data-
  /// driven: same-store ids are always returned; cross-store ids only when
  /// `policy in ('public','deprecated')`. Anything else is dropped and
  /// surfaces as a `missing` id so the renderer can show a placeholder.
  ///
  /// [ids] is deduplicated client-side as a courtesy; the server also
  /// dedupes before hashing the cache key so two callers with the same
  /// id set always hit the same row.
  Future<ResolveComponentsResult> resolveComponents({
    required String storeId,
    required List<String> ids,
    CancelToken? cancelToken,
  }) async {
    if (storeId.isEmpty) {
      throw ArgumentError('storeId required');
    }
    final dedupedIds = ids.toSet().toList(growable: false);
    if (dedupedIds.isEmpty) {
      // Fast-path: avoid a network round trip when there's nothing to
      // resolve. Mirrors the "lazy seeding" the backend does on its
      // first call so no version key is created unnecessarily.
      return const ResolveComponentsResult(resolved: {}, missing: []);
    }
    try {
      final response = await client.post(
        '/actions/resolveComponents',
        data: {'storeId': storeId, 'ids': dedupedIds},
        cancelToken: cancelToken,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return ResolveComponentsResult.fromJson(data);
      }
      if (data is Map) {
        return ResolveComponentsResult.fromJson(Map<String, dynamic>.from(data));
      }
      return const ResolveComponentsResult(resolved: {}, missing: []);
    } on DioException catch (e) {
      developer.log(
        'Network error during resolveComponents: ${e.message}',
      );
      rethrow;
    }
  }
}
