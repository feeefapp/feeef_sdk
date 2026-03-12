# Feeef Dart SDK — documentation guide (AI-oriented)

This guide defines how we document the Feeef SDK so that **dart doc** generates an API reference that is easy for both humans and AI tools (e.g. `search_docs`) to use.

## Why AI-oriented docs?

- Generated docs are searchable (e.g. via MCP `search_docs`).
- Clear, consistent prose and structure improve retrieval and reasoning.
- One source of truth: dartdoc comments drive both human-readable docs and tooling.

## Principles

1. **Start with a one-line summary** — First sentence is the “what” (used in indexes and search).
2. **Add a short “when to use”** — Optional second sentence: *Use when …* or *Use for …*.
3. **Document parameters and return values** — Use `[param]` and `@param` / `@return` (or equivalent) so both IDEs and search understand semantics.
4. **Mention errors** — Note when a method throws (e.g. `FeeefValidationException`) and under what conditions.
5. **Prefer plain language** — Avoid jargon unless necessary; spell out acronyms on first use.
6. **Keep examples minimal** — Only when they disambiguate usage; avoid long snippets in every doc.

## Conventions

### Library / barrel file

```dart
/// One-line summary of the library.
///
/// Optional paragraph: what the SDK provides and main entry point ([Feeef], [FeeefClient]).
library;
```

### Classes (repositories, models, services)

```dart
/// Short summary of the type (e.g. "Repository for Store CRUD and store-specific API").
///
/// Optional: Use when you need to list stores, manage members, domains, or subscription.
/// Composes [ModelCreateMixin], [ModelFindMixin], [ModelListMixin], etc.
class StoreRepository extends ModelRepository<Store> { ... }
```

### Public methods

- **One-line summary** — What the method does.
- **Params** — Use `[paramName]` in the description or a short sentence per parameter.
- **Returns** — What is returned (type and meaning).
- **Throws** — When and what (e.g. `FeeefValidationException` on 422).

```dart
/// Creates a store invite and sends an email to the invitee.
///
/// [storeId] is the store identifier. [email] is the invitee address.
/// [role] must be one of the store member roles. [expiresAt] and [metadata] are optional.
/// Returns the created [StoreInvite]. Throws [FeeefValidationException] on validation or API errors.
Future<embadded.StoreInvite> createInvite({ ... }) async { ... }
```

### Parameters and return in one line (alternative)

```dart
/// Lists invites for the store. Optional [status] filter. Returns list of [StoreInvite].
Future<List<embadded.StoreInvite>> listInvites({ required String storeId, String? status }) async { ... }
```

### Enums and model fields

- One-line summary per value or field.
- For enums: when to use each value.
- For models: type and meaning (e.g. nullable, format like ISO-8601).

## What to document

- **Public API only** — Every exported top-level type, and every public member of those types.
- **Repositories** — All repository classes and their methods (list, get, create, update, delete, and domain-specific methods).
- **Models** — Public constructors, fields, and factory constructors (e.g. `fromJson`).
- **Mixins and base classes** — Purpose and how subclasses use them.
- **Errors** — When and why validation/API errors are thrown.

## Generating and searching docs

1. **Generate API docs** (from the feeef package root):
   ```bash
   dart pub get && dart doc .
   ```
   Output is under `doc/api/`.

2. **Search from MCP** — Use the `search_docs` tool with a natural-language or keyword query; it searches the generated Dart API reference (HTML/text) and returns matching snippets and links.

3. **Local preview** (optional):
   ```bash
   dart pub global activate dhttpd
   dart pub global run dhttpd --path doc/api
   ```
   Then open http://localhost:8080.

## Checklist for new or updated API

- [ ] Library/barrel has a short summary.
- [ ] Each public class has a one-line summary and optional "Use when".
- [ ] Each public method has summary, param/return notes, and throws when relevant.
- [ ] Public model fields and enum values are described.
- [ ] Run `dart doc .` and fix any doc warnings.
- [ ] Run `search_docs` with a few queries to confirm important concepts are findable.

## Initialization and push tokens

The SDK does **not** depend on Firebase or any specific push provider. To register a device for push notifications during sign-in/sign-up, pass an optional `getPushToken` callback to [Feeef.init]. For example, when using Firebase Cloud Messaging:

```dart
await Feeef.instance.init(
  baseUrl: 'https://api.feeef.org/v1',
  config: myConfig,
  getPushToken: () => FirebaseMessaging.instance.getToken(),
);
```

If `getPushToken` is omitted or null, auth flows still work; no push token is sent to the backend. Apps that use a different push service (or none) can supply their own callback or leave it unset.
