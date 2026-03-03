/// Extension to provide [nullIfEmpty] on String (used by SDK and integrations).
extension StringNullIfEmpty on String {
  String? get nullIfEmpty => isEmpty ? null : this;
}
