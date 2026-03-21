# Changelog

## 1.0.5

- **apps**: add optional `logoUrl` to developer OAuth app models (`App`, `AppCreate`, `AppUpdate`) so clients can store and render app branding in admin and OAuth consent flows.

## 1.0.4

- **orders**: `OrderRepository.list()` now accepts optional `storeIds` (list of store IDs) for multi-store order listing. When `storeIds` is non-empty it takes precedence over `storeId`. Use for unified order views across multiple stores.

## 1.0.3

- (Previous releases; add entries as needed.)
