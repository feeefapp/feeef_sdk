import '../feeef.dart';
import 'models/category.dart';

/// Repository for managing categories
/// Simple CRUD operations like products
class CategoryRepository extends ModelRepository<Category>
    with
        ModelCreateMixin<Category, CategoryCreate>,
        ModelListMixin<Category>,
        ModelUpdateMixin<Category, CategoryUpdate>,
        ModelDeleteMixin<Category> {
  CategoryRepository({required super.client}) : super(table: 'categories');

  @override
  CategoryCreate createFromJson(json) => CategoryCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(CategoryCreate model) => model.toJson();

  @override
  Category modelFromJson(json) => Category.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(Category model) => model.toJson();

  @override
  CategoryUpdate updateFromJson(json) => CategoryUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(CategoryUpdate model) => model.toJson();
}
