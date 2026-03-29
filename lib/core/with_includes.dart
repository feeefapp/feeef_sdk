/// Optional API side-load keys for list/show `with` query (e.g. `?with[]=lor`).
abstract final class FeeefWithIncludes {
  static const String lor = 'lor';

  /// Spread into [StoreRepository.list], [ProductRepository.list], etc. `params`.
  static Map<String, dynamic> withKeys(List<String> keys) => {'with': keys};
}
