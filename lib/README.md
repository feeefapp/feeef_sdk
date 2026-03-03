# Feeef SDK

This folder contains the Feeef SDK: API client, repositories, and shared types used by the marchant app and other consumers.

## Namespace

- **Library:** `package:feeef_marchant/feeef/...` (or `package:feeef_sdk/...` when extracted).
- **Tests:** All SDK tests live under `test/feeef/`, mirroring `lib/feeef/`, so they are namespaced separately from app tests (`test/src/`).

## Public API

The main entrypoint is **`feeef.dart`**, which re-exports:

- **Core:** `core/errors.dart`, `core/realtime_events.dart`, `core/model_repository.dart`, `core/list_response.dart`, `core/validation/validation_exception.dart`, `core/feeef_config.dart`
- **Mixins:** `mixins/repository_mixins.dart` (CRUD mixins for repositories)
- **Repositories:** e.g. `stores/store_repository.dart`; others still defined in `feeef.dart` until fully extracted
- **Client:** `feeef_client.dart` (Services, StorageService)

Consumers can:

- `import 'package:feeef_marchant/feeef/feeef.dart';` for the full API, or
- Import specific files (e.g. `feeef/core/list_response.dart`) for smaller bundles.

## Structure

- `core/` — Errors, realtime events, list response, validation, model repository base, config abstraction
- `mixins/` — Repository mixins (create, update, delete, find, list)
- `stores/` — Store repository and models
- `interfaces/` — Shared interfaces and DTOs
- `feeef_client.dart` — Services and storage
- `feeef.dart` — Main barrel and remaining repository/client code

## Decoupling

The SDK is prepared for extraction into a standalone package:

- **FeeefConfig** in `core/feeef_config.dart` allows the host app to inject config instead of the SDK reading app globals.
- App-specific imports (configs, main, src/...) are still used in some files; these should be replaced with abstractions or constructor injection when extracting.
- Delivery integration API classes (Yalidine, Ecotrack, GoogleSheet, Procolis, Noest) still live in `feeef.dart`; they can be moved to `integrations/<name>/` when decoupling (same pattern as `stores/store_repository.dart`).

Run SDK tests: `flutter test test/feeef/`.
