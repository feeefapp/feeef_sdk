import 'package:freezed_annotation/freezed_annotation.dart';

part 'noest_station.freezed.dart';
part 'noest_station.g.dart';

@freezed
abstract class NoestStation with _$NoestStation {
  factory NoestStation({
    /// Station code (e.g. "1A")
    required String code,

    /// Station name (e.g. "Adrar")
    required String name,

    /// Station address
    required String address,

    /// Google Maps link
    String? map,

    /// List of phone numbers
    required List<String> phones,

    /// Station email
    required String email,
  }) = _NoestStation;

  factory NoestStation.fromJson(Map<String, dynamic> json) =>
      _$NoestStationFromJson(json);
}

/// NoestStations is a singleton class that holds all Noest stations
class NoestStations {
  static final NoestStations _instance = NoestStations._internal();
  factory NoestStations() => _instance;
  NoestStations._internal();

  static final Map<String, NoestStation> _stations = {
    "01A": NoestStation(
      code: "1A",
      name: "Adrar",
      address: "Cité les palmier en face l'hopital",
      map: "https://maps.app.goo.gl/2Nrh9EFjphQwNJxXA",
      phones: ["0550602181", "0561623531"],
      email: "adrar@noest-dz.com",
    ),
    // Add all other stations here...
  };

  /// Get a station by its code
  static NoestStation? getByCode(String code) => _stations[code];

  /// Get all stations
  static List<NoestStation> getAll() => _stations.values.toList();
}
