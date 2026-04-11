import 'package:feeef/interfaces/embadded/store.dart';

/// Canonical member RBAC scope strings (aligned with API `StoreMember.scopes`).
/// Names follow API resources (e.g. `product_landing_pages`, `shipping_prices`).
abstract final class MemberScope {
  static const store = 'store';
  static const storeRead = 'store.read';
  static const storeSettings = 'store.settings';
  static const storeIntegrations = 'store.integrations';
  static const storeMembers = 'store.members';

  static const orders = 'orders';
  static const ordersRead = 'orders.read';

  static const products = 'products';
  static const productsRead = 'products.read';

  static const categories = 'categories';
  static const categoriesRead = 'categories.read';

  /// CMS / site pages (resource `pages`).
  static const pages = 'pages';
  static const pagesRead = 'pages.read';

  /// Product landing pages (resource `product_landing_pages`).
  static const productLandingPages = 'product_landing_pages';
  static const productLandingPagesRead = 'product_landing_pages.read';

  static const shippingPrices = 'shipping_prices';
  static const shippingPricesRead = 'shipping_prices.read';

  static const wildcard = '*';

  static const List<String> all = [
    store,
    storeRead,
    storeSettings,
    storeIntegrations,
    storeMembers,
    orders,
    ordersRead,
    products,
    productsRead,
    categories,
    categoriesRead,
    pages,
    pagesRead,
    productLandingPages,
    productLandingPagesRead,
    shippingPrices,
    shippingPricesRead,
    wildcard,
  ];
}

/// Whether [scopes] is empty or null, meaning **legacy unrestricted** access for that member.
bool memberScopesAreLegacyUnrestricted(List<String>? scopes) =>
    scopes == null || scopes.isEmpty;

List<String> _expandLegacyMemberScopes(List<String> scopes) {
  final out = {...scopes};
  if (out.contains('shipping')) out.add(MemberScope.shippingPrices);
  if (out.contains('shipping.read')) out.add(MemberScope.shippingPricesRead);
  if (out.contains('shipping_methods')) out.add(MemberScope.shippingPrices);
  if (out.contains('shipping_methods.read')) {
    out.add(MemberScope.shippingPricesRead);
  }
  return out.toList();
}

/// Whether [member] has [required] scope, including hierarchy (`orders` ⇒ `orders.read`, `store` ⇒ all).
bool memberHasScope(StoreMember? member, String required) {
  if (member == null) return false;
  final scopes = member.scopes;
  if (memberScopesAreLegacyUnrestricted(scopes)) return true;
  final expanded = _expandLegacyMemberScopes(scopes);
  if (expanded.contains(MemberScope.wildcard)) return true;
  if (expanded.contains(MemberScope.store)) return true;
  if (expanded.contains(required)) return true;
  final dot = required.indexOf('.');
  if (dot > 0) {
    final parent = required.substring(0, dot);
    if (expanded.contains(parent)) return true;
  }
  return false;
}
