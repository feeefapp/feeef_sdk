import 'package:feeef/core/list_response.dart';

import '../feeef.dart';
import 'models/transfer.dart';

class TransferRepository extends ModelRepository<Transfer>
    with ModelListMixin<Transfer> {
  TransferRepository({required super.client}) : super(table: 'transfers');

  @override
  Transfer modelFromJson(json) => Transfer.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(Transfer model) => model.toJson();

  // override list and add accountId filter
  @override
  Future<ListResponse<Transfer>> list({
    String? accountId,
    int? page,
    int? offset,
    int? limit,
    Map<String, dynamic>? params,
  }) async {
    return super.list(
      page: page,
      offset: offset,
      limit: limit,
      params: {if (accountId != null) 'accountId': accountId, ...?params},
    );
  }
}
