abstract class CategoryEntity {
  String get id;
  String get storeId;
  String? get parentId;
  String get name;
  String? get description;
  String? get photoUrl;
  Map<String, dynamic> get metadata;
  CategoryEntity? get parent;
  List<CategoryEntity>? get children;
  DateTime get createdAt;
  DateTime get updatedAt;
}
