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
  });

  final int all;
  final Map<String, int> byRoom;
  final Map<String, int> byStatus;

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

  Future<OrderCountsV1> counts(String storeId) async {
    final res = await client.get('/stores/$storeId/orders/counts');
    return OrderCountsV1.fromJson(Map<String, dynamic>.from(res.data as Map));
  }

  /// Apply a sticker (`statusId` or `kind`) — Opencod `POST .../apply`.
  Future<Map<String, dynamic>> apply(
    String storeId,
    String orderId, {
    String? statusId,
    String? kind,
  }) async {
    final res = await client.post(
      '/stores/$storeId/orders/$orderId/apply',
      data: {
        if (statusId != null) 'statusId': statusId,
        if (kind != null) 'kind': kind,
      },
    );
    return Map<String, dynamic>.from(res.data['data'] as Map? ?? res.data as Map);
  }
}
