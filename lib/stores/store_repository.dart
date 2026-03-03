import 'dart:developer' as developer;

import 'package:dio/dio.dart';

import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/model_repository.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/interfaces/embadded/store.dart' as embadded;
import 'package:feeef/interfaces/embadded/store_summary.dart';
import 'package:feeef/mixins/repository_mixins.dart';
import 'package:feeef/stores/models/store.dart';

/// Repository for Store CRUD and store-specific API (members, domain, subscription).
class StoreRepository extends ModelRepository<Store>
    with
        ModelCreateMixin<Store, StoreCreate>,
        ModelFindMixin<Store>,
        ModelListMixin<Store>,
        ModelUpdateMixin<Store, StoreUpdate>,
        ModelDeleteMixin<Store> {
  StoreRepository({required super.client}) : super(table: 'stores');

  @override
  StoreCreate createFromJson(json) => StoreCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(StoreCreate model) => model.toJson();

  @override
  Store modelFromJson(json) {
    if (json["integrations"] is List) {
      json["integrations"] = null;
    }
    return Store.fromJson(json);
  }

  @override
  Map<String, dynamic> modelToJson(Store model) => model.toJson();

  @override
  StoreUpdate updateFromJson(json) => StoreUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(StoreUpdate model) => model.toJson();

  @override
  Future<ListResponse<Store>> list({
    String? userId,
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) {
    return super.list(
      page: page,
      offset: offset,
      limit: limit,
      params: {if (userId != null) 'user_id': userId},
    );
  }

  Future<StoreSummary> summary({
    required String id,
    DateTime? from,
    DateTime? to,
  }) async {
    final response = await client.get(
      '/$table/$id/summary',
      queryParameters: {
        if (from != null) 'from': from.toString(),
        if (to != null) 'to': to.toString(),
      },
    );
    return StoreSummary.fromJson(response.data);
  }

  Future<Map<DateTime, int>> chart({required String id}) async {
    final response = await client.get('/$table/$id/chart');
    developer.log('${response.data["orders"]}');
    Map<DateTime, int> chartData = {};
    for (var key in (response.data["orders"] as Map).keys) {
      chartData[DateTime.parse(key)] = int.parse(
        response.data["orders"][key].toString(),
      );
    }
    var chartData0 = chartData.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));
    return Map.fromEntries(chartData0.map((e) => MapEntry(e.key, e.value)));
  }

  Future<embadded.StoreMember> addMember({
    String? name,
    required String storeId,
    required String email,
    required embadded.StoreMemberRole role,
    Map<String, dynamic>? metadata = const {},
  }) async {
    try {
      var res = await client.post(
        '/$table/$storeId/members',
        data: {
          'email': email,
          'role': role.name,
          if (name != null) 'name': name,
          if (metadata != {}) 'metadata': metadata,
        },
      );
      var storeMember = embadded.StoreMember.fromJson(res.data);
      return storeMember;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<embadded.StoreMember> editMember({
    String? name,
    required String storeId,
    required String memberId,
    embadded.StoreMemberRole? role,
    Map<String, dynamic>? metadata = const {},
  }) async {
    try {
      var res = await client.put(
        '/$table/$storeId/members/$memberId',
        data: {
          if (name != null) 'name': name,
          if (role != null) 'role': role.name,
          if (metadata != {}) 'metadata': metadata,
        },
      );
      var storeMember = embadded.StoreMember.fromJson(res.data);
      return storeMember;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<void> removeMember({
    required String storeId,
    required String memberId,
  }) async {
    try {
      await client.delete('/$table/$storeId/members/$memberId');
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<Map<String, dynamic>> addCustomDomain({
    required String storeId,
    required String name,
  }) async {
    final res = await client.post(
      '/$table/$storeId/domain',
      data: {'name': name},
    );
    return Map<String, dynamic>.from(res.data as Map);
  }

  Future<Map<String, dynamic>> getCustomDomainStatus({
    required String storeId,
  }) async {
    final res = await client.get('/$table/$storeId/domain/status');
    return Map<String, dynamic>.from(res.data as Map);
  }

  Future<Map<String, dynamic>> verifyCustomDomain({
    required String storeId,
  }) async {
    final res = await client.post('/$table/$storeId/domain/verify');
    return Map<String, dynamic>.from(res.data as Map);
  }

  Future<Map<String, dynamic>> checkCustomDomainVerification({
    required String storeId,
  }) async {
    final res = await client.get('/$table/$storeId/domain/verification-check');
    return Map<String, dynamic>.from(res.data as Map);
  }

  Future<Map<String, dynamic>> checkDnsRecords({
    required String storeId,
    required String method,
  }) async {
    final res = await client.post(
      '/$table/$storeId/domain/check-dns',
      data: {'method': method},
    );
    return Map<String, dynamic>.from(res.data as Map);
  }

  Future<Map<String, dynamic>> removeCustomDomain({
    required String storeId,
  }) async {
    final res = await client.delete('/$table/$storeId/domain');
    return Map<String, dynamic>.from(res.data as Map);
  }

  Future<void> upgrade({
    required String id,
    required StoreSubscriptionType plan,
    required int months,
  }) async {
    try {
      await client.post(
        '/$table/$id/subscription/upgrade',
        data: {'plan': plan.name, 'months': months},
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<void> charge({required String id, required int points}) async {
    try {
      await client.post(
        '/$table/$id/subscription/charge',
        data: {'points': points},
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<Map<String, dynamic>> payDue({
    required String storeId,
    required double amount,
  }) async {
    try {
      final response = await client.post(
        '/$table/$storeId/subscription/payDue',
        data: {'amount': amount},
      );
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  Future<void> buyMonthWithIap({
    required String storeId,
    required String platform,
    required String productId,
    required String transactionId,
    required String verificationData,
    String? originalTransactionId,
    String? bundleId,
    String? packageName,
  }) async {
    try {
      await client.post(
        '/$table/$storeId/subscription/buyMonthWithIap',
        data: {
          'storeId': storeId,
          'platform': platform,
          'productId': productId,
          'transactionId': transactionId,
          'verificationData': verificationData,
          if (originalTransactionId != null)
            'originalTransactionId': originalTransactionId,
          if (bundleId != null) 'bundleId': bundleId,
          if (packageName != null) 'packageName': packageName,
        },
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }
}
