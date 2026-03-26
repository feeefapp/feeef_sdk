import 'package:feeef/interfaces/order.dart';

/// Line item on a shipment (mirrors backend `ParcelLineItem`).
class ParcelLineItem {
  const ParcelLineItem({
    required this.name,
    required this.quantity,
    this.price,
    this.variantPath,
  });

  final String name;
  final int quantity;
  final double? price;
  final String? variantPath;
}

/// Recipient identity (mirrors backend `ParcelContact`).
class ParcelContact {
  const ParcelContact({
    this.firstName,
    this.lastName,
    this.phones = const [],
    this.emails = const [],
  });

  final String? firstName;
  final String? lastName;
  final List<String> phones;
  final List<String> emails;

  String get displayName {
    final a = firstName?.trim() ?? '';
    final b = lastName?.trim() ?? '';
    final s = '$a $b'.trim();
    return s.isEmpty ? 'Client' : s;
  }

  ParcelContact copyWith({
    String? firstName,
    String? lastName,
    List<String>? phones,
    List<String>? emails,
  }) {
    return ParcelContact(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phones: phones ?? this.phones,
      emails: emails ?? this.emails,
    );
  }
}

/// Canonical address: **cityCode** is the commune / city code (not a parallel free-text city name).
/// Optional `extensions['ecotrackCommuneLabel']` on [ParcelCreate] can hold a display label.
class ParcelAddress {
  const ParcelAddress({
    required this.street,
    this.cityCode,
    this.stateCode,
    this.country,
    this.note,
  });

  final String? street;
  final String? cityCode;
  final String? stateCode;
  final String? country;
  final String? note;

  ParcelAddress copyWith({
    String? street,
    String? cityCode,
    String? stateCode,
    String? country,
    String? note,
  }) {
    return ParcelAddress(
      street: street ?? this.street,
      cityCode: cityCode ?? this.cityCode,
      stateCode: stateCode ?? this.stateCode,
      country: country ?? this.country,
      note: note ?? this.note,
    );
  }
}

/// SI-first dimension unit for parcel dimensions.
enum ParcelDimensionUnit { cm, m, in_ }

/// Mass unit (distinct from COD).
enum ParcelWeightUnit { kg, g, lb, oz }

/// Physical package metadata (mirrors backend `ParcelPackage`).
class ParcelPackage {
  const ParcelPackage({
    this.width,
    this.height,
    this.length,
    this.weight,
    this.fragile,
    this.dimensionUnit,
    this.weightUnit,
  });

  final double? width;
  final double? height;
  final double? length;
  final double? weight;
  final bool? fragile;
  final ParcelDimensionUnit? dimensionUnit;
  final ParcelWeightUnit? weightUnit;
}

/// Platform shipment category literals (mirrors backend `ParcelType`).
/// On [ParcelCreate] this is the field `type` (not [ShippingType]).
abstract final class ParcelTypes {
  static const String forward = 'forward';
  static const String return_ = 'return';
  static const String exchange = 'exchange';
}

/// Partial update for an existing carrier shipment (mirrors backend `ParcelUpdate`).
class ParcelUpdate {
  const ParcelUpdate({
    required this.carrierId,
    this.contact,
    this.address,
    this.total,
    this.notes,
    this.summary,
    this.package,
    this.items,
    this.shippingType,
    this.extensions = const {},
  });

  final String carrierId;
  final ParcelContact? contact;
  final ParcelAddress? address;
  final double? total;
  final String? notes;
  final String? summary;
  final ParcelPackage? package;
  final List<ParcelLineItem>? items;
  final ShippingType? shippingType;
  final Map<String, dynamic> extensions;
}

/// Canonical parcel for carrier send operations (mirrors backend `ParcelCreate`).
///
/// Prefer [fromStock], [canOpen], and [type] for carrier bodies that support them (e.g. Ecotrack
/// `stock` / `can_open` / `type`); legacy payloads may still use `extensions['ecotrack'][...]` when omitted.
class ParcelCreate {
  const ParcelCreate({
    required this.storeId,
    required this.externalReference,
    required this.contact,
    required this.address,
    required this.total,
    required this.items,
    required this.summary,
    this.itemsPrice,
    this.declaredValue,
    this.shippingType,
    this.shippingPrice,
    this.freeShipping,
    this.pickupId,
    this.fromStock,
    this.canOpen,
    this.notes,
    this.metadata,
    this.extensions = const {},
    this.package,
    this.type,
  });

  final String storeId;
  final String externalReference;
  final ParcelContact contact;
  final ParcelAddress address;
  final double total;
  final double? itemsPrice;
  final double? declaredValue;
  final ShippingType? shippingType;
  final double? shippingPrice;
  final bool? freeShipping;
  final String? pickupId;
  /// Merchant stock vs net/dropship where the carrier supports it (backend `DeliveryCapabilities.parcelStock`).
  final bool? fromStock;
  /// When set, maps to Ecotrack `can_open` (1 = allowed, 0 = not). Omitted / null defers to extensions.
  final bool? canOpen;
  final List<ParcelLineItem> items;
  final String summary;
  final String? notes;
  final Map<String, dynamic>? metadata;
  final Map<String, dynamic> extensions;
  final ParcelPackage? package;
  /// One of [ParcelTypes.forward], [ParcelTypes.return_], [ParcelTypes.exchange].
  final String? type;

  ParcelCreate copyWith({
    String? storeId,
    String? externalReference,
    ParcelContact? contact,
    ParcelAddress? address,
    double? total,
    double? itemsPrice,
    double? declaredValue,
    ShippingType? shippingType,
    double? shippingPrice,
    bool? freeShipping,
    String? pickupId,
    bool? fromStock,
    bool? canOpen,
    List<ParcelLineItem>? items,
    String? summary,
    String? notes,
    Map<String, dynamic>? metadata,
    Map<String, dynamic>? extensions,
    ParcelPackage? package,
    String? type,
  }) {
    return ParcelCreate(
      storeId: storeId ?? this.storeId,
      externalReference: externalReference ?? this.externalReference,
      contact: contact ?? this.contact,
      address: address ?? this.address,
      total: total ?? this.total,
      itemsPrice: itemsPrice ?? this.itemsPrice,
      declaredValue: declaredValue ?? this.declaredValue,
      shippingType: shippingType ?? this.shippingType,
      shippingPrice: shippingPrice ?? this.shippingPrice,
      freeShipping: freeShipping ?? this.freeShipping,
      pickupId: pickupId ?? this.pickupId,
      fromStock: fromStock ?? this.fromStock,
      canOpen: canOpen ?? this.canOpen,
      items: items ?? this.items,
      summary: summary ?? this.summary,
      notes: notes ?? this.notes,
      metadata: metadata ?? this.metadata,
      extensions: extensions ?? this.extensions,
      package: package ?? this.package,
      type: type ?? this.type,
    );
  }
}

/// Joins line item quantities like backend `parcelLineItemsQuantitiesJoin` / Ecotrack `quantite`.
String parcelLineItemsQuantitiesJoin(List<ParcelLineItem> items) {
  if (items.isEmpty) return '';
  return items.map((i) => i.quantity.toString()).join(', ');
}

/// `@Deprecated` alias for [ParcelCreate] during SDK migration.
@Deprecated('Use ParcelCreate')
typedef ParcelCreateRequest = ParcelCreate;
