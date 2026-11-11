import 'package:dio/dio.dart';

import '../feeef.dart';
import 'models/deposit.dart';

/// Legacy deposit history (read) + admin review of in-flight legacy deposits.
///
/// Wallet top-ups are Feeef Cloud deposits: use [CloudWalletRepository.topUp]
/// (`ff.cloudWallet`). A merchant `create` returns `410 WALLET_ON_CLOUD`.
class DepositRepository extends ModelRepository<Deposit>
    with
        ModelCreateMixin<Deposit, DepositCreate>,
        ModelListMixin<Deposit>,
        ModelUpdateMixin<Deposit, DepositUpdate>,
        ModelDeleteMixin<Deposit> {
  DepositRepository({required super.client}) : super(table: 'deposits');

  @override
  Deposit modelFromJson(json) => Deposit.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(Deposit model) => model.toJson();

  @override
  DepositCreate createFromJson(json) => DepositCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(DepositCreate model) => model.toJson();

  @override
  DepositUpdate updateFromJson(json) => DepositUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(DepositUpdate model) => model.toJson();
}

/// Feeef Cloud wallet: live balance + top-ups on the Cloud hosted checkout (every gateway:
/// Stripe, SATIM, SlickPay, Chargily; and manual methods: CCP, BaridiMob, RedotPay,
/// Binance, USDT … with proof upload). Managers review manual top-ups here too.
class CloudWalletRepository {
  CloudWalletRepository({required this.client});

  final Dio client;

  /// `{authority, walletId, balance, reserved, incoming, currency}` (DZD). The first call
  /// moves a legacy wallet to Cloud.
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
