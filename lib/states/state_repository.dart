import 'package:feeef/states/models/state.dart';
import 'package:feeef/feeef.dart';

/// Repository for managing state/province data
///
/// States have composite keys (countryCode + code) and are nested under countries.
/// Provides operations including:
/// - List states for a country
/// - Find state by country code and state code
/// - Create new state
/// - Update existing state
/// - Delete state
class StateRepository extends ModelRepository<State>
    with
        ModelCreateMixin<State, StateCreate>,
        ModelListMixin<State>,
        ModelDeleteMixin<State>,
        ModelUpdateMixin<State, StateUpdate> {
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
}
