import 'package:feeef/integrations/delivery/parcel.dart';
import 'package:feeef/integrations/ecotrack/models/create_order_request.dart';
import 'package:feeef/interfaces/order.dart';

Map<String, dynamic> _ecotrackExtMap(ParcelCreate parcel) {
  final raw = parcel.extensions['ecotrack'];
  if (raw is Map) {
    return Map<String, dynamic>.from(raw);
  }
  return {};
}

int _stopDeskFromParcel(ParcelCreate parcel) {
  final ex = _ecotrackExtMap(parcel);
  if (ex['stop_desk'] != null) {
    return (ex['stop_desk'] as num).toInt();
  }
  final st = parcel.shippingType;
  if (st == ShippingType.pickup || st == ShippingType.store) return 1;
  return 0;
}

ShippingType _shippingTypeFromStopDesk(int? stopDesk) =>
    stopDesk == 1 ? ShippingType.pickup : ShippingType.home;

/// Ecotrack create-order `type` codes (carrier convention: 1 forward, 2 exchange, 3 return).
int _ecotrackTypeFromParcel(ParcelCreate parcel) {
  final ex = _ecotrackExtMap(parcel);
  final legacy = (ex['type'] as num?)?.toInt();
  switch (parcel.type) {
    case ParcelTypes.forward:
      return 1;
    case ParcelTypes.exchange:
      return 2;
    case ParcelTypes.return_:
      return 3;
    case null:
    default:
      return legacy ?? 1;
  }
}

/// Ecotrack `stock`: 1 = from merchant stock, 0 = otherwise (e.g. net/dropship).
int _ecotrackStockFromParcel(ParcelCreate parcel) {
  final fs = parcel.fromStock;
  if (fs == true) return 1;
  if (fs == false) return 0;
  final ex = _ecotrackExtMap(parcel);
  return (ex['stock'] as num?)?.toInt() ?? 0;
}

/// Inverse of [_ecotrackTypeFromParcel] for round-tripping validated Ecotrack bodies.
String _parcelTypeFromEcotrack(int type) {
  switch (type) {
    case 2:
      return ParcelTypes.exchange;
    case 3:
      return ParcelTypes.return_;
    case 1:
    default:
      return ParcelTypes.forward;
  }
}

bool? _fromStockFromEcotrack(int stock) {
  if (stock == 1) return true;
  if (stock == 0) return false;
  return null;
}

/// Ecotrack `can_open`: 1 = customer may open before payment, 0 = not; API may omit (null).
int? _ecotrackCanOpenFromParcel(ParcelCreate parcel) {
  final co = parcel.canOpen;
  if (co == true) return 1;
  if (co == false) return 0;
  final ex = _ecotrackExtMap(parcel);
  final raw = ex['can_open'] ?? ex['canOpen'];
  if (raw is num) return raw.toInt();
  return null;
}

bool? _canOpenBoolFromEcotrack(int? v) {
  if (v == 1) return true;
  if (v == 0) return false;
  return null;
}

/// Builds [ParcelPackage] from Ecotrack numeric weight / fragile when reconstructing a parcel.
ParcelPackage? _packageFromEcotrackOrder(EcotrackOrderCreateRequest request) {
  final w = request.weight;
  final hasWeight = w != null && w > 0;
  final frag = request.fragile;
  if (!hasWeight && frag == null) return null;
  return ParcelPackage(
    weight: hasWeight ? w : null,
    fragile: frag == null ? null : frag == 1,
  );
}

/// Maps canonical [ParcelCreate] to Ecotrack’s create-order JSON shape.
///
/// - **commune** — `extensions['ecotrackCommuneLabel']` when set, else [ParcelAddress.cityCode]
///   (backend expects commune **code** as string when validated).
/// - **quantite** — {@link parcelLineItemsQuantitiesJoin} from [ParcelCreate.items].
/// - **weight** / **fragile** — prefer [ParcelCreate.package]; optional overrides in `extensions['ecotrack']`.
/// - **type** (Ecotrack int) — from [ParcelCreate.type] (`forward`→1, `exchange`→2, `return`→3); if unset,
///   `extensions['ecotrack']['type']` then default `1`.
/// - **stock** — from [ParcelCreate.fromStock] (`true`→1, `false`→0); if unset, `extensions['ecotrack']['stock']` then `0`.
/// - **can_open** — from [ParcelCreate.canOpen] (`true`→1, `false`→0); if unset, `extensions['ecotrack']['can_open']` / `canOpen`.
/// - Other Ecotrack-only knobs — `extensions['ecotrack']` map (e.g. `stop_desk` override).
EcotrackOrderCreateRequest ecotrackOrderFromParcelCreateRequest(
  ParcelCreate parcel, {
  String? boutique,
}) {
  final phones = parcel.contact.phones
      .map((p) => p.trim())
      .where((p) => p.isNotEmpty)
      .toList();
  final primary = phones.isNotEmpty ? phones.first : '';
  final secondary = phones.length > 1 ? phones[1] : null;

  final wilaya = int.tryParse(parcel.address.stateCode ?? '') ?? 0;

  final label = parcel.extensions['ecotrackCommuneLabel']?.toString().trim();
  final commune =
      (label != null && label.isNotEmpty) ? label : (parcel.address.cityCode ?? '');

  final ex = _ecotrackExtMap(parcel);
  final type = _ecotrackTypeFromParcel(parcel);
  final stock = _ecotrackStockFromParcel(parcel);
  final canOpen = _ecotrackCanOpenFromParcel(parcel);

  final pkg = parcel.package;
  final weightFromEx = (ex['weight'] as num?)?.toDouble();
  final fragileFromEx = (ex['fragile'] as num?)?.toInt();
  // Canonical: [ParcelCreate.package]; extensions only for legacy Ecotrack-only bodies.
  final weight = pkg?.weight ?? weightFromEx ?? 0.0;
  final fragile = pkg?.fragile == true
      ? 1
      : pkg?.fragile == false
          ? 0
          : (fragileFromEx ?? 0);

  final stopDesk = _stopDeskFromParcel(parcel);

  return EcotrackOrderCreateRequest(
    reference: parcel.externalReference,
    nomClient: parcel.contact.displayName,
    telephone: primary,
    telephone2: secondary?.isEmpty ?? true ? null : secondary,
    adresse: parcel.address.street ?? '',
    commune: commune,
    codeWilaya: wilaya,
    montant: parcel.total,
    remarque: parcel.notes,
    produit: parcel.summary,
    stock: stock,
    quantite: parcelLineItemsQuantitiesJoin(parcel.items),
    boutique: boutique,
    type: type,
    stopDesk: stopDesk,
    weight: weight,
    fragile: fragile,
    canOpen: canOpen,
  );
}

/// Rebuilds [ParcelCreate] after editing Ecotrack-specific fields.
ParcelCreate parcelCreateFromEcotrackOrder(
  EcotrackOrderCreateRequest request, {
  required String storeId,
  required String externalReference,
  String? country,
}) {
  final name = request.nomClient.trim();
  String? firstName;
  String? lastName;
  if (name.isEmpty) {
    firstName = 'Client';
  } else {
    final parts = name.split(RegExp(r'\s+'));
    firstName = parts.first;
    lastName = parts.length > 1 ? parts.sublist(1).join(' ') : null;
  }

  final phones = <String>[request.telephone.trim()];
  final t2 = request.telephone2?.trim();
  if (t2 != null && t2.isNotEmpty) {
    phones.add(t2);
  }

  final produit = request.produit ?? '';
  final qParts = request.quantite
          ?.split(',')
          .map((s) => int.tryParse(s.trim()) ?? 0)
          .toList() ??
      <int>[];
  final totalQ = qParts.isEmpty ? 1 : qParts.fold<int>(0, (a, b) => a + b);
  final items = <ParcelLineItem>[
    ParcelLineItem(
      name: produit.isEmpty ? 'Item' : produit,
      quantity: totalQ < 1 ? 1 : totalQ,
    ),
  ];

  return ParcelCreate(
    storeId: storeId,
    externalReference: externalReference,
    contact: ParcelContact(
      firstName: firstName,
      lastName: lastName,
      phones: phones,
    ),
    address: ParcelAddress(
      street: request.adresse,
      stateCode: request.codeWilaya.toString(),
      cityCode: request.commune,
      country: country ?? 'DZ',
    ),
    total: request.montant,
    declaredValue: request.montant,
    items: items,
    summary: produit,
    notes: request.remarque,
    shippingType: _shippingTypeFromStopDesk(request.stopDesk),
    type: _parcelTypeFromEcotrack(request.type),
    fromStock: _fromStockFromEcotrack(request.stock),
    canOpen: _canOpenBoolFromEcotrack(request.canOpen),
    package: _packageFromEcotrackOrder(request),
    extensions: {
      'ecotrackCommuneLabel': request.commune,
      'ecotrack': {
        'stop_desk': request.stopDesk,
      },
    },
  );
}

/// @Deprecated — use [parcelCreateFromEcotrackOrder].
@Deprecated('Use parcelCreateFromEcotrackOrder')
ParcelCreate parcelCreateRequestFromEcotrackOrder(
  EcotrackOrderCreateRequest request, {
  required String storeId,
  required String externalReference,
  String? countryCode,
}) {
  return parcelCreateFromEcotrackOrder(
    request,
    storeId: storeId,
    externalReference: externalReference,
    country: countryCode,
  );
}
