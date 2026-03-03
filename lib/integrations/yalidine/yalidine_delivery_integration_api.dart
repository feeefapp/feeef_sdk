import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:flutter/services.dart';

/// API for Yalidine/Guepex delivery integration (fees from bundled assets).
/// Host app must provide [yalidineFeesAssetPath] and [guepexFeesAssetPath].
class YalidineDeliveryIntegrationApi {
  final YalidineDeliveryIntegration integration;
  final String storeId;
  final Dio client;
  final String? yalidineFeesAssetPath;
  final String? guepexFeesAssetPath;

  const YalidineDeliveryIntegrationApi({
    required this.client,
    required this.integration,
    required this.storeId,
    this.yalidineFeesAssetPath,
    this.guepexFeesAssetPath,
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
      List data = json.decode(await rootBundle.loadString(path));
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
