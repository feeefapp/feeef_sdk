import 'package:dio/dio.dart';

/// Opencod-shaped order status sticker (catalog row).
class OrderStatusV1 {
  const OrderStatusV1({
    required this.id,
    required this.slug,
    required this.room,
    required this.name,
    this.kind,
    this.locales = const {},
    this.color,
    this.icon,
    this.system = false,
    this.isActive = true,
    this.closeAs = 'none',
    this.deskOutcome = 'none',
    this.snoozeMinutes,
    this.requiresReason = false,
    this.queueEligible = false,
    this.sortOrder = 0,
    this.reasons,
    this.nextSlugs,
    this.onSelect,
  });

  final String id;
  final String slug;
  final String room;
  final String name;
  final String? kind;
  final Map<String, dynamic> locales;
  final String? color;
  final String? icon;
  final bool system;
  final bool isActive;
  final String closeAs;
  final String deskOutcome;
  final int? snoozeMinutes;
  final bool requiresReason;
  final bool queueEligible;
  final int sortOrder;
  final List<String>? reasons;
  final List<String>? nextSlugs;
  final Map<String, dynamic>? onSelect;

  String localizedName(String lang) {
    final v = locales[lang];
    if (v is String && v.trim().isNotEmpty) return v;
    return name;
  }

  factory OrderStatusV1.fromJson(Map<String, dynamic> json) {
    return OrderStatusV1(
      id: json['id'] as String,
      slug: json['slug'] as String,
      room: json['room'] as String,
      name: json['name'] as String,
      kind: json['kind'] as String?,
      locales: (json['locales'] as Map?)?.cast<String, dynamic>() ?? const {},
      color: json['color'] as String?,
      icon: json['icon'] as String?,
      system: json['system'] as bool? ?? json['isSystem'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? true,
      closeAs: json['closeAs'] as String? ?? 'none',
      deskOutcome: json['deskOutcome'] as String? ?? 'none',
      snoozeMinutes: json['snoozeMinutes'] as int?,
      requiresReason: json['requiresReason'] as bool? ?? false,
      queueEligible: json['queueEligible'] as bool? ?? false,
      sortOrder: json['sortOrder'] as int? ?? 0,
      reasons: (json['reasons'] as List?)?.map((e) => e.toString()).toList(),
      nextSlugs: (json['nextSlugs'] as List?)?.map((e) => e.toString()).toList(),
      onSelect: (json['onSelect'] as Map?)?.cast<String, dynamic>(),
    );
  }

  OrderStatusV1 copyWith({int? sortOrder, String? name, String? color}) {
    return OrderStatusV1(
      id: id,
      slug: slug,
      room: room,
      name: name ?? this.name,
      kind: kind,
      locales: locales,
      color: color ?? this.color,
      icon: icon,
      system: system,
      isActive: isActive,
      closeAs: closeAs,
      deskOutcome: deskOutcome,
      snoozeMinutes: snoozeMinutes,
      requiresReason: requiresReason,
      queueEligible: queueEligible,
      sortOrder: sortOrder ?? this.sortOrder,
      reasons: reasons,
      nextSlugs: nextSlugs,
      onSelect: onSelect,
    );
  }

  Map<String, dynamic> toUpsertJson() => {
        'room': room,
        'slug': slug,
        'name': name,
        if (kind != null) 'kind': kind,
        'locales': locales,
        if (color != null) 'color': color,
        if (icon != null) 'icon': icon,
        'closeAs': closeAs,
        'deskOutcome': deskOutcome,
        'sortOrder': sortOrder,
        'requiresReason': requiresReason,
        'queueEligible': queueEligible,
        if (snoozeMinutes != null) 'snoozeMinutes': snoozeMinutes,
        if (reasons != null) 'reasons': reasons,
        if (nextSlugs != null) 'nextSlugs': nextSlugs,
        if (onSelect != null) 'onSelect': onSelect,
        'isActive': isActive,
      };
}

/// Room/kind counts envelope (Opencod `orders/counts`).
class OrderCountsV1 {
  const OrderCountsV1({
    required this.all,
    required this.byRoom,
    this.byStatus = const {},
    this.room,
  });

  final int all;
  final Map<String, int> byRoom;
  final Map<String, int> byStatus;

  /// When set, [byStatus] / [all] are scoped to this desk or closeAs view.
  final String? room;

  factory OrderCountsV1.fromJson(Map<String, dynamic> json) {
    return OrderCountsV1(
      all: (json['all'] as num?)?.toInt() ?? 0,
      byRoom: (json['byRoom'] as Map?)?.map(
            (k, v) => MapEntry(k.toString(), (v as num).toInt()),
          ) ??
          const {},
      byStatus: (json['byStatus'] as Map?)?.map(
            (k, v) => MapEntry(k.toString(), (v as num).toInt()),
          ) ??
          const {},
      room: json['room'] as String?,
    );
  }
}

/// Orders v1 catalog + apply API (Opencod-identical paths under Feeef).
class OrdersV1Api {
  OrdersV1Api({required this.client});

  final Dio client;

  Future<List<OrderStatusV1>> listStatuses(
    String storeId, {
    String? room,
    bool includeInactive = false,
  }) async {
    final res = await client.get(
      '/stores/$storeId/statuses',
      queryParameters: {
        if (room != null) 'room': room,
        if (includeInactive) 'includeInactive': 1,
      },
    );
    final data = res.data['data'] as List? ?? const [];
    return data
        .map((e) => OrderStatusV1.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
  }

  Future<List<OrderStatusV1>> resetStatuses(String storeId) async {
    final res = await client.post('/stores/$storeId/statuses/reset');
    final data = res.data['data'] as List? ?? const [];
    return data
        .map((e) => OrderStatusV1.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
  }

  Future<List<OrderStatusV1>> reorderStatuses(
    String storeId, {
    required List<String> orderedIds,
    String? room,
  }) async {
    final res = await client.put(
      '/stores/$storeId/statuses/reorder',
      data: {
        'orderedIds': orderedIds,
        if (room != null) 'room': room,
      },
    );
    final data = res.data['data'] as List? ?? const [];
    return data
        .map((e) => OrderStatusV1.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
  }

  Future<OrderStatusV1> createStatus(
    String storeId,
    Map<String, dynamic> body,
  ) async {
    final res = await client.post('/stores/$storeId/statuses', data: body);
    return OrderStatusV1.fromJson(
      Map<String, dynamic>.from(res.data['data'] as Map),
    );
  }

  Future<OrderStatusV1> updateStatus(
    String storeId,
    String statusId,
    Map<String, dynamic> body,
  ) async {
    final res = await client.put(
      '/stores/$storeId/statuses/$statusId',
      data: body,
    );
    return OrderStatusV1.fromJson(
      Map<String, dynamic>.from(res.data['data'] as Map),
    );
  }

  Future<void> deleteStatus(String storeId, String statusId) async {
    await client.delete('/stores/$storeId/statuses/$statusId');
  }

  Future<OrderCountsV1> counts(String storeId, {String? room}) async {
    final res = await client.get(
      '/stores/$storeId/orders/counts',
      queryParameters: {
        if (room != null && room.isNotEmpty) 'room': room,
      },
    );
    return OrderCountsV1.fromJson(Map<String, dynamic>.from(res.data as Map));
  }

  /// Apply a sticker (`statusId` or `kind`) — Opencod `POST .../apply`.
  ///
  /// [allowCrossRoom] is required when the operator picks a sitting sticker
  /// from another working desk (status menu submenus). CloseAs stickers
  /// (`done` / `fail`) already bypass the same-desk guard.
  Future<Map<String, dynamic>> apply(
    String storeId,
    String orderId, {
    String? statusId,
    String? kind,
    bool allowCrossRoom = false,
  }) async {
    final res = await client.post(
      '/stores/$storeId/orders/$orderId/apply',
      data: {
        if (statusId != null) 'statusId': statusId,
        if (kind != null) 'kind': kind,
        if (allowCrossRoom) 'allowCrossRoom': true,
      },
    );
    return Map<String, dynamic>.from(res.data['data'] as Map? ?? res.data as Map);
  }

  /// Apply one sticker to many orders (`POST /stores/:storeId/orders/applyMany`).
  ///
  /// One HTTP call. Partial success is normal — inspect [OrderApplyManyResult.failed].
  /// Ids are sent in chunks of 200, which is the server cap.
  Future<OrderApplyManyResult> applyMany(
    String storeId, {
    required List<String> orderIds,
    required String statusId,
    bool allowCrossRoom = false,
  }) async {
    if (orderIds.isEmpty) {
      return const OrderApplyManyResult(
        applied: [],
        failed: {},
        total: 0,
        succeeded: 0,
        failedCount: 0,
      );
    }
    const chunkSize = 200;
    if (orderIds.length <= chunkSize) {
      return _applyManyOnce(
        storeId,
        orderIds: orderIds,
        statusId: statusId,
        allowCrossRoom: allowCrossRoom,
      );
    }
    final applied = <Map<String, dynamic>>[];
    final failed = <String, String>{};
    var succeeded = 0;
    var failedCount = 0;
    for (var start = 0; start < orderIds.length; start += chunkSize) {
      final end = start + chunkSize > orderIds.length
          ? orderIds.length
          : start + chunkSize;
      final slice = orderIds.sublist(start, end);
      final part = await _applyManyOnce(
        storeId,
        orderIds: slice,
        statusId: statusId,
        allowCrossRoom: allowCrossRoom,
      );
      applied.addAll(part.applied);
      succeeded += part.succeeded;
      failedCount += part.failedCount;
      failed.addAll(part.failed);
    }
    return OrderApplyManyResult(
      applied: applied,
      failed: failed,
      total: orderIds.length,
      succeeded: succeeded,
      failedCount: failedCount,
    );
  }

  Future<OrderApplyManyResult> _applyManyOnce(
    String storeId, {
    required List<String> orderIds,
    required String statusId,
    required bool allowCrossRoom,
  }) async {
    try {
      final res = await client.post(
        '/stores/$storeId/orders/applyMany',
        data: {
          'orderIds': orderIds,
          'statusId': statusId,
          if (allowCrossRoom) 'allowCrossRoom': true,
        },
      );
      return OrderApplyManyResult.fromJson(
        Map<String, dynamic>.from(res.data as Map),
      );
    } on DioException catch (e) {
      final data = e.response?.data;
      if (data is Map && data['summary'] is Map) {
        return OrderApplyManyResult.fromJson(Map<String, dynamic>.from(data));
      }
      rethrow;
    }
  }

  /// Open → pack door (Opencod SPEC-API-010).
  Future<Map<String, dynamic>> confirm(
    String storeId,
    String orderId, {
    String? type,
    bool stockout = false,
    String? reason,
  }) async {
    final res = await client.post(
      '/stores/$storeId/orders/$orderId/confirm',
      data: {
        if (type != null) 'type': type,
        if (stockout) 'stockout': true,
        if (reason != null) 'reason': reason,
      },
    );
    return Map<String, dynamic>.from(res.data['data'] as Map? ?? res.data as Map);
  }

  /// Open → fail door (Opencod SPEC-API-011).
  Future<Map<String, dynamic>> reject(
    String storeId,
    String orderId, {
    String kind = 'cancel',
    String? reason,
  }) async {
    final res = await client.post(
      '/stores/$storeId/orders/$orderId/reject',
      data: {
        'kind': kind,
        if (reason != null) 'reason': reason,
      },
    );
    return Map<String, dynamic>.from(res.data['data'] as Map? ?? res.data as Map);
  }
}

/// Partial result of [OrdersV1Api.applyMany].
///
/// [failed] is keyed by order id. [applied] rows are the same shape as a
/// single `POST .../apply` body (`id`, `statusId`, `room`, `kind`, `closeAs`,
/// optional `deprecated`).
class OrderApplyManyResult {
  const OrderApplyManyResult({
    required this.applied,
    required this.failed,
    required this.total,
    required this.succeeded,
    required this.failedCount,
    this.message,
  });

  final List<Map<String, dynamic>> applied;
  final Map<String, String> failed;
  final int total;
  final int succeeded;
  final int failedCount;
  final String? message;

  bool get allFailed => total > 0 && succeeded == 0;

  factory OrderApplyManyResult.fromJson(Map<String, dynamic> json) {
    final applied = <Map<String, dynamic>>[];
    final resources = json['resources'];
    if (resources is List) {
      for (final row in resources) {
        if (row is Map) {
          applied.add(Map<String, dynamic>.from(row));
        }
      }
    }
    final failed = <String, String>{};
    final failedRaw = json['failedRequests'];
    if (failedRaw is Map) {
      for (final entry in failedRaw.entries) {
        final value = entry.value;
        final message = value is Map
            ? (value['message']?.toString() ?? 'Request failed')
            : value.toString();
        failed[entry.key.toString()] = message;
      }
    }
    final summaryRaw = json['summary'];
    final summary = summaryRaw is Map
        ? Map<String, dynamic>.from(summaryRaw)
        : const <String, dynamic>{};
    return OrderApplyManyResult(
      applied: applied,
      failed: failed,
      total: (summary['total'] as num?)?.toInt() ?? applied.length + failed.length,
      succeeded: (summary['succeeded'] as num?)?.toInt() ?? applied.length,
      failedCount: (summary['failed'] as num?)?.toInt() ?? failed.length,
      message: json['message'] as String?,
    );
  }
}
