import 'package:dio/dio.dart';

/// Client for `GET/PATCH/PUT/DELETE /stores/:id/integrations/:key`.
///
/// One integration is written on its own. The legacy `PATCH /stores/:id`
/// sent every integration, and Dart's `null` (there is no `undefined`) cleared
/// fields the caller never meant to touch.
class StoreIntegrationsApi {
  const StoreIntegrationsApi(this.client);

  final Dio client;

  /// Deep-merge [body] into one integration. Returns the response map
  /// (`storeId`, `key`, `integration`).
  Future<Map<String, dynamic>> update({
    required String storeId,
    required String key,
    required Map<String, dynamic> body,
  }) async {
    final response = await client.patch<dynamic>(
      '/stores/$storeId/integrations/$key',
      data: body,
    );
    final data = response.data;
    if (data is Map) return Map<String, dynamic>.from(data);
    return const {};
  }

  /// Remove one integration config.
  Future<void> delete({
    required String storeId,
    required String key,
  }) async {
    await client.delete<void>('/stores/$storeId/integrations/$key');
  }
}

/// JSON object for a single integration write.
///
/// The API treats a missing key as "leave the stored value" and `null` as
/// "clear it". Dart only has `null`, so [toJson] cannot express "omit".
/// This helper drops nulls. Put a key in [explicitNulls] when the merchant
/// cleared that field on purpose.
Map<String, dynamic> integrationJsonBody(
  Map<String, dynamic> fields, {
  Set<String> explicitNulls = const {},
}) {
  final out = <String, dynamic>{};
  for (final entry in fields.entries) {
    if (entry.value == null) {
      if (explicitNulls.contains(entry.key)) out[entry.key] = null;
      continue;
    }
    out[entry.key] = entry.value;
  }
  return out;
}
