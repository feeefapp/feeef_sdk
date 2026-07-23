// Finance domain models (Phase 1: procurement) — match backend API shapes.
//
// All entities are project-scoped. Money values are decimal(14,2) on the server
// and arrive as numbers; parsed here to [double].

import 'dart:convert';

import 'package:feeef/interfaces/helpers.dart';

double _toDouble(dynamic v) =>
    v == null ? 0 : (v is num ? v.toDouble() : double.tryParse(v.toString()) ?? 0);

int _toInt(dynamic v) =>
    v == null ? 0 : (v is num ? v.toInt() : int.tryParse(v.toString()) ?? 0);

DateTime _parseFinanceDate(dynamic v) {
  if (v == null) return DateTime.now();
  if (v is DateTime) return v;
  if (v is String && v.isNotEmpty) return DateTime.parse(v);
  return DateTime.now();
}

Map<String, dynamic>? _mapOrNull(dynamic v) {
  if (v == null) return null;
  if (v is Map) return Map<String, dynamic>.from(v);
  if (v is String && v.isNotEmpty) {
    try {
      final parsed = jsonDecode(v);
      if (parsed is Map) return Map<String, dynamic>.from(parsed);
    } catch (_) {}
  }
  return null;
}

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
        id: json['id']?.toString() ?? '',
        projectId: (json['projectId'] ?? json['project_id'])?.toString() ?? '',
        name: json['name']?.toString() ?? '',
        code: json['code']?.toString(),
        phone: json['phone']?.toString(),
        email: json['email']?.toString(),
        taxId: (json['taxId'] ?? json['tax_id'])?.toString(),
        address: _mapOrNull(json['address']),
        paymentTerms: (json['paymentTerms'] ?? json['payment_terms'])?.toString(),
        metadata: _mapOrNull(json['metadata']) ?? const {},
        createdAt: _parseFinanceDate(json['createdAt'] ?? json['created_at']),
        updatedAt: _parseFinanceDate(json['updatedAt'] ?? json['updated_at']),
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
  /// Populated on list endpoints that omit the heavy `items` JSONB payload.
  final int itemCount;
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
    this.itemCount = 0,
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
    final itemCount = _toInt(json['itemCount'] ?? json['item_count']);
    return PurchaseOrder(
      id: json['id']?.toString() ?? '',
      projectId: (json['projectId'] ?? json['project_id'])?.toString() ?? '',
      supplierId: (json['supplierId'] ?? json['supplier_id'])?.toString() ?? '',
      status: _poStatusFrom(json['status']?.toString()),
      reference: json['reference']?.toString(),
      expectedAt: json['expectedAt'] != null || json['expected_at'] != null
          ? DateTime.tryParse(
              (json['expectedAt'] ?? json['expected_at']).toString(),
            )
          : null,
      notes: json['notes']?.toString(),
      items: items,
      itemCount: itemCount > 0 ? itemCount : items.length,
      currency: json['currency']?.toString(),
      subtotal: _toDouble(json['subtotal']),
      createdAt: _parseFinanceDate(json['createdAt'] ?? json['created_at']),
      updatedAt: _parseFinanceDate(json['updatedAt'] ?? json['updated_at']),
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

PurchaseReceiptStatus _receiptStatusFrom(String? v) {
  final key = (v ?? '').trim().toLowerCase().replaceAll('-', '_');
  if (key == 'void' || key == 'voided') {
    return PurchaseReceiptStatus.voided;
  }
  if (key == 'posted' || key == 'post' || key == 'received') {
    return PurchaseReceiptStatus.posted;
  }
  if (key == 'draft') {
    return PurchaseReceiptStatus.draft;
  }
  return PurchaseReceiptStatus.values.firstWhere(
    (e) => e.name == key,
    orElse: () => PurchaseReceiptStatus.draft,
  );
}

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
        id: (json['id'] ?? '').toString(),
        purchaseReceiptId:
            (json['purchaseReceiptId'] ?? json['purchase_receipt_id'] ?? '')
                .toString(),
        lineNo: _toInt(json['lineNo'] ?? json['line_no']),
        sku: (json['sku'] ?? '').toString(),
        productId: (json['productId'] ?? json['product_id'])?.toString(),
        variantPath:
            (json['variantPath'] ?? json['variant_path'] ?? '').toString(),
        batch: (json['batch'] ?? '').toString(),
        inventoryObjectId:
            (json['inventoryObjectId'] ?? json['inventory_object_id'])
                ?.toString(),
        qtyReceived: _toInt(json['qtyReceived'] ?? json['qty_received']),
        unitCost: _toDouble(json['unitCost'] ?? json['unit_cost']),
        lineTotal: _toDouble(json['lineTotal'] ?? json['line_total']),
        poLineIndex: json['poLineIndex'] == null && json['po_line_index'] == null
            ? null
            : _toInt(json['poLineIndex'] ?? json['po_line_index']),
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
  final List<String> attachments;
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
    this.attachments = const [],
    this.lines = const [],
  });

  factory PurchaseReceipt.fromJson(Map<String, dynamic> json) {
    final rawLines = json['lines'];
    final lines = <PurchaseReceiptLine>[];
    if (rawLines is List) {
      for (final raw in rawLines) {
        if (raw is! Map) continue;
        try {
          lines.add(
            PurchaseReceiptLine.fromJson(Map<String, dynamic>.from(raw)),
          );
        } catch (_) {
          // Keep the receipt usable even if one line payload is malformed.
        }
      }
    }
    return PurchaseReceipt(
      id: json['id']?.toString() ?? '',
      projectId: (json['projectId'] ?? json['project_id'])?.toString() ?? '',
      supplierId: (json['supplierId'] ?? json['supplier_id'])?.toString() ?? '',
      purchaseOrderId:
          (json['purchaseOrderId'] ?? json['purchase_order_id'])?.toString(),
      warehouseId: (json['warehouseId'] ?? json['warehouse_id'])?.toString(),
      status: _receiptStatusFrom(json['status']?.toString()),
      reference: json['reference']?.toString(),
      receivedAt: _parseFinanceDate(json['receivedAt'] ?? json['received_at']),
      postedAt: json['postedAt'] != null || json['posted_at'] != null
          ? DateTime.tryParse(
              (json['postedAt'] ?? json['posted_at']).toString(),
            )
          : null,
      voidedAt: json['voidedAt'] != null || json['voided_at'] != null
          ? DateTime.tryParse(
              (json['voidedAt'] ?? json['voided_at']).toString(),
            )
          : null,
      notes: json['notes']?.toString(),
      totalCost: _toDouble(json['totalCost'] ?? json['total_cost']),
      attachments: _parseStringList(json['attachments']),
      lines: lines,
    );
  }

  static List<String> _parseStringList(dynamic raw) {
    if (raw is! List) return const [];
    return raw.map((e) => e.toString()).where((s) => s.isNotEmpty).toList();
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
  final List<String> attachments;
  final List<PurchaseReceiptLineInput> lines;

  const PurchaseReceiptCreate({
    required this.projectId,
    required this.supplierId,
    this.purchaseOrderId,
    this.warehouseId,
    this.reference,
    this.receivedAt,
    this.notes,
    this.attachments = const [],
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
        if (attachments.isNotEmpty) 'attachments': attachments,
        'lines': lines.map((e) => e.toJson()).toList(),
      };
}

/// Update receipt header fields (attachments, notes, reference) — not voided.
class PurchaseReceiptUpdate implements ModelUpdate {
  final String? reference;
  final String? notes;
  final List<String>? attachments;

  const PurchaseReceiptUpdate({
    this.reference,
    this.notes,
    this.attachments,
    this.setToNull = const [],
  });

  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {
        if (reference != null) 'reference': reference,
        if (notes != null) 'notes': notes,
        if (attachments != null) 'attachments': attachments,
      };
}

// ─── Phase 2: financial accounts ───────────────────────────────────────────────

enum FinancialAccountType { cash, bank, ewallet }

FinancialAccountType _accountTypeFrom(String? v) => FinancialAccountType.values
    .firstWhere((e) => e.name == v, orElse: () => FinancialAccountType.cash);

class FinancialAccount implements Model {
  @override
  final String id;
  final String projectId;
  final String name;
  final FinancialAccountType type;
  final String? currency;
  final double openingBalance;
  final bool isDefault;
  final Map<String, dynamic> metadata;

  /// Derived current balance (present on `show`).
  final double? balance;
  final DateTime createdAt;
  final DateTime updatedAt;

  FinancialAccount({
    required this.id,
    required this.projectId,
    required this.name,
    required this.type,
    this.currency,
    this.openingBalance = 0,
    this.isDefault = false,
    this.metadata = const {},
    this.balance,
    required this.createdAt,
    required this.updatedAt,
  });

  factory FinancialAccount.fromJson(Map<String, dynamic> json) =>
      FinancialAccount(
        id: json['id']?.toString() ?? '',
        projectId: (json['projectId'] ?? json['project_id'])?.toString() ?? '',
        name: json['name']?.toString() ?? '',
        type: _accountTypeFrom(json['type']?.toString()),
        currency: json['currency']?.toString(),
        openingBalance: _toDouble(json['openingBalance'] ?? json['opening_balance']),
        isDefault: json['isDefault'] == true || json['is_default'] == true,
        metadata: (json['metadata'] as Map?)?.cast<String, dynamic>() ?? const {},
        balance: json['balance'] == null ? null : _toDouble(json['balance']),
        createdAt: _parseFinanceDate(json['createdAt'] ?? json['created_at']),
        updatedAt: _parseFinanceDate(json['updatedAt'] ?? json['updated_at']),
      );

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}

class FinancialAccountCreate implements ModelCreate {
  final String projectId;
  final String name;
  final FinancialAccountType? type;
  final String? currency;
  final double? openingBalance;
  final bool? isDefault;
  final Map<String, dynamic>? metadata;

  const FinancialAccountCreate({
    required this.projectId,
    required this.name,
    this.type,
    this.currency,
    this.openingBalance,
    this.isDefault,
    this.metadata,
  });

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'name': name,
        if (type != null) 'type': type!.name,
        if (currency != null) 'currency': currency,
        if (openingBalance != null) 'openingBalance': openingBalance,
        if (isDefault != null) 'isDefault': isDefault,
        if (metadata != null) 'metadata': metadata,
      };
}

class FinancialAccountUpdate implements ModelUpdate {
  final String? name;
  final FinancialAccountType? type;
  final String? currency;
  final double? openingBalance;
  final bool? isDefault;
  final Map<String, dynamic>? metadata;

  const FinancialAccountUpdate({
    this.name,
    this.type,
    this.currency,
    this.openingBalance,
    this.isDefault,
    this.metadata,
    this.setToNull = const [],
  });

  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'type': type?.name,
        'currency': currency,
        'openingBalance': openingBalance,
        'isDefault': isDefault,
        'metadata': metadata,
      };
}

// ─── Phase 2: supplier bills + payments ─────────────────────────────────────────

enum SupplierBillStatus { draft, open, partial, paid, void$ }

SupplierBillStatus _billStatusFrom(String? v) {
  switch (v) {
    case 'draft':
      return SupplierBillStatus.draft;
    case 'partial':
      return SupplierBillStatus.partial;
    case 'paid':
      return SupplierBillStatus.paid;
    case 'void':
      return SupplierBillStatus.void$;
    default:
      return SupplierBillStatus.open;
  }
}

class SupplierPayment implements Model {
  @override
  final String id;
  final String projectId;
  final String supplierBillId;
  final String financialAccountId;
  final double amount;
  final DateTime paidAt;
  final String? method;
  final String? reference;

  SupplierPayment({
    required this.id,
    required this.projectId,
    required this.supplierBillId,
    required this.financialAccountId,
    required this.amount,
    required this.paidAt,
    this.method,
    this.reference,
  });

  factory SupplierPayment.fromJson(Map<String, dynamic> json) => SupplierPayment(
        id: json['id'] as String,
        projectId: json['projectId'] as String,
        supplierBillId: json['supplierBillId'] as String,
        financialAccountId: json['financialAccountId'] as String,
        amount: _toDouble(json['amount']),
        paidAt: json['paidAt'] != null
            ? DateTime.parse(json['paidAt'] as String)
            : DateTime.now(),
        method: json['method'] as String?,
        reference: json['reference'] as String?,
      );

  Map<String, dynamic> toJson() => {'id': id, 'amount': amount};
}

class SupplierBill implements Model {
  @override
  final String id;
  final String projectId;
  final String supplierId;
  final String? purchaseReceiptId;
  final String? reference;
  final DateTime billDate;
  final DateTime? dueDate;
  final String? currency;
  final double totalAmount;
  final double paidAmount;
  final double balanceDue;
  final SupplierBillStatus status;
  final String? notes;
  final List<SupplierPayment> payments;

  SupplierBill({
    required this.id,
    required this.projectId,
    required this.supplierId,
    this.purchaseReceiptId,
    this.reference,
    required this.billDate,
    this.dueDate,
    this.currency,
    this.totalAmount = 0,
    this.paidAmount = 0,
    double? balanceDue,
    required this.status,
    this.notes,
    this.payments = const [],
  }) : balanceDue = balanceDue ?? (totalAmount - paidAmount);

  factory SupplierBill.fromJson(Map<String, dynamic> json) {
    final rawPayments = json['payments'];
    final payments = rawPayments is List
        ? rawPayments
            .whereType<Map>()
            .map((e) => SupplierPayment.fromJson(Map<String, dynamic>.from(e)))
            .toList()
        : <SupplierPayment>[];
    return SupplierBill(
      id: json['id'] as String,
      projectId: json['projectId'] as String,
      supplierId: json['supplierId'] as String,
      purchaseReceiptId: json['purchaseReceiptId'] as String?,
      reference: json['reference'] as String?,
      billDate: json['billDate'] != null
          ? DateTime.parse(json['billDate'] as String)
          : DateTime.now(),
      dueDate: json['dueDate'] != null
          ? DateTime.tryParse(json['dueDate'] as String)
          : null,
      currency: json['currency'] as String?,
      totalAmount: _toDouble(json['totalAmount']),
      paidAmount: _toDouble(json['paidAmount']),
      balanceDue:
          json['balanceDue'] == null ? null : _toDouble(json['balanceDue']),
      status: _billStatusFrom(json['status'] as String?),
      notes: json['notes'] as String?,
      payments: payments,
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'supplierId': supplierId};
}

class SupplierBillCreate implements ModelCreate {
  final String projectId;
  final String supplierId;
  final String? purchaseReceiptId;
  final String? reference;
  final DateTime billDate;
  final DateTime? dueDate;
  final String? currency;
  final double totalAmount;
  final String? notes;

  const SupplierBillCreate({
    required this.projectId,
    required this.supplierId,
    this.purchaseReceiptId,
    this.reference,
    required this.billDate,
    this.dueDate,
    this.currency,
    required this.totalAmount,
    this.notes,
  });

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'supplierId': supplierId,
        if (purchaseReceiptId != null) 'purchaseReceiptId': purchaseReceiptId,
        if (reference != null) 'reference': reference,
        'billDate': billDate.toIso8601String(),
        if (dueDate != null) 'dueDate': dueDate!.toIso8601String(),
        if (currency != null) 'currency': currency,
        'totalAmount': totalAmount,
        if (notes != null) 'notes': notes,
      };
}

/// Input for recording a (partial) payment against a supplier bill.
class PaySupplierBillInput {
  final String projectId;
  final String financialAccountId;
  final double amount;
  final DateTime? paidAt;
  final String? method;
  final String? reference;
  final bool? allowOverpay;

  const PaySupplierBillInput({
    required this.projectId,
    required this.financialAccountId,
    required this.amount,
    this.paidAt,
    this.method,
    this.reference,
    this.allowOverpay,
  });

  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'financialAccountId': financialAccountId,
        'amount': amount,
        if (paidAt != null) 'paidAt': paidAt!.toIso8601String(),
        if (method != null) 'method': method,
        if (reference != null) 'reference': reference,
        if (allowOverpay != null) 'allowOverpay': allowOverpay,
      };
}

// ─── Phase 2: customer payments + receivables ───────────────────────────────────

class CustomerPayment implements Model {
  @override
  final String id;
  final String projectId;
  final String orderId;
  final String financialAccountId;
  final double amount;
  final DateTime receivedAt;
  final String? method;
  final String? reference;

  CustomerPayment({
    required this.id,
    required this.projectId,
    required this.orderId,
    required this.financialAccountId,
    required this.amount,
    required this.receivedAt,
    this.method,
    this.reference,
  });

  factory CustomerPayment.fromJson(Map<String, dynamic> json) => CustomerPayment(
        id: json['id'] as String,
        projectId: json['projectId'] as String,
        orderId: json['orderId'] as String,
        financialAccountId: json['financialAccountId'] as String,
        amount: _toDouble(json['amount']),
        receivedAt: json['receivedAt'] != null
            ? DateTime.parse(json['receivedAt'] as String)
            : DateTime.now(),
        method: json['method'] as String?,
        reference: json['reference'] as String?,
      );

  Map<String, dynamic> toJson() => {'id': id, 'amount': amount};
}

/// Input for recording a customer / COD payment against an order.
class CollectCustomerPaymentInput {
  final String projectId;
  final String financialAccountId;
  final double amount;
  final DateTime? receivedAt;
  final String? method;
  final String? reference;
  final bool? allowOverpay;

  const CollectCustomerPaymentInput({
    required this.projectId,
    required this.financialAccountId,
    required this.amount,
    this.receivedAt,
    this.method,
    this.reference,
    this.allowOverpay,
  });

  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'financialAccountId': financialAccountId,
        'amount': amount,
        if (receivedAt != null) 'receivedAt': receivedAt!.toIso8601String(),
        if (method != null) 'method': method,
        if (reference != null) 'reference': reference,
        if (allowOverpay != null) 'allowOverpay': allowOverpay,
      };
}

/// A derived open order receivable (read-only; [id] aliases [orderId]).
class Receivable implements Model {
  final String orderId;
  final String storeId;
  final double total;
  final double paid;
  final double balanceDue;
  final String status;
  final String deliveryStatus;
  final bool codInTransit;

  const Receivable({
    required this.orderId,
    required this.storeId,
    required this.total,
    required this.paid,
    required this.balanceDue,
    required this.status,
    required this.deliveryStatus,
    required this.codInTransit,
  });

  @override
  String get id => orderId;

  factory Receivable.fromJson(Map<String, dynamic> json) => Receivable(
        orderId: json['orderId'] as String,
        storeId: json['storeId'] as String? ?? '',
        total: _toDouble(json['total']),
        paid: _toDouble(json['paid']),
        balanceDue: _toDouble(json['balanceDue']),
        status: json['status'] as String? ?? '',
        deliveryStatus: json['deliveryStatus'] as String? ?? '',
        codInTransit: json['codInTransit'] == true,
      );
}

/// Receivable row plus the linked merchant order (finance detail panel).
class ReceivableDetail {
  final Receivable receivable;
  final Map<String, dynamic> orderJson;

  const ReceivableDetail({
    required this.receivable,
    required this.orderJson,
  });

  factory ReceivableDetail.fromJson(Map<String, dynamic> json) {
    final receivableRaw = json['receivable'];
    final orderRaw = json['order'];
    if (receivableRaw is! Map || orderRaw is! Map) {
      throw FormatException('ReceivableDetail requires receivable and order maps');
    }
    return ReceivableDetail(
      receivable: Receivable.fromJson(Map<String, dynamic>.from(receivableRaw)),
      orderJson: Map<String, dynamic>.from(orderRaw),
    );
  }
}

// ─── Phase 2: expenses + categories ─────────────────────────────────────────────

enum ExpenseStatus { draft, recorded, voided }

ExpenseStatus _expenseStatusFrom(String? v) => ExpenseStatus.values
    .firstWhere((e) => e.name == v, orElse: () => ExpenseStatus.recorded);

class ExpenseCategory implements Model {
  @override
  final String id;
  final String projectId;
  final String name;
  final String? parentId;
  final Map<String, dynamic> metadata;
  final DateTime createdAt;
  final DateTime updatedAt;

  ExpenseCategory({
    required this.id,
    required this.projectId,
    required this.name,
    this.parentId,
    this.metadata = const {},
    required this.createdAt,
    required this.updatedAt,
  });

  factory ExpenseCategory.fromJson(Map<String, dynamic> json) => ExpenseCategory(
        id: json['id'] as String,
        projectId: json['projectId'] as String,
        name: json['name'] as String,
        parentId: json['parentId'] as String?,
        metadata: (json['metadata'] as Map?)?.cast<String, dynamic>() ?? const {},
        createdAt: DateTime.parse(json['createdAt'] as String),
        updatedAt: DateTime.parse(json['updatedAt'] as String),
      );

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}

class ExpenseCategoryCreate implements ModelCreate {
  final String projectId;
  final String name;
  final String? parentId;
  final Map<String, dynamic>? metadata;

  const ExpenseCategoryCreate({
    required this.projectId,
    required this.name,
    this.parentId,
    this.metadata,
  });

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'name': name,
        if (parentId != null) 'parentId': parentId,
        if (metadata != null) 'metadata': metadata,
      };
}

class ExpenseCategoryUpdate implements ModelUpdate {
  final String? name;
  final String? parentId;
  final Map<String, dynamic>? metadata;

  const ExpenseCategoryUpdate({
    this.name,
    this.parentId,
    this.metadata,
    this.setToNull = const [],
  });

  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'parentId': parentId,
        'metadata': metadata,
      };
}

class Expense implements Model {
  @override
  final String id;
  final String projectId;
  final String? categoryId;
  final String? supplierId;
  final String? financialAccountId;
  final double amount;
  final String? currency;
  final DateTime spentAt;
  final String? paymentMethod;
  final ExpenseStatus status;
  final String? reference;
  final String? note;
  final List<dynamic> attachments;

  Expense({
    required this.id,
    required this.projectId,
    this.categoryId,
    this.supplierId,
    this.financialAccountId,
    required this.amount,
    this.currency,
    required this.spentAt,
    this.paymentMethod,
    required this.status,
    this.reference,
    this.note,
    this.attachments = const [],
  });

  factory Expense.fromJson(Map<String, dynamic> json) => Expense(
        id: json['id'] as String,
        projectId:
            (json['projectId'] ?? json['project_id'])?.toString() ?? '',
        categoryId: (json['categoryId'] ?? json['category_id'])?.toString(),
        supplierId: (json['supplierId'] ?? json['supplier_id'])?.toString(),
        financialAccountId:
            (json['financialAccountId'] ?? json['financial_account_id'])
                ?.toString(),
        amount: _toDouble(json['amount']),
        currency: json['currency'] as String?,
        spentAt: json['spentAt'] != null
            ? DateTime.parse(json['spentAt'] as String)
            : DateTime.now(),
        paymentMethod: json['paymentMethod'] as String?,
        status: _expenseStatusFrom(json['status'] as String?),
        reference: json['reference'] as String?,
        note: json['note'] as String?,
        attachments: (json['attachments'] as List?) ?? const [],
      );

  Map<String, dynamic> toJson() => {'id': id, 'amount': amount};
}

class ExpenseCreate implements ModelCreate {
  final String projectId;
  final String? categoryId;
  final String? supplierId;
  final String? financialAccountId;
  final double amount;
  final String? currency;
  final DateTime spentAt;
  final String? paymentMethod;
  final ExpenseStatus? status;
  final String? reference;
  final String? note;
  final List<dynamic>? attachments;

  const ExpenseCreate({
    required this.projectId,
    this.categoryId,
    this.supplierId,
    this.financialAccountId,
    required this.amount,
    this.currency,
    required this.spentAt,
    this.paymentMethod,
    this.status,
    this.reference,
    this.note,
    this.attachments,
  });

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        if (categoryId != null) 'categoryId': categoryId,
        if (supplierId != null) 'supplierId': supplierId,
        if (financialAccountId != null) 'financialAccountId': financialAccountId,
        'amount': amount,
        if (currency != null) 'currency': currency,
        'spentAt': spentAt.toIso8601String(),
        if (paymentMethod != null) 'paymentMethod': paymentMethod,
        if (status != null) 'status': status!.name,
        if (reference != null) 'reference': reference,
        if (note != null) 'note': note,
        if (attachments != null) 'attachments': attachments,
      };
}

class ExpenseUpdate implements ModelUpdate {
  final String? categoryId;
  final String? supplierId;
  final String? financialAccountId;
  final double? amount;
  final String? currency;
  final DateTime? spentAt;
  final String? paymentMethod;
  final ExpenseStatus? status;
  final String? reference;
  final String? note;
  final List<dynamic>? attachments;

  const ExpenseUpdate({
    this.categoryId,
    this.supplierId,
    this.financialAccountId,
    this.amount,
    this.currency,
    this.spentAt,
    this.paymentMethod,
    this.status,
    this.reference,
    this.note,
    this.attachments,
    this.setToNull = const [],
  });

  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {
        'categoryId': categoryId,
        'supplierId': supplierId,
        'financialAccountId': financialAccountId,
        'amount': amount,
        'currency': currency,
        'spentAt': spentAt?.toIso8601String(),
        'paymentMethod': paymentMethod,
        'status': status?.name,
        'reference': reference,
        'note': note,
        'attachments': attachments,
      };
}

// ─── Phase 2: other income + categories ─────────────────────────────────────────

enum OtherIncomeStatus { draft, recorded, voided }

OtherIncomeStatus _otherIncomeStatusFrom(String? v) => OtherIncomeStatus.values
    .firstWhere((e) => e.name == v, orElse: () => OtherIncomeStatus.recorded);

class OtherIncomeCategory implements Model {
  @override
  final String id;
  final String projectId;
  final String name;
  final String? parentId;
  final Map<String, dynamic> metadata;
  final DateTime createdAt;
  final DateTime updatedAt;

  OtherIncomeCategory({
    required this.id,
    required this.projectId,
    required this.name,
    this.parentId,
    this.metadata = const {},
    required this.createdAt,
    required this.updatedAt,
  });

  factory OtherIncomeCategory.fromJson(Map<String, dynamic> json) =>
      OtherIncomeCategory(
        id: json['id'] as String,
        projectId: json['projectId'] as String,
        name: json['name'] as String,
        parentId: json['parentId'] as String?,
        metadata:
            (json['metadata'] as Map?)?.cast<String, dynamic>() ?? const {},
        createdAt: DateTime.parse(json['createdAt'] as String),
        updatedAt: DateTime.parse(json['updatedAt'] as String),
      );

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}

class OtherIncomeCategoryCreate implements ModelCreate {
  final String projectId;
  final String name;
  final String? parentId;
  final Map<String, dynamic>? metadata;

  const OtherIncomeCategoryCreate({
    required this.projectId,
    required this.name,
    this.parentId,
    this.metadata,
  });

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'name': name,
        if (parentId != null) 'parentId': parentId,
        if (metadata != null) 'metadata': metadata,
      };
}

class OtherIncomeCategoryUpdate implements ModelUpdate {
  final String? name;
  final String? parentId;
  final Map<String, dynamic>? metadata;

  const OtherIncomeCategoryUpdate({
    this.name,
    this.parentId,
    this.metadata,
    this.setToNull = const [],
  });

  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'parentId': parentId,
        'metadata': metadata,
      };
}

/// Non-order money-in (tips, rebates, grants). Hits P&L `otherIncome`.
class OtherIncome implements Model {
  @override
  final String id;
  final String projectId;
  final String? categoryId;
  final String? financialAccountId;
  final double amount;
  final String? currency;
  final DateTime receivedAt;
  final String? paymentMethod;
  final OtherIncomeStatus status;
  final String? reference;
  final String? note;
  final List<dynamic> attachments;

  OtherIncome({
    required this.id,
    required this.projectId,
    this.categoryId,
    this.financialAccountId,
    required this.amount,
    this.currency,
    required this.receivedAt,
    this.paymentMethod,
    required this.status,
    this.reference,
    this.note,
    this.attachments = const [],
  });

  factory OtherIncome.fromJson(Map<String, dynamic> json) => OtherIncome(
        id: json['id'] as String,
        projectId:
            (json['projectId'] ?? json['project_id'])?.toString() ?? '',
        categoryId: (json['categoryId'] ?? json['category_id'])?.toString(),
        financialAccountId:
            (json['financialAccountId'] ?? json['financial_account_id'])
                ?.toString(),
        amount: _toDouble(json['amount']),
        currency: json['currency'] as String?,
        receivedAt: json['receivedAt'] != null
            ? DateTime.parse(json['receivedAt'] as String)
            : DateTime.now(),
        paymentMethod: json['paymentMethod'] as String?,
        status: _otherIncomeStatusFrom(json['status'] as String?),
        reference: json['reference'] as String?,
        note: json['note'] as String?,
        attachments: (json['attachments'] as List?) ?? const [],
      );

  Map<String, dynamic> toJson() => {'id': id, 'amount': amount};
}

class OtherIncomeCreate implements ModelCreate {
  final String projectId;
  final String? categoryId;
  final String? financialAccountId;
  final double amount;
  final String? currency;
  final DateTime receivedAt;
  final String? paymentMethod;
  final OtherIncomeStatus? status;
  final String? reference;
  final String? note;
  final List<dynamic>? attachments;

  const OtherIncomeCreate({
    required this.projectId,
    this.categoryId,
    this.financialAccountId,
    required this.amount,
    this.currency,
    required this.receivedAt,
    this.paymentMethod,
    this.status,
    this.reference,
    this.note,
    this.attachments,
  });

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        if (categoryId != null) 'categoryId': categoryId,
        if (financialAccountId != null) 'financialAccountId': financialAccountId,
        'amount': amount,
        if (currency != null) 'currency': currency,
        'receivedAt': receivedAt.toIso8601String(),
        if (paymentMethod != null) 'paymentMethod': paymentMethod,
        if (status != null) 'status': status!.name,
        if (reference != null) 'reference': reference,
        if (note != null) 'note': note,
        if (attachments != null) 'attachments': attachments,
      };
}

class OtherIncomeUpdate implements ModelUpdate {
  final String? categoryId;
  final String? financialAccountId;
  final double? amount;
  final String? currency;
  final DateTime? receivedAt;
  final String? paymentMethod;
  final OtherIncomeStatus? status;
  final String? reference;
  final String? note;
  final List<dynamic>? attachments;

  const OtherIncomeUpdate({
    this.categoryId,
    this.financialAccountId,
    this.amount,
    this.currency,
    this.receivedAt,
    this.paymentMethod,
    this.status,
    this.reference,
    this.note,
    this.attachments,
    this.setToNull = const [],
  });

  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {
        'categoryId': categoryId,
        'financialAccountId': financialAccountId,
        'amount': amount,
        'currency': currency,
        'receivedAt': receivedAt?.toIso8601String(),
        'paymentMethod': paymentMethod,
        'status': status?.name,
        'reference': reference,
        'note': note,
        'attachments': attachments,
      };
}

// ─── Phase 2: reports ───────────────────────────────────────────────────────────

class FinanceOverview {
  final double cash;
  final double inventoryValuation;
  final double accountsReceivable;
  final double accountsPayable;
  final double netPosition;
  final double netProfit;
  final String? pnlFrom;
  final String? pnlTo;
  final AgingResult? apAging;
  final AgingResult? arAging;
  final CashPosition? cashPosition;
  final PnlReport? pnl;

  const FinanceOverview({
    required this.cash,
    required this.inventoryValuation,
    required this.accountsReceivable,
    required this.accountsPayable,
    required this.netPosition,
    this.netProfit = 0,
    this.pnlFrom,
    this.pnlTo,
    this.apAging,
    this.arAging,
    this.cashPosition,
    this.pnl,
  });

  factory FinanceOverview.fromJson(Map<String, dynamic> json) => FinanceOverview(
        cash: _toDouble(json['cash']),
        inventoryValuation: _toDouble(json['inventoryValuation']),
        accountsReceivable: _toDouble(json['accountsReceivable']),
        accountsPayable: _toDouble(json['accountsPayable']),
        netPosition: _toDouble(json['netPosition']),
        netProfit: _toDouble(json['netProfit']),
        pnlFrom: json['pnlFrom'] as String?,
        pnlTo: json['pnlTo'] as String?,
        apAging: json['apAging'] != null
            ? AgingResult.fromJson(
                Map<String, dynamic>.from(json['apAging'] as Map))
            : null,
        arAging: json['arAging'] != null
            ? AgingResult.fromJson(
                Map<String, dynamic>.from(json['arAging'] as Map))
            : null,
        cashPosition: json['cashPosition'] != null
            ? CashPosition.fromJson(
                Map<String, dynamic>.from(json['cashPosition'] as Map))
            : null,
        pnl: json['pnl'] != null
            ? PnlReport.fromJson(Map<String, dynamic>.from(json['pnl'] as Map))
            : null,
      );
}

class AgingBucket {
  final String label;
  final double amount;
  const AgingBucket({required this.label, required this.amount});

  factory AgingBucket.fromJson(Map<String, dynamic> json) => AgingBucket(
        label: json['label'] as String? ?? '',
        amount: _toDouble(json['amount']),
      );
}

class AgingResult {
  final List<AgingBucket> buckets;
  final double total;
  const AgingResult({required this.buckets, required this.total});

  factory AgingResult.fromJson(Map<String, dynamic> json) => AgingResult(
        buckets: (json['buckets'] as List?)
                ?.whereType<Map>()
                .map((e) => AgingBucket.fromJson(Map<String, dynamic>.from(e)))
                .toList() ??
            const [],
        total: _toDouble(json['total']),
      );
}

class CashAccountBalance {
  final String id;
  final String name;
  final FinancialAccountType type;
  final String? currency;
  final double balance;

  const CashAccountBalance({
    required this.id,
    required this.name,
    required this.type,
    this.currency,
    required this.balance,
  });

  factory CashAccountBalance.fromJson(Map<String, dynamic> json) =>
      CashAccountBalance(
        id: json['id'] as String,
        name: json['name'] as String? ?? '',
        type: _accountTypeFrom(json['type'] as String?),
        currency: json['currency'] as String?,
        balance: _toDouble(json['balance']),
      );
}

class CashPosition {
  final List<CashAccountBalance> accounts;
  final double total;
  const CashPosition({required this.accounts, required this.total});

  factory CashPosition.fromJson(Map<String, dynamic> json) => CashPosition(
        accounts: (json['accounts'] as List?)
                ?.whereType<Map>()
                .map((e) =>
                    CashAccountBalance.fromJson(Map<String, dynamic>.from(e)))
                .toList() ??
            const [],
        total: _toDouble(json['total']),
      );
}

class PnlReport {
  final String? from;
  final String? to;
  final double revenue;
  final double cogs;
  final double grossProfit;
  final double expenses;
  /// Tips, rebates, grants — non-order income.
  final double otherIncome;
  final double netProfit;
  final List<PnlDayRow>? byDay;

  const PnlReport({
    this.from,
    this.to,
    required this.revenue,
    required this.cogs,
    required this.grossProfit,
    required this.expenses,
    this.otherIncome = 0,
    required this.netProfit,
    this.byDay,
  });

  factory PnlReport.fromJson(Map<String, dynamic> json) => PnlReport(
        from: json['from'] as String?,
        to: json['to'] as String?,
        revenue: _toDouble(json['revenue']),
        cogs: _toDouble(json['cogs']),
        grossProfit: _toDouble(json['grossProfit']),
        expenses: _toDouble(json['expenses']),
        otherIncome: _toDouble(json['otherIncome']),
        netProfit: _toDouble(json['netProfit']),
        byDay: (json['byDay'] as List<dynamic>?)
            ?.map((e) => PnlDayRow.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
      );
}

class PnlDayRow {
  final String day;
  final double revenue;
  final double cogs;
  final double expenses;
  final double otherIncome;
  final double grossProfit;
  final double netProfit;

  const PnlDayRow({
    required this.day,
    required this.revenue,
    required this.cogs,
    required this.expenses,
    this.otherIncome = 0,
    required this.grossProfit,
    required this.netProfit,
  });

  factory PnlDayRow.fromJson(Map<String, dynamic> json) => PnlDayRow(
        day: json['day'] as String? ?? '',
        revenue: _toDouble(json['revenue']),
        cogs: _toDouble(json['cogs']),
        expenses: _toDouble(json['expenses']),
        otherIncome: _toDouble(json['otherIncome']),
        grossProfit: _toDouble(json['grossProfit']),
        netProfit: _toDouble(json['netProfit']),
      );
}

// ─── Phase 3: general ledger ────────────────────────────────────────────────────

enum GlAccountType { asset, liability, equity, income, expense }

GlAccountType _glAccountTypeFrom(String? v) => GlAccountType.values
    .firstWhere((e) => e.name == v, orElse: () => GlAccountType.asset);

enum JournalEntryStatus { draft, posted, reversed }

JournalEntryStatus _journalEntryStatusFrom(String? v) =>
    JournalEntryStatus.values
        .firstWhere((e) => e.name == v, orElse: () => JournalEntryStatus.posted);

class GlAccount implements Model {
  @override
  final String id;
  final String projectId;
  final String code;
  final String name;
  final GlAccountType type;
  final String? parentId;
  final bool isSystem;
  final String? currency;

  GlAccount({
    required this.id,
    required this.projectId,
    required this.code,
    required this.name,
    required this.type,
    this.parentId,
    this.isSystem = false,
    this.currency,
  });

  factory GlAccount.fromJson(Map<String, dynamic> json) => GlAccount(
        id: json['id'] as String,
        projectId: json['projectId'] as String,
        code: json['code'] as String? ?? '',
        name: json['name'] as String? ?? '',
        type: _glAccountTypeFrom(json['type'] as String?),
        parentId: json['parentId'] as String?,
        isSystem: json['isSystem'] as bool? ?? false,
        currency: json['currency'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'code': code,
        'name': name,
        'type': type.name,
      };
}

class GlAccountCreate implements ModelCreate {
  final String projectId;
  final String code;
  final String name;
  final GlAccountType type;
  final String? parentId;
  final String? currency;

  const GlAccountCreate({
    required this.projectId,
    required this.code,
    required this.name,
    required this.type,
    this.parentId,
    this.currency,
  });

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'code': code,
        'name': name,
        'type': type.name,
        if (parentId != null) 'parentId': parentId,
        if (currency != null) 'currency': currency,
      };
}

class GlAccountUpdate implements ModelUpdate {
  final String? code;
  final String? name;
  final GlAccountType? type;
  final String? parentId;
  final String? currency;

  const GlAccountUpdate({
    this.code,
    this.name,
    this.type,
    this.parentId,
    this.currency,
    this.setToNull = const [],
  });

  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {
        if (code != null) 'code': code,
        if (name != null) 'name': name,
        if (type != null) 'type': type!.name,
        if (parentId != null) 'parentId': parentId,
        if (currency != null) 'currency': currency,
      };
}

class JournalLine implements Model {
  @override
  final String id;
  final String journalEntryId;
  final String accountId;
  final double debit;
  final double credit;
  final String? memo;
  final int lineNo;
  final GlAccount? account;

  JournalLine({
    required this.id,
    required this.journalEntryId,
    required this.accountId,
    required this.debit,
    required this.credit,
    this.memo,
    this.lineNo = 0,
    this.account,
  });

  factory JournalLine.fromJson(Map<String, dynamic> json) {
    GlAccount? account;
    final rawAccount = json['account'];
    if (rawAccount is Map) {
      account = GlAccount.fromJson(Map<String, dynamic>.from(rawAccount));
    }
    return JournalLine(
      id: json['id'] as String,
      journalEntryId: json['journalEntryId'] as String,
      accountId: json['accountId'] as String,
      debit: _toDouble(json['debit']),
      credit: _toDouble(json['credit']),
      memo: json['memo'] as String?,
      lineNo: json['lineNo'] as int? ?? 0,
      account: account,
    );
  }
}

class JournalEntry implements Model {
  @override
  final String id;
  final String projectId;
  final String journalId;
  final DateTime entryDate;
  final JournalEntryStatus status;
  final String? sourceType;
  final String? sourceId;
  final String? memo;
  final List<JournalLine> lines;

  JournalEntry({
    required this.id,
    required this.projectId,
    required this.journalId,
    required this.entryDate,
    required this.status,
    this.sourceType,
    this.sourceId,
    this.memo,
    this.lines = const [],
  });

  factory JournalEntry.fromJson(Map<String, dynamic> json) {
    final rawLines = json['lines'];
    return JournalEntry(
      id: json['id'] as String,
      projectId: json['projectId'] as String,
      journalId: json['journalId'] as String,
      entryDate: json['entryDate'] != null
          ? DateTime.parse(json['entryDate'] as String)
          : DateTime.now(),
      status: _journalEntryStatusFrom(json['status'] as String?),
      sourceType: json['sourceType'] as String?,
      sourceId: json['sourceId'] as String?,
      memo: json['memo'] as String?,
      lines: rawLines is List
          ? rawLines
              .whereType<Map>()
              .map((e) => JournalLine.fromJson(Map<String, dynamic>.from(e)))
              .toList()
          : const [],
    );
  }
}

class ManualJournalLineInput {
  final String accountId;
  final double debit;
  final double credit;
  final String? memo;

  const ManualJournalLineInput({
    required this.accountId,
    this.debit = 0,
    this.credit = 0,
    this.memo,
  });

  Map<String, dynamic> toJson() => {
        'accountId': accountId,
        'debit': debit,
        'credit': credit,
        if (memo != null) 'memo': memo,
      };
}

class ManualJournalEntryCreate implements ModelCreate {
  final String projectId;
  final String entryDate;
  final String? journalCode;
  final String? memo;
  final List<ManualJournalLineInput> lines;

  const ManualJournalEntryCreate({
    required this.projectId,
    required this.entryDate,
    this.journalCode,
    this.memo,
    required this.lines,
  });

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'entryDate': entryDate,
        if (journalCode != null) 'journalCode': journalCode,
        if (memo != null) 'memo': memo,
        'lines': lines.map((l) => l.toJson()).toList(),
      };
}

class JournalEntryNoopUpdate implements ModelUpdate {
  const JournalEntryNoopUpdate();

  @override
  final List<String> setToNull = const [];

  @override
  Map<String, dynamic> toJson() => const {};
}

class TrialBalanceRow {
  final String accountId;
  final String code;
  final String name;
  final String type;
  final double debit;
  final double credit;
  final double balance;

  const TrialBalanceRow({
    required this.accountId,
    required this.code,
    required this.name,
    required this.type,
    required this.debit,
    required this.credit,
    required this.balance,
  });

  factory TrialBalanceRow.fromJson(Map<String, dynamic> json) => TrialBalanceRow(
        accountId: json['accountId'] as String? ?? '',
        code: json['code'] as String? ?? '',
        name: json['name'] as String? ?? '',
        type: json['type'] as String? ?? '',
        debit: _toDouble(json['debit']),
        credit: _toDouble(json['credit']),
        balance: _toDouble(json['balance']),
      );
}

class TrialBalanceReport {
  final String? asOf;
  final List<TrialBalanceRow> rows;
  final double totalDebit;
  final double totalCredit;
  final bool balanced;

  const TrialBalanceReport({
    this.asOf,
    required this.rows,
    required this.totalDebit,
    required this.totalCredit,
    required this.balanced,
  });

  factory TrialBalanceReport.fromJson(Map<String, dynamic> json) => TrialBalanceReport(
        asOf: json['asOf'] as String?,
        rows: (json['rows'] as List?)
                ?.whereType<Map>()
                .map((e) => TrialBalanceRow.fromJson(Map<String, dynamic>.from(e)))
                .toList() ??
            const [],
        totalDebit: _toDouble(json['totalDebit']),
        totalCredit: _toDouble(json['totalCredit']),
        balanced: json['balanced'] as bool? ?? false,
      );
}

class BalanceSheetSection {
  final String type;
  final List<Map<String, dynamic>> accounts;
  final double total;

  const BalanceSheetSection({
    required this.type,
    required this.accounts,
    required this.total,
  });

  factory BalanceSheetSection.fromJson(Map<String, dynamic> json) =>
      BalanceSheetSection(
        type: json['type'] as String? ?? '',
        accounts: (json['accounts'] as List?)
                ?.whereType<Map>()
                .map((e) => Map<String, dynamic>.from(e))
                .toList() ??
            const [],
        total: _toDouble(json['total']),
      );
}

class BalanceSheetReport {
  final String? asOf;
  final BalanceSheetSection assets;
  final BalanceSheetSection liabilities;
  final BalanceSheetSection equity;
  final bool balanced;
  final double difference;

  const BalanceSheetReport({
    this.asOf,
    required this.assets,
    required this.liabilities,
    required this.equity,
    required this.balanced,
    required this.difference,
  });

  factory BalanceSheetReport.fromJson(Map<String, dynamic> json) =>
      BalanceSheetReport(
        asOf: json['asOf'] as String?,
        assets: BalanceSheetSection.fromJson(
            Map<String, dynamic>.from(json['assets'] as Map? ?? {})),
        liabilities: BalanceSheetSection.fromJson(
            Map<String, dynamic>.from(json['liabilities'] as Map? ?? {})),
        equity: BalanceSheetSection.fromJson(
            Map<String, dynamic>.from(json['equity'] as Map? ?? {})),
        balanced: json['balanced'] as bool? ?? false,
        difference: _toDouble(json['difference']),
      );
}

enum AccountingPeriodStatus { open, locked }

AccountingPeriodStatus _periodStatusFrom(String? v) =>
    AccountingPeriodStatus.values
        .firstWhere((e) => e.name == v, orElse: () => AccountingPeriodStatus.open);

class AccountingPeriod implements Model {
  @override
  final String id;
  final String projectId;
  final DateTime startDate;
  final DateTime endDate;
  final AccountingPeriodStatus status;

  AccountingPeriod({
    required this.id,
    required this.projectId,
    required this.startDate,
    required this.endDate,
    required this.status,
  });

  factory AccountingPeriod.fromJson(Map<String, dynamic> json) => AccountingPeriod(
        id: json['id'] as String,
        projectId: json['projectId'] as String,
        startDate: DateTime.parse(json['startDate'] as String),
        endDate: DateTime.parse(json['endDate'] as String),
        status: _periodStatusFrom(json['status'] as String?),
      );
}

