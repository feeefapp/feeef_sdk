import 'package:feeef/core/batch_models.dart';
import 'package:feeef/core/model_repository.dart';
import 'package:feeef/interfaces/helpers.dart';

/// `POST /{table}:batchDelete` for resources that support batch delete.
mixin ModelDeleteManyMixin<T extends Model> on ModelRepository<T> {
  @override
  Future<BatchResult<T>> deleteMany({required BatchDeleteRequest request}) {
    return postBatchAction<T>(
      action: 'batchDelete',
      body: request.toJson(),
      resourceFromJson: (json) => modelFromJson(json),
    );
  }
}

/// `POST /{table}:batchUpdate` for resources that support batch update with mask.
mixin ModelUpdateManyMixin<T extends Model> on ModelRepository<T> {
  @override
  Future<BatchResult<T>> updateMany({required BatchUpdateManyRequest request}) {
    return postBatchAction<T>(
      action: 'batchUpdate',
      body: request.toJson(),
      resourceFromJson: (json) => modelFromJson(json),
    );
  }
}

/// `POST /{table}:batchCreate` for resources that support batch create.
mixin ModelCreateManyMixin<T extends Model> on ModelRepository<T> {
  @override
  Future<BatchResult<T>> createMany({required BatchCreateManyRequest request}) {
    return postBatchAction<T>(
      action: 'batchCreate',
      body: request.toJson(),
      resourceFromJson: (json) => modelFromJson(json),
    );
  }
}
