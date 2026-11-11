import 'package:dio/dio.dart';

/// Feeef Cloud wallet: live balance + top-ups on the Cloud hosted checkout (every gateway:
/// Stripe, SATIM, SlickPay, Chargily; and manual methods: CCP, BaridiMob, RedotPay,
/// Binance, USDT … with proof upload). Managers review manual top-ups here too.
class CloudWalletRepository {
  CloudWalletRepository({required this.client});

  final Dio client;

  /// `{walletId, balance, reserved, incoming, currency}` (DZD). The Cloud wallet is
  /// created on first call.
  Future<Map<String, dynamic>> get() async {
    final response = await client.get('/wallet/cloud');
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Starts a top-up of [amount] DZD → `{deposit: {id, state, amount}, checkout: {url}}`.
  /// Reuse [requestKey] on retry of the same tap so only one deposit is opened.
  Future<Map<String, dynamic>> topUp({
    required num amount,
    required String requestKey,
    required String origin,
    String? returnUrl,
    String? locale,
  }) async {
    final response = await client.post(
      '/wallet/cloud/top-ups',
      data: {
        'amount': amount,
        'requestKey': requestKey,
        'origin': origin,
        'returnUrl': ?returnUrl,
        'locale': ?locale,
      },
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// The caller's top-ups, newest first → `{data: [CloudTopUp json], nextCursor}`.
  Future<({List<CloudTopUp> items, String? nextCursor})> topUps({
    String? cursor,
  }) async {
    final response = await client.get(
      '/wallet/cloud/top-ups',
      queryParameters: {'cursor': ?cursor},
    );
    final data = Map<String, dynamic>.from(response.data as Map);
    final rows = (data['data'] as List? ?? const [])
        .whereType<Map>()
        .map((row) => CloudTopUp.fromJson(Map<String, dynamic>.from(row)))
        .toList();
    return (items: rows, nextCursor: data['nextCursor'] as String?);
  }

  /// One of the caller's top-ups (poll it while the payer is on the hosted checkout).
  Future<CloudTopUp> getTopUp(String id) async {
    final response = await client.get('/wallet/cloud/top-ups/$id');
    return CloudTopUp.fromJson(Map<String, dynamic>.from(response.data as Map));
  }

  /// Managers: Cloud deposits by [state] (default `awaiting_review`).
  Future<Map<String, dynamic>> listDeposits({
    String state = 'awaiting_review',
    String? cursor,
  }) async {
    final response = await client.get(
      '/admins/cloud-wallet/deposits',
      queryParameters: {'state': state, 'cursor': ?cursor},
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Managers: approve a manual top-up; Cloud credits the wallet exactly once.
  Future<Map<String, dynamic>> approveDeposit(
    String id, {
    required String basis,
    String? note,
  }) async {
    final response = await client.post(
      '/admins/cloud-wallet/deposits/$id/approve',
      data: {'basis': basis, 'note': ?note},
    );
    return Map<String, dynamic>.from(response.data as Map);
  }

  /// Managers: reject a manual top-up with a [reason] the merchant sees.
  Future<Map<String, dynamic>> rejectDeposit(String id, String reason) async {
    final response = await client.post(
      '/admins/cloud-wallet/deposits/$id/reject',
      data: {'reason': reason},
    );
    return Map<String, dynamic>.from(response.data as Map);
  }
}

/// What a top-up means for the merchant.
enum CloudTopUpOutcome {
  /// Opened, not paid yet (or proof not sent).
  pending,

  /// Proof sent; a Feeef reviewer decides.
  review,

  /// In the wallet.
  credited,

  /// Rejected, cancelled, expired or failed to credit.
  failed,
}

/// A Feeef Cloud wallet top-up (`GET /wallet/cloud/top-ups`). Amounts are DZD.
class CloudTopUp {
  const CloudTopUp({
    required this.id,
    required this.state,
    required this.amount,
    this.paymentReference,
    this.createdAt,
    this.expiresAt,
  });

  factory CloudTopUp.fromJson(Map<String, dynamic> json) => CloudTopUp(
    id: json['id'] as String,
    state: json['state'] as String? ?? 'awaiting_submission',
    amount: (json['amount'] as num?)?.toDouble() ?? 0,
    paymentReference: json['paymentReference'] as String?,
    createdAt: DateTime.tryParse(json['createdAt'] as String? ?? ''),
    expiresAt: DateTime.tryParse(json['expiresAt'] as String? ?? ''),
  );

  final String id;

  /// Cloud deposit state: `awaiting_submission`, `awaiting_review`, `needs_information`,
  /// `credit_processing`, `credited`, `rejected`, `canceled`, `expired`, `credit_failed`.
  final String state;
  final double amount;
  final String? paymentReference;
  final DateTime? createdAt;
  final DateTime? expiresAt;

  CloudTopUpOutcome get outcome => switch (state) {
    'credited' => CloudTopUpOutcome.credited,
    'awaiting_review' ||
    'needs_information' ||
    'credit_processing' => CloudTopUpOutcome.review,
    'rejected' ||
    'canceled' ||
    'expired' ||
    'credit_failed' => CloudTopUpOutcome.failed,
    _ => CloudTopUpOutcome.pending,
  };
}
