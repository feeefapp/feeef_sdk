import 'package:feeef/interfaces/template_component.dart';

/// Contract for a `store_templates` row (full-site template package).
abstract class StoreTemplateEntity {
  const StoreTemplateEntity();

  String get id;
  String get storeId;
  String get userId;

  String get title;
  String? get subtitle;
  String? get body;
  String? get category;
  List<String> get tags;
  String? get imageUrl;
  List<String> get screenshots;
  String? get demoUrl;

  num get price;
  num? get discount;
  String? get license;

  Map<String, dynamic> get schema;
  Map<String, dynamic> get data;

  TemplateComponentPolicy get policy;
  String? get parentId;
  int get version;

  DateTime get createdAt;
  DateTime? get updatedAt;
  DateTime? get deletedAt;
}
