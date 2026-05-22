import 'package:feeef/core/model_repository.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/mixins/repository_mixins.dart';

/// Abstract repository that composes full CRUD mixins (create, find, list, update, delete).
///
/// Batch operations ([ModelRepository.deleteMany], [ModelRepository.updateMany],
/// [ModelRepository.createMany]) default to [UnimplementedError]. Opt in with
/// [ModelDeleteManyMixin], [ModelUpdateManyMixin], or [ModelCreateManyMixin] on
/// subclasses that expose `POST /{table}:batchDelete` (etc.) on the API.
///
/// Use for resources that support standard REST CRUD. Subclass and implement the
/// create/update/fromJson/toJson overrides.
abstract class ResourceRepository<
    T extends Model,
    C extends ModelCreate,
    U extends ModelUpdate> extends ModelRepository<T>
    with
        ModelCreateMixin<T, C>,
        ModelFindMixin<T>,
        ModelListMixin<T>,
        ModelUpdateMixin<T, U>,
        ModelDeleteMixin<T> {
  ResourceRepository({required super.client, required super.table});
}
