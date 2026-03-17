import 'package:dio/dio.dart';

import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/promos/promo.dart';

/// Repository for promo codes: list, validate, create.
class PromoRepository {
  final Dio client;
  static const String _table = 'promos';

  PromoRepository({required this.client});

  /// List promos with optional pagination and validNow filter.
  Future<ListResponse<Promo>> list({
    int? page,
    int? limit,
    bool? validNow,
  }) async {
    final queryParams = <String, dynamic>{};
    if (page != null) queryParams['page'] = page;
    if (limit != null) queryParams['limit'] = limit;
    if (validNow == true) queryParams['validNow'] = '1';

    final response = await client.get(
      '/$_table',
      queryParameters: queryParams.isNotEmpty ? queryParams : null,
    );
    final data = response.data as Map<String, dynamic>;
    final list = (data['data'] as List).map((e) => Promo.fromJson(e as Map<String, dynamic>)).toList();
    return ListResponse<Promo>(
      data: list,
      total: data['total'] != null ? (data['total'] as num).toInt() : null,
      page: data['page'] != null ? (data['page'] as num).toInt() : null,
      limit: data['limit'] != null ? (data['limit'] as num).toInt() : null,
    );
  }

  /// Validate a promo code. Returns [PromoValidationResult] with valid and discount info or reason.
  Future<PromoValidationResult> validate({
    required String code,
    String? storeId,
  }) async {
    try {
      final response = await client.post(
        '/$_table/validate',
        data: {
          'code': code,
          if (storeId != null) 'storeId': storeId,
        },
      );
      return PromoValidationResult.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response!.data);
      }
      rethrow;
    }
  }

  /// Create a promo (admin). Returns the created [Promo].
  Future<Promo> create({
    required String code,
    required List<List<int>> discount,
    required bool strict,
    int? minMonths,
    int? max,
    DateTime? startsAt,
    DateTime? endsAt,
    String? referralId,
  }) async {
    try {
      final response = await client.post(
        '/$_table',
        data: {
          'code': code,
          'discount': discount,
          'strict': strict,
          if (minMonths != null) 'min_months': minMonths,
          if (max != null) 'max': max,
          if (startsAt != null) 'starts_at': startsAt.toIso8601String(),
          if (endsAt != null) 'ends_at': endsAt.toIso8601String(),
          if (referralId != null) 'referral_id': referralId,
        },
      );
      return Promo.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        throw FeeefValidationException.fromJson(e.response!.data);
      }
      rethrow;
    }
  }
}
