import 'package:dio/dio.dart';
import 'package:feeef/core/list_response.dart';
import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/inventory/models/inventory_models.dart';

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

  // ─── Objects ──────────────────────────────────────────────────────────────

  Future<ListResponse<InventoryObject>> listObjects({
    required String projectId,
    String? namespace,
    String? sku,
    String? search,
    int page = 0,
    int limit = 50,
    String? storageClass,
    String? filterator,
    String? orderBy,
    String? orderDir,
  }) async {
    final response = await client.get(
      '/inventory/objects',
      queryParameters: {
        'projectId': projectId,
        if (namespace != null) 'namespace': namespace,
        if (sku != null) 'sku': sku,
        if (storageClass != null) 'storageClass': storageClass,
        if (search != null && search.isNotEmpty) 'search': search,
        if (filterator != null && filterator.isNotEmpty)
          'filterator': filterator,
        if (orderBy != null && orderBy.isNotEmpty) 'orderBy': orderBy,
        if (orderDir != null && orderDir.isNotEmpty) 'orderDir': orderDir,
        'page': page,
        'limit': limit,
      },
    );
    return ListResponse<InventoryObject>.fromJson(
      response.data,
      (json) => InventoryObject.fromJson(json as Map<String, dynamic>),
    );
  }

  /// Stock a new inventory item (receive goods).
  Future<InventoryObject> receive(InventoryReceiveInput data) async {
    final response = await client.post(
      '/inventory/objects',
      data: data.toJson(),
    );
    return InventoryObject.fromJson(response.data as Map<String, dynamic>);
  }

  /// Apply quantity deltas to one or more inventory objects.
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

  Future<void> deleteObject(String id) async {
    await client.delete('/inventory/objects/$id');
  }

  /// Returns a map of sku → available quantity for the given SKUs.
  Future<Map<String, int>> availability({
    required String projectId,
    required List<String> skus,
  }) async {
    final response = await client.get(
      '/inventory/availability',
      queryParameters: {'projectId': projectId, 'skus': skus.join(',')},
    );
    return (response.data as Map).map(
      (key, value) => MapEntry(key.toString(), (value as num?)?.toInt() ?? 0),
    );
  }

  // ─── Movements ────────────────────────────────────────────────────────────

  Future<ListResponse<InventoryMovement>> listMovements({
    required String projectId,
    String? objectId,
    String? correlationRef,
    int page = 0,
    int limit = 50,
  }) async {
    final response = await client.get(
      '/inventory/movements',
      queryParameters: {
        'projectId': projectId,
        if (objectId != null) 'objectId': objectId,
        if (correlationRef != null) 'correlationRef': correlationRef,
        'page': page,
        'limit': limit,
      },
    );
    return ListResponse<InventoryMovement>.fromJson(
      response.data,
      (json) => InventoryMovement.fromJson(json as Map<String, dynamic>),
    );
  }

  // ─── Reservations ─────────────────────────────────────────────────────────

  Future<ListResponse<InventoryReservation>> listReservations({
    required String projectId,
    String? state,
    int page = 0,
    int limit = 50,
  }) async {
    final response = await client.get(
      '/inventory/reservations',
      queryParameters: {
        'projectId': projectId,
        if (state != null) 'state': state,
        'page': page,
        'limit': limit,
      },
    );
    return ListResponse<InventoryReservation>.fromJson(
      response.data,
      (json) => InventoryReservation.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ListResponse<InventoryReservation>> reservationsByHolder({
    required String projectId,
    required String holderRef,
  }) async {
    final response = await client.get(
      '/inventory/reservations',
      queryParameters: {'projectId': projectId, 'holderRef': holderRef},
    );
    return ListResponse<InventoryReservation>.fromJson(
      response.data,
      (json) => InventoryReservation.fromJson(json as Map<String, dynamic>),
    );
  }

  // ─── Projects ─────────────────────────────────────────────────────────────

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

  // ─── Aliases ──────────────────────────────────────────────────────────────

  Future<ListResponse<InventoryAlias>> listAliases({
    required String projectId,
  }) async {
    final response = await client.get(
      '/inventory/aliases',
      queryParameters: {'projectId': projectId},
    );
    return ListResponse<InventoryAlias>.fromJson(
      response.data,
      (json) => InventoryAlias.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<InventoryAlias> createAlias({
    required String projectId,
    required String alias,
    required String targetSku,
  }) async {
    final response = await client.post(
      '/inventory/aliases',
      data: {'projectId': projectId, 'alias': alias, 'targetSku': targetSku},
    );
    return InventoryAlias.fromJson(response.data as Map<String, dynamic>);
  }

  Future<void> deleteAlias({
    required String projectId,
    required String alias,
  }) async {
    await client.delete(
      '/inventory/aliases/$alias',
      queryParameters: {'projectId': projectId},
    );
  }

  // ─── Warehouses ───────────────────────────────────────────────────────────

  Future<ListResponse<InventoryWarehouse>> listWarehouses({
    required String projectId,
  }) async {
    final response = await client.get(
      '/inventory/warehouses',
      queryParameters: {'projectId': projectId},
    );
    return ListResponse<InventoryWarehouse>.fromJson(
      response.data,
      (json) => InventoryWarehouse.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<InventoryWarehouse> createWarehouse({
    required String projectId,
    required String name,
    required String code,
    String? namespacePrefix,
  }) async {
    final response = await client.post(
      '/inventory/warehouses',
      data: {
        'projectId': projectId,
        'name': name,
        'code': code,
        if (namespacePrefix != null && namespacePrefix.isNotEmpty)
          'namespacePrefix': namespacePrefix,
      },
    );
    return InventoryWarehouse.fromJson(response.data as Map<String, dynamic>);
  }

  Future<void> deleteWarehouse(String id) async {
    await client.delete('/inventory/warehouses/$id');
  }

  // ─── Public ───────────────────────────────────────────────────────────────

  Future<Map<String, int>> publicAvailability({
    required String storeId,
    required List<String> skus,
  }) async {
    final response = await client.get(
      '/inventory/public/availability',
      queryParameters: {'storeId': storeId, 'skus': skus.join(',')},
    );
    return (response.data as Map).map(
      (key, value) => MapEntry(key.toString(), (value as num?)?.toInt() ?? 0),
    );
  }
}

class InventoryObjectUpdate implements ModelUpdate {
  final Map<String, dynamic> data;
  const InventoryObjectUpdate([this.data = const {}]);

  @override
  List<String> get setToNull => const [];

  @override
  Map<String, dynamic> toJson() => data;
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
        > {
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
  InventoryObjectUpdate updateFromJson(dynamic json) =>
      InventoryObjectUpdate(Map<String, dynamic>.from(json as Map));

  @override
  Map<String, dynamic> updateToJson(InventoryObjectUpdate model) =>
      model.toJson();

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
    // The mixin stream controller is private, so consumers should refresh after delete.
  }
}

class InventoryWarehouseResourceRepository
    extends
        ResourceRepository<
          InventoryWarehouse,
          InventoryWarehouseCreate,
          InventoryWarehouseUpdate
        > {
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
      const InventoryWarehouseUpdate();

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
    await client.delete(
      '/inventory/movements/$id',
      queryParameters: params,
      cancelToken: modelDeleteCancelToken,
    );
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
    await client.delete(
      '/inventory/reservations/$id',
      queryParameters: params,
      cancelToken: modelDeleteCancelToken,
    );
  }
}

class InventoryAliasResourceRepository
    extends
        ResourceRepository<
          InventoryAlias,
          InventoryAliasCreate,
          InventoryAliasUpdate
        > {
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
  InventoryAliasUpdate updateFromJson(dynamic json) =>
      const InventoryAliasUpdate();

  @override
  Map<String, dynamic> updateToJson(InventoryAliasUpdate model) =>
      model.toJson();

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
