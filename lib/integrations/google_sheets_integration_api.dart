import 'package:dio/dio.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';

/// API for Google Sheets store integration (append row, create spreadsheet).
class GoogleSheetIntegrationApi {
  final GoogleSheetsIntegration integration;
  final String storeId;
  final Dio client;

  const GoogleSheetIntegrationApi({
    required this.client,
    required this.integration,
    required this.storeId,
  });

  Future<void> appendRow({required List<String> values}) async {
    try {
      await client.post(
        '/stores/$storeId/integrations/google-sheets/append-row',
        data: {'id': integration.id, 'name': integration.name, 'row': values},
      );
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

  Future<void> createSpreadsheet({required String name}) async {
    try {
      await client.post(
        '/stores/$storeId/integrations/google-sheets/create-spreadsheet',
        data: {'name': name},
      );
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
