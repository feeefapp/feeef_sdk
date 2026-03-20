# feeef (Dart SDK)

Dart SDK for Feeef APIs and repositories.

## Developer OAuth (Authorization Code flow)

This is the same pattern used by major providers (Google-style browser authorize + callback + token exchange).

### 1) Build authorize URL

```dart
import 'package:feeef/apps/app_repository.dart';

final authorizeUrl = AppRepository.buildAuthorizeUrl(
  baseUrl: 'https://api.feeef.org/v1',
  clientId: '<client_id>',
  redirectUri: 'https://your-app.com/oauth/callback',
  responseType: 'code',
  scope: ['*'], // or explicit scopes
  state: 'random_csrf_state',
);
```

Open `authorizeUrl` in a browser/webview.

### 2) Handle login-required response

If user is not logged in, API `/oauth/authorize` can return:

```json
{
  "error": "login_required",
  "error_description": "User must log in to authorize the application",
  "login_url": "https://accounts.feeef.org/signin?next=...",
  "next": "https://api.feeef.org/v1/oauth/authorize?..."
}
```

Navigate to `login_url`. After sign-in, continue the authorize step.

### 3) Receive callback with `code`

The browser is redirected to your registered `redirect_uri` with query params:

- `code`
- `state` (if provided)

Validate `state`.

### 4) Exchange code for token

Use the SDK repository:

```dart
import 'package:feeef/feeef.dart';

final oauth = Feeef.instance.oauth;

final tokenResponse = await oauth.exchangeAuthorizationCode(
  code: codeFromCallback,
  redirectUri: 'https://your-app.com/oauth/callback',
  clientId: '<client_id>',
  clientSecret: '<client_secret>',
  // codeVerifier: '<pkce_verifier>', // if PKCE was used
);
```

The SDK also supports:

```dart
await oauth.revokeToken(token: tokenResponse.accessToken);

final introspection = await oauth.introspectToken(
  token: tokenResponse.accessToken,
);
```

Underlying HTTP contract:

- `POST https://api.feeef.org/v1/oauth/token`
- `Content-Type: application/x-www-form-urlencoded`

Required fields:

- `grant_type=authorization_code`
- `code`
- `redirect_uri`
- `client_id`
- `client_secret`

Optional (PKCE):

- `code_verifier`

### Security checklist

- Keep `client_secret` server-side only.
- Validate `state` on callback.
- Use PKCE for public clients.
- Ensure `redirect_uri` exactly matches one registered in the app.
## Overview

Dart/Flutter SDK for the Feeef API: HTTP client, repositories (stores, products, orders, landing pages, etc.), file and AI actions, and third-party integrations (Yalidine, Ecotrack, Google Sheets, and more).

## Features

- **API client** – Single `Feeef` entrypoint with `init(baseUrl:)`; repositories for stores, products, orders, product landing pages, templates, shipping, feedback, users, and config.
- **Developer apps** – OAuth app models include optional `logoUrl` for branded consent/admin UIs.
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
