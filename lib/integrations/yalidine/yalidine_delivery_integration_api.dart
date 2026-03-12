import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';

/// API for Yalidine/Guepex delivery integration (fees from bundled assets).
/// Host app must provide either [yalidineFeesAssetPath] + [guepexFeesAssetPath]
/// and [loadAsset], or pass pre-loaded fee data via [loadYalidineFees] / [loadGuepexFees].
class YalidineDeliveryIntegrationApi {
  final YalidineDeliveryIntegration integration;
  final String storeId;
  final Dio client;
  final String? yalidineFeesAssetPath;
  final String? guepexFeesAssetPath;
  /// Callback to load asset content (e.g. Flutter: rootBundle.loadString).
  /// Required when using [yalidineFeesAssetPath] / [guepexFeesAssetPath].
  final Future<String> Function(String path)? loadAsset;

  const YalidineDeliveryIntegrationApi({
    required this.client,
    required this.integration,
    required this.storeId,
    this.yalidineFeesAssetPath,
    this.guepexFeesAssetPath,
    this.loadAsset,
  });

  Future<List<List<num?>?>> getDeliveryFees() async {
    try {
      final path = integration.agent == YalidineAgent.yalidine
          ? yalidineFeesAssetPath
          : guepexFeesAssetPath;
      if (path == null) {
        throw UnsupportedError(
          'YalidineDeliveryIntegrationApi requires yalidineFeesAssetPath and '
          'guepexFeesAssetPath from the host app (e.g. Assets.integrations.yalidine.fees.*)',
        );
      }
      final loader = loadAsset;
      if (loader == null) {
        throw UnsupportedError(
          'YalidineDeliveryIntegrationApi requires loadAsset callback when using asset paths '
          '(e.g. (path) => rootBundle.loadString(path) in Flutter)',
        );
      }
      List data = json.decode(await loader(path));
      int stateIndex =
          (int.tryParse(integration.metadata["state"] ?? "9") ?? 9) - 1;
      List<List<List<num?>?>> allStatesFees = data
          .map(
            (e) => (e as List)
                .map((e) => (e as List).map((e) => e as num).toList())
                .toList(),
          )
          .toList();
      var fees = [
        ...allStatesFees[stateIndex],
        for (var i = 48; i < 58; i++) null,
      ];
      for (var key in {
        '01': ['52', '54'],
        '08': ['53'],
        '11': ['57', '58'],
        '33': ['56'],
        '47': ['50'],
        '39': ['55', '49'],
        '28': ['51'],
      }.entries) {
        var parent = fees[(int.tryParse(key.key) ?? 1) - 1];
        for (var child in key.value) {
          fees[(int.tryParse(child) ?? 1) - 1] =
              fees[(int.tryParse(child) ?? 1) - 1] ?? parent;
        }
      }
      return fees;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
