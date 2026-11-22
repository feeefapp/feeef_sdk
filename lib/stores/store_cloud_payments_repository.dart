import 'package:dio/dio.dart';

/// Providers a merchant can connect for store checkout through Feeef Cloud.
enum StoreCloudProvider {
  chargily,
  slickpay,
  satim,
  stripe,
  paypal;

  static StoreCloudProvider? tryParse(String? value) {
    for (final provider in values) {
      if (provider.name == value) return provider;
    }
    return null;
  }
}

/// Link state of a store's Feeef Cloud project (`GET stores/:id/cloud-payments`).
class StoreCloudPayments {
  const StoreCloudPayments({
    required this.configured,
    required this.createProjectUrl,
    required this.connected,
    this.status,
    this.lastError,
    this.projectId,
    this.projectName,
    this.consoleUrl,
    this.enabledConnectionIds = const [],
    this.connectedAt,
  });

  /// The backend can start the OAuth connect flow.
  final bool configured;
  final String createProjectUrl;
  final bool connected;

  /// `active` · `revoked` · `error`; null when not connected.
  final String? status;
  final String? lastError;
  final int? projectId;
  final String? projectName;
  final String? consoleUrl;

  /// `pcn_` ids offered at checkout, in order.
  final List<String> enabledConnectionIds;
  final DateTime? connectedAt;

  bool get isActive => connected && status == 'active';
  bool get needsReconnect => connected && status != 'active';

  factory StoreCloudPayments.fromJson(Map<String, dynamic> json) {
    final project = json['project'] is Map
        ? Map<String, dynamic>.from(json['project'] as Map)
        : null;
    return StoreCloudPayments(
      configured: json['configured'] == true,
      createProjectUrl: json['createProjectUrl'] as String? ?? '',
      connected: json['connected'] == true,
      status: json['status'] as String?,
      lastError: json['lastError'] as String?,
      projectId: (project?['id'] as num?)?.toInt(),
      projectName: project?['name'] as String?,
      consoleUrl: project?['consoleUrl'] as String?,
      enabledConnectionIds: (json['enabledConnectionIds'] as List? ?? const [])
          .map((e) => e.toString())
          .toList(),
      connectedAt: DateTime.tryParse(json['connectedAt'] as String? ?? ''),
    );
  }
}

/// A provider connection on the merchant's Cloud project. Never carries credentials.
class StoreCloudConnection {
  const StoreCloudConnection({
    required this.id,
    required this.provider,
    required this.displayName,
    required this.status,
    this.currency,
    this.credentialsHint,
    this.createdAt,
    this.enabled = false,
    this.position,
  });

  final String id;

  /// Provider slug (`chargily`, `satim`, …).
  final String provider;
  final String displayName;

  /// `active` · `disabled`.
  final String status;
  final String? currency;

  /// e.g. `…a1b2`.
  final String? credentialsHint;
  final DateTime? createdAt;

  /// Offered at checkout.
  final bool enabled;

  /// Checkout order (0-based) when [enabled].
  final int? position;

  bool get isActive => status == 'active';

  StoreCloudConnection copyWith({bool? enabled, int? position, String? status}) {
    return StoreCloudConnection(
      id: id,
      provider: provider,
      displayName: displayName,
      status: status ?? this.status,
      currency: currency,
      credentialsHint: credentialsHint,
      createdAt: createdAt,
      enabled: enabled ?? this.enabled,
      position: position ?? this.position,
    );
  }

  factory StoreCloudConnection.fromJson(Map<String, dynamic> json) {
    return StoreCloudConnection(
      id: json['id'] as String,
      provider: json['provider'] as String? ?? 'unknown',
      displayName: json['displayName'] as String? ?? '',
      status: json['status'] as String? ?? 'active',
      currency: json['currency'] as String?,
      credentialsHint: json['credentialsHint'] as String?,
      createdAt: DateTime.tryParse(json['createdAt'] as String? ?? ''),
      enabled: json['enabled'] == true,
      position: (json['position'] as num?)?.toInt(),
    );
  }
}

/// Store online payments through the merchant's own Feeef Cloud project:
/// OAuth link, provider connections (credentials go straight to Cloud) and the
/// ordered list checkout offers.
class StoreCloudPaymentsRepository {
  StoreCloudPaymentsRepository({required this.client});

  final Dio client;

  String _base(String storeId) =>
      '/stores/${Uri.encodeComponent(storeId)}/cloud-payments';

  Future<StoreCloudPayments> get(String storeId) async {
    final response = await client.get(_base(storeId));
    return StoreCloudPayments.fromJson(
      Map<String, dynamic>.from(response.data as Map),
    );
  }

  /// Cloud consent URL (PKCE + state, valid 10 minutes). Open it in a browser.
  Future<String> connect(String storeId) async {
    final response = await client.post('${_base(storeId)}/connect');
    return (response.data as Map)['authorizeUrl'] as String;
  }

  /// Revokes the grant, removes the webhook endpoint and forgets the link.
  Future<void> disconnect(String storeId) async {
    await client.delete(_base(storeId));
  }

  Future<List<StoreCloudConnection>> connections(String storeId) async {
    final response = await client.get('${_base(storeId)}/connections');
    final rows = ((response.data as Map)['data'] as List? ?? const []);
    return rows
        .whereType<Map>()
        .map((row) => StoreCloudConnection.fromJson(Map<String, dynamic>.from(row)))
        .toList();
  }

  /// [credentials] must include `provider` plus that provider's fields:
  /// chargily `secret_key`; slickpay `api_key`; satim `username`, `password`,
  /// `terminal_id`; stripe `secret_key`; paypal `client_id`, `client_secret`.
  Future<StoreCloudConnection> createConnection(
    String storeId, {
    required String displayName,
    required Map<String, String> credentials,
    String? currency,
  }) async {
    final response = await client.post(
      '${_base(storeId)}/connections',
      data: {
        'display_name': displayName,
        'credentials': credentials,
        'currency': ?currency,
      },
    );
    return StoreCloudConnection.fromJson(
      Map<String, dynamic>.from((response.data as Map)['data'] as Map),
    );
  }

  Future<StoreCloudConnection> setConnectionStatus(
    String storeId,
    String connectionId, {
    required bool active,
  }) async {
    final response = await client.patch(
      '${_base(storeId)}/connections/${Uri.encodeComponent(connectionId)}',
      data: {'status': active ? 'active' : 'disabled'},
    );
    return StoreCloudConnection.fromJson(
      Map<String, dynamic>.from((response.data as Map)['data'] as Map),
    );
  }

  Future<void> deleteConnection(String storeId, String connectionId) async {
    await client.delete(
      '${_base(storeId)}/connections/${Uri.encodeComponent(connectionId)}',
    );
  }

  /// Which connections checkout offers, in order (≤ 5, each active in Cloud).
  Future<List<String>> setEnabledConnections(
    String storeId,
    List<String> connectionIds,
  ) async {
    final response = await client.put(
      '${_base(storeId)}/enabled-connections',
      data: {'connectionIds': connectionIds},
    );
    return ((response.data as Map)['enabledConnectionIds'] as List? ?? const [])
        .map((e) => e.toString())
        .toList();
  }
}
