# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-02-26

### Added

- Initial public SDK release.
- API client and `Feeef` singleton with `init(baseUrl:, config:)`.
- Repositories: stores, products, orders, product landing pages, templates, shipping methods/prices, feedback, users, categories, countries, states, cities, currencies, config, deposits, transfers.
- Typed `Attachment` model (Image, Store, Product, Url, Audio) for AI features; `toJson` / `fromJson` / `from()`.
- `ListResponse<T>` with `fromJson`, `toJson`, `hasMore`, `nextPage`.
- Core: `NetworkException`, `FeeefValidationException` and `FeeefViolation`, `RealtimeCrudEvent(s)`.
- File service, storage upload, and Actions (AI code/component generation, store orders count, integrations).
- Integrations: Yalidine, Ecotrack, Noest, Procolis delivery APIs; Google Sheets.
- Realtime (Transmit) support when config is provided.
- Example app (`example/feeef_example.dart`), 90% coverage check for unit-tested code, and publish-readiness notes.

### Security

- No hardcoded secrets; default client base URL is localhost for development. Apps must call `init(baseUrl:)` for production.
