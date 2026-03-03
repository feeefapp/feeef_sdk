abstract class ProductLandingPageEntity {
  String get id;
  String get name;
  String? get description;
  String? get templateId;
  Map<String, dynamic>? get schema;
  Map<String, dynamic> get defaults;
  DateTime get createdAt;
  DateTime get updatedAt;
}
