import 'package:feeef/integrations/delivery/ecotrack_parcel_mappers.dart';
import 'package:feeef/integrations/delivery/parcel.dart';
import 'package:feeef/integrations/ecotrack/models/create_order_request.dart';
import 'package:feeef/interfaces/order.dart';
import 'package:test/test.dart';

void main() {
  group('ecotrack parcel mappers', () {
    final baseParcel = ParcelCreate(
      storeId: 'st_1',
      externalReference: 'ord_1',
      contact: const ParcelContact(
        firstName: 'Ali',
        lastName: 'Ben',
        phones: ['0555123456', '0555987654'],
      ),
      address: const ParcelAddress(
        street: 'Rue 1',
        stateCode: '16',
        cityCode: '123',
        country: 'DZ',
      ),
      total: 2500,
      declaredValue: 2500,
      items: const [
        ParcelLineItem(name: 'Tee', quantity: 1),
      ],
      summary: 'Tee (x1)',
      notes: 'Fragile',
      shippingType: ShippingType.pickup,
      type: ParcelTypes.forward,
      fromStock: false,
      canOpen: false,
      /// Physical logistics live on [ParcelCreate.package]; commune label for Ecotrack UX.
      package: const ParcelPackage(
        weight: 1.5,
        fragile: true,
      ),
      extensions: {
        'ecotrackCommuneLabel': 'Alger Centre',
      },
    );

    test('ecotrackOrderFromParcelCreateRequest maps cityCode and commune label', () {
      final e = ecotrackOrderFromParcelCreateRequest(
        baseParcel,
        boutique: 'My Shop',
      );

      expect(e.reference, 'ord_1');
      expect(e.nomClient, 'Ali Ben');
      expect(e.telephone, '0555123456');
      expect(e.telephone2, '0555987654');
      expect(e.adresse, 'Rue 1');
      expect(e.commune, 'Alger Centre');
      expect(e.codeWilaya, 16);
      expect(e.montant, 2500);
      expect(e.remarque, 'Fragile');
      expect(e.produit, 'Tee (x1)');
      expect(e.quantite, '1');
      expect(e.boutique, 'My Shop');
      expect(e.stopDesk, 1);
      expect(e.weight, 1.5);
      expect(e.fragile, 1);
      expect(e.canOpen, 0);
      expect(e.type, 1);
      expect(e.stock, 0);
    });

    test('fromStock true maps stock to 1', () {
      final p = ParcelCreate(
        storeId: 's',
        externalReference: 'o',
        contact: const ParcelContact(firstName: 'A', phones: ['0']),
        address: const ParcelAddress(
          street: 'x',
          cityCode: '1',
          stateCode: '1',
          country: 'DZ',
        ),
        total: 1,
        items: const [ParcelLineItem(name: 'i', quantity: 1)],
        summary: 'i',
        fromStock: true,
        extensions: const {},
      );
      final e = ecotrackOrderFromParcelCreateRequest(p);
      expect(e.stock, 1);
    });

    test('legacy extensions ecotrack can_open used when canOpen is null', () {
      final p = ParcelCreate(
        storeId: 's',
        externalReference: 'o',
        contact: const ParcelContact(firstName: 'A', phones: ['0']),
        address: const ParcelAddress(
          street: 'x',
          cityCode: '1',
          stateCode: '1',
          country: 'DZ',
        ),
        total: 1,
        items: const [ParcelLineItem(name: 'i', quantity: 1)],
        summary: 'i',
        extensions: {
          'ecotrack': {'can_open': 1},
        },
      );
      expect(ecotrackOrderFromParcelCreateRequest(p).canOpen, 1);
    });

    test('legacy extensions ecotrack stock used when fromStock is null', () {
      final p = ParcelCreate(
        storeId: 's',
        externalReference: 'o',
        contact: const ParcelContact(firstName: 'A', phones: ['0']),
        address: const ParcelAddress(
          street: 'x',
          cityCode: '1',
          stateCode: '1',
          country: 'DZ',
        ),
        total: 1,
        items: const [ParcelLineItem(name: 'i', quantity: 1)],
        summary: 'i',
        extensions: {
          'ecotrack': {'stock': 1},
        },
      );
      expect(ecotrackOrderFromParcelCreateRequest(p).stock, 1);
    });

    test('ParcelTypes.return_ maps Ecotrack type to 3', () {
      final p = baseParcel.copyWith(type: ParcelTypes.return_);
      expect(ecotrackOrderFromParcelCreateRequest(p).type, 3);
    });

    test('parcelCreateFromEcotrackOrder round-trips core fields', () {
      final e = ecotrackOrderFromParcelCreateRequest(
        baseParcel,
        boutique: 'My Shop',
      );
      final back = parcelCreateFromEcotrackOrder(
        e,
        storeId: 'st_1',
        externalReference: 'ord_1',
        country: 'DZ',
      );

      expect(back.storeId, 'st_1');
      expect(back.externalReference, 'ord_1');
      expect(back.contact.firstName, 'Ali');
      expect(back.contact.lastName, 'Ben');
      expect(back.contact.phones, ['0555123456', '0555987654']);
      expect(back.address.street, 'Rue 1');
      expect(back.address.stateCode, '16');
      expect(back.address.cityCode, 'Alger Centre');
      expect(back.total, 2500);
      expect(back.shippingType, ShippingType.pickup);
      expect(back.package?.weight, 1.5);
      expect(back.package?.fragile, true);
      expect(back.type, ParcelTypes.forward);
      expect(back.fromStock, false);
      expect(back.canOpen, false);
    });

    test('EcotrackOrderCreateRequest.fromJson still parses sample payload', () {
      final json = {
        'nom_client': 'Test',
        'telephone': '00',
        'adresse': 'A',
        'commune': 'C',
        'code_wilaya': 1,
        'montant': 10.0,
        'stock': 0,
        'type': 1,
      };
      final parsed = EcotrackOrderCreateRequest.fromJson(json);
      expect(parsed.nomClient, 'Test');
      expect(parsed.codeWilaya, 1);
    });
  });
}
