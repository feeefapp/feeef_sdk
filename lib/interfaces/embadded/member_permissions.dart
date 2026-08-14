import 'package:feeef/auth/models/user_auth_response.dart';
import 'package:feeef/interfaces/embadded/member_scope.dart';
import 'package:feeef/interfaces/embadded/store.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/stores/models/store.dart';

/// Central store RBAC matrix — Dart mirror of the API's
/// `app/helpers/member_permissions.ts`. Keep the two in sync.
///
/// A permission = required [MemberScope] + the member roles whose ceiling
/// includes it (the owner is always implicit). Empty member scopes mean
/// legacy full access **within the role ceiling** — e.g. a viewer with empty
/// scopes may read everything but still cannot write.
///
/// Use this for UI gating so the client never shows actions the API will
/// reject (and never hides actions the API allows).
enum StorePermission {
  /// See the private store payload / dashboard chrome.
  storeRead(MemberScope.storeRead, _readRoles),

  /// Update store settings (confirmers are limited to metadata server-side).
  storeSettingsWrite(MemberScope.storeSettings, _editorConfermer),

  /// Fire pixel test/status events on behalf of the store.
  storeEventsSend(MemberScope.storeSettings, _editorConfermer),

  /// Delete the store — owner only.
  storeDelete(MemberScope.store, _ownerOnly),

  /// Read integration configs (private member view).
  integrationsRead(MemberScope.storeIntegrations, _readRoles),

  /// Mutate integration configs.
  integrationsWrite(MemberScope.storeIntegrations, _editorOnly),

  /// Operational carrier actions (send parcel, delete shipment, labels…).
  /// Part of the confirmation workflow, hence broader than [integrationsWrite].
  integrationsDispatch(MemberScope.storeIntegrations, _editorConfermer),

  /// Subscribe/cancel paid integrations — debits the OWNER wallet.
  integrationsBilling(MemberScope.storeIntegrations, _editorOnly),

  /// Manage members and invites.
  membersWrite(MemberScope.storeMembers, _editorOnly),

  ordersRead(MemberScope.ordersRead, _readRoles),

  /// Create/update orders (confirmer assigned-to-self rules apply server-side).
  ordersWrite(MemberScope.orders, _editorConfermer),

  /// Assign orders to confirmers (confirmers need `ConfermerAccess` flags).
  ordersAssign(MemberScope.orders, _editorOnly),
  ordersDelete(MemberScope.orders, _editorOnly),

  productsRead(MemberScope.productsRead, _readRoles),
  productsWrite(MemberScope.products, _editorOnly),

  /// Sales/revenue/profit reports — read-level, not part of the confirmation job.
  productsAnalytics(MemberScope.productsRead, _editorViewer),

  categoriesRead(MemberScope.categoriesRead, _readRoles),
  categoriesWrite(MemberScope.categories, _editorOnly),

  pagesRead(MemberScope.pagesRead, _editorViewer),
  pagesWrite(MemberScope.pages, _editorOnly),

  productLandingPagesRead(MemberScope.productLandingPagesRead, _editorViewer),
  productLandingPagesWrite(MemberScope.productLandingPages, _editorOnly),

  shippingPricesRead(MemberScope.shippingPricesRead, _readRoles),
  shippingPricesWrite(MemberScope.shippingPrices, _editorOnly),

  templateComponentsRead(MemberScope.templateComponentsRead, _readRoles),
  templateComponentsWrite(MemberScope.templateComponents, _editorOnly),

  storeTemplatesRead(MemberScope.storeTemplatesRead, _readRoles),
  storeTemplatesWrite(MemberScope.storeTemplates, _editorOnly),

  financeRead(MemberScope.financeRead, _readRoles),
  financeWrite(MemberScope.finance, _editorOnly),

  inventoryRead(MemberScope.inventoryRead, _readRoles),
  inventoryWrite(MemberScope.inventory, _editorOnly);

  const StorePermission(this.scope, this.roles);

  /// Member scope required for this permission (hierarchy-aware via
  /// [memberHasScope]: `orders` ⇒ `orders.read`, `store` ⇒ everything).
  final String scope;

  /// Roles whose ceiling includes this permission (owner implicit).
  final List<StoreMemberRole> roles;
}

const _readRoles = [
  StoreMemberRole.editor,
  StoreMemberRole.confermer,
  StoreMemberRole.viewer,
];
const _editorOnly = [StoreMemberRole.editor];
const _editorConfermer = [StoreMemberRole.editor, StoreMemberRole.confermer];
const _editorViewer = [StoreMemberRole.editor, StoreMemberRole.viewer];
const _ownerOnly = <StoreMemberRole>[];

/// Whether [role]'s ceiling includes [permission] (before scope narrowing).
bool roleAllowsPermission(StoreMemberRole role, StorePermission permission) {
  return permission.roles.contains(role);
}

/// Whether [member] is currently usable at all: not explicitly deactivated
/// and not past [StoreMember.expiredAt].
bool memberIsActive(StoreMember? member) {
  if (member == null) return false;
  if (!member.active) return false;
  final expiredAt = member.expiredAt;
  if (expiredAt != null && !expiredAt.isAfter(DateTime.now())) return false;
  return true;
}

/// Member-layer decision: active member + role ceiling + scope narrowing.
///
/// Mirrors the API's `memberAllowsPermission` — empty scopes = legacy full
/// access within the role ceiling.
bool memberAllowsPermission(StoreMember? member, StorePermission permission) {
  if (member == null) return false;
  if (!memberIsActive(member)) return false;
  if (!roleAllowsPermission(member.role, permission)) return false;
  return memberHasScope(member, permission.scope);
}

/// Store permission checks for the signed-in user (owner → member matrix).
///
/// Prefer these over raw [AuthResponseExtension.hasScope] when gating **write**
/// actions: `hasScope` has no role ceiling, so a viewer with legacy empty
/// scopes would look writable.
extension StorePermissionAccess<T extends Model> on AuthResponse<T> {
  /// Whether the signed-in user holds [permission] on [store].
  bool canOnStore(Store store, StorePermission permission) {
    if (isOwner(store)) return true;
    return memberAllowsPermission(store.members[user.id], permission);
  }

  /// Whether the signed-in user holds at least one of [permissions] on [store].
  bool canAnyOnStore(Store store, List<StorePermission> permissions) {
    if (isOwner(store)) return true;
    final member = store.members[user.id];
    return permissions.any((p) => memberAllowsPermission(member, p));
  }

  /// List/date AI filters — billed to the caller. Any catalog/order read
  /// (or store chrome) is enough; mirrors API `AI_FILTER_PERMISSIONS`.
  bool canUseAiFilter(Store store) {
    return canAnyOnStore(store, const [
      StorePermission.ordersRead,
      StorePermission.productsRead,
      StorePermission.shippingPricesRead,
      StorePermission.inventoryRead,
      StorePermission.financeRead,
      StorePermission.productLandingPagesRead,
      StorePermission.categoriesRead,
      StorePermission.storeRead,
    ]);
  }
}
