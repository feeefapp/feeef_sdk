# Changelog

## 1.0.6

- **stores**: `CustomStatusMapping` adds optional `next` (`List<String>`, default `[]`) — workflow codes (or names) of suggested next statuses. Persisted in `configs.customStatusMappings[].next` JSON; validated on store update by the API.

- **apps**: `AppRepository` methods for visibility JSONB — `getPublicData`, `getPrivateData`, `putPublicData`, `putPrivateData`, `getUserDataMe`, `putUserDataMe`, `getUserDataForUser`, `putUserDataForUser` (see Feeef API docs / `backend/docs/APP_USER_VISIBILITY.md`). OAuth scope **`apps`** is required on developer tokens for per-user developer routes.

## 1.0.5

- **apps**: add optional `logoUrl` to developer OAuth app models (`App`, `AppCreate`, `AppUpdate`) so clients can store and render app branding in admin and OAuth consent flows.

## 1.0.4

- **orders**: `OrderRepository.list()` now accepts optional `storeIds` (list of store IDs) for multi-store order listing. When `storeIds` is non-empty it takes precedence over `storeId`. Use for unified order views across multiple stores.

## 1.0.3

- (Previous releases; add entries as needed.)
