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
mixin _$EcotrackOrderCreateRequest {

@JsonKey(name: 'reference') String? get reference;@JsonKey(name: 'nom_client') String get nomClient;@JsonKey(name: 'telephone') String get telephone;@JsonKey(name: 'telephone_2') String? get telephone2;@JsonKey(name: 'adresse') String get adresse;@JsonKey(name: 'code_postal') String? get codePostal;@JsonKey(name: 'commune') String get commune;@JsonKey(name: 'code_wilaya') int get codeWilaya;@JsonKey(name: 'montant') double get montant;@JsonKey(name: 'remarque') String? get remarque;@JsonKey(name: 'produit') String? get produit;@JsonKey(name: 'stock') int get stock;@JsonKey(name: 'quantite') String? get quantite;@JsonKey(name: 'produit_a_recuperer') String? get produitARecuperer;@JsonKey(name: 'boutique') String? get boutique;@JsonKey(name: 'type') int get type;@JsonKey(name: 'stop_desk') int? get stopDesk;@JsonKey(name: 'weight') double? get weight;@JsonKey(name: 'fragile') int? get fragile;@JsonKey(name: 'can_open') int? get canOpen;
/// Create a copy of EcotrackOrderCreateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EcotrackOrderCreateRequestCopyWith<EcotrackOrderCreateRequest> get copyWith => _$EcotrackOrderCreateRequestCopyWithImpl<EcotrackOrderCreateRequest>(this as EcotrackOrderCreateRequest, _$identity);

  /// Serializes this EcotrackOrderCreateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EcotrackOrderCreateRequest&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.nomClient, nomClient) || other.nomClient == nomClient)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.telephone2, telephone2) || other.telephone2 == telephone2)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.codePostal, codePostal) || other.codePostal == codePostal)&&(identical(other.commune, commune) || other.commune == commune)&&(identical(other.codeWilaya, codeWilaya) || other.codeWilaya == codeWilaya)&&(identical(other.montant, montant) || other.montant == montant)&&(identical(other.remarque, remarque) || other.remarque == remarque)&&(identical(other.produit, produit) || other.produit == produit)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.quantite, quantite) || other.quantite == quantite)&&(identical(other.produitARecuperer, produitARecuperer) || other.produitARecuperer == produitARecuperer)&&(identical(other.boutique, boutique) || other.boutique == boutique)&&(identical(other.type, type) || other.type == type)&&(identical(other.stopDesk, stopDesk) || other.stopDesk == stopDesk)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.fragile, fragile) || other.fragile == fragile)&&(identical(other.canOpen, canOpen) || other.canOpen == canOpen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,reference,nomClient,telephone,telephone2,adresse,codePostal,commune,codeWilaya,montant,remarque,produit,stock,quantite,produitARecuperer,boutique,type,stopDesk,weight,fragile,canOpen]);

@override
String toString() {
  return 'EcotrackOrderCreateRequest(reference: $reference, nomClient: $nomClient, telephone: $telephone, telephone2: $telephone2, adresse: $adresse, codePostal: $codePostal, commune: $commune, codeWilaya: $codeWilaya, montant: $montant, remarque: $remarque, produit: $produit, stock: $stock, quantite: $quantite, produitARecuperer: $produitARecuperer, boutique: $boutique, type: $type, stopDesk: $stopDesk, weight: $weight, fragile: $fragile, canOpen: $canOpen)';
}


}

/// @nodoc
abstract mixin class $EcotrackOrderCreateRequestCopyWith<$Res>  {
  factory $EcotrackOrderCreateRequestCopyWith(EcotrackOrderCreateRequest value, $Res Function(EcotrackOrderCreateRequest) _then) = _$EcotrackOrderCreateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'reference') String? reference,@JsonKey(name: 'nom_client') String nomClient,@JsonKey(name: 'telephone') String telephone,@JsonKey(name: 'telephone_2') String? telephone2,@JsonKey(name: 'adresse') String adresse,@JsonKey(name: 'code_postal') String? codePostal,@JsonKey(name: 'commune') String commune,@JsonKey(name: 'code_wilaya') int codeWilaya,@JsonKey(name: 'montant') double montant,@JsonKey(name: 'remarque') String? remarque,@JsonKey(name: 'produit') String? produit,@JsonKey(name: 'stock') int stock,@JsonKey(name: 'quantite') String? quantite,@JsonKey(name: 'produit_a_recuperer') String? produitARecuperer,@JsonKey(name: 'boutique') String? boutique,@JsonKey(name: 'type') int type,@JsonKey(name: 'stop_desk') int? stopDesk,@JsonKey(name: 'weight') double? weight,@JsonKey(name: 'fragile') int? fragile,@JsonKey(name: 'can_open') int? canOpen
});




}
/// @nodoc
class _$EcotrackOrderCreateRequestCopyWithImpl<$Res>
    implements $EcotrackOrderCreateRequestCopyWith<$Res> {
  _$EcotrackOrderCreateRequestCopyWithImpl(this._self, this._then);

  final EcotrackOrderCreateRequest _self;
  final $Res Function(EcotrackOrderCreateRequest) _then;

/// Create a copy of EcotrackOrderCreateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reference = freezed,Object? nomClient = null,Object? telephone = null,Object? telephone2 = freezed,Object? adresse = null,Object? codePostal = freezed,Object? commune = null,Object? codeWilaya = null,Object? montant = null,Object? remarque = freezed,Object? produit = freezed,Object? stock = null,Object? quantite = freezed,Object? produitARecuperer = freezed,Object? boutique = freezed,Object? type = null,Object? stopDesk = freezed,Object? weight = freezed,Object? fragile = freezed,Object? canOpen = freezed,}) {
  return _then(_self.copyWith(
reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,nomClient: null == nomClient ? _self.nomClient : nomClient // ignore: cast_nullable_to_non_nullable
as String,telephone: null == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String,telephone2: freezed == telephone2 ? _self.telephone2 : telephone2 // ignore: cast_nullable_to_non_nullable
as String?,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,codePostal: freezed == codePostal ? _self.codePostal : codePostal // ignore: cast_nullable_to_non_nullable
as String?,commune: null == commune ? _self.commune : commune // ignore: cast_nullable_to_non_nullable
as String,codeWilaya: null == codeWilaya ? _self.codeWilaya : codeWilaya // ignore: cast_nullable_to_non_nullable
as int,montant: null == montant ? _self.montant : montant // ignore: cast_nullable_to_non_nullable
as double,remarque: freezed == remarque ? _self.remarque : remarque // ignore: cast_nullable_to_non_nullable
as String?,produit: freezed == produit ? _self.produit : produit // ignore: cast_nullable_to_non_nullable
as String?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,quantite: freezed == quantite ? _self.quantite : quantite // ignore: cast_nullable_to_non_nullable
as String?,produitARecuperer: freezed == produitARecuperer ? _self.produitARecuperer : produitARecuperer // ignore: cast_nullable_to_non_nullable
as String?,boutique: freezed == boutique ? _self.boutique : boutique // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,stopDesk: freezed == stopDesk ? _self.stopDesk : stopDesk // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,fragile: freezed == fragile ? _self.fragile : fragile // ignore: cast_nullable_to_non_nullable
as int?,canOpen: freezed == canOpen ? _self.canOpen : canOpen // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EcotrackOrderCreateRequest].
extension EcotrackOrderCreateRequestPatterns on EcotrackOrderCreateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EcotrackOrderCreateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EcotrackOrderCreateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EcotrackOrderCreateRequest value)  $default,){
final _that = this;
switch (_that) {
case _EcotrackOrderCreateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EcotrackOrderCreateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _EcotrackOrderCreateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'reference')  String? reference, @JsonKey(name: 'nom_client')  String nomClient, @JsonKey(name: 'telephone')  String telephone, @JsonKey(name: 'telephone_2')  String? telephone2, @JsonKey(name: 'adresse')  String adresse, @JsonKey(name: 'code_postal')  String? codePostal, @JsonKey(name: 'commune')  String commune, @JsonKey(name: 'code_wilaya')  int codeWilaya, @JsonKey(name: 'montant')  double montant, @JsonKey(name: 'remarque')  String? remarque, @JsonKey(name: 'produit')  String? produit, @JsonKey(name: 'stock')  int stock, @JsonKey(name: 'quantite')  String? quantite, @JsonKey(name: 'produit_a_recuperer')  String? produitARecuperer, @JsonKey(name: 'boutique')  String? boutique, @JsonKey(name: 'type')  int type, @JsonKey(name: 'stop_desk')  int? stopDesk, @JsonKey(name: 'weight')  double? weight, @JsonKey(name: 'fragile')  int? fragile, @JsonKey(name: 'can_open')  int? canOpen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EcotrackOrderCreateRequest() when $default != null:
return $default(_that.reference,_that.nomClient,_that.telephone,_that.telephone2,_that.adresse,_that.codePostal,_that.commune,_that.codeWilaya,_that.montant,_that.remarque,_that.produit,_that.stock,_that.quantite,_that.produitARecuperer,_that.boutique,_that.type,_that.stopDesk,_that.weight,_that.fragile,_that.canOpen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'reference')  String? reference, @JsonKey(name: 'nom_client')  String nomClient, @JsonKey(name: 'telephone')  String telephone, @JsonKey(name: 'telephone_2')  String? telephone2, @JsonKey(name: 'adresse')  String adresse, @JsonKey(name: 'code_postal')  String? codePostal, @JsonKey(name: 'commune')  String commune, @JsonKey(name: 'code_wilaya')  int codeWilaya, @JsonKey(name: 'montant')  double montant, @JsonKey(name: 'remarque')  String? remarque, @JsonKey(name: 'produit')  String? produit, @JsonKey(name: 'stock')  int stock, @JsonKey(name: 'quantite')  String? quantite, @JsonKey(name: 'produit_a_recuperer')  String? produitARecuperer, @JsonKey(name: 'boutique')  String? boutique, @JsonKey(name: 'type')  int type, @JsonKey(name: 'stop_desk')  int? stopDesk, @JsonKey(name: 'weight')  double? weight, @JsonKey(name: 'fragile')  int? fragile, @JsonKey(name: 'can_open')  int? canOpen)  $default,) {final _that = this;
switch (_that) {
case _EcotrackOrderCreateRequest():
return $default(_that.reference,_that.nomClient,_that.telephone,_that.telephone2,_that.adresse,_that.codePostal,_that.commune,_that.codeWilaya,_that.montant,_that.remarque,_that.produit,_that.stock,_that.quantite,_that.produitARecuperer,_that.boutique,_that.type,_that.stopDesk,_that.weight,_that.fragile,_that.canOpen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'reference')  String? reference, @JsonKey(name: 'nom_client')  String nomClient, @JsonKey(name: 'telephone')  String telephone, @JsonKey(name: 'telephone_2')  String? telephone2, @JsonKey(name: 'adresse')  String adresse, @JsonKey(name: 'code_postal')  String? codePostal, @JsonKey(name: 'commune')  String commune, @JsonKey(name: 'code_wilaya')  int codeWilaya, @JsonKey(name: 'montant')  double montant, @JsonKey(name: 'remarque')  String? remarque, @JsonKey(name: 'produit')  String? produit, @JsonKey(name: 'stock')  int stock, @JsonKey(name: 'quantite')  String? quantite, @JsonKey(name: 'produit_a_recuperer')  String? produitARecuperer, @JsonKey(name: 'boutique')  String? boutique, @JsonKey(name: 'type')  int type, @JsonKey(name: 'stop_desk')  int? stopDesk, @JsonKey(name: 'weight')  double? weight, @JsonKey(name: 'fragile')  int? fragile, @JsonKey(name: 'can_open')  int? canOpen)?  $default,) {final _that = this;
switch (_that) {
case _EcotrackOrderCreateRequest() when $default != null:
return $default(_that.reference,_that.nomClient,_that.telephone,_that.telephone2,_that.adresse,_that.codePostal,_that.commune,_that.codeWilaya,_that.montant,_that.remarque,_that.produit,_that.stock,_that.quantite,_that.produitARecuperer,_that.boutique,_that.type,_that.stopDesk,_that.weight,_that.fragile,_that.canOpen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EcotrackOrderCreateRequest extends EcotrackOrderCreateRequest {
  const _EcotrackOrderCreateRequest({@JsonKey(name: 'reference') this.reference, @JsonKey(name: 'nom_client') required this.nomClient, @JsonKey(name: 'telephone') required this.telephone, @JsonKey(name: 'telephone_2') this.telephone2, @JsonKey(name: 'adresse') required this.adresse, @JsonKey(name: 'code_postal') this.codePostal, @JsonKey(name: 'commune') required this.commune, @JsonKey(name: 'code_wilaya') required this.codeWilaya, @JsonKey(name: 'montant') required this.montant, @JsonKey(name: 'remarque') this.remarque, @JsonKey(name: 'produit') this.produit, @JsonKey(name: 'stock') required this.stock, @JsonKey(name: 'quantite') this.quantite, @JsonKey(name: 'produit_a_recuperer') this.produitARecuperer, @JsonKey(name: 'boutique') this.boutique, @JsonKey(name: 'type') required this.type, @JsonKey(name: 'stop_desk') this.stopDesk, @JsonKey(name: 'weight') this.weight, @JsonKey(name: 'fragile') this.fragile, @JsonKey(name: 'can_open') this.canOpen}): super._();
  factory _EcotrackOrderCreateRequest.fromJson(Map<String, dynamic> json) => _$EcotrackOrderCreateRequestFromJson(json);

@override@JsonKey(name: 'reference') final  String? reference;
@override@JsonKey(name: 'nom_client') final  String nomClient;
@override@JsonKey(name: 'telephone') final  String telephone;
@override@JsonKey(name: 'telephone_2') final  String? telephone2;
@override@JsonKey(name: 'adresse') final  String adresse;
@override@JsonKey(name: 'code_postal') final  String? codePostal;
@override@JsonKey(name: 'commune') final  String commune;
@override@JsonKey(name: 'code_wilaya') final  int codeWilaya;
@override@JsonKey(name: 'montant') final  double montant;
@override@JsonKey(name: 'remarque') final  String? remarque;
@override@JsonKey(name: 'produit') final  String? produit;
@override@JsonKey(name: 'stock') final  int stock;
@override@JsonKey(name: 'quantite') final  String? quantite;
@override@JsonKey(name: 'produit_a_recuperer') final  String? produitARecuperer;
@override@JsonKey(name: 'boutique') final  String? boutique;
@override@JsonKey(name: 'type') final  int type;
@override@JsonKey(name: 'stop_desk') final  int? stopDesk;
@override@JsonKey(name: 'weight') final  double? weight;
@override@JsonKey(name: 'fragile') final  int? fragile;
@override@JsonKey(name: 'can_open') final  int? canOpen;

/// Create a copy of EcotrackOrderCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EcotrackOrderCreateRequestCopyWith<_EcotrackOrderCreateRequest> get copyWith => __$EcotrackOrderCreateRequestCopyWithImpl<_EcotrackOrderCreateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EcotrackOrderCreateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EcotrackOrderCreateRequest&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.nomClient, nomClient) || other.nomClient == nomClient)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.telephone2, telephone2) || other.telephone2 == telephone2)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.codePostal, codePostal) || other.codePostal == codePostal)&&(identical(other.commune, commune) || other.commune == commune)&&(identical(other.codeWilaya, codeWilaya) || other.codeWilaya == codeWilaya)&&(identical(other.montant, montant) || other.montant == montant)&&(identical(other.remarque, remarque) || other.remarque == remarque)&&(identical(other.produit, produit) || other.produit == produit)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.quantite, quantite) || other.quantite == quantite)&&(identical(other.produitARecuperer, produitARecuperer) || other.produitARecuperer == produitARecuperer)&&(identical(other.boutique, boutique) || other.boutique == boutique)&&(identical(other.type, type) || other.type == type)&&(identical(other.stopDesk, stopDesk) || other.stopDesk == stopDesk)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.fragile, fragile) || other.fragile == fragile)&&(identical(other.canOpen, canOpen) || other.canOpen == canOpen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,reference,nomClient,telephone,telephone2,adresse,codePostal,commune,codeWilaya,montant,remarque,produit,stock,quantite,produitARecuperer,boutique,type,stopDesk,weight,fragile,canOpen]);

@override
String toString() {
  return 'EcotrackOrderCreateRequest(reference: $reference, nomClient: $nomClient, telephone: $telephone, telephone2: $telephone2, adresse: $adresse, codePostal: $codePostal, commune: $commune, codeWilaya: $codeWilaya, montant: $montant, remarque: $remarque, produit: $produit, stock: $stock, quantite: $quantite, produitARecuperer: $produitARecuperer, boutique: $boutique, type: $type, stopDesk: $stopDesk, weight: $weight, fragile: $fragile, canOpen: $canOpen)';
}


}

/// @nodoc
abstract mixin class _$EcotrackOrderCreateRequestCopyWith<$Res> implements $EcotrackOrderCreateRequestCopyWith<$Res> {
  factory _$EcotrackOrderCreateRequestCopyWith(_EcotrackOrderCreateRequest value, $Res Function(_EcotrackOrderCreateRequest) _then) = __$EcotrackOrderCreateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'reference') String? reference,@JsonKey(name: 'nom_client') String nomClient,@JsonKey(name: 'telephone') String telephone,@JsonKey(name: 'telephone_2') String? telephone2,@JsonKey(name: 'adresse') String adresse,@JsonKey(name: 'code_postal') String? codePostal,@JsonKey(name: 'commune') String commune,@JsonKey(name: 'code_wilaya') int codeWilaya,@JsonKey(name: 'montant') double montant,@JsonKey(name: 'remarque') String? remarque,@JsonKey(name: 'produit') String? produit,@JsonKey(name: 'stock') int stock,@JsonKey(name: 'quantite') String? quantite,@JsonKey(name: 'produit_a_recuperer') String? produitARecuperer,@JsonKey(name: 'boutique') String? boutique,@JsonKey(name: 'type') int type,@JsonKey(name: 'stop_desk') int? stopDesk,@JsonKey(name: 'weight') double? weight,@JsonKey(name: 'fragile') int? fragile,@JsonKey(name: 'can_open') int? canOpen
});




}
/// @nodoc
class __$EcotrackOrderCreateRequestCopyWithImpl<$Res>
    implements _$EcotrackOrderCreateRequestCopyWith<$Res> {
  __$EcotrackOrderCreateRequestCopyWithImpl(this._self, this._then);

  final _EcotrackOrderCreateRequest _self;
  final $Res Function(_EcotrackOrderCreateRequest) _then;

/// Create a copy of EcotrackOrderCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reference = freezed,Object? nomClient = null,Object? telephone = null,Object? telephone2 = freezed,Object? adresse = null,Object? codePostal = freezed,Object? commune = null,Object? codeWilaya = null,Object? montant = null,Object? remarque = freezed,Object? produit = freezed,Object? stock = null,Object? quantite = freezed,Object? produitARecuperer = freezed,Object? boutique = freezed,Object? type = null,Object? stopDesk = freezed,Object? weight = freezed,Object? fragile = freezed,Object? canOpen = freezed,}) {
  return _then(_EcotrackOrderCreateRequest(
reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,nomClient: null == nomClient ? _self.nomClient : nomClient // ignore: cast_nullable_to_non_nullable
as String,telephone: null == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String,telephone2: freezed == telephone2 ? _self.telephone2 : telephone2 // ignore: cast_nullable_to_non_nullable
as String?,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,codePostal: freezed == codePostal ? _self.codePostal : codePostal // ignore: cast_nullable_to_non_nullable
as String?,commune: null == commune ? _self.commune : commune // ignore: cast_nullable_to_non_nullable
as String,codeWilaya: null == codeWilaya ? _self.codeWilaya : codeWilaya // ignore: cast_nullable_to_non_nullable
as int,montant: null == montant ? _self.montant : montant // ignore: cast_nullable_to_non_nullable
as double,remarque: freezed == remarque ? _self.remarque : remarque // ignore: cast_nullable_to_non_nullable
as String?,produit: freezed == produit ? _self.produit : produit // ignore: cast_nullable_to_non_nullable
as String?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,quantite: freezed == quantite ? _self.quantite : quantite // ignore: cast_nullable_to_non_nullable
as String?,produitARecuperer: freezed == produitARecuperer ? _self.produitARecuperer : produitARecuperer // ignore: cast_nullable_to_non_nullable
as String?,boutique: freezed == boutique ? _self.boutique : boutique // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,stopDesk: freezed == stopDesk ? _self.stopDesk : stopDesk // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,fragile: freezed == fragile ? _self.fragile : fragile // ignore: cast_nullable_to_non_nullable
as int?,canOpen: freezed == canOpen ? _self.canOpen : canOpen // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
