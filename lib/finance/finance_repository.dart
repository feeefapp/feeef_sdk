import 'package:dio/dio.dart';
import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/finance/models/finance_models.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/mixins/repository_batch_mixins.dart';

/// Finance API entry point (Phase 1: procurement).
///
/// Prefer the sub-repositories: [suppliers], [purchaseOrders], [purchaseReceipts].
/// All endpoints are project-scoped — pass `projectId` in `params`.
class FinanceRepository {
  final Dio client;
  late final SupplierResourceRepository suppliers;
  late final PurchaseOrderResourceRepository purchaseOrders;
  late final PurchaseReceiptResourceRepository purchaseReceipts;
  // Phase 2
  late final FinancialAccountResourceRepository financialAccounts;
  late final SupplierBillResourceRepository supplierBills;
  late final SupplierPaymentResourceRepository supplierPayments;
  late final CustomerPaymentResourceRepository customerPayments;
  late final ExpenseResourceRepository expenses;
  late final ExpenseCategoryResourceRepository expenseCategories;
  late final ReceivableResourceRepository receivables;

  FinanceRepository({required this.client}) {
    suppliers = SupplierResourceRepository(client: client);
    purchaseOrders = PurchaseOrderResourceRepository(client: client);
    purchaseReceipts = PurchaseReceiptResourceRepository(client: client);
    financialAccounts = FinancialAccountResourceRepository(client: client);
    supplierBills = SupplierBillResourceRepository(client: client);
    supplierPayments = SupplierPaymentResourceRepository(client: client);
    customerPayments = CustomerPaymentResourceRepository(client: client);
    expenses = ExpenseResourceRepository(client: client);
    expenseCategories = ExpenseCategoryResourceRepository(client: client);
    receivables = ReceivableResourceRepository(client: client);
  }

  /// Post a receipt: stock goods into inventory at batch cost (idempotent).
  Future<PurchaseReceipt> postReceipt({
    required String projectId,
    required String id,
  }) =>
      purchaseReceipts.post(projectId: projectId, id: id);

  /// Void a posted receipt: reverse its stock-in.
  Future<PurchaseReceipt> voidReceipt({
    required String projectId,
    required String id,
  }) =>
      purchaseReceipts.void$(projectId: projectId, id: id);

  /// Open order receivables (derived, read-only).
  Future<List<Receivable>> listReceivables({required String projectId}) async {
    final response = await client.get(
      '/finance/receivables',
      queryParameters: {'projectId': projectId},
    );
    final data = response.data['data'] ?? response.data;
    return (data as List)
        .whereType<Map>()
        .map((e) => Receivable.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  /// Record a customer / COD payment against an order.
  Future<CustomerPayment> collectPayment({
    required String orderId,
    required CollectCustomerPaymentInput data,
  }) async {
    final response = await client.post(
      '/finance/orders/$orderId/collect',
      data: data.toJson(),
      queryParameters: {'projectId': data.projectId},
    );
    return CustomerPayment.fromJson(response.data as Map<String, dynamic>);
  }

  // ─── Reports ──────────────────────────────────────────────────────────────

  Future<FinanceOverview> overview({required String projectId}) async {
    final response = await client.get('/finance/reports/overview',
        queryParameters: {'projectId': projectId});
    return FinanceOverview.fromJson(response.data as Map<String, dynamic>);
  }

  Future<CashPosition> cashPosition({required String projectId}) async {
    final response = await client.get('/finance/reports/cash-position',
        queryParameters: {'projectId': projectId});
    return CashPosition.fromJson(response.data as Map<String, dynamic>);
  }

  Future<AgingResult> apAging({required String projectId}) async {
    final response = await client.get('/finance/reports/ap-aging',
        queryParameters: {'projectId': projectId});
    return AgingResult.fromJson(response.data as Map<String, dynamic>);
  }

  Future<AgingResult> arAging({required String projectId}) async {
    final response = await client.get('/finance/reports/ar-aging',
        queryParameters: {'projectId': projectId});
    return AgingResult.fromJson(response.data as Map<String, dynamic>);
  }

  Future<PnlReport> pnl({
    required String projectId,
    String? from,
    String? to,
  }) async {
    final response = await client.get('/finance/reports/pnl', queryParameters: {
      'projectId': projectId,
      if (from != null) 'from': from,
      if (to != null) 'to': to,
    });
    return PnlReport.fromJson(response.data as Map<String, dynamic>);
  }
}

// ─── Suppliers ────────────────────────────────────────────────────────────────

class SupplierResourceRepository
    extends ResourceRepository<Supplier, SupplierCreate, SupplierUpdate>
    with ModelDeleteManyMixin<Supplier> {
  SupplierResourceRepository({required Dio client})
      : super(client: client, table: 'finance/suppliers');

  @override
  Supplier modelFromJson(dynamic json) =>
      Supplier.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(Supplier model) => model.toJson();

  @override
  SupplierCreate createFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    return SupplierCreate(
      projectId: m['projectId'] as String? ?? '',
      name: m['name'] as String? ?? '',
      code: m['code'] as String?,
      phone: m['phone'] as String?,
      email: m['email'] as String?,
      taxId: m['taxId'] as String?,
      address: m['address'] as Map<String, dynamic>?,
      paymentTerms: m['paymentTerms'] as String?,
      metadata: m['metadata'] as Map<String, dynamic>?,
    );
  }

  @override
  Map<String, dynamic> createToJson(SupplierCreate model) => model.toJson();

  @override
  SupplierUpdate updateFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    return SupplierUpdate(
      name: m['name'] as String?,
      code: m['code'] as String?,
      phone: m['phone'] as String?,
      email: m['email'] as String?,
      taxId: m['taxId'] as String?,
      address: m['address'] as Map<String, dynamic>?,
      paymentTerms: m['paymentTerms'] as String?,
      metadata: m['metadata'] as Map<String, dynamic>?,
      setToNull: (m['setToNull'] as List?)?.map((e) => e.toString()).toList() ??
          const [],
    );
  }

  @override
  Map<String, dynamic> updateToJson(SupplierUpdate model) => model.toJson();

  @override
  Future<ListResponse<Supplier>> list({
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) async {
    final qp = <String, dynamic>{...?params};
    final q = qp.remove('q') ?? qp.remove('searchQuery');
    if (q != null && q.toString().trim().isNotEmpty) {
      qp['search'] = q.toString().trim();
    }
    final response = await client.get(
      '/finance/suppliers',
      queryParameters: {
        if (page != null) 'page': page,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        ...qp,
      },
      cancelToken: modelListCancelToken,
    );
    return ListResponse<Supplier>.fromJson(response.data, modelFromJson);
  }

  @override
  Future<Supplier> create({
    required SupplierCreate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.post(
      '/finance/suppliers',
      data: {...data.toJson(), if (params != null) ...params},
      cancelToken: modelCreateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToCreateStream(model);
    return model;
  }

  @override
  Future<Supplier> update({
    required String id,
    Supplier? old,
    required SupplierUpdate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.put(
      '/finance/suppliers/$id',
      data: {...data.toUpdateJson(), if (params != null) ...params},
      cancelToken: modelUpdateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToUpdateStream(id, data);
    return model;
  }

  @override
  Future<void> delete({
    required String id,
    Map<String, dynamic>? params,
  }) async {
    await client.delete(
      '/finance/suppliers/$id',
      queryParameters: params,
      cancelToken: modelDeleteCancelToken,
    );
  }
}

// ─── Purchase orders ──────────────────────────────────────────────────────────

class PurchaseOrderResourceRepository extends ResourceRepository<PurchaseOrder,
    PurchaseOrderCreate, PurchaseOrderUpdate> {
  PurchaseOrderResourceRepository({required Dio client})
      : super(client: client, table: 'finance/purchase-orders');

  @override
  PurchaseOrder modelFromJson(dynamic json) =>
      PurchaseOrder.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(PurchaseOrder model) => model.toJson();

  @override
  PurchaseOrderCreate createFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    final rawItems = m['items'];
    return PurchaseOrderCreate(
      projectId: m['projectId'] as String? ?? '',
      supplierId: m['supplierId'] as String? ?? '',
      reference: m['reference'] as String?,
      notes: m['notes'] as String?,
      currency: m['currency'] as String?,
      items: rawItems is List
          ? rawItems
              .whereType<Map>()
              .map((e) =>
                  PurchaseOrderItem.fromJson(Map<String, dynamic>.from(e)))
              .toList()
          : const [],
    );
  }

  @override
  Map<String, dynamic> createToJson(PurchaseOrderCreate model) => model.toJson();

  @override
  PurchaseOrderUpdate updateFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    final rawItems = m['items'];
    return PurchaseOrderUpdate(
      reference: m['reference'] as String?,
      notes: m['notes'] as String?,
      currency: m['currency'] as String?,
      items: rawItems is List
          ? rawItems
              .whereType<Map>()
              .map((e) =>
                  PurchaseOrderItem.fromJson(Map<String, dynamic>.from(e)))
              .toList()
          : null,
      setToNull: (m['setToNull'] as List?)?.map((e) => e.toString()).toList() ??
          const [],
    );
  }

  @override
  Map<String, dynamic> updateToJson(PurchaseOrderUpdate model) => model.toJson();

  @override
  Future<ListResponse<PurchaseOrder>> list({
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) async {
    final qp = <String, dynamic>{...?params};
    qp.remove('q');
    qp.remove('searchQuery');
    final response = await client.get(
      '/finance/purchase-orders',
      queryParameters: {
        if (page != null) 'page': page,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        ...qp,
      },
      cancelToken: modelListCancelToken,
    );
    return ListResponse<PurchaseOrder>.fromJson(response.data, modelFromJson);
  }

  @override
  Future<PurchaseOrder> create({
    required PurchaseOrderCreate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.post(
      '/finance/purchase-orders',
      data: {...data.toJson(), if (params != null) ...params},
      cancelToken: modelCreateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToCreateStream(model);
    return model;
  }

  @override
  Future<PurchaseOrder> update({
    required String id,
    PurchaseOrder? old,
    required PurchaseOrderUpdate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.put(
      '/finance/purchase-orders/$id',
      data: {...data.toUpdateJson(), if (params != null) ...params},
      cancelToken: modelUpdateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToUpdateStream(id, data);
    return model;
  }

  @override
  Future<void> delete({
    required String id,
    Map<String, dynamic>? params,
  }) async {
    throw UnsupportedError('Purchase orders cannot be deleted; cancel instead.');
  }

  /// Transition the PO to `sent`.
  Future<PurchaseOrder> send({
    required String projectId,
    required String id,
  }) async {
    final response = await client.post(
      '/finance/purchase-orders/$id/send',
      queryParameters: {'projectId': projectId},
    );
    return modelFromJson(response.data);
  }

  /// Transition the PO to `cancelled`.
  Future<PurchaseOrder> cancel({
    required String projectId,
    required String id,
  }) async {
    final response = await client.post(
      '/finance/purchase-orders/$id/cancel',
      queryParameters: {'projectId': projectId},
    );
    return modelFromJson(response.data);
  }

  /// Set an explicit status (state machine enforced server-side).
  Future<PurchaseOrder> setStatus({
    required String projectId,
    required String id,
    required PurchaseOrderStatus status,
  }) async {
    final response = await client.post(
      '/finance/purchase-orders/$id/status',
      data: {'status': status.name},
      queryParameters: {'projectId': projectId},
    );
    return modelFromJson(response.data);
  }
}

// ─── Purchase receipts ────────────────────────────────────────────────────────

class PurchaseReceiptResourceRepository extends ResourceRepository<
    PurchaseReceipt, PurchaseReceiptCreate, PurchaseReceiptUpdate> {
  PurchaseReceiptResourceRepository({required Dio client})
      : super(client: client, table: 'finance/purchase-receipts');

  @override
  PurchaseReceipt modelFromJson(dynamic json) =>
      PurchaseReceipt.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(PurchaseReceipt model) => model.toJson();

  @override
  PurchaseReceiptCreate createFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    final rawLines = m['lines'];
    return PurchaseReceiptCreate(
      projectId: m['projectId'] as String? ?? '',
      supplierId: m['supplierId'] as String? ?? '',
      purchaseOrderId: m['purchaseOrderId'] as String?,
      warehouseId: m['warehouseId'] as String?,
      reference: m['reference'] as String?,
      notes: m['notes'] as String?,
      lines: rawLines is List
          ? rawLines.whereType<Map>().map((e) {
              final l = Map<String, dynamic>.from(e);
              return PurchaseReceiptLineInput(
                sku: l['sku'] as String,
                productId: l['productId'] as String?,
                variantPath: l['variantPath'] as String?,
                batch: l['batch'] as String?,
                qtyReceived: (l['qtyReceived'] as num?)?.toInt() ?? 0,
                unitCost: (l['unitCost'] as num?)?.toDouble() ?? 0,
                poLineIndex: (l['poLineIndex'] as num?)?.toInt(),
              );
            }).toList()
          : const [],
    );
  }

  @override
  Map<String, dynamic> createToJson(PurchaseReceiptCreate model) =>
      model.toJson();

  @override
  PurchaseReceiptUpdate updateFromJson(dynamic json) =>
      const PurchaseReceiptUpdate();

  @override
  Map<String, dynamic> updateToJson(PurchaseReceiptUpdate model) =>
      model.toJson();

  @override
  Future<PurchaseReceipt> find({
    required String id,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.get(
      '/finance/purchase-receipts/$id',
      queryParameters: params,
      cancelToken: modelFindCancelToken,
    );
    return modelFromJson(response.data);
  }

  @override
  Future<ListResponse<PurchaseReceipt>> list({
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) async {
    final qp = <String, dynamic>{...?params};
    qp.remove('q');
    qp.remove('searchQuery');
    final response = await client.get(
      '/finance/purchase-receipts',
      queryParameters: {
        if (page != null) 'page': page,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        ...qp,
      },
      cancelToken: modelListCancelToken,
    );
    return ListResponse<PurchaseReceipt>.fromJson(response.data, modelFromJson);
  }

  @override
  Future<PurchaseReceipt> create({
    required PurchaseReceiptCreate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.post(
      '/finance/purchase-receipts',
      data: {...data.toJson(), if (params != null) ...params},
      cancelToken: modelCreateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToCreateStream(model);
    return model;
  }

  @override
  Future<PurchaseReceipt> update({
    required String id,
    PurchaseReceipt? old,
    required PurchaseReceiptUpdate data,
    Map<String, dynamic>? params,
  }) async {
    throw UnsupportedError(
        'Purchase receipts are immutable; post or void instead.');
  }

  @override
  Future<void> delete({
    required String id,
    Map<String, dynamic>? params,
  }) async {
    await client.delete(
      '/finance/purchase-receipts/$id',
      queryParameters: params,
      cancelToken: modelDeleteCancelToken,
    );
  }

  /// Post the receipt: stock goods into inventory at batch cost (idempotent).
  Future<PurchaseReceipt> post({
    required String projectId,
    required String id,
  }) async {
    final response = await client.post(
      '/finance/purchase-receipts/$id/post',
      queryParameters: {'projectId': projectId},
    );
    return modelFromJson(response.data);
  }

  /// Void a posted receipt: reverse its stock-in. Named `void$` (Dart keyword).
  Future<PurchaseReceipt> void$({
    required String projectId,
    required String id,
  }) async {
    final response = await client.post(
      '/finance/purchase-receipts/$id/void',
      queryParameters: {'projectId': projectId},
    );
    return modelFromJson(response.data);
  }
}

// ─── Phase 2: financial accounts ────────────────────────────────────────────────

class FinancialAccountResourceRepository extends ResourceRepository<
    FinancialAccount,
    FinancialAccountCreate,
    FinancialAccountUpdate> with ModelDeleteManyMixin<FinancialAccount> {
  FinancialAccountResourceRepository({required Dio client})
      : super(client: client, table: 'finance/financial-accounts');

  @override
  FinancialAccount modelFromJson(dynamic json) =>
      FinancialAccount.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(FinancialAccount model) => model.toJson();

  @override
  Future<ListResponse<FinancialAccount>> list({
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) async {
    final qp = <String, dynamic>{...?params};
    final q = qp.remove('q') ?? qp.remove('searchQuery');
    if (q != null && q.toString().trim().isNotEmpty) {
      qp['search'] = q.toString().trim();
    }
    final response = await client.get(
      '/finance/financial-accounts',
      queryParameters: {
        if (page != null) 'page': page,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        ...qp,
      },
      cancelToken: modelListCancelToken,
    );
    return _parseFinancialAccountListResponse(response.data);
  }

  /// Parses plain arrays and Lucid paginator payloads (`{ meta, data }`).
  ListResponse<FinancialAccount> _parseFinancialAccountListResponse(dynamic body) {
    if (body is List) {
      final items = body
          .whereType<Map>()
          .map((e) => modelFromJson(Map<String, dynamic>.from(e)))
          .toList();
      return ListResponse(data: items, total: items.length, page: 1, limit: items.length);
    }

    if (body is Map) {
      final map = Map<String, dynamic>.from(body);
      final meta = map['meta'] is Map ? Map<String, dynamic>.from(map['meta'] as Map) : null;
      final rawData = map['data'];
      final rows = _coerceJsonList(rawData)
          .whereType<Map>()
          .map((e) => modelFromJson(Map<String, dynamic>.from(e)))
          .toList();
      return ListResponse(
        data: rows,
        total: _asInt(meta?['total'] ?? map['total']) ?? rows.length,
        page: _asInt(meta?['currentPage'] ?? meta?['current_page']),
        limit: _asInt(meta?['perPage'] ?? meta?['per_page']),
      );
    }

    return ListResponse(data: const []);
  }

  List<dynamic> _coerceJsonList(dynamic rawData) {
    if (rawData is List) return rawData;
    if (rawData is Map && rawData.isNotEmpty) {
      if (rawData.values.every((v) => v is Map)) {
        return rawData.values.toList();
      }
    }
    return const [];
  }

  int? _asInt(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is num) return value.toInt();
    return int.tryParse(value.toString());
  }

  @override
  Future<FinancialAccount> create({
    required FinancialAccountCreate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.post(
      '/finance/financial-accounts',
      data: {...data.toJson(), if (params != null) ...params},
      cancelToken: modelCreateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToCreateStream(model);
    return model;
  }

  @override
  Future<FinancialAccount> update({
    required String id,
    FinancialAccount? old,
    required FinancialAccountUpdate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.put(
      '/finance/financial-accounts/$id',
      data: {...data.toUpdateJson(), if (params != null) ...params},
      cancelToken: modelUpdateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToUpdateStream(id, data);
    return model;
  }

  @override
  FinancialAccountCreate createFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    return FinancialAccountCreate(
      projectId: m['projectId'] as String? ?? '',
      name: m['name'] as String? ?? '',
      currency: m['currency'] as String?,
      metadata: m['metadata'] as Map<String, dynamic>?,
    );
  }

  @override
  Map<String, dynamic> createToJson(FinancialAccountCreate model) =>
      model.toJson();

  @override
  FinancialAccountUpdate updateFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    return FinancialAccountUpdate(
      name: m['name'] as String?,
      currency: m['currency'] as String?,
      metadata: m['metadata'] as Map<String, dynamic>?,
      setToNull: (m['setToNull'] as List?)?.map((e) => e.toString()).toList() ??
          const [],
    );
  }

  @override
  Map<String, dynamic> updateToJson(FinancialAccountUpdate model) =>
      model.toJson();
}

// ─── Phase 2: supplier bills ────────────────────────────────────────────────────

class SupplierBillResourceRepository extends ResourceRepository<SupplierBill,
    SupplierBillCreate, PurchaseReceiptUpdate> {
  SupplierBillResourceRepository({required Dio client})
      : super(client: client, table: 'finance/supplier-bills');

  @override
  SupplierBill modelFromJson(dynamic json) =>
      SupplierBill.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(SupplierBill model) => model.toJson();

  @override
  SupplierBillCreate createFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    return SupplierBillCreate(
      projectId: m['projectId'] as String? ?? '',
      supplierId: m['supplierId'] as String? ?? '',
      purchaseReceiptId: m['purchaseReceiptId'] as String?,
      reference: m['reference'] as String?,
      billDate: m['billDate'] != null
          ? DateTime.parse(m['billDate'] as String)
          : DateTime.now(),
      dueDate: m['dueDate'] != null
          ? DateTime.tryParse(m['dueDate'] as String)
          : null,
      currency: m['currency'] as String?,
      totalAmount: (m['totalAmount'] as num?)?.toDouble() ?? 0,
      notes: m['notes'] as String?,
    );
  }

  @override
  Map<String, dynamic> createToJson(SupplierBillCreate model) => model.toJson();

  @override
  PurchaseReceiptUpdate updateFromJson(dynamic json) =>
      const PurchaseReceiptUpdate();

  @override
  Map<String, dynamic> updateToJson(PurchaseReceiptUpdate model) =>
      model.toJson();

  @override
  Future<SupplierBill> update({
    required String id,
    SupplierBill? old,
    required PurchaseReceiptUpdate data,
    Map<String, dynamic>? params,
  }) async {
    throw UnsupportedError('Supplier bills are managed via payments.');
  }

  @override
  Future<void> delete({required String id, Map<String, dynamic>? params}) async {
    throw UnsupportedError('Supplier bills cannot be deleted; void instead.');
  }

  /// Record a (partial) payment against a bill.
  Future<SupplierBill> pay({
    required String id,
    required PaySupplierBillInput data,
  }) async {
    final response = await client.post(
      '/finance/supplier-bills/$id/pay',
      data: data.toJson(),
      queryParameters: {'projectId': data.projectId},
    );
    // Server returns `{ bill, payment }`.
    final body = response.data as Map<String, dynamic>;
    return SupplierBill.fromJson(body['bill'] as Map<String, dynamic>);
  }
}

// ─── Phase 2: supplier payments ─────────────────────────────────────────────────

class SupplierPaymentResourceRepository extends ResourceRepository<
    SupplierPayment, PaySupplierBillInputModel, PurchaseReceiptUpdate> {
  SupplierPaymentResourceRepository({required Dio client})
      : super(client: client, table: 'finance/supplier-payments');

  @override
  SupplierPayment modelFromJson(dynamic json) =>
      SupplierPayment.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(SupplierPayment model) => model.toJson();

  @override
  PaySupplierBillInputModel createFromJson(dynamic json) =>
      const PaySupplierBillInputModel();

  @override
  Map<String, dynamic> createToJson(PaySupplierBillInputModel model) =>
      model.toJson();

  @override
  PurchaseReceiptUpdate updateFromJson(dynamic json) =>
      const PurchaseReceiptUpdate();

  @override
  Map<String, dynamic> updateToJson(PurchaseReceiptUpdate model) =>
      model.toJson();

  @override
  Future<SupplierPayment> create({
    required PaySupplierBillInputModel data,
    Map<String, dynamic>? params,
  }) async {
    throw UnsupportedError('Record payments via supplierBills.pay().');
  }

  @override
  Future<SupplierPayment> update({
    required String id,
    SupplierPayment? old,
    required PurchaseReceiptUpdate data,
    Map<String, dynamic>? params,
  }) async {
    throw UnsupportedError('Supplier payments are immutable; void instead.');
  }

  /// Void a payment and recompute the parent bill.
  Future<SupplierBill> void$({
    required String projectId,
    required String id,
  }) async {
    final response = await client.post(
      '/finance/supplier-payments/$id/void',
      queryParameters: {'projectId': projectId},
    );
    return SupplierBill.fromJson(response.data as Map<String, dynamic>);
  }
}

// ─── Phase 2: customer payments ─────────────────────────────────────────────────

class CustomerPaymentResourceRepository extends ResourceRepository<
    CustomerPayment, PaySupplierBillInputModel, PurchaseReceiptUpdate> {
  CustomerPaymentResourceRepository({required Dio client})
      : super(client: client, table: 'finance/customer-payments');

  @override
  CustomerPayment modelFromJson(dynamic json) =>
      CustomerPayment.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(CustomerPayment model) => model.toJson();

  @override
  PaySupplierBillInputModel createFromJson(dynamic json) =>
      const PaySupplierBillInputModel();

  @override
  Map<String, dynamic> createToJson(PaySupplierBillInputModel model) =>
      model.toJson();

  @override
  PurchaseReceiptUpdate updateFromJson(dynamic json) =>
      const PurchaseReceiptUpdate();

  @override
  Map<String, dynamic> updateToJson(PurchaseReceiptUpdate model) =>
      model.toJson();

  @override
  Future<CustomerPayment> create({
    required PaySupplierBillInputModel data,
    Map<String, dynamic>? params,
  }) async {
    throw UnsupportedError('Record payments via FinanceRepository.collectPayment().');
  }

  @override
  Future<CustomerPayment> update({
    required String id,
    CustomerPayment? old,
    required PurchaseReceiptUpdate data,
    Map<String, dynamic>? params,
  }) async {
    throw UnsupportedError('Customer payments are immutable; void instead.');
  }

  /// Void a customer payment.
  Future<void> void$({required String projectId, required String id}) async {
    await client.post(
      '/finance/customer-payments/$id/void',
      queryParameters: {'projectId': projectId},
    );
  }
}

/// Placeholder create type for payment repositories whose creation happens via
/// dedicated endpoints (`supplier-bills/pay`, `orders/collect`).
class PaySupplierBillInputModel implements ModelCreate {
  const PaySupplierBillInputModel();

  @override
  Map<String, dynamic> toJson() => const {};
}

// ─── Phase 2: receivables (derived, read-only) ────────────────────────────────

class ReceivableNoopCreate implements ModelCreate {
  const ReceivableNoopCreate();

  @override
  Map<String, dynamic> toJson() => const {};
}

class ReceivableNoopUpdate implements ModelUpdate {
  const ReceivableNoopUpdate();

  @override
  Map<String, dynamic> toJson() => const {};

  @override
  List<String> get setToNull => const [];
}

class ReceivableResourceRepository extends ResourceRepository<Receivable,
    ReceivableNoopCreate, ReceivableNoopUpdate> {
  ReceivableResourceRepository({required Dio client})
      : super(client: client, table: 'finance/receivables');

  @override
  Receivable modelFromJson(dynamic json) =>
      Receivable.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(Receivable model) =>
      {'orderId': model.orderId};

  @override
  ReceivableNoopCreate createFromJson(dynamic json) => const ReceivableNoopCreate();

  @override
  Map<String, dynamic> createToJson(ReceivableNoopCreate model) => model.toJson();

  @override
  ReceivableNoopUpdate updateFromJson(dynamic json) => const ReceivableNoopUpdate();

  @override
  Map<String, dynamic> updateToJson(ReceivableNoopUpdate model) => model.toUpdateJson();

  @override
  Future<ListResponse<Receivable>> list({
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) async {
    final qp = Map<String, dynamic>.from(params ?? {});
    final projectId = qp.remove('projectId') as String?;
    final q = (qp.remove('q') ?? qp.remove('searchQuery'))?.toString().trim();
    final codRaw = qp.remove('codInTransit');
    final codOnly = codRaw == true || codRaw == 'true';

    final response = await client.get(
      '/finance/receivables',
      queryParameters: {if (projectId != null) 'projectId': projectId},
      cancelToken: modelListCancelToken,
    );
    final data = response.data['data'] ?? response.data;
    var items = (data as List)
        .whereType<Map>()
        .map((e) => modelFromJson(Map<String, dynamic>.from(e)))
        .toList();

    if (q != null && q.isNotEmpty) {
      final lower = q.toLowerCase();
      items = items
          .where((r) => r.orderId.toLowerCase().contains(lower))
          .toList();
    }
    if (codOnly == true) {
      items = items.where((r) => r.codInTransit).toList();
    }

    return ListResponse(
      data: items,
      total: items.length,
      page: 1,
      limit: items.length,
    );
  }

  @override
  Future<Receivable> create({
    required ReceivableNoopCreate data,
    Map<String, dynamic>? params,
  }) async {
    throw UnsupportedError('Receivables are derived from orders.');
  }

  @override
  Future<Receivable> update({
    required String id,
    Receivable? old,
    required ReceivableNoopUpdate data,
    Map<String, dynamic>? params,
  }) async {
    throw UnsupportedError('Receivables are read-only.');
  }

  @override
  Future<void> delete({required String id, Map<String, dynamic>? params}) async {
    throw UnsupportedError('Receivables are read-only.');
  }
}

// ─── Phase 2: expenses ──────────────────────────────────────────────────────────

class ExpenseResourceRepository
    extends ResourceRepository<Expense, ExpenseCreate, ExpenseUpdate>
    with ModelDeleteManyMixin<Expense> {
  ExpenseResourceRepository({required Dio client})
      : super(client: client, table: 'finance/expenses');

  @override
  Expense modelFromJson(dynamic json) =>
      Expense.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(Expense model) => model.toJson();

  @override
  ExpenseCreate createFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    return ExpenseCreate(
      projectId: m['projectId'] as String? ?? '',
      categoryId: m['categoryId'] as String?,
      supplierId: m['supplierId'] as String?,
      financialAccountId: m['financialAccountId'] as String?,
      amount: (m['amount'] as num?)?.toDouble() ?? 0,
      currency: m['currency'] as String?,
      spentAt: m['spentAt'] != null
          ? DateTime.parse(m['spentAt'] as String)
          : DateTime.now(),
      paymentMethod: m['paymentMethod'] as String?,
      reference: m['reference'] as String?,
      note: m['note'] as String?,
    );
  }

  @override
  Map<String, dynamic> createToJson(ExpenseCreate model) => model.toJson();

  @override
  ExpenseUpdate updateFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    return ExpenseUpdate(
      categoryId: m['categoryId'] as String?,
      supplierId: m['supplierId'] as String?,
      financialAccountId: m['financialAccountId'] as String?,
      amount: (m['amount'] as num?)?.toDouble(),
      currency: m['currency'] as String?,
      paymentMethod: m['paymentMethod'] as String?,
      reference: m['reference'] as String?,
      note: m['note'] as String?,
      setToNull: (m['setToNull'] as List?)?.map((e) => e.toString()).toList() ??
          const [],
    );
  }

  @override
  Map<String, dynamic> updateToJson(ExpenseUpdate model) => model.toJson();
}

// ─── Phase 2: expense categories ────────────────────────────────────────────────

class ExpenseCategoryResourceRepository extends ResourceRepository<
    ExpenseCategory, ExpenseCategoryCreate, ExpenseCategoryUpdate> {
  ExpenseCategoryResourceRepository({required Dio client})
      : super(client: client, table: 'finance/expense-categories');

  @override
  ExpenseCategory modelFromJson(dynamic json) =>
      ExpenseCategory.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(ExpenseCategory model) => model.toJson();

  @override
  ExpenseCategoryCreate createFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    return ExpenseCategoryCreate(
      projectId: m['projectId'] as String? ?? '',
      name: m['name'] as String? ?? '',
      parentId: m['parentId'] as String?,
      metadata: m['metadata'] as Map<String, dynamic>?,
    );
  }

  @override
  Map<String, dynamic> createToJson(ExpenseCategoryCreate model) =>
      model.toJson();

  @override
  ExpenseCategoryUpdate updateFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    return ExpenseCategoryUpdate(
      name: m['name'] as String?,
      parentId: m['parentId'] as String?,
      metadata: m['metadata'] as Map<String, dynamic>?,
      setToNull: (m['setToNull'] as List?)?.map((e) => e.toString()).toList() ??
          const [],
    );
  }

  @override
  Map<String, dynamic> updateToJson(ExpenseCategoryUpdate model) =>
      model.toJson();
}
