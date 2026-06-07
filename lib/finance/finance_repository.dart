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

  FinanceRepository({required this.client}) {
    suppliers = SupplierResourceRepository(client: client);
    purchaseOrders = PurchaseOrderResourceRepository(client: client);
    purchaseReceipts = PurchaseReceiptResourceRepository(client: client);
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
      '/finance/purchase-orders/$id:send',
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
      '/finance/purchase-orders/$id:cancel',
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
      '/finance/purchase-orders/$id:status',
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
      '/finance/purchase-receipts/$id:post',
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
      '/finance/purchase-receipts/$id:void',
      queryParameters: {'projectId': projectId},
    );
    return modelFromJson(response.data);
  }
}
