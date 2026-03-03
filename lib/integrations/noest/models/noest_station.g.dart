// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'noest_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoestStation _$NoestStationFromJson(Map<String, dynamic> json) =>
    _NoestStation(
      code: json['code'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      map: json['map'] as String?,
      phones: (json['phones'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      email: json['email'] as String,
    );

Map<String, dynamic> _$NoestStationToJson(_NoestStation instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'address': instance.address,
      'map': instance.map,
      'phones': instance.phones,
      'email': instance.email,
    };
