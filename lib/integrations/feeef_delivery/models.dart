/// Near / Feeef Delivery geo models for centers, buralists, and wilayas.
///
/// Parsed from `GET .../integrations/feeefDelivery/geo/:kind` which proxies
/// Near's `/sender/centers`, `/sender/buralists`, and `/sender/wilayas`.
library;

/// A Near sender pickup / hub center (`GET /sender/centers`).
class FeeefDeliveryCenter {
  final int id;
  final String name;
  final String? address;
  final String? wilayaCode;
  final String? communeCode;
  final String? googleMapUrl;
  final int? centerType;
  final String? region;

  const FeeefDeliveryCenter({
    required this.id,
    required this.name,
    this.address,
    this.wilayaCode,
    this.communeCode,
    this.googleMapUrl,
    this.centerType,
    this.region,
  });

  /// Display label for pickers (name + optional address).
  String get label {
    final a = address?.trim();
    if (a == null || a.isEmpty) return name;
    return '$name — $a';
  }

  factory FeeefDeliveryCenter.fromJson(Map<String, dynamic> json) {
    final id = _readInt(json['id']) ?? 0;
    final name = (json['center_name'] ??
            json['name'] ??
            json['centerName'] ??
            'Center $id')
        .toString();
    return FeeefDeliveryCenter(
      id: id,
      name: name,
      address: _readString(json['address']),
      wilayaCode: _readString(json['wilaya_code'] ?? json['wilayaCode']),
      communeCode: _readString(json['commune_code'] ?? json['communeCode']),
      googleMapUrl: _readString(json['google_map_url'] ?? json['googleMapUrl']),
      centerType: _readInt(json['center_type'] ?? json['centerType']),
      region: _readString(json['region']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'center_name': name,
        if (address != null) 'address': address,
        if (wilayaCode != null) 'wilaya_code': wilayaCode,
        if (communeCode != null) 'commune_code': communeCode,
        if (googleMapUrl != null) 'google_map_url': googleMapUrl,
        if (centerType != null) 'center_type': centerType,
        if (region != null) 'region': region,
      };
}

/// A Near buralist / stop-desk agent (`GET /sender/buralists`).
class FeeefDeliveryBuralist {
  final int id;
  final String name;
  final String? phone;
  final String? wilayaCode;
  final String? communeCode;
  final String? address;

  const FeeefDeliveryBuralist({
    required this.id,
    required this.name,
    this.phone,
    this.wilayaCode,
    this.communeCode,
    this.address,
  });

  String get label {
    final a = address?.trim();
    if (a == null || a.isEmpty) return name;
    return '$name — $a';
  }

  factory FeeefDeliveryBuralist.fromJson(Map<String, dynamic> json) {
    final id = _readInt(json['id'] ?? json['user_id'] ?? json['userId']) ?? 0;
    final name = (json['name'] ??
            json['full_name'] ??
            json['fullName'] ??
            json['username'] ??
            'Buralist $id')
        .toString();
    return FeeefDeliveryBuralist(
      id: id,
      name: name,
      phone: _readString(json['phone'] ?? json['phone_number']),
      wilayaCode: _readString(json['wilaya_code'] ?? json['wilayaCode']),
      communeCode: _readString(json['commune_code'] ?? json['communeCode']),
      address: _readString(json['address']),
    );
  }
}

/// A Near wilaya row (`GET /sender/wilayas`).
class FeeefDeliveryWilaya {
  final String code;
  final String name;

  const FeeefDeliveryWilaya({required this.code, required this.name});

  factory FeeefDeliveryWilaya.fromJson(Map<String, dynamic> json) {
    final code = (json['wilaya_code'] ??
            json['code'] ??
            json['wilayaCode'] ??
            '')
        .toString();
    final name = (json['name'] ?? json['wilaya_name'] ?? json['wilayaName'] ?? code)
        .toString();
    return FeeefDeliveryWilaya(code: code, name: name);
  }
}

int? _readInt(dynamic v) {
  if (v == null) return null;
  if (v is int) return v;
  if (v is num) return v.toInt();
  return int.tryParse(v.toString());
}

String? _readString(dynamic v) {
  if (v == null) return null;
  final s = v.toString().trim();
  return s.isEmpty ? null : s;
}

/// Parse `{ data: [...] }` or a bare list from geo endpoints.
List<Map<String, dynamic>> feeefDeliveryGeoRows(dynamic body) {
  dynamic raw = body;
  if (body is Map) {
    final m = Map<String, dynamic>.from(body);
    raw = m['data'] ?? m['centers'] ?? m['buralists'] ?? m['wilayas'] ?? m;
  }
  if (raw is! List) return const [];
  return raw
      .whereType<Map>()
      .map((e) => Map<String, dynamic>.from(e))
      .toList(growable: false);
}
