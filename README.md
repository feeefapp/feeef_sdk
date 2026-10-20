# feeef (Dart SDK)

Dart SDK for Feeef APIs and repositories.

## Developer OAuth (Authorization Code flow)

This is the same pattern used by major providers (Google-style browser authorize + callback + token exchange).

**Full HTTP reference** (hosts, consent, PKCE, troubleshooting): Feeef backend
`docs/OAUTH2_DEVELOPER.md` (authoritative contract for third-party OAuth).

### 1) Build authorize URL

Use the **accounts** origin for the browser step (consent UI), not `/v1` on the API. Hitting the API authorize URL still works (server redirects to accounts).

```dart
import 'package:feeef/apps/app_repository.dart';

final authorizeUrl = AppRepository.buildAuthorizeUrl(
  baseUrl: 'https://accounts.feeef.org',
  clientId: '<client_id>',
  redirectUri: 'https://your-app.com/oauth/callback',
  responseType: 'code',
  scope: ['*'], // or explicit scopes
  state: 'random_csrf_state',
);
```

Open `authorizeUrl` in a browser/webview.

### 2) Handle login-required response

If the user is not logged in, non-browser clients may get JSON from `/oauth/authorize`; browsers are usually redirected to sign-in. Example body:

```json
{
  "error": "login_required",
  "error_description": "User must log in to authorize the application",
  "login_url": "https://accounts.feeef.org/signin?next=...",
  "next": "https://accounts.feeef.org/oauth/authorize?..."
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

## Feeef Cloud AI (SDK 1.5.0)

`Feeef.instance.ai` / `.ai.cloud` uses Feeef authentication and server-owned Cloud
workspaces. It exposes current model metadata, native durable requests, streams,
file uploads, live transcription tickets and strict image generation. The existing
image-generation repository methods remain available.

```dart
final ai = Feeef.instance.ai;
final models = await ai.models();
final model = models.firstWhere((m) => m.image != null && m.available);
// Save the immutable input AND this key in durable application storage first.
final savedKey = 'your-persisted-request-key';
final generation = await ai.generateImage(
  model: model,
  prompt: 'A clean product photograph',
  settings: model.image!.defaults(),
  idempotencyKey: savedKey,
);
```

Derive controls from `model.image` and validate options before submission. Do not
infer capabilities from names or copy settings between provider routes. Unknown
Cloud metadata is retained in `model.raw`. For native APIs, use
`submit(endpoint: ..., body: ..., idempotencyKey: ...)` and poll the returned job
with `request(id)`. `stream` returns SSE bytes or a 202 JSON job on recovery;
inspect its content type/status. `prepareLiveSession` returns an ephemeral ticket
for the Cloud WebSocket; it never exposes a permanent provider credential.

A timeout can occur after admission. Recover with `requests(idempotencyKey: key)`
or replay the same input/key. Never automatically create a replacement key.
`recoverOriginal: true` on image generation permits a saved request snapshot to
reach backend recovery even after its local price card expires. The backend still
validates the current catalog for new jobs. Charges (`chargeDzd`, `chargedMicros`)
remain decimal strings; pending charges stay unknown. New Cloud AI billing is
postpaid with no Feeef wallet reserve and can produce a negative balance.

### Source-first template projects (local foundation integration)

`Feeef.instance.templateProjects` is the typed workspace/build/publication API.
Preserve the exact read workspace version and file hashes for patches; publication
requires the reviewed successful build hashes and project/workspace/installation
versions. Source, compiled output and optional activation commit atomically. The
merchant source editor and MCP use this same SDK transport and explicit workspace ID.
This local implementation does not change published SDK pins or run application
migrations. Deployment/recovery gates: backend `docs/template-foundation/e.md`.
