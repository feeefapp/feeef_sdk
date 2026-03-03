import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request.freezed.dart';
part 'create_order_request.g.dart';

@freezed
abstract class NoestOrderCreateRequest with _$NoestOrderCreateRequest {
  factory NoestOrderCreateRequest({
    /// Reference de la commande (Nullable | max:255)
    @JsonKey(name: 'reference') String? reference,

    /// Le nom & prénom du client (required | max:255)
    @JsonKey(name: 'client') required String client,

    /// Le numéro de téléphone (required | digits_between:9,10)
    @JsonKey(name: 'phone') required String phone,

    /// Numéro de téléphone secondaire (digits_between:9,10)
    @JsonKey(name: 'phone_2') String? phone2,

    /// L'adresse du client (required | max:255)
    @JsonKey(name: 'adresse') required String adresse,

    /// L'identifiant de la wilaya (required | integer | between:1,48)
    @JsonKey(name: 'wilaya_id') required int wilayaId,

    /// La commune (required | max:255)
    @JsonKey(name: 'commune') required String commune,

    /// Le montant (required | numeric)
    @JsonKey(name: 'montant') required double montant,

    /// La remarque (max:255)
    @JsonKey(name: 'remarque') String? remarque,

    /// Le nom du ou des produis (required)
    /// Si stock=1, format: prod001,prod052
    @JsonKey(name: 'produit') required String produit,

    /// Le type de commande (required | integer | between:1,3)
    /// 1: Livraison
    /// 2: Échange
    /// 3: Pick up
    @JsonKey(name: 'type_id', defaultValue: 1) @Default(1) int typeId,

    /// Le poids du colis (required | integer)
    @JsonKey(name: 'poids') required int poids,

    /// Type de livraison (required | integer | between:0,1)
    /// 0: à domicile
    /// 1: stop desk
    @JsonKey(name: 'stop_desk', defaultValue: 0) @Default(0) int stopDesk,

    /// Le code de la station (Required_if stop_desk=1)
    @JsonKey(name: 'station_code') String? stationCode,

    /// Préparation du stock Nord et ouest (integer | between:0,1)
    /// 0: Non
    /// 1: Oui
    @JsonKey(name: 'stock', defaultValue: 0) @Default(0) int stock,

    /// Les quantités de produits (Required_if stock=1)
    @JsonKey(name: 'quantite') String? quantite,

    /// Permission d'ouverture (integer | between:0,1)
    /// 0: Non
    /// 1: Oui
    @JsonKey(name: 'can_open') int? canOpen,
  }) = _NoestOrderCreateRequest;

  factory NoestOrderCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$NoestOrderCreateRequestFromJson(json);
}
