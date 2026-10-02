import 'package:dio/dio.dart';
import 'package:feeef/core/validation/validation_exception.dart';
import 'package:feeef/integrations/store_integration_api.dart';
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

/// Blank strings are omitted. The API would otherwise store `""`.
String? _blankToNull(String? value) {
  final trimmed = value?.trim();
  if (trimmed == null || trimmed.isEmpty) return null;
  return trimmed;
}

/// Column payload. Null [GoogleSheetsColumn.defaultValue] is omitted so a
/// missing default is not written as JSON `null`.
Map<String, dynamic> googleSheetsColumnWriteBody(GoogleSheetsColumn column) {
  return integrationJsonBody({
    'field': column.field,
    'name': column.name,
    'enabled': column.enabled,
    'defaultValue': column.defaultValue,
  });
}

/// Body for `PATCH /stores/:id/integrations/googleSheet`.
///
/// `oauth2` is never included. The grant is server-owned; sending it as null
/// (what [GoogleSheetsIntegration.toJson] does when the map is null) would
/// clear the Google tokens. [clearDraftSheetName] sends an explicit null when
/// the merchant emptied the draft-tab field.
Map<String, dynamic> googleSheetsIntegrationWriteBody(
  GoogleSheetsIntegration sheet, {
  bool clearDraftSheetName = false,
}) {
  final columns = sheet.columns;
  return integrationJsonBody(
    {
      'id': _blankToNull(sheet.id),
      'name': _blankToNull(sheet.name),
      'active': sheet.active,
      'draftSheetEnabled': sheet.draftSheetEnabled,
      'columns': columns?.map(googleSheetsColumnWriteBody).toList(),
      'draftSheetName': _blankToNull(sheet.draftSheetName),
    },
    explicitNulls: {
      if (clearDraftSheetName) 'draftSheetName',
    },
  );
}
