// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoestOrderCreateRequest {

/// Reference de la commande (Nullable | max:255)
@JsonKey(name: 'reference') String? get reference;/// Le nom & prénom du client (required | max:255)
@JsonKey(name: 'client') String get client;/// Le numéro de téléphone (required | digits_between:9,10)
@JsonKey(name: 'phone') String get phone;/// Numéro de téléphone secondaire (digits_between:9,10)
@JsonKey(name: 'phone_2') String? get phone2;/// L'adresse du client (required | max:255)
@JsonKey(name: 'adresse') String get adresse;/// L'identifiant de la wilaya (required | integer | between:1,48)
@JsonKey(name: 'wilaya_id') int get wilayaId;/// La commune (required | max:255)
@JsonKey(name: 'commune') String get commune;/// Le montant (required | numeric)
@JsonKey(name: 'montant') double get montant;/// La remarque (max:255)
@JsonKey(name: 'remarque') String? get remarque;/// Le nom du ou des produis (required)
/// Si stock=1, format: prod001,prod052
@JsonKey(name: 'produit') String get produit;/// Le type de commande (required | integer | between:1,3)
/// 1: Livraison
/// 2: Échange
/// 3: Pick up
@JsonKey(name: 'type_id', defaultValue: 1) int get typeId;/// Le poids du colis (required | integer)
@JsonKey(name: 'poids') int get poids;/// Type de livraison (required | integer | between:0,1)
/// 0: à domicile
/// 1: stop desk
@JsonKey(name: 'stop_desk', defaultValue: 0) int get stopDesk;/// Le code de la station (Required_if stop_desk=1)
@JsonKey(name: 'station_code') String? get stationCode;/// Préparation du stock Nord et ouest (integer | between:0,1)
/// 0: Non
/// 1: Oui
@JsonKey(name: 'stock', defaultValue: 0) int get stock;/// Les quantités de produits (Required_if stock=1)
@JsonKey(name: 'quantite') String? get quantite;/// Permission d'ouverture (integer | between:0,1)
/// 0: Non
/// 1: Oui
@JsonKey(name: 'can_open') int? get canOpen;
/// Create a copy of NoestOrderCreateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoestOrderCreateRequestCopyWith<NoestOrderCreateRequest> get copyWith => _$NoestOrderCreateRequestCopyWithImpl<NoestOrderCreateRequest>(this as NoestOrderCreateRequest, _$identity);

  /// Serializes this NoestOrderCreateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoestOrderCreateRequest&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.client, client) || other.client == client)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.phone2, phone2) || other.phone2 == phone2)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.wilayaId, wilayaId) || other.wilayaId == wilayaId)&&(identical(other.commune, commune) || other.commune == commune)&&(identical(other.montant, montant) || other.montant == montant)&&(identical(other.remarque, remarque) || other.remarque == remarque)&&(identical(other.produit, produit) || other.produit == produit)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&(identical(other.poids, poids) || other.poids == poids)&&(identical(other.stopDesk, stopDesk) || other.stopDesk == stopDesk)&&(identical(other.stationCode, stationCode) || other.stationCode == stationCode)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.quantite, quantite) || other.quantite == quantite)&&(identical(other.canOpen, canOpen) || other.canOpen == canOpen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reference,client,phone,phone2,adresse,wilayaId,commune,montant,remarque,produit,typeId,poids,stopDesk,stationCode,stock,quantite,canOpen);

@override
String toString() {
  return 'NoestOrderCreateRequest(reference: $reference, client: $client, phone: $phone, phone2: $phone2, adresse: $adresse, wilayaId: $wilayaId, commune: $commune, montant: $montant, remarque: $remarque, produit: $produit, typeId: $typeId, poids: $poids, stopDesk: $stopDesk, stationCode: $stationCode, stock: $stock, quantite: $quantite, canOpen: $canOpen)';
}


}

/// @nodoc
abstract mixin class $NoestOrderCreateRequestCopyWith<$Res>  {
  factory $NoestOrderCreateRequestCopyWith(NoestOrderCreateRequest value, $Res Function(NoestOrderCreateRequest) _then) = _$NoestOrderCreateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'reference') String? reference,@JsonKey(name: 'client') String client,@JsonKey(name: 'phone') String phone,@JsonKey(name: 'phone_2') String? phone2,@JsonKey(name: 'adresse') String adresse,@JsonKey(name: 'wilaya_id') int wilayaId,@JsonKey(name: 'commune') String commune,@JsonKey(name: 'montant') double montant,@JsonKey(name: 'remarque') String? remarque,@JsonKey(name: 'produit') String produit,@JsonKey(name: 'type_id', defaultValue: 1) int typeId,@JsonKey(name: 'poids') int poids,@JsonKey(name: 'stop_desk', defaultValue: 0) int stopDesk,@JsonKey(name: 'station_code') String? stationCode,@JsonKey(name: 'stock', defaultValue: 0) int stock,@JsonKey(name: 'quantite') String? quantite,@JsonKey(name: 'can_open') int? canOpen
});




}
/// @nodoc
class _$NoestOrderCreateRequestCopyWithImpl<$Res>
    implements $NoestOrderCreateRequestCopyWith<$Res> {
  _$NoestOrderCreateRequestCopyWithImpl(this._self, this._then);

  final NoestOrderCreateRequest _self;
  final $Res Function(NoestOrderCreateRequest) _then;

/// Create a copy of NoestOrderCreateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reference = freezed,Object? client = null,Object? phone = null,Object? phone2 = freezed,Object? adresse = null,Object? wilayaId = null,Object? commune = null,Object? montant = null,Object? remarque = freezed,Object? produit = null,Object? typeId = null,Object? poids = null,Object? stopDesk = null,Object? stationCode = freezed,Object? stock = null,Object? quantite = freezed,Object? canOpen = freezed,}) {
  return _then(_self.copyWith(
reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,client: null == client ? _self.client : client // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,phone2: freezed == phone2 ? _self.phone2 : phone2 // ignore: cast_nullable_to_non_nullable
as String?,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,wilayaId: null == wilayaId ? _self.wilayaId : wilayaId // ignore: cast_nullable_to_non_nullable
as int,commune: null == commune ? _self.commune : commune // ignore: cast_nullable_to_non_nullable
as String,montant: null == montant ? _self.montant : montant // ignore: cast_nullable_to_non_nullable
as double,remarque: freezed == remarque ? _self.remarque : remarque // ignore: cast_nullable_to_non_nullable
as String?,produit: null == produit ? _self.produit : produit // ignore: cast_nullable_to_non_nullable
as String,typeId: null == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as int,poids: null == poids ? _self.poids : poids // ignore: cast_nullable_to_non_nullable
as int,stopDesk: null == stopDesk ? _self.stopDesk : stopDesk // ignore: cast_nullable_to_non_nullable
as int,stationCode: freezed == stationCode ? _self.stationCode : stationCode // ignore: cast_nullable_to_non_nullable
as String?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,quantite: freezed == quantite ? _self.quantite : quantite // ignore: cast_nullable_to_non_nullable
as String?,canOpen: freezed == canOpen ? _self.canOpen : canOpen // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [NoestOrderCreateRequest].
extension NoestOrderCreateRequestPatterns on NoestOrderCreateRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoestOrderCreateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoestOrderCreateRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoestOrderCreateRequest value)  $default,){
final _that = this;
switch (_that) {
case _NoestOrderCreateRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoestOrderCreateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _NoestOrderCreateRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'reference')  String? reference, @JsonKey(name: 'client')  String client, @JsonKey(name: 'phone')  String phone, @JsonKey(name: 'phone_2')  String? phone2, @JsonKey(name: 'adresse')  String adresse, @JsonKey(name: 'wilaya_id')  int wilayaId, @JsonKey(name: 'commune')  String commune, @JsonKey(name: 'montant')  double montant, @JsonKey(name: 'remarque')  String? remarque, @JsonKey(name: 'produit')  String produit, @JsonKey(name: 'type_id', defaultValue: 1)  int typeId, @JsonKey(name: 'poids')  int poids, @JsonKey(name: 'stop_desk', defaultValue: 0)  int stopDesk, @JsonKey(name: 'station_code')  String? stationCode, @JsonKey(name: 'stock', defaultValue: 0)  int stock, @JsonKey(name: 'quantite')  String? quantite, @JsonKey(name: 'can_open')  int? canOpen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoestOrderCreateRequest() when $default != null:
return $default(_that.reference,_that.client,_that.phone,_that.phone2,_that.adresse,_that.wilayaId,_that.commune,_that.montant,_that.remarque,_that.produit,_that.typeId,_that.poids,_that.stopDesk,_that.stationCode,_that.stock,_that.quantite,_that.canOpen);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'reference')  String? reference, @JsonKey(name: 'client')  String client, @JsonKey(name: 'phone')  String phone, @JsonKey(name: 'phone_2')  String? phone2, @JsonKey(name: 'adresse')  String adresse, @JsonKey(name: 'wilaya_id')  int wilayaId, @JsonKey(name: 'commune')  String commune, @JsonKey(name: 'montant')  double montant, @JsonKey(name: 'remarque')  String? remarque, @JsonKey(name: 'produit')  String produit, @JsonKey(name: 'type_id', defaultValue: 1)  int typeId, @JsonKey(name: 'poids')  int poids, @JsonKey(name: 'stop_desk', defaultValue: 0)  int stopDesk, @JsonKey(name: 'station_code')  String? stationCode, @JsonKey(name: 'stock', defaultValue: 0)  int stock, @JsonKey(name: 'quantite')  String? quantite, @JsonKey(name: 'can_open')  int? canOpen)  $default,) {final _that = this;
switch (_that) {
case _NoestOrderCreateRequest():
return $default(_that.reference,_that.client,_that.phone,_that.phone2,_that.adresse,_that.wilayaId,_that.commune,_that.montant,_that.remarque,_that.produit,_that.typeId,_that.poids,_that.stopDesk,_that.stationCode,_that.stock,_that.quantite,_that.canOpen);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'reference')  String? reference, @JsonKey(name: 'client')  String client, @JsonKey(name: 'phone')  String phone, @JsonKey(name: 'phone_2')  String? phone2, @JsonKey(name: 'adresse')  String adresse, @JsonKey(name: 'wilaya_id')  int wilayaId, @JsonKey(name: 'commune')  String commune, @JsonKey(name: 'montant')  double montant, @JsonKey(name: 'remarque')  String? remarque, @JsonKey(name: 'produit')  String produit, @JsonKey(name: 'type_id', defaultValue: 1)  int typeId, @JsonKey(name: 'poids')  int poids, @JsonKey(name: 'stop_desk', defaultValue: 0)  int stopDesk, @JsonKey(name: 'station_code')  String? stationCode, @JsonKey(name: 'stock', defaultValue: 0)  int stock, @JsonKey(name: 'quantite')  String? quantite, @JsonKey(name: 'can_open')  int? canOpen)?  $default,) {final _that = this;
switch (_that) {
case _NoestOrderCreateRequest() when $default != null:
return $default(_that.reference,_that.client,_that.phone,_that.phone2,_that.adresse,_that.wilayaId,_that.commune,_that.montant,_that.remarque,_that.produit,_that.typeId,_that.poids,_that.stopDesk,_that.stationCode,_that.stock,_that.quantite,_that.canOpen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NoestOrderCreateRequest implements NoestOrderCreateRequest {
   _NoestOrderCreateRequest({@JsonKey(name: 'reference') this.reference, @JsonKey(name: 'client') required this.client, @JsonKey(name: 'phone') required this.phone, @JsonKey(name: 'phone_2') this.phone2, @JsonKey(name: 'adresse') required this.adresse, @JsonKey(name: 'wilaya_id') required this.wilayaId, @JsonKey(name: 'commune') required this.commune, @JsonKey(name: 'montant') required this.montant, @JsonKey(name: 'remarque') this.remarque, @JsonKey(name: 'produit') required this.produit, @JsonKey(name: 'type_id', defaultValue: 1) this.typeId = 1, @JsonKey(name: 'poids') required this.poids, @JsonKey(name: 'stop_desk', defaultValue: 0) this.stopDesk = 0, @JsonKey(name: 'station_code') this.stationCode, @JsonKey(name: 'stock', defaultValue: 0) this.stock = 0, @JsonKey(name: 'quantite') this.quantite, @JsonKey(name: 'can_open') this.canOpen});
  factory _NoestOrderCreateRequest.fromJson(Map<String, dynamic> json) => _$NoestOrderCreateRequestFromJson(json);

/// Reference de la commande (Nullable | max:255)
@override@JsonKey(name: 'reference') final  String? reference;
/// Le nom & prénom du client (required | max:255)
@override@JsonKey(name: 'client') final  String client;
/// Le numéro de téléphone (required | digits_between:9,10)
@override@JsonKey(name: 'phone') final  String phone;
/// Numéro de téléphone secondaire (digits_between:9,10)
@override@JsonKey(name: 'phone_2') final  String? phone2;
/// L'adresse du client (required | max:255)
@override@JsonKey(name: 'adresse') final  String adresse;
/// L'identifiant de la wilaya (required | integer | between:1,48)
@override@JsonKey(name: 'wilaya_id') final  int wilayaId;
/// La commune (required | max:255)
@override@JsonKey(name: 'commune') final  String commune;
/// Le montant (required | numeric)
@override@JsonKey(name: 'montant') final  double montant;
/// La remarque (max:255)
@override@JsonKey(name: 'remarque') final  String? remarque;
/// Le nom du ou des produis (required)
/// Si stock=1, format: prod001,prod052
@override@JsonKey(name: 'produit') final  String produit;
/// Le type de commande (required | integer | between:1,3)
/// 1: Livraison
/// 2: Échange
/// 3: Pick up
@override@JsonKey(name: 'type_id', defaultValue: 1) final  int typeId;
/// Le poids du colis (required | integer)
@override@JsonKey(name: 'poids') final  int poids;
/// Type de livraison (required | integer | between:0,1)
/// 0: à domicile
/// 1: stop desk
@override@JsonKey(name: 'stop_desk', defaultValue: 0) final  int stopDesk;
/// Le code de la station (Required_if stop_desk=1)
@override@JsonKey(name: 'station_code') final  String? stationCode;
/// Préparation du stock Nord et ouest (integer | between:0,1)
/// 0: Non
/// 1: Oui
@override@JsonKey(name: 'stock', defaultValue: 0) final  int stock;
/// Les quantités de produits (Required_if stock=1)
@override@JsonKey(name: 'quantite') final  String? quantite;
/// Permission d'ouverture (integer | between:0,1)
/// 0: Non
/// 1: Oui
@override@JsonKey(name: 'can_open') final  int? canOpen;

/// Create a copy of NoestOrderCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoestOrderCreateRequestCopyWith<_NoestOrderCreateRequest> get copyWith => __$NoestOrderCreateRequestCopyWithImpl<_NoestOrderCreateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoestOrderCreateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoestOrderCreateRequest&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.client, client) || other.client == client)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.phone2, phone2) || other.phone2 == phone2)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.wilayaId, wilayaId) || other.wilayaId == wilayaId)&&(identical(other.commune, commune) || other.commune == commune)&&(identical(other.montant, montant) || other.montant == montant)&&(identical(other.remarque, remarque) || other.remarque == remarque)&&(identical(other.produit, produit) || other.produit == produit)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&(identical(other.poids, poids) || other.poids == poids)&&(identical(other.stopDesk, stopDesk) || other.stopDesk == stopDesk)&&(identical(other.stationCode, stationCode) || other.stationCode == stationCode)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.quantite, quantite) || other.quantite == quantite)&&(identical(other.canOpen, canOpen) || other.canOpen == canOpen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reference,client,phone,phone2,adresse,wilayaId,commune,montant,remarque,produit,typeId,poids,stopDesk,stationCode,stock,quantite,canOpen);

@override
String toString() {
  return 'NoestOrderCreateRequest(reference: $reference, client: $client, phone: $phone, phone2: $phone2, adresse: $adresse, wilayaId: $wilayaId, commune: $commune, montant: $montant, remarque: $remarque, produit: $produit, typeId: $typeId, poids: $poids, stopDesk: $stopDesk, stationCode: $stationCode, stock: $stock, quantite: $quantite, canOpen: $canOpen)';
}


}

/// @nodoc
abstract mixin class _$NoestOrderCreateRequestCopyWith<$Res> implements $NoestOrderCreateRequestCopyWith<$Res> {
  factory _$NoestOrderCreateRequestCopyWith(_NoestOrderCreateRequest value, $Res Function(_NoestOrderCreateRequest) _then) = __$NoestOrderCreateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'reference') String? reference,@JsonKey(name: 'client') String client,@JsonKey(name: 'phone') String phone,@JsonKey(name: 'phone_2') String? phone2,@JsonKey(name: 'adresse') String adresse,@JsonKey(name: 'wilaya_id') int wilayaId,@JsonKey(name: 'commune') String commune,@JsonKey(name: 'montant') double montant,@JsonKey(name: 'remarque') String? remarque,@JsonKey(name: 'produit') String produit,@JsonKey(name: 'type_id', defaultValue: 1) int typeId,@JsonKey(name: 'poids') int poids,@JsonKey(name: 'stop_desk', defaultValue: 0) int stopDesk,@JsonKey(name: 'station_code') String? stationCode,@JsonKey(name: 'stock', defaultValue: 0) int stock,@JsonKey(name: 'quantite') String? quantite,@JsonKey(name: 'can_open') int? canOpen
});




}
/// @nodoc
class __$NoestOrderCreateRequestCopyWithImpl<$Res>
    implements _$NoestOrderCreateRequestCopyWith<$Res> {
  __$NoestOrderCreateRequestCopyWithImpl(this._self, this._then);

  final _NoestOrderCreateRequest _self;
  final $Res Function(_NoestOrderCreateRequest) _then;

/// Create a copy of NoestOrderCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reference = freezed,Object? client = null,Object? phone = null,Object? phone2 = freezed,Object? adresse = null,Object? wilayaId = null,Object? commune = null,Object? montant = null,Object? remarque = freezed,Object? produit = null,Object? typeId = null,Object? poids = null,Object? stopDesk = null,Object? stationCode = freezed,Object? stock = null,Object? quantite = freezed,Object? canOpen = freezed,}) {
  return _then(_NoestOrderCreateRequest(
reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,client: null == client ? _self.client : client // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,phone2: freezed == phone2 ? _self.phone2 : phone2 // ignore: cast_nullable_to_non_nullable
as String?,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,wilayaId: null == wilayaId ? _self.wilayaId : wilayaId // ignore: cast_nullable_to_non_nullable
as int,commune: null == commune ? _self.commune : commune // ignore: cast_nullable_to_non_nullable
as String,montant: null == montant ? _self.montant : montant // ignore: cast_nullable_to_non_nullable
as double,remarque: freezed == remarque ? _self.remarque : remarque // ignore: cast_nullable_to_non_nullable
as String?,produit: null == produit ? _self.produit : produit // ignore: cast_nullable_to_non_nullable
as String,typeId: null == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as int,poids: null == poids ? _self.poids : poids // ignore: cast_nullable_to_non_nullable
as int,stopDesk: null == stopDesk ? _self.stopDesk : stopDesk // ignore: cast_nullable_to_non_nullable
as int,stationCode: freezed == stationCode ? _self.stationCode : stationCode // ignore: cast_nullable_to_non_nullable
as String?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,quantite: freezed == quantite ? _self.quantite : quantite // ignore: cast_nullable_to_non_nullable
as String?,canOpen: freezed == canOpen ? _self.canOpen : canOpen // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
