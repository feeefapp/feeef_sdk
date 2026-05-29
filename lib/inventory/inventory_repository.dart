import 'package:dio/dio.dart';
import 'package:feeef/core/batch_models.dart';
import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/inventory/models/inventory_models.dart';
import 'package:feeef/mixins/repository_batch_mixins.dart';

/// Inventory API entry point. Prefer sub-repositories (`objects`, `warehouses`, …).
class InventoryRepository {
  final Dio client;
  late final InventoryObjectResourceRepository objects;
  late final InventoryWarehouseResourceRepository warehouses;
  late final InventoryMovementResourceRepository movements;
  late final InventoryReservationResourceRepository reservations;
  late final InventoryAliasResourceRepository aliases;

  InventoryRepository({required this.client}) {
    objects = InventoryObjectResourceRepository(client: client);
    warehouses = InventoryWarehouseResourceRepository(client: client);
    movements = InventoryMovementResourceRepository(client: client);
    reservations = InventoryReservationResourceRepository(client: client);
    aliases = InventoryAliasResourceRepository(client: client);
  }

  /// Scoped SKU → aggregated available quantity (`tshirtx` or `tshirtx*`).
  Future<Map<String, int>> availability({
    required String projectId,
    required List<String> skus,
  }) async {
    final response = await client.get(
      '/inventory/availability',
      queryParameters: {'projectId': projectId, 'skus': skus.join(',')},
    );
    final raw = response.data;
    final Map<String, dynamic> map;
    if (raw is Map && raw['data'] is Map) {
      map = Map<String, dynamic>.from(raw['data'] as Map);
    } else if (raw is Map) {
      map = Map<String, dynamic>.from(raw);
    } else {
      return {};
    }
    return map.map(
      (key, value) => MapEntry(key.toString(), (value as num?)?.toInt() ?? 0),
    );
  }

  Future<ListResponse<InventoryReservation>> reservationsByHolder({
    required String projectId,
    required String holderRef,
  }) =>
      reservations.list(
        params: {'projectId': projectId, 'holderRef': holderRef},
      );

  Future<ListResponse<Project>> listProjects() async {
    final response = await client.get('/inventory/projects');
    return ListResponse<Project>.fromJson(
      response.data,
      (json) => Project.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<Project> createProject({required String name}) async {
    final response = await client.post(
      '/inventory/projects',
      data: {'name': name},
    );
    return Project.fromJson(response.data as Map<String, dynamic>);
  }

  /// Storefront scoped availability (`tshirtx` or `tshirtx*`).
  Future<Map<String, int>> publicAvailability({
    required String storeId,
    required List<String> skus,
  }) async {
    final response = await client.post(
      '/inventory/public/availability',
      data: {'storeId': storeId, 'skus': skus},
    );
    final raw = response.data;
    final Map<String, dynamic> map;
    if (raw is Map && raw['data'] is Map) {
      map = Map<String, dynamic>.from(raw['data'] as Map);
    } else if (raw is Map) {
      map = Map<String, dynamic>.from(raw);
    } else {
      return {};
    }
    return map.map(
      (key, value) => MapEntry(key.toString(), (value as num?)?.toInt() ?? 0),
    );
  }
}

class InventoryObjectUpdate implements ModelUpdate {
  final String? namespace;
  final String? batch;
  final String? storageClass;
  final String? warehouseId;
  final int? priority;
  final DateTime? expiresAt;
  final Map<String, dynamic>? metadata;

  const InventoryObjectUpdate({
    this.namespace,
    this.batch,
    this.storageClass,
    this.warehouseId,
    this.priority,
    this.expiresAt,
    this.metadata,
    this.setToNull = const [],
  });

  @override
  final List<String> setToNull;

  @override
  Map<String, dynamic> toJson() => {
    if (namespace != null) 'namespace': namespace,
    if (batch != null) 'batch': batch,
    if (storageClass != null) 'storageClass': storageClass,
    if (warehouseId != null) 'warehouseId': warehouseId,
    if (priority != null) 'priority': priority,
    if (expiresAt != null) 'expiresAt': expiresAt!.toIso8601String(),
    if (metadata != null) 'metadata': metadata,
  };
}

/// ResourceView-compatible adapter for inventory stock objects.
///
/// It reuses the shared ResourceController/ResourceView/filterator UI while
/// translating the generic resource query parameters to the inventory API.
class InventoryObjectResourceRepository
    extends
        ResourceRepository<
          InventoryObject,
          InventoryReceiveInput,
          InventoryObjectUpdate
        >
    with ModelDeleteManyMixin<InventoryObject>, ModelUpdateManyMixin<InventoryObject> {
  InventoryObjectResourceRepository({required Dio client})
    : super(client: client, table: 'inventory/objects');

  @override
  InventoryObject modelFromJson(dynamic json) =>
      InventoryObject.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(InventoryObject model) => model.toJson();

  @override
  InventoryReceiveInput createFromJson(dynamic json) {
    return InventoryReceiveInput(
      projectId: json['projectId'] as String,
      namespace: json['namespace'] as String? ?? '',
      sku: json['sku'] as String,
      batch: json['batch'] as String?,
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      warehouseId: json['warehouseId'] as String?,
      storageClass: json['storageClass'] as String? ?? 'HOT',
      metadata: json['metadata'] as Map<String, dynamic>?,
    );
  }

  @override
  Map<String, dynamic> createToJson(InventoryReceiveInput model) =>
      model.toJson();

  @override
  InventoryObjectUpdate updateFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    return InventoryObjectUpdate(
      namespace: m['namespace'] as String?,
      batch: m['batch'] as String?,
      storageClass: m['storageClass'] as String?,
      warehouseId: m['warehouseId'] as String?,
      priority: (m['priority'] as num?)?.toInt(),
      expiresAt: m['expiresAt'] != null
          ? DateTime.tryParse(m['expiresAt'] as String)
          : null,
      metadata: m['metadata'] as Map<String, dynamic>?,
      setToNull: (m['setToNull'] as List?)?.map((e) => e.toString()).toList() ??
          const [],
    );
  }

  @override
  Map<String, dynamic> updateToJson(InventoryObjectUpdate model) =>
      model.toJson();

  @override
  Future<InventoryObject> find({
    required String id,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.get(
      '/inventory/objects/$id',
      queryParameters: params,
      cancelToken: modelFindCancelToken,
    );
    return modelFromJson(response.data);
  }

  @override
  Future<InventoryObject> update({
    required String id,
    InventoryObject? old,
    required InventoryObjectUpdate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.put(
      '/inventory/objects/$id',
      data: {...data.toUpdateJson(), if (params != null) ...params},
      cancelToken: modelUpdateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToUpdateStream(id, data);
    return model;
  }

  @override
  Future<ListResponse<InventoryObject>> list({
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) async {
    final qp = <String, dynamic>{...?params};

    // ResourceController sends search as `q`; inventory endpoint uses `search`.
    final q = qp.remove('q') ?? qp.remove('searchQuery');
    if (q != null && q.toString().trim().isNotEmpty) {
      qp['search'] = q.toString().trim();
    }

    final response = await client.get(
      '/inventory/objects',
      queryParameters: {
        if (page != null) 'page': page,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        ...qp,
      },
      cancelToken: modelListCancelToken,
    );
    return ListResponse<InventoryObject>.fromJson(response.data, modelFromJson);
  }

  @override
  Future<InventoryObject> create({
    required InventoryReceiveInput data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.post(
      '/inventory/objects',
      data: {...data.toJson(), if (params != null) ...params},
      cancelToken: modelCreateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToCreateStream(model);
    return model;
  }

  @override
  Future<void> delete({
    required String id,
    Map<String, dynamic>? params,
  }) async {
    await client.delete(
      '/inventory/objects/$id',
      cancelToken: modelDeleteCancelToken,
    );
  }

  /// Apply quantity deltas (`POST /inventory/objects/apply-deltas`).
  Future<void> applyDeltas({
    required String projectId,
    required List<Map<String, dynamic>> deltas,
    required String reason,
    String? correlationRef,
  }) async {
    await client.post(
      '/inventory/objects/apply-deltas',
      data: {
        'projectId': projectId,
        'deltas': deltas,
        'reason': reason,
        if (correlationRef != null) 'correlationRef': correlationRef,
      },
    );
  }
}

class InventoryWarehouseResourceRepository
    extends
        ResourceRepository<
          InventoryWarehouse,
          InventoryWarehouseCreate,
          InventoryWarehouseUpdate
        >
    with ModelDeleteManyMixin<InventoryWarehouse> {
  InventoryWarehouseResourceRepository({required Dio client})
    : super(client: client, table: 'inventory/warehouses');

  @override
  InventoryWarehouse modelFromJson(dynamic json) =>
      InventoryWarehouse.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(InventoryWarehouse model) => model.toJson();

  @override
  InventoryWarehouseCreate createFromJson(dynamic json) =>
      InventoryWarehouseCreate(
        projectId: json['projectId'] as String? ?? '',
        name: json['name'] as String? ?? '',
        code: json['code'] as String? ?? '',
        namespacePrefix: json['namespacePrefix'] as String?,
      );

  @override
  Map<String, dynamic> createToJson(InventoryWarehouseCreate model) =>
      model.toJson();

  @override
  InventoryWarehouseUpdate updateFromJson(dynamic json) =>
      InventoryWarehouseUpdate(
        name: json['name'] as String?,
        code: json['code'] as String?,
        namespacePrefix: json['namespacePrefix'] as String?,
      );

  @override
  Map<String, dynamic> updateToJson(InventoryWarehouseUpdate model) =>
      model.toJson();

  @override
  Future<ListResponse<InventoryWarehouse>> list({
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
      '/inventory/warehouses',
      queryParameters: {
        if (page != null) 'page': page,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        ...qp,
      },
      cancelToken: modelListCancelToken,
    );
    return ListResponse<InventoryWarehouse>.fromJson(
      response.data,
      modelFromJson,
    );
  }

  @override
  Future<InventoryWarehouse> create({
    required InventoryWarehouseCreate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.post(
      '/inventory/warehouses',
      data: {...data.toJson(), if (params != null) ...params},
      cancelToken: modelCreateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToCreateStream(model);
    return model;
  }

  @override
  Future<InventoryWarehouse> update({
    required String id,
    InventoryWarehouse? old,
    required InventoryWarehouseUpdate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.put(
      '/inventory/warehouses/$id',
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
      '/inventory/warehouses/$id',
      queryParameters: params,
      cancelToken: modelDeleteCancelToken,
    );
  }
}

class InventoryMovementResourceRepository
    extends
        ResourceRepository<
          InventoryMovement,
          InventoryMovementCreate,
          InventoryMovementUpdate
        > {
  InventoryMovementResourceRepository({required Dio client})
    : super(client: client, table: 'inventory/movements');

  @override
  InventoryMovement modelFromJson(dynamic json) =>
      InventoryMovement.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(InventoryMovement model) => {};

  @override
  InventoryMovementCreate createFromJson(dynamic json) =>
      const InventoryMovementCreate();

  @override
  Map<String, dynamic> createToJson(InventoryMovementCreate model) =>
      model.toJson();

  @override
  InventoryMovementUpdate updateFromJson(dynamic json) =>
      const InventoryMovementUpdate();

  @override
  Map<String, dynamic> updateToJson(InventoryMovementUpdate model) =>
      model.toJson();

  @override
  Future<ListResponse<InventoryMovement>> list({
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
      '/inventory/movements',
      queryParameters: {
        if (page != null) 'page': page,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        ...qp,
      },
      cancelToken: modelListCancelToken,
    );
    return ListResponse<InventoryMovement>.fromJson(
      response.data,
      modelFromJson,
    );
  }

  @override
  Future<InventoryMovement> create({
    required InventoryMovementCreate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.post(
      '/inventory/movements',
      data: {...data.toJson(), if (params != null) ...params},
      cancelToken: modelCreateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToCreateStream(model);
    return model;
  }

  @override
  Future<void> delete({
    required String id,
    Map<String, dynamic>? params,
  }) async {
    throw UnsupportedError('Inventory movements are immutable audit records');
  }
}

class InventoryReservationResourceRepository
    extends
        ResourceRepository<
          InventoryReservation,
          InventoryReservationCreate,
          InventoryReservationUpdate
        > {
  InventoryReservationResourceRepository({required Dio client})
    : super(client: client, table: 'inventory/reservations');

  /// Batch release holds (`POST /inventory/reservations:batchRelease`).
  Future<BatchResult<void>> releaseMany({
    required BatchReleaseRequest request,
  }) =>
      postBatchAction<void>(
        action: 'batchRelease',
        body: request.toJson(),
      );

  /// Single release (`POST /inventory/reservations/:id:release`).
  Future<void> release({
    required String projectId,
    required String id,
  }) async {
    await client.post(
      '/inventory/reservations/$id:release',
      queryParameters: {'projectId': projectId},
    );
  }

  @override
  Future<InventoryReservation> find({
    required String id,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.get(
      '/inventory/reservations/$id',
      queryParameters: params,
      cancelToken: modelFindCancelToken,
    );
    final data = response.data;
    if (data is List && data.isNotEmpty) {
      return modelFromJson(data.first);
    }
    return modelFromJson(data);
  }

  @override
  InventoryReservation modelFromJson(dynamic json) =>
      InventoryReservation.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(InventoryReservation model) => {};

  @override
  InventoryReservationCreate createFromJson(dynamic json) =>
      const InventoryReservationCreate();

  @override
  Map<String, dynamic> createToJson(InventoryReservationCreate model) =>
      model.toJson();

  @override
  InventoryReservationUpdate updateFromJson(dynamic json) =>
      const InventoryReservationUpdate();

  @override
  Map<String, dynamic> updateToJson(InventoryReservationUpdate model) =>
      model.toJson();

  @override
  Future<ListResponse<InventoryReservation>> list({
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
      '/inventory/reservations',
      queryParameters: {
        if (page != null) 'page': page,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        ...qp,
      },
      cancelToken: modelListCancelToken,
    );
    return ListResponse<InventoryReservation>.fromJson(
      response.data,
      modelFromJson,
    );
  }

  @override
  Future<InventoryReservation> create({
    required InventoryReservationCreate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.post(
      '/inventory/reservations',
      data: {...data.toJson(), if (params != null) ...params},
      cancelToken: modelCreateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToCreateStream(model);
    return model;
  }

  @override
  Future<void> delete({
    required String id,
    Map<String, dynamic>? params,
  }) async {
    throw UnsupportedError('Reservations cannot be deleted; use release instead');
  }
}

class InventoryAliasResourceRepository
    extends
        ResourceRepository<
          InventoryAlias,
          InventoryAliasCreate,
          InventoryAliasUpdate
        >
    with ModelDeleteManyMixin<InventoryAlias> {
  InventoryAliasResourceRepository({required Dio client})
    : super(client: client, table: 'inventory/aliases');

  @override
  InventoryAlias modelFromJson(dynamic json) =>
      InventoryAlias.fromJson(json as Map<String, dynamic>);

  @override
  Map<String, dynamic> modelToJson(InventoryAlias model) => {};

  @override
  InventoryAliasCreate createFromJson(dynamic json) => InventoryAliasCreate(
    projectId: json['projectId'] as String? ?? '',
    alias: json['alias'] as String? ?? '',
    targetSku: json['targetSku'] as String? ?? '',
  );

  @override
  Map<String, dynamic> createToJson(InventoryAliasCreate model) =>
      model.toJson();

  @override
  InventoryAliasUpdate updateFromJson(dynamic json) {
    final m = Map<String, dynamic>.from(json as Map);
    return InventoryAliasUpdate(
      targetSku: m['targetSku'] as String?,
      setToNull: (m['setToNull'] as List?)?.map((e) => e.toString()).toList() ??
          const [],
    );
  }

  @override
  Map<String, dynamic> updateToJson(InventoryAliasUpdate model) =>
      model.toJson();

  @override
  Future<InventoryAlias> update({
    required String id,
    InventoryAlias? old,
    required InventoryAliasUpdate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.put(
      '/inventory/aliases/$id',
      data: data.toUpdateJson(),
      queryParameters: params,
      cancelToken: modelUpdateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToUpdateStream(id, data);
    return model;
  }

  @override
  Future<ListResponse<InventoryAlias>> list({
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
      '/inventory/aliases',
      queryParameters: {
        if (page != null) 'page': page,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        ...qp,
      },
      cancelToken: modelListCancelToken,
    );
    return ListResponse<InventoryAlias>.fromJson(response.data, modelFromJson);
  }

  @override
  Future<InventoryAlias> create({
    required InventoryAliasCreate data,
    Map<String, dynamic>? params,
  }) async {
    final response = await client.post(
      '/inventory/aliases',
      data: {...data.toJson(), if (params != null) ...params},
      cancelToken: modelCreateCancelToken,
    );
    final model = modelFromJson(response.data);
    addToCreateStream(model);
    return model;
  }

  @override
  Future<void> delete({
    required String id,
    Map<String, dynamic>? params,
  }) async {
    await client.delete(
      '/inventory/aliases/$id',
      queryParameters: params,
      cancelToken: modelDeleteCancelToken,
    );
  }
}
