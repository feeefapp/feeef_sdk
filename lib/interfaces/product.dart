import 'package:feeef/interfaces/embadded/embadded_category.dart';
import 'package:feeef/interfaces/embadded/product_addon.dart';

import '../products/models/product.dart';
import 'embadded/product_variant.dart';
export 'embadded/product_variant.dart';

abstract class ProductEntity {
  String get id;
  String get slug;
  ProductDecoration? get decoration;
  String? get name;
  String? get photoUrl;
  List<String> get media;
  String get storeId;
  String? get categoryId;
  EmbaddedCategory? get category;
  String? get title;
  String? get description;
  String? get body;
  String? get sku;
  num get price;
  num? get cost;
  num? get discount;
  num? get stock;
  num get sold;
  num get views;
  num get likes;
  num get dislikes;
  ProductVariant? get variant;
  List<ProductOffer>? get offers;
  List<ProductAddon>? get addons;
  ProductStatus get status;
  ProductType get type;
  IntegrationsDataEntity? get integrationsData;
  DateTime? get verifiedAt;
  DateTime? get blockedAt;
  Map<String, dynamic> get metadata;
}

// export interface IntegrationsData {
//   metaPixelData?: MetaPixelData | null
//   tiktokPixelData?: TiktokPixelData | null
//   googleAnalyticsData?: GoogleAnalyticsData | null
//   googleTagsData?: GoogleTagData | null
//   googleSheetsData?: GoogleSheetsData | null
// }

abstract class IntegrationsDataEntity {
  MetaPixelDataEntity? get metaPixelData;
  TiktokPixelDataEntity? get tiktokPixelData;
  // GoogleAnalyticsData? get googleAnalyticsData;
  // GoogleTagData? get googleTagsData;
  GoogleSheetsDataEntity? get googleSheetsData;
  PaymentMethodDataEntity? get paymentMethodData;
}

// BaseIntegrationEntity
abstract class BaseIntegrationEntity {
  bool get enabled;
}

// export enum MetaPixelEvent {
//   lead = 'Lead',
//   purchase = 'Purchase',
//   viewContent = 'ViewContent',
//   addToCart = 'AddToCart',
//   initiateCheckout = 'InitiateCheckout',
// }
// export interface MetaPixelData {
//   // active meta pixel ids
//   ids: string[] | null
//   // main objective
//   objective: MetaPixelEvent | null
//   // draft objective
//   draftObjective: MetaPixelEvent | null
// }
enum MetaPixelEvent {
  // none is used to not send any data to meta pixel
  none,
  lead,
  purchase,
  viewContent,
  addToCart,
  initiateCheckout;

  String get tr => switch (this) {
    none => 'غير محدد',
    lead => 'تسجيل طلب',
    purchase => 'شراء',
    viewContent => 'عرض محتوى',
    addToCart => 'إضافة إلى السلة',
    initiateCheckout => 'تهيئة الدفع',
  };

  String get name => switch (this) {
    none => 'None',
    lead => 'Lead',
    purchase => 'Purchase',
    viewContent => 'ViewContent',
    addToCart => 'AddToCart',
    initiateCheckout => 'InitiateCheckout',
  };
}

enum TiktokPixelEvent {
  none,
  viewContent,
  addToWishlist,
  search,
  addPaymentInfo,
  addToCart,
  initiateCheckout,
  placeAnOrder,
  completeRegistration,
  purchase;

  String get tr => switch (this) {
    none => 'غير محدد',
    viewContent => 'عرض محتوى',
    addToWishlist => 'إضافة إلى قائمة الرغبات',
    search => 'بحث',
    addPaymentInfo => 'إضافة معلومات الدفع',
    addToCart => 'إضافة إلى السلة',
    initiateCheckout => 'تهيئة الدفع',
    placeAnOrder => 'تقديم طلب',
    completeRegistration => 'إكمال التسجيل',
    purchase => 'شراء',
  };

  String get name => switch (this) {
    none => 'None',
    viewContent => 'ViewContent',
    addToWishlist => 'AddToWishlist',
    search => 'Search',
    addPaymentInfo => 'AddPaymentInfo',
    addToCart => 'AddToCart',
    initiateCheckout => 'InitiateCheckout',
    placeAnOrder => 'PlaceAnOrder',
    completeRegistration => 'CompleteRegistration',
    purchase => 'Purchase',
  };
}

abstract class MetaPixelDataEntity extends BaseIntegrationEntity {
  @override
  bool get enabled;
  List<String>? get ids;
  MetaPixelEvent? get objective;
  MetaPixelEvent? get draftObjective;
}

abstract class TiktokPixelDataEntity extends BaseIntegrationEntity {
  @override
  bool get enabled;
  List<String>? get ids;
  TiktokPixelEvent? get objective;
  TiktokPixelEvent? get draftObjective;
}

// export interface GoogleSheetsData {
//   enabled: boolean
//   // use cant use both sheetId and sheetName
//   sheetId: string | null
//   // if sheetId is null, use sheetName
//   // if sheetName not exists in the spreadsheet, create it
//   sheetName: string | null
//   spreadsheetId: string | null
//   // the next row to insert data
//   nextRow: number | null
// }
abstract class GoogleSheetsDataEntity extends BaseIntegrationEntity {
  @override
  bool get enabled;
  String? get sheetId;
  String? get sheetName;
  String? get spreadsheetId;
  int? get nextRow;
}

abstract class PaymentMethodDataEntity extends BaseIntegrationEntity {
  @override
  bool get enabled;
  List<String>
  get methodIds; // Which payment method IDs to use (optional, falls back to store defaults)
}

enum ProductStatus { draft, published, archived, unlisted }

enum VariantOptionType { color, image, text }

enum ProductType { physical, digital, service }

typedef ProductDecoration = dynamic;

// abstract class ProductDecoration {
//   Map<String, dynamic> get metadata;
// }

// abstract class ProductVariant {
//   String get name;
//   List<ProductVariantOption> get options;
// }

// abstract class ProductVariantOption {
//   String get name;
//   String? get sku;
//   num? get price;
//   num? get discount;
//   num? get stock;
//   num? get sold;
//   VariantOptionType? get type;
//   ProductVariant? get child;
//   num? get mediaIndex;
//   String? get hint;
// }
