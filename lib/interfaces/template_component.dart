/// Combined audience + lifecycle dimension for a library entry.
///
///  - [private]    Owner-only (default). Not shareable, hidden from
///                 marketplace and direct-link installs.
///  - [unlisted]   Accessible by direct link / install token only;
///                 not surfaced in marketplace search.
///  - [public]     Discoverable and installable from the marketplace.
///  - [deprecated] Still resolves for existing followers and remains
///                 visible in the marketplace with a "deprecated" badge,
///                 but new installs are discouraged.
enum TemplateComponentPolicy {
  private,
  unlisted,
  public,
  deprecated;

  /// Wire string used by the backend (lowercase enum name). Mirrors the
  /// `feeefjs` enum and the Postgres enum.
  String get wire => name;

  /// Tolerant decoder — accepts the canonical wire form and a few
  /// historical aliases so old serialized data still parses.
  static TemplateComponentPolicy fromWire(String? value) {
    switch (value?.trim().toLowerCase()) {
      case 'private':
        return TemplateComponentPolicy.private;
      case 'unlisted':
        return TemplateComponentPolicy.unlisted;
      case 'public':
        return TemplateComponentPolicy.public;
      case 'deprecated':
        return TemplateComponentPolicy.deprecated;
      default:
        // Fail closed: anything we don't recognize is treated as the
        // most-private option, matching the backend default.
        return TemplateComponentPolicy.private;
    }
  }
}

/// Contract for a row in the per-store **library of reusable custom
/// components** (`template_components` in the backend).
///
/// Conceptual split (mirrors the JS SDK's `TemplateComponentEntity`):
///  - This entity holds the **identity** of a custom component — JSX
///    `code`, its `propsSchema` / `slotsSchema`, and seed defaults.
///  - Each placement of the component in a store's `templateData`
///    carries only its instance-level `props` / `slots` and a
///    reference back to this entry by `id`. Editing this entry's
///    `code` therefore propagates to every placement.
abstract class TemplateComponentEntity {
  const TemplateComponentEntity();

  /// Surrogate primary key (24-char cuid2).
  String get id;

  /// Owner store. References cascade-delete with the store.
  String get storeId;

  /// Creator user. Audit field; never null.
  String get userId;

  // ── Catalog metadata ────────────────────────────────────────────────
  String get title;
  String? get subtitle;
  String? get body;
  String? get category;
  List<String> get tags;
  String? get imageUrl;
  List<String> get screenshots;
  String? get demoUrl;

  // ── Pricing (marketplace) ──────────────────────────────────────────
  /// One-time price in the platform default currency (DZD today).
  num get price;

  /// Absolute discount in the same currency. Nullable; defaults to 0
  /// server-side so the storefront doesn't have to special-case it.
  num? get discount;

  String? get license;

  // ── Component identity ─────────────────────────────────────────────
  /// JSX source executed by `react-live` in the storefront.
  String get code;

  /// Editor schema for instance-editable props.
  Map<String, dynamic> get propsSchema;

  /// Editor schema for named slots, when the component supports children.
  Map<String, dynamic>? get slotsSchema;

  /// Seed values for new instances — instances may override freely.
  Map<String, dynamic> get propsDefault;

  /// Seed slot children for new instances.
  Map<String, dynamic>? get slotsDefault;

  /// Editor-only responsive layout hint for slots (sm/md/lg).
  Map<String, dynamic>? get slotsLayout;

  // ── Distribution & lifecycle ───────────────────────────────────────
  TemplateComponentPolicy get policy;

  /// Fork tree: id of the entry this one was copied from, if any.
  String? get parentId;

  /// Monotonic counter bumped on every meaningful edit.
  int get version;

  // ── Timestamps ─────────────────────────────────────────────────────
  DateTime get createdAt;
  DateTime? get updatedAt;
  DateTime? get deletedAt;
}
