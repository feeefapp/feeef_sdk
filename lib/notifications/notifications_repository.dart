/// The signed-in user's notification inbox (backend `user_notifications_controller.ts`,
/// `/v1/notifications`, docs/notifications.md).
///
/// Lab jobs (background chat replies, automations, image, poster, voice) write here, and an AI
/// agent can [send] a custom one to the user. Live updates arrive on the realtime channel
/// `users/<userId>/notifications` ([NotificationsRepository.channel]).
library;

import 'package:dio/dio.dart';

/// What a notification points at, so a client can open it without parsing [FeeefNotification.link].
class NotificationResource {
  const NotificationResource({
    required this.type,
    this.id,
    this.projectId,
    this.conversationId,
  });

  /// `conversation`, `automation`, `image`, `poster`, `voice` or `url`.
  final String type;
  final String? id;
  final String? projectId;
  final String? conversationId;

  factory NotificationResource.fromJson(Map<String, dynamic> json) =>
      NotificationResource(
        type: json['type'] as String? ?? 'url',
        id: json['id'] as String?,
        projectId: json['projectId'] as String?,
        conversationId: json['conversationId'] as String?,
      );

  Map<String, dynamic> toJson() => {
    'type': type,
    'id': ?id,
    'projectId': ?projectId,
    'conversationId': ?conversationId,
  };
}

/// One inbox row.
class FeeefNotification {
  const FeeefNotification({
    required this.id,
    required this.kind,
    required this.title,
    this.body = '',
    this.imageUrl,
    this.link,
    this.resource,
    this.source = 'system',
    this.storeId,
    this.readAt,
    this.createdAt,
  });

  final String id;

  /// `lab.chat.completed`, `lab.image.failed`, `ai.custom`, …
  final String kind;
  final String title;
  final String body;
  final String? imageUrl;

  /// A Lab path (`/chat/c/…`, `/image?project=…`; under `/lab` in the merchant app) or an
  /// absolute Feeef / storefront URL.
  final String? link;
  final NotificationResource? resource;

  /// `system` or `ai`.
  final String source;
  final String? storeId;
  final DateTime? readAt;
  final DateTime? createdAt;

  bool get isRead => readAt != null;

  /// True when [link] is a Lab path rather than an absolute URL.
  bool get isLabLink => link?.startsWith('/') ?? false;

  factory FeeefNotification.fromJson(Map<String, dynamic> json) =>
      FeeefNotification(
        id: json['id'] as String,
        kind: json['kind'] as String? ?? 'ai.custom',
        title: json['title'] as String? ?? '',
        body: json['body'] as String? ?? '',
        imageUrl: json['imageUrl'] as String?,
        link: json['link'] as String?,
        resource: json['resource'] is Map
            ? NotificationResource.fromJson(
                Map<String, dynamic>.from(json['resource'] as Map),
              )
            : null,
        source: json['source'] as String? ?? 'system',
        storeId: json['storeId'] as String?,
        readAt: DateTime.tryParse(json['readAt'] as String? ?? ''),
        createdAt: DateTime.tryParse(json['createdAt'] as String? ?? ''),
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'kind': kind,
    'title': title,
    'body': body,
    'imageUrl': imageUrl,
    'link': link,
    'resource': resource?.toJson(),
    'source': source,
    'storeId': storeId,
    'readAt': readAt?.toIso8601String(),
    'createdAt': createdAt?.toIso8601String(),
  };
}

/// A page of the inbox, newest first.
class NotificationsPage {
  const NotificationsPage({
    required this.data,
    required this.unreadCount,
    this.nextCursor,
  });

  final List<FeeefNotification> data;
  final int unreadCount;

  /// Pass as `before` for the next (older) page; null on the last page.
  final String? nextCursor;

  factory NotificationsPage.fromJson(Map<String, dynamic> json) =>
      NotificationsPage(
        data: [
          for (final row in (json['data'] as List? ?? const []))
            FeeefNotification.fromJson(Map<String, dynamic>.from(row as Map)),
        ],
        unreadCount: (json['unreadCount'] as num?)?.toInt() ?? 0,
        nextCursor: json['nextCursor'] as String?,
      );
}

/// Result of [NotificationsRepository.send].
class SentNotification {
  const SentNotification({required this.notification, this.duplicate = false});

  final FeeefNotification notification;

  /// The same `dedupeKey` was sent before; [notification] is the first one.
  final bool duplicate;
}

/// `ff.notifications`.
class NotificationsRepository {
  NotificationsRepository({required this.client});

  final Dio client;

  static const _base = '/notifications';

  /// Realtime channel with `created` / `updated` / `deleted` events for [userId].
  static String channel(String userId) => 'users/$userId/notifications';

  Map<String, dynamic> _map(Response<dynamic> res) =>
      Map<String, dynamic>.from(res.data as Map);

  int _unread(Response<dynamic> res) =>
      (_map(res)['unreadCount'] as num?)?.toInt() ?? 0;

  /// Newest first. [before] = the previous page's [NotificationsPage.nextCursor].
  Future<NotificationsPage> list({
    int limit = 30,
    String? before,
    bool unreadOnly = false,
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      _base,
      queryParameters: {
        'limit': limit,
        'before': ?before,
        if (unreadOnly) 'unread': true,
      },
      cancelToken: cancelToken,
    );
    return NotificationsPage.fromJson(_map(res));
  }

  /// Number of unread notifications (badge).
  Future<int> unreadCount({CancelToken? cancelToken}) async =>
      _unread(await client.get('$_base/unread', cancelToken: cancelToken));

  /// Marks [ids] read. Returns the new unread count.
  Future<int> markRead(List<String> ids, {CancelToken? cancelToken}) async {
    if (ids.isEmpty) return unreadCount(cancelToken: cancelToken);
    return _unread(
      await client.post(
        '$_base/read',
        data: {'ids': ids},
        cancelToken: cancelToken,
      ),
    );
  }

  /// Marks everything read. Returns the new unread count (0).
  Future<int> readAll({CancelToken? cancelToken}) async => _unread(
    await client.post(
      '$_base/read',
      data: {'all': true},
      cancelToken: cancelToken,
    ),
  );

  /// Deletes one notification. Returns the new unread count.
  Future<int> delete(String id, {CancelToken? cancelToken}) async => _unread(
    await client.delete(
      '$_base/${Uri.encodeComponent(id)}',
      cancelToken: cancelToken,
    ),
  );

  /// Sends a notification to the signed-in user only (inbox + push). [link] must be a Lab path
  /// (`/chat/c/…`, `/image?project=…`, `/voice?project=…`, `/automations`) or an https URL on a
  /// Feeef host, a storefront or one of the user's store domains; anything else is a 422
  /// `invalid_destination`. Rate-limited (429 after 30 per hour). A repeated [dedupeKey]
  /// returns the first notification with [SentNotification.duplicate].
  Future<SentNotification> send({
    required String title,
    String? body,
    String? link,
    String? imageUrl,
    String? storeId,
    bool push = true,
    String? dedupeKey,
    CancelToken? cancelToken,
  }) async {
    final res = await client.post(
      _base,
      data: {
        'title': title,
        'body': ?body,
        'link': ?link,
        'imageUrl': ?imageUrl,
        'storeId': ?storeId,
        if (!push) 'push': false,
        'dedupeKey': ?dedupeKey,
      },
      cancelToken: cancelToken,
    );
    final map = _map(res);
    return SentNotification(
      notification: FeeefNotification.fromJson(
        Map<String, dynamic>.from(map['data'] as Map),
      ),
      duplicate: map['duplicate'] == true,
    );
  }
}
