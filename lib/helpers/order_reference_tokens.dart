/// Tokens for [Order.references] (must match backend / feeefjs).

String formatProductOrderReference(String productId) => 'product:$productId';

String formatProductLandingPageOrderReference(String landingPageId) =>
    'product_landing_page:$landingPageId';
