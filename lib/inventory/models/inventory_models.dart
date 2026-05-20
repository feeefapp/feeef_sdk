// Inventory domain models — match backend API shapes exactly.

import 'package:feeef/interfaces/helpers.dart';

class Project {
  final String id;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;

  Project({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Project.fromJson(Map<String, dynamic> json) => Project(
    id: json['id'] as String,
    name: json['name'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
  );

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}

class InventoryObject implements Model {
  final String id;
  final String projectId;
  final String namespace;
  final String sku;
  final String batch;
  final String? warehouseId;
  final String storageClass;
  final String key;
  final int quantityOnHand;
  final int quantityReserved;
  final DateTime receivedAt;
  final Map<String, dynamic>? metadata;
  final int priority;
  final DateTime? expiresAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  /// Derived — not stored in backend, computed client-side.
  int get quantityAvailable => quantityOnHand - quantityReserved;

  InventoryObject({
    required this.id,
    required this.projectId,
    required this.namespace,
    required this.sku,
    required this.batch,
    this.warehouseId,
    required this.storageClass,
    required this.key,
    required this.quantityOnHand,
    required this.quantityReserved,
    required this.receivedAt,
    this.metadata,
    this.priority = 0,
    this.expiresAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory InventoryObject.fromJson(Map<String, dynamic> json) =>
      InventoryObject(
        id: json['id'] as String,
        projectId: json['projectId'] as String,
        namespace: json['namespace'] as String? ?? '',
        sku: json['sku'] as String,
        batch: json['batch'] as String? ?? '',
        warehouseId: json['warehouseId'] as String?,
        storageClass: json['storageClass'] as String? ?? 'HOT',
        key: json['key'] as String? ?? '',
        quantityOnHand: (json['quantityOnHand'] as num?)?.toInt() ?? 0,
        quantityReserved: (json['quantityReserved'] as num?)?.toInt() ?? 0,
        receivedAt: json['receivedAt'] != null
            ? DateTime.parse(json['receivedAt'] as String)
            : DateTime.now(),
        metadata: json['metadata'] as Map<String, dynamic>?,
        priority: (json['priority'] as num?)?.toInt() ?? 0,
        expiresAt: json['expiresAt'] != null
            ? DateTime.parse(json['expiresAt'] as String)
            : null,
        createdAt: DateTime.parse(json['createdAt'] as String),
        updatedAt: DateTime.parse(json['updatedAt'] as String),
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'sku': sku,
    'batch': batch,
    'namespace': namespace,
  };
}

class InventoryMovement implements Model {
  final String id;
  final String inventoryObjectId;
  final int delta;
  final String reason;
  final String? holderRef;
  final String? correlationRef;
  final int? balanceAfter;
  final Map<String, dynamic>? metadata;
  final DateTime createdAt;
  // Enriched fields (joined from inventory_objects)
  final String? sku;
  final String? namespace;
  final String? batch;

  InventoryMovement({
    required this.id,
    required this.inventoryObjectId,
    required this.delta,
    required this.reason,
    this.holderRef,
    this.correlationRef,
    this.balanceAfter,
    this.metadata,
    required this.createdAt,
    this.sku,
    this.namespace,
    this.batch,
  });

  factory InventoryMovement.fromJson(Map<String, dynamic> json) =>
      InventoryMovement(
        id: json['id'] as String,
        inventoryObjectId:
            (json['inventoryObjectId'] ?? json['objectId'] ?? '') as String,
        delta: (json['delta'] as num?)?.toInt() ?? 0,
        reason: json['reason'] as String? ?? 'adjustment',
        holderRef: json['holderRef'] as String?,
        correlationRef: json['correlationRef'] as String?,
        balanceAfter: (json['balanceAfter'] as num?)?.toInt(),
        metadata: json['metadata'] as Map<String, dynamic>?,
        createdAt: DateTime.parse(json['createdAt'] as String),
        sku: json['sku'] as String?,
        namespace: json['namespace'] as String?,
        batch: json['batch'] as String?,
      );
}

class InventoryWarehouse implements Model {
  final String id;
  final String projectId;
  final String name;
  final String code;
  final String? namespacePrefix;
  final DateTime createdAt;
  final DateTime updatedAt;

  InventoryWarehouse({
    required this.id,
    required this.projectId,
    required this.name,
    required this.code,
    this.namespacePrefix,
    required this.createdAt,
    required this.updatedAt,
  });

  factory InventoryWarehouse.fromJson(Map<String, dynamic> json) =>
      InventoryWarehouse(
        id: json['id'] as String,
        projectId: json['projectId'] as String,
        name: json['name'] as String,
        code: json['code'] as String? ?? '',
        namespacePrefix: json['namespacePrefix'] as String?,
        createdAt: DateTime.parse(json['createdAt'] as String),
        updatedAt: DateTime.parse(json['updatedAt'] as String),
      );

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'code': code};
}

class InventoryReservation implements Model {
  final String id;
  final String projectId;
  final String holderRef;
  final String state; // 'active' | 'consumed' | 'released'
  final DateTime? expiresAt;
  final DateTime createdAt;

  InventoryReservation({
    required this.id,
    required this.projectId,
    required this.holderRef,
    required this.state,
    this.expiresAt,
    required this.createdAt,
  });

  factory InventoryReservation.fromJson(Map<String, dynamic> json) =>
      InventoryReservation(
        id: json['id'] as String,
        projectId: json['projectId'] as String,
        holderRef: json['holderRef'] as String,
        state: json['state'] as String? ?? 'active',
        expiresAt: json['expiresAt'] != null
            ? DateTime.tryParse(json['expiresAt'] as String)
            : null,
        createdAt: DateTime.parse(json['createdAt'] as String),
      );
}

/// Note: no `id` field — `alias` string is the primary identifier.
class InventoryAlias implements Model {
  String get id => alias;

  final String projectId;
  final String alias;
  final String targetSku;
  final DateTime createdAt;

  InventoryAlias({
    required this.projectId,
    required this.alias,
    required this.targetSku,
    required this.createdAt,
  });

  factory InventoryAlias.fromJson(Map<String, dynamic> json) => InventoryAlias(
    projectId: json['projectId'] as String,
    alias: json['alias'] as String,
    targetSku: json['targetSku'] as String,
    createdAt: json['createdAt'] != null
        ? DateTime.parse(json['createdAt'] as String)
        : DateTime.now(),
  );
}

// ─── Input types (for API mutations) ──────────────────────────────────────────

class InventoryReceiveInput implements ModelCreate {
  final String projectId;
  final String namespace;
  final String sku;
  final String? batch;
  final int quantity;
  final String? warehouseId;
  final String storageClass;
  final Map<String, dynamic>? metadata;
  final int priority;
  final DateTime? expiresAt;

  const InventoryReceiveInput({
    required this.projectId,
    required this.namespace,
    required this.sku,
    this.batch,
    required this.quantity,
    this.warehouseId,
    this.storageClass = 'HOT',
    this.metadata,
    this.priority = 0,
    this.expiresAt,
  });

  @override
  Map<String, dynamic> toJson() => {
    'projectId': projectId,
    'namespace': namespace,
    'sku': sku,
    'batch': batch,
    'quantity': quantity,
    'warehouseId': warehouseId,
    'storageClass': storageClass,
    'metadata': metadata,
    'priority': priority,
    if (expiresAt != null) 'expiresAt': expiresAt!.toIso8601String(),
  };
}

class InventoryMovementCreate implements ModelCreate {
  const InventoryMovementCreate();
  @override
  Map<String, dynamic> toJson() => {};
}

class InventoryMovementUpdate implements ModelUpdate {
  const InventoryMovementUpdate();
  @override
  List<String> get setToNull => const [];
  @override
  Map<String, dynamic> toJson() => {};
}

class InventoryWarehouseCreate implements ModelCreate {
  final String projectId;
  final String name;
  final String code;
  final String? namespacePrefix;

  const InventoryWarehouseCreate({
    required this.projectId,
    required this.name,
    required this.code,
    this.namespacePrefix,
  });

  @override
  Map<String, dynamic> toJson() => {
    'projectId': projectId,
    'name': name,
    'code': code,
    if (namespacePrefix != null && namespacePrefix!.isNotEmpty)
      'namespacePrefix': namespacePrefix,
  };
}

class InventoryWarehouseUpdate implements ModelUpdate {
  const InventoryWarehouseUpdate();
  @override
  List<String> get setToNull => const [];
  @override
  Map<String, dynamic> toJson() => {};
}

class InventoryReservationCreate implements ModelCreate {
  const InventoryReservationCreate();
  @override
  Map<String, dynamic> toJson() => {};
}

class InventoryReservationUpdate implements ModelUpdate {
  const InventoryReservationUpdate();
  @override
  List<String> get setToNull => const [];
  @override
  Map<String, dynamic> toJson() => {};
}

class InventoryAliasCreate implements ModelCreate {
  final String projectId;
  final String alias;
  final String targetSku;

  const InventoryAliasCreate({
    required this.projectId,
    required this.alias,
    required this.targetSku,
  });

  @override
  Map<String, dynamic> toJson() => {
    'projectId': projectId,
    'alias': alias,
    'targetSku': targetSku,
  };
}

class InventoryAliasUpdate implements ModelUpdate {
  const InventoryAliasUpdate();
  @override
  List<String> get setToNull => const [];
  @override
  Map<String, dynamic> toJson() => {};
}
