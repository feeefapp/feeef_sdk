import 'package:feeef/core/resource_repository.dart';
import 'package:feeef/states/models/state.dart';

/// Read-only repository for the Feeef Cloud state/province catalog.
///
/// List: `GET /states?countryCode=DZ&q=…`
///
/// The backend exposes no write routes for geography; [create], [update] and
/// [delete] throw [UnsupportedError]. The class still extends
/// [ResourceRepository] so generic resource views can list it.
class StateRepository
    extends ResourceRepository<State, StateCreate, StateUpdate> {
  StateRepository({required super.client}) : super(table: 'states');

  @override
  StateCreate createFromJson(json) => StateCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(StateCreate model) => model.toJson();

  @override
  State modelFromJson(json) => State.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(State model) => model.toJson();

  @override
  StateUpdate updateFromJson(json) => StateUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(StateUpdate model) => model.toJson();

  @override
  Future<State> create({
    required StateCreate data,
    Map<String, dynamic>? params,
  }) => throw UnsupportedError(_readOnly);

  @override
  Future<State> update({
    required String id,
    State? old,
    required StateUpdate data,
    Map<String, dynamic>? params,
  }) => throw UnsupportedError(_readOnly);

  @override
  Future<void> delete({required String id, Map<String, dynamic>? params}) =>
      throw UnsupportedError(_readOnly);

  static const _readOnly =
      'States are a read-only Feeef Cloud catalog (no write routes).';
}
