// Finance domain models (Phase 1: procurement) — match backend API shapes.
//
// All entities are project-scoped. Money values are decimal(14,2) on the server
// and arrive as numbers; parsed here to [double].

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
        projectId: json['projectId'] as String,
        categoryId: json['categoryId'] as String?,
        supplierId: json['supplierId'] as String?,
        financialAccountId: json['financialAccountId'] as String?,
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

// ─── Phase 2: reports ───────────────────────────────────────────────────────────

class FinanceOverview {
  final double cash;
  final double inventoryValuation;
  final double accountsReceivable;
  final double accountsPayable;
  final double netPosition;

  const FinanceOverview({
    required this.cash,
    required this.inventoryValuation,
    required this.accountsReceivable,
    required this.accountsPayable,
    required this.netPosition,
  });

  factory FinanceOverview.fromJson(Map<String, dynamic> json) => FinanceOverview(
        cash: _toDouble(json['cash']),
        inventoryValuation: _toDouble(json['inventoryValuation']),
        accountsReceivable: _toDouble(json['accountsReceivable']),
        accountsPayable: _toDouble(json['accountsPayable']),
        netPosition: _toDouble(json['netPosition']),
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
  final double netProfit;

  const PnlReport({
    this.from,
    this.to,
    required this.revenue,
    required this.cogs,
    required this.grossProfit,
    required this.expenses,
    required this.netProfit,
  });

  factory PnlReport.fromJson(Map<String, dynamic> json) => PnlReport(
        from: json['from'] as String?,
        to: json['to'] as String?,
        revenue: _toDouble(json['revenue']),
        cogs: _toDouble(json['cogs']),
        grossProfit: _toDouble(json['grossProfit']),
        expenses: _toDouble(json['expenses']),
        netProfit: _toDouble(json['netProfit']),
      );
}
