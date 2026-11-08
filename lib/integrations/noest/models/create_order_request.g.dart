// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoestOrderCreateRequest _$NoestOrderCreateRequestFromJson(
  Map<String, dynamic> json,
) => _NoestOrderCreateRequest(
  reference: json['reference'] as String?,
  client: json['client'] as String,
  phone: json['phone'] as String,
  phone2: json['phone_2'] as String?,
  adresse: json['adresse'] as String,
  wilayaId: (json['wilaya_id'] as num).toInt(),
  commune: json['commune'] as String,
  montant: (json['montant'] as num).toDouble(),
  remarque: json['remarque'] as String?,
  produit: json['produit'] as String,
  typeId: (json['type_id'] as num?)?.toInt() ?? 1,
  poids: (json['poids'] as num).toInt(),
  stopDesk: (json['stop_desk'] as num?)?.toInt() ?? 0,
  stationCode: json['station_code'] as String?,
  stock: (json['stock'] as num?)?.toInt() ?? 0,
  quantite: json['quantite'] as String?,
  canOpen: (json['can_open'] as num?)?.toInt(),
);

Map<String, dynamic> _$NoestOrderCreateRequestToJson(
  _NoestOrderCreateRequest instance,
) => <String, dynamic>{
  'reference': instance.reference,
  'client': instance.client,
  'phone': instance.phone,
  'phone_2': instance.phone2,
  'adresse': instance.adresse,
  'wilaya_id': instance.wilayaId,
  'commune': instance.commune,
  'montant': instance.montant,
  'remarque': instance.remarque,
  'produit': instance.produit,
  'type_id': instance.typeId,
  'poids': instance.poids,
  'stop_desk': instance.stopDesk,
  'station_code': instance.stationCode,
  'stock': instance.stock,
  'quantite': instance.quantite,
  'can_open': instance.canOpen,
};
