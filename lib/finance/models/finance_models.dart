// Finance domain models (Phase 1: procurement) — match backend API shapes.
//
// All entities are project-scoped. Money values are decimal(14,2) on the server
// and arrive as numbers; parsed here to [double].

import 'package:feeef/interfaces/helpers.dart';

double _toDouble(dynamic v) =>
    v == null ? 0 : (v is num ? v.toDouble() : double.tryParse(v.toString()) ?? 0);

int _toInt(dynamic v) =>
    v == null ? 0 : (v is num ? v.toInt() : int.tryParse(v.toString()) ?? 0);

// ─── Supplier ────────────────────────────────────────────────────────────────

class Supplier implements Model {
  @override
  final String id;
  final String projectId;
  final String name;
  final String? code;
  final String? phone;
  final String? email;
  final String? taxId;
  final Map<String, dynamic>? address;
  final String? paymentTerms;
  final Map<String, dynamic> metadata;
  final DateTime createdAt;
  final DateTime updatedAt;

  Supplier({
    required this.id,
    required this.projectId,
    required this.name,
    this.code,
    this.phone,
    this.email,
    this.taxId,
    this.address,
    this.paymentTerms,
    this.metadata = const {},
    required this.createdAt,
    required this.updatedAt,
  });

  factory Supplier.fromJson(Map<String, dynamic> json) => Supplier(
        id: json['id'] as String,
        projectId: json['projectId'] as String,
        name: json['name'] as String,
        code: json['code'] as String?,
        phone: json['phone'] as String?,
        email: json['email'] as String?,
        taxId: json['taxId'] as String?,
        address: json['address'] as Map<String, dynamic>?,
        paymentTerms: json['paymentTerms'] as String?,
        metadata: (json['metadata'] as Map?)?.cast<String, dynamic>() ?? const {},
        createdAt: DateTime.parse(json['createdAt'] as String),
        updatedAt: DateTime.parse(json['updatedAt'] as String),
      );

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'code': code};
}

class SupplierCreate implements ModelCreate {
  final String projectId;
  final String name;
  final String? code;
  final String? phone;
  final String? email;
  final String? taxId;
  final Map<String, dynamic>? address;
  final String? paymentTerms;
  final Map<String, dynamic>? metadata;

  const SupplierCreate({
    required this.projectId,
    required this.name,
    this.code,
    this.phone,
    this.email,
    this.taxId,
    this.address,
    this.paymentTerms,
    this.metadata,
  });

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'name': name,
        if (code != null) 'code': code,
        if (phone != null) 'phone': phone,
        if (email != null) 'email': email,
        if (taxId != null) 'taxId': taxId,
        if (address != null) 'address': address,
        if (paymentTerms != null) 'paymentTerms': paymentTerms,
        if (metadata != null) 'metadata': metadata,
      };
}

class SupplierUpdate implements ModelUpdate {
  final String? name;
  final String? code;
  final String? phone;
  final String? email;
  final String? taxId;
  final Map<String, dynamic>? address;
  final String? paymentTerms;
  final Map<String, dynamic>? metadata;

  const SupplierUpdate({
    this.name,
    this.code,
    this.phone,
    this.email,
    this.taxId,
    this.address,
    this.paymentTerms,
    this.metadata,
    this.setToNull = const [],
  });

  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'code': code,
        'phone': phone,
        'email': email,
        'taxId': taxId,
        'address': address,
        'paymentTerms': paymentTerms,
        'metadata': metadata,
      };
}

// ─── Purchase order ──────────────────────────────────────────────────────────

class PurchaseOrderItem {
  final String sku;
  final String? productId;
  final String variantPath;
  final int qtyOrdered;
  final int qtyReceived;
  final double unitCost;
  final String? warehouseId;
  final String? batch;

  const PurchaseOrderItem({
    required this.sku,
    this.productId,
    this.variantPath = '',
    required this.qtyOrdered,
    this.qtyReceived = 0,
    required this.unitCost,
    this.warehouseId,
    this.batch,
  });

  factory PurchaseOrderItem.fromJson(Map<String, dynamic> json) =>
      PurchaseOrderItem(
        sku: json['sku'] as String,
        productId: json['productId'] as String?,
        variantPath: json['variantPath'] as String? ?? '',
        qtyOrdered: _toInt(json['qtyOrdered']),
        qtyReceived: _toInt(json['qtyReceived']),
        unitCost: _toDouble(json['unitCost']),
        warehouseId: json['warehouseId'] as String?,
        batch: json['batch'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'sku': sku,
        if (productId != null) 'productId': productId,
        'variantPath': variantPath,
        'qtyOrdered': qtyOrdered,
        'qtyReceived': qtyReceived,
        'unitCost': unitCost,
        if (warehouseId != null) 'warehouseId': warehouseId,
        if (batch != null) 'batch': batch,
      };
}

/// PO lifecycle: draft → sent → partial → received (or cancelled).
enum PurchaseOrderStatus { draft, sent, partial, received, cancelled }

PurchaseOrderStatus _poStatusFrom(String? v) => PurchaseOrderStatus.values
    .firstWhere((e) => e.name == v, orElse: () => PurchaseOrderStatus.draft);

class PurchaseOrder implements Model {
  @override
  final String id;
  final String projectId;
  final String supplierId;
  final PurchaseOrderStatus status;
  final String? reference;
  final DateTime? expectedAt;
  final String? notes;
  final List<PurchaseOrderItem> items;
  final String? currency;
  final double subtotal;
  final DateTime createdAt;
  final DateTime updatedAt;

  PurchaseOrder({
    required this.id,
    required this.projectId,
    required this.supplierId,
    required this.status,
    this.reference,
    this.expectedAt,
    this.notes,
    this.items = const [],
    this.currency,
    this.subtotal = 0,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PurchaseOrder.fromJson(Map<String, dynamic> json) {
    final rawItems = json['items'];
    final items = rawItems is List
        ? rawItems
            .whereType<Map>()
            .map((e) => PurchaseOrderItem.fromJson(Map<String, dynamic>.from(e)))
            .toList()
        : <PurchaseOrderItem>[];
    return PurchaseOrder(
      id: json['id'] as String,
      projectId: json['projectId'] as String,
      supplierId: json['supplierId'] as String,
      status: _poStatusFrom(json['status'] as String?),
      reference: json['reference'] as String?,
      expectedAt: json['expectedAt'] != null
          ? DateTime.tryParse(json['expectedAt'] as String)
          : null,
      notes: json['notes'] as String?,
      items: items,
      currency: json['currency'] as String?,
      subtotal: _toDouble(json['subtotal']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'supplierId': supplierId};
}

class PurchaseOrderCreate implements ModelCreate {
  final String projectId;
  final String supplierId;
  final String? reference;
  final DateTime? expectedAt;
  final String? notes;
  final List<PurchaseOrderItem> items;
  final String? currency;

  const PurchaseOrderCreate({
    required this.projectId,
    required this.supplierId,
    this.reference,
    this.expectedAt,
    this.notes,
    this.items = const [],
    this.currency,
  });

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'supplierId': supplierId,
        if (reference != null) 'reference': reference,
        if (expectedAt != null) 'expectedAt': expectedAt!.toIso8601String(),
        if (notes != null) 'notes': notes,
        'items': items.map((e) => e.toJson()).toList(),
        if (currency != null) 'currency': currency,
      };
}

class PurchaseOrderUpdate implements ModelUpdate {
  final String? reference;
  final DateTime? expectedAt;
  final String? notes;
  final List<PurchaseOrderItem>? items;
  final String? currency;

  const PurchaseOrderUpdate({
    this.reference,
    this.expectedAt,
    this.notes,
    this.items,
    this.currency,
    this.setToNull = const [],
  });

  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {
        'reference': reference,
        'expectedAt': expectedAt?.toIso8601String(),
        'notes': notes,
        'items': items?.map((e) => e.toJson()).toList(),
        'currency': currency,
      };
}

// ─── Purchase receipt ─────────────────────────────────────────────────────────

enum PurchaseReceiptStatus { draft, posted, voided }

PurchaseReceiptStatus _receiptStatusFrom(String? v) =>
    PurchaseReceiptStatus.values
        .firstWhere((e) => e.name == v, orElse: () => PurchaseReceiptStatus.draft);

class PurchaseReceiptLine {
  final String id;
  final String purchaseReceiptId;
  final int lineNo;
  final String sku;
  final String? productId;
  final String variantPath;
  final String batch;
  final String? inventoryObjectId;
  final int qtyReceived;
  final double unitCost;
  final double lineTotal;
  final int? poLineIndex;

  const PurchaseReceiptLine({
    required this.id,
    required this.purchaseReceiptId,
    required this.lineNo,
    required this.sku,
    this.productId,
    this.variantPath = '',
    required this.batch,
    this.inventoryObjectId,
    required this.qtyReceived,
    required this.unitCost,
    required this.lineTotal,
    this.poLineIndex,
  });

  factory PurchaseReceiptLine.fromJson(Map<String, dynamic> json) =>
      PurchaseReceiptLine(
        id: json['id'] as String,
        purchaseReceiptId: json['purchaseReceiptId'] as String? ?? '',
        lineNo: _toInt(json['lineNo']),
        sku: json['sku'] as String,
        productId: json['productId'] as String?,
        variantPath: json['variantPath'] as String? ?? '',
        batch: json['batch'] as String? ?? '',
        inventoryObjectId: json['inventoryObjectId'] as String?,
        qtyReceived: _toInt(json['qtyReceived']),
        unitCost: _toDouble(json['unitCost']),
        lineTotal: _toDouble(json['lineTotal']),
        poLineIndex: json['poLineIndex'] == null
            ? null
            : _toInt(json['poLineIndex']),
      );
}

class PurchaseReceipt implements Model {
  @override
  final String id;
  final String projectId;
  final String supplierId;
  final String? purchaseOrderId;
  final String? warehouseId;
  final PurchaseReceiptStatus status;
  final String? reference;
  final DateTime receivedAt;
  final DateTime? postedAt;
  final DateTime? voidedAt;
  final String? notes;
  final double totalCost;
  final List<PurchaseReceiptLine> lines;

  bool get isPosted => status == PurchaseReceiptStatus.posted;

  PurchaseReceipt({
    required this.id,
    required this.projectId,
    required this.supplierId,
    this.purchaseOrderId,
    this.warehouseId,
    required this.status,
    this.reference,
    required this.receivedAt,
    this.postedAt,
    this.voidedAt,
    this.notes,
    this.totalCost = 0,
    this.lines = const [],
  });

  factory PurchaseReceipt.fromJson(Map<String, dynamic> json) {
    final rawLines = json['lines'];
    final lines = rawLines is List
        ? rawLines
            .whereType<Map>()
            .map((e) =>
                PurchaseReceiptLine.fromJson(Map<String, dynamic>.from(e)))
            .toList()
        : <PurchaseReceiptLine>[];
    return PurchaseReceipt(
      id: json['id'] as String,
      projectId: json['projectId'] as String,
      supplierId: json['supplierId'] as String,
      purchaseOrderId: json['purchaseOrderId'] as String?,
      warehouseId: json['warehouseId'] as String?,
      status: _receiptStatusFrom(json['status'] as String?),
      reference: json['reference'] as String?,
      receivedAt: json['receivedAt'] != null
          ? DateTime.parse(json['receivedAt'] as String)
          : DateTime.now(),
      postedAt: json['postedAt'] != null
          ? DateTime.tryParse(json['postedAt'] as String)
          : null,
      voidedAt: json['voidedAt'] != null
          ? DateTime.tryParse(json['voidedAt'] as String)
          : null,
      notes: json['notes'] as String?,
      totalCost: _toDouble(json['totalCost']),
      lines: lines,
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'supplierId': supplierId};
}

class PurchaseReceiptLineInput {
  final String sku;
  final String? productId;
  final String? variantPath;
  final String? batch;
  final int qtyReceived;
  final double unitCost;
  final int? poLineIndex;

  const PurchaseReceiptLineInput({
    required this.sku,
    this.productId,
    this.variantPath,
    this.batch,
    required this.qtyReceived,
    required this.unitCost,
    this.poLineIndex,
  });

  Map<String, dynamic> toJson() => {
        'sku': sku,
        if (productId != null) 'productId': productId,
        if (variantPath != null) 'variantPath': variantPath,
        if (batch != null) 'batch': batch,
        'qtyReceived': qtyReceived,
        'unitCost': unitCost,
        if (poLineIndex != null) 'poLineIndex': poLineIndex,
      };
}

class PurchaseReceiptCreate implements ModelCreate {
  final String projectId;
  final String supplierId;
  final String? purchaseOrderId;
  final String? warehouseId;
  final String? reference;
  final DateTime? receivedAt;
  final String? notes;
  final List<PurchaseReceiptLineInput> lines;

  const PurchaseReceiptCreate({
    required this.projectId,
    required this.supplierId,
    this.purchaseOrderId,
    this.warehouseId,
    this.reference,
    this.receivedAt,
    this.notes,
    required this.lines,
  });

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'supplierId': supplierId,
        if (purchaseOrderId != null) 'purchaseOrderId': purchaseOrderId,
        if (warehouseId != null) 'warehouseId': warehouseId,
        if (reference != null) 'reference': reference,
        if (receivedAt != null) 'receivedAt': receivedAt!.toIso8601String(),
        if (notes != null) 'notes': notes,
        'lines': lines.map((e) => e.toJson()).toList(),
      };
}

/// Receipts are immutable post-create; this exists only to satisfy the
/// [ResourceRepository] update type parameter.
class PurchaseReceiptUpdate implements ModelUpdate {
  const PurchaseReceiptUpdate({this.setToNull = const []});

  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {};
}
