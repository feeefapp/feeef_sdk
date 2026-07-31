import 'package:feeef/interfaces/embadded/member_scope.dart';

/// Merchant store chrome available to [StoreMemberRole.confermer] members.
///
/// Confirmers are a **role-defined workspace**, not an empty-scopes legacy
/// editor. They may open products, orders, and confirmation (in-shell and the
/// global multi-store queue). Everything else (overview, settings,
/// integrations, analytics, …) is out of scope for the role.
///
/// Use via [AuthResponse.hasScope] / [AuthResponse.deniedStorePathRedirect] so
/// router redirects and nav visibility share one policy.
abstract final class ConfermerWorkspace {
  /// Scopes the confirmer role implies for merchant UI + client-side gates.
  ///
  /// Write scopes are intentionally omitted — confirmers browse products and
  /// work orders/confirmation; create/edit FABs stay owner/editor-only.
  static const Set<String> impliedScopes = {
    MemberScope.orders,
    MemberScope.ordersRead,
    MemberScope.products,
    MemberScope.productsRead,
    // Product list filters / category chips on the products page.
    MemberScope.categoriesRead,
  };

  /// Default landing when a confirmer opens a store or hits a denied path.
  static String landingPath(String storeId) =>
      '/stores/$storeId/confirmation';

  /// Whether [requiredScope] is part of the confirmer workspace.
  static bool impliesScope(String requiredScope) =>
      impliedScopes.contains(requiredScope);

  /// Global multi-store confirmation queue (outside the store shell).
  static bool isGlobalConfirmationPath(String path) =>
      path == '/confirmation' || path.startsWith('/confirmation/');

  /// Whether [path] is inside the confirmer store workspace for [storeId].
  ///
  /// Matches nested product/order/confirmation routes (detail, edit, …).
  static bool isAllowedStorePath(String path, String storeId) {
    if (isGlobalConfirmationPath(path)) return true;
    final base = '/stores/$storeId';
    return path.startsWith('$base/products') ||
        path.startsWith('$base/orders') ||
        path.startsWith('$base/confirmation');
  }
}
