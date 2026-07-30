# Changelog

## 1.2.0

- **orders**: add optional `scheduledAt` and read-only `effectiveAt` on `Order` / `OrderCreate` / `OrderUpdate`. List clients should prefer `displayAt` (`effectiveAt ?? scheduledAt ?? createdAt`) for sorting, day separators, and date-range filters so scheduled orders appear as if created on their schedule date. Clear a schedule via `OrderUpdate.setToNull: ['scheduledAt']`.

## 1.0.16

- **actions**: `updateShippingPriceUsingAi` — creates or updates a shipping price configuration using natural language instructions processed by backend AI. Mirrors `updateProductUsingAi`: supports `attachments` (image, url, audio, store, product), `modelId` (catalog text model override), `useSearchGrounding`, and `forceStatus`. Returns a record `(success, mode, shippingPrice, message, error, validationErrors, raw)`. Backend endpoint: `POST /actions/updateShippingPriceUsingAi`.

## 1.0.6

- **stores**: `CustomStatusMapping` adds optional `next` (`List<String>`, default `[]`) — workflow codes (or names) of suggested next statuses. Persisted in `configs.customStatusMappings[].next` JSON; validated on store update by the API.

- **apps**: `AppRepository` methods for visibility JSONB — `getPublicData`, `getPrivateData`, `putPublicData`, `putPrivateData`, `getUserDataMe`, `putUserDataMe`, `getUserDataForUser`, `putUserDataForUser` (see Feeef API docs / `backend/docs/APP_USER_VISIBILITY.md`). OAuth scope **`apps`** is required on developer tokens for per-user developer routes.

## 1.0.5

- **apps**: add optional `logoUrl` to developer OAuth app models (`App`, `AppCreate`, `AppUpdate`) so clients can store and render app branding in admin and OAuth consent flows.

## 1.0.4

- **orders**: `OrderRepository.list()` now accepts optional `storeIds` (list of store IDs) for multi-store order listing. When `storeIds` is non-empty it takes precedence over `storeId`. Use for unified order views across multiple stores.

## 1.0.3

- (Previous releases; add entries as needed.)
