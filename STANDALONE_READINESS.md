# Feeef SDK — Standalone package readiness

This document describes what’s done and what’s left before the Feeef SDK (currently in `marchant/lib/feeef/`) can live as a standalone package in this repo (`feeef`).

---

## Current state

| Location | State |
|----------|--------|
| **This package** (`feeef/`) | Stub only: `lib/feeef.dart` and `lib/src/feeef_base.dart` (placeholder). No real SDK code here yet. |
| **marchant** (`marchant/lib/feeef/`) | Full SDK: ~100+ Dart files (core, repos, integrations, models, interfaces). Already refactored into modules and barrel `feeef.dart`. |

So we are **not ready** to “flip the switch”: the real implementation still lives in marchant and still depends on app-only imports.

---

## Blockers (app-only dependencies)

These files under `marchant/lib/feeef/` import from **outside** the SDK (marchant app). They must be fixed before or as part of moving code into this package.

### 1. `feeef_client.dart`

- **Import:** `package:feeef_marchant/configs.dart`
- **Usage:** `isProduction` is used to choose the Transmit base URL (debug vs production).
- **Fix:** Use the existing `FeeefConfig` abstraction from `core/feeef_config.dart`. Have `Feeef` (or `FeeefClient`) take a `FeeefConfig` (or `baseUrl` + `isProduction`) in `init()` or constructor instead of reading from `configs`. Marchant then passes its config when calling `Feeef.instance.init(config: myFeeefConfig)`.

### 2. `stores/models/store.dart`

- **Imports:**  
  - `package:feeef_marchant/i18n/strings.g.dart`  
  - `package:feeef_marchant/src/core/strings.dart`
- **Usage:** Line ~443: `t.app.general.selectedCurrency.symbol` as fallback when `getCurrency()?.symbol` is null (display string for “selected currency”).
- **Fix:** Either:  
  - Remove the fallback and use `getCurrency()?.symbol ?? ''` (or a constant like `'Currency'`) in the SDK, and let the app supply display text in the UI; or  
  - Introduce a small SDK abstraction (e.g. `FeeefStrings` or a callback) that the app implements and the SDK uses for this single label. Prefer the first option if the SDK should stay free of i18n.

### 3. `integrations/maystro_delivery/service.dart`

- **Import:** `package:feeef_marchant/main.dart`
- **Usage:** Likely only for symbols re-exported from `main.dart` (e.g. `configs` / `isProduction`). No direct use of `isProduction` was found in this file; the import may be historical or indirect.
- **Fix:** Remove the import. If the service needs base URL or production flag, pass them via constructor or a shared config (e.g. `FeeefConfig`) instead of importing the app’s `main.dart`.

### 4. Barrel / package name

- **`product_landing_pages/product_landing_page.dart`** and **`product_landing_page_templates/product_landing_page_template.dart`** import `package:feeef_marchant/feeef/interfaces/...`.  
- **Fix:** When the SDK lives in this package, these become `package:feeef/...` (or relative imports inside the package). No app dependency; just update package name when moving.

---

## Already in good shape

- **`FeeefConfig`** in `core/feeef_config.dart`: abstraction exists; it just needs to be wired in `feeef_client.dart` and used instead of `configs`.
- **Rest of `lib/feeef`**: The majority of files only use:
  - `package:feeef_marchant/feeef/...` (self-imports; become `package:feeef/...` after the move),
  - or packages like `dio`, `freezed_annotation`, etc., which will be dependencies of this package.

---

## Suggested order of work

1. **Decouple config**
   - In `feeef_client.dart`, remove `import 'package:feeef_marchant/configs.dart'`.
   - Add a `FeeefConfig? config` (or required) to `Feeef.init()` (and optionally to a constructor). Use `config.baseUrl` and `config.isProduction` for Dio and Transmit. In marchant, pass a `FeeefConfig` implementation that reads from `configs`.

2. **Decouple store model i18n**
   - In `stores/models/store.dart`, remove imports of `i18n/strings.g.dart` and `src/core/strings.dart`.
   - Replace `t.app.general.selectedCurrency.symbol` with a SDK-agnostic fallback (e.g. `''` or `'Currency'`) or a tiny optional callback/interface if you want the app to supply it.

3. **Remove main.dart from maystro**
   - In `integrations/maystro_delivery/service.dart`, remove `import 'package:feeef_marchant/main.dart'`. If anything (e.g. base URL) is needed, inject it via constructor or shared config.

4. **Move code into this package**
   - Copy or move `marchant/lib/feeef/*` into this package’s `lib/` (e.g. under `lib/src/` and keep a single `lib/feeef.dart` barrel).
   - Replace all `package:feeef_marchant/feeef/...` with `package:feeef/...` (or relative imports).
   - Add to this package’s `pubspec.yaml`: `dio`, `cuid2`, `transmit_client`, `freezed_annotation`, `file_picker`, `flutter` (if needed), etc., per current usage in marchant.

5. **Wire marchant to the package**
   - In marchant: add dependency on this package (path or git).
   - Replace `import 'package:feeef_marchant/feeef/feeef.dart'` with `import 'package:feeef/feeef.dart'`.
   - Ensure `Feeef.instance.init(...)` is called with a `FeeefConfig` that matches the current `configs` behavior.

6. **Tests and CI**
   - Move or duplicate `marchant/test/feeef/` into this package’s `test/` and fix imports.
   - Run tests from this package; add CI that runs them.

---

## Summary

| Question | Answer |
|----------|--------|
| **Are we ready to move to the standalone package?** | **No.** A few decoupling steps are still required. |
| **What’s left?** | (1) Use `FeeefConfig` in `feeef_client.dart` and remove `configs.dart`. (2) Remove i18n/strings from `store.dart`. (3) Remove `main.dart` from maystro service. (4) Move code and fix package name; add deps; wire marchant. |
| **Rough effort** | Small: 3 files to change for decoupling; then a mechanical move and dependency/import updates. |

Once the three app-only dependencies above are removed and the code is moved here with updated imports and `pubspec`, the SDK will be standalone in this package and marchant will consume it via `package:feeef`.
