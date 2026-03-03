/// Zimou location data models
///
/// These models represent the exact state and city data from Zimou Express API

class ZimouState {
  final int id;
  final String name;

  const ZimouState({required this.id, required this.name});

  factory ZimouState.fromJson(Map<String, dynamic> json) {
    return ZimouState(id: json['id'] as int, name: json['name'] as String);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }
}

class ZimouCity {
  final int id;
  final String name;
  final int wilayaId;
  final String? zipCode;
  final ZimouState? wilaya;

  const ZimouCity({
    required this.id,
    required this.name,
    required this.wilayaId,
    this.zipCode,
    this.wilaya,
  });

  factory ZimouCity.fromJson(Map<String, dynamic> json) {
    return ZimouCity(
      id: json['id'] as int,
      name: json['name'] as String,
      wilayaId: json['wilaya_id'] as int,
      zipCode: json['zip_code'] as String?,
      wilaya: json['wilaya'] != null
          ? ZimouState.fromJson(json['wilaya'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'wilaya_id': wilayaId,
      'zip_code': zipCode,
      'wilaya': wilaya?.toJson(),
    };
  }
}
