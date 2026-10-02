import 'package:feeef/integrations/google_sheets_integration_api.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:test/test.dart';

void main() {
  test('omits nulls and never sends the Google grant', () {
    final body = googleSheetsIntegrationWriteBody(
      GoogleSheetsIntegration(
        id: '  ',
        name: ' Orders ',
        active: false,
        oauth2: const {'tokens': {'access_token': 'secret'}},
        metadata: const {'keep': true},
        columns: [
          GoogleSheetsColumn(
            field: 'customerName',
            name: 'Name',
            enabled: true,
          ),
        ],
      ),
    );

    expect(body.containsKey('id'), isFalse);
    expect(body.containsKey('oauth2'), isFalse);
    expect(body.containsKey('metadata'), isFalse);
    expect(body.containsKey('draftSheetName'), isFalse);
    expect(body['name'], 'Orders');
    expect(body['active'], isFalse);
    final column = (body['columns'] as List).single as Map<String, dynamic>;
    expect(column.containsKey('defaultValue'), isFalse);
    expect(column['field'], 'customerName');
  });

  test('sends null when the draft tab name is cleared', () {
    final body = googleSheetsIntegrationWriteBody(
      const GoogleSheetsIntegration(draftSheetName: '   '),
      clearDraftSheetName: true,
    );

    expect(body.containsKey('draftSheetName'), isTrue);
    expect(body['draftSheetName'], isNull);
  });
}
