String slugify(String text) {
  text = text
      .replaceAll("-", " ")
      .replaceAll("_", " ")
      // Replace Arabic and French diacritics
      .replaceAll(RegExp(r'[^\u0621-\u064A\u0660-\u0669a-zA-Z\s]'), '')
      // Replace spaces with hyphens
      .replaceAll(RegExp(r'\s+'), '-')
      // Remove leading and trailing hyphens
      .trim()
      .replaceAll(RegExp(r'(^-|-$)'), '')
      // Convert to lowercase
      .toLowerCase();

  return text;
}
