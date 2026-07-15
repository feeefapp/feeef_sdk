/// Converts [text] into a URL-friendly slug (lowercase, hyphens, letters and digits).
String slugify(String text) {
  text = text
      .replaceAll("-", " ")
      .replaceAll("_", " ")
      // Keep Arabic letters, Arabic-Indic digits, Latin letters, and ASCII digits.
      .replaceAll(RegExp(r'[^\u0621-\u064A\u0660-\u0669a-zA-Z0-9\s]'), '')
      // Replace spaces with hyphens
      .replaceAll(RegExp(r'\s+'), '-')
      // Remove leading and trailing hyphens
      .trim()
      .replaceAll(RegExp(r'(^-|-$)'), '')
      // Convert to lowercase
      .toLowerCase();

  return text;
}
