# feeef

Dart/Flutter SDK for the Feeef API: HTTP client, repositories (stores, products, orders, landing pages, etc.), file and AI actions, and third-party integrations (Yalidine, Ecotrack, Google Sheets, and more).

## Features

- **API client** – Single `Feeef` entrypoint with `init(baseUrl:)`; repositories for stores, products, orders, product landing pages, templates, shipping, feedback, users, and config.
- **Attachments** – Typed `Attachment` model (image, store, product, url, audio) for AI features (image generation, voice, landing page generation).
- **List responses** – `ListResponse<T>` with optional meta (total, page, limit) and helpers (`hasMore`, `nextPage`).
- **Errors** – `NetworkException`, `FeeefValidationException` with `FeeefViolation` and field helpers (`getField`, `getFieldMessage`, `messages`).
- **Realtime** – Optional Transmit-based realtime (CRUD events).
- **Integrations** – Delivery (Yalidine, Ecotrack, Noest, Procolis), Google Sheets, and others.
- **File & AI actions** – Storage upload, AI code/component generation, product landing page and voice generation (with typed attachments).

## Getting started

### Dependency

Add to your `pubspec.yaml`:

```yaml
dependencies:
  feeef: ^1.0.0
```

Then run `flutter pub get` (or `dart pub get`).

### Initialize the SDK

Before calling any API, set the base URL (and optionally a config for realtime/debug):

```dart
import 'package:feeef/feeef.dart';

await Feeef.instance.init(
  baseUrl: 'https://api.feeef.org',  // or your API host
  config: MyFeeefConfig(),            // optional: baseUrl, isProduction, debugMode
);

// Use repositories
final stores = Feeef.instance.stores;
final products = Feeef.instance.products;
final orders = Feeef.instance.orders;
```

### Attachments (AI features)

Use typed attachments when calling image generation, voice, or landing page APIs:

```dart
import 'package:feeef/feeef.dart';

final refs = [
  ImageAttachment(url: 'https://example.com/ref.png', label: 'Style ref'),
  StoreAttachment(value: storeId, label: 'Store'),
];
// Pass refs to e.g. generateProductLandingPageTemplateData, generateVoiceover, etc.
```

See `example/feeef_example.dart` for more snippets (attachments, `ListResponse`, validation errors).

## Usage

Run the example from the package root:

```bash
dart run example/feeef_example.dart
```

The example demonstrates attachments, `ListResponse` parsing, and error types. Your app should call `Feeef.instance.init(baseUrl: ...)` with your API URL; the default client base URL is for local development only.

## Testing and coverage

Run tests and collect coverage:

```bash
flutter test --coverage
```

The project enforces **at least 90% line coverage** on unit-tested SDK code (core, attachments, helpers). After `flutter test --coverage`, run:

```bash
./tool/check_coverage.sh
```

This fails if coverage drops below 90% for that set.

## Additional information

- **License** – MIT; see [LICENSE](LICENSE).
- **Publishing** – See [PUBLISH_READINESS.md](PUBLISH_READINESS.md) for security notes and a publish checklist.
- **Changelog** – See [CHANGELOG.md](CHANGELOG.md).
