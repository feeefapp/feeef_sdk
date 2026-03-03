import '../feeef.dart';
import 'models/deposit.dart';
import 'models/satim_create_order_request.dart';
import 'models/satim_create_order_response.dart';

class DepositRepository extends ModelRepository<Deposit>
    with
        ModelCreateMixin<Deposit, DepositCreate>,
        ModelListMixin<Deposit>,
        ModelUpdateMixin<Deposit, DepositUpdate>,
        ModelDeleteMixin<Deposit> {
  DepositRepository({required super.client}) : super(table: 'deposits');

  Future<Deposit> send(DepositCreate data) async {
    final response = await client.post('/$table/send', data: data.toJson());
    return modelFromJson(response.data);
  }

  /// Create a SATIM order for wallet deposit
  Future<SatimCreateOrderResponse> satimCreate(
    SatimCreateOrderRequest request,
  ) async {
    final response = await client.post(
      '/$table/satim/create',
      data: request.toJson(),
    );
    return SatimCreateOrderResponse.fromJson(response.data);
  }

  /// Create a Stripe checkout session for wallet deposit
  Future<Map<String, dynamic>> stripeCreateSession({
    required double amount,
    String currency = 'USD',
  }) async {
    final response = await client.post(
      '/$table/stripe/create-session',
      data: {'amount': amount, 'currency': currency},
    );
    return response.data as Map<String, dynamic>;
  }

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
