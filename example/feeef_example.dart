// Example: Feeef SDK usage (attachments, list response, errors).
// Run with: dart run example/feeef_example.dart
// (or flutter run if this is a Flutter app)

import 'package:feeef/feeef.dart';

void main() {
  _demoAttachments();
  _demoListResponse();
  _demoErrors();
}

/// Build and serialize [Attachment]s for AI features (image gen, voice, landing page).
void _demoAttachments() {
  // Create typed attachments
  const image = ImageAttachment(
    url: 'https://example.com/ref.png',
    label: 'Reference',
    prompt: 'Use this style',
  );
  const store = StoreAttachment(value: 'store_abc123', label: 'My store');
  const product = ProductAttachment(value: 'prod_xyz', prompt: 'Match this product');

  // Serialize for API
  print('ImageAttachment.toJson(): ${image.toJson()}');
  print('StoreAttachment.toJson(): ${store.toJson()}');

  // Parse from API response or request
  final fromApi = Attachment.fromJson({
    'type': 'url',
    'value': 'https://site.com/page',
    'label': 'Landing page',
  });
  print('Parsed from JSON: $fromApi (typeId=${fromApi?.typeId})');

  // Build by typeId string (e.g. from UI)
  final built = Attachment.from('audio', 'https://example.com/voice.mp3', 'Reference audio');
  print('Attachment.from(audio, ...): ${built.typeId}');
}

/// Parse paginated list responses from the API.
void _demoListResponse() {
  // Response shaped as a raw list
  final listOnly = ListResponse<int>.fromJson([1, 2, 3], (e) => e as int);
  print('ListResponse (list): data=${listOnly.data}, hasMore=${listOnly.hasMore}');

  // Response with meta (total, page, limit)
  final withMeta = ListResponse.fromJson(
    {
      'data': ['a', 'b'],
      'meta': {'total': 42, 'currentPage': 1, 'perPage': 10},
    },
    (e) => e as String,
  );
  print('ListResponse (meta): total=${withMeta.total}, nextPage=${withMeta.nextPage}');
}

/// Use SDK error types for handling API and validation failures.
void _demoErrors() {
  final network = NetworkException('Connection timed out');
  print('NetworkException: ${network.message}');

  final validation = FeeefValidationException(
    errors: [
      FeeefViolation(message: 'Name is required', field: 'name'),
      FeeefViolation(message: 'Invalid email', field: 'email'),
    ],
  );
  print('Validation messages: ${validation.messages}');
  print('Field "name" message: ${validation.getFieldMessage('name')}');
}
