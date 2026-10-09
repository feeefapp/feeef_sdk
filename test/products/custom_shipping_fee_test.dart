import 'package:dio/dio.dart';
import 'package:feeef/cloud_delivery/cloud_delivery_api.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/products/models/product.dart';
import 'package:test/test.dart';

Map<String, dynamic> _product([Map<String, dynamic> extra = const {}]) => {
      'id': 'p1',
      'createdAt': '2026-10-09T00:00:00.000Z',
      'updatedAt': '2026-10-09T00:00:00.000Z',
      'slug': 'p1',
      'name': 'P1',
      'media': <String>[],
      'storeId': 's1',
      'price': 1000,
      ...extra,
    };

void main() {
  group('CustomShippingFee parsing', () {
    test('product without the field parses (older backends)', () {
      expect(Product.fromJson(_product()).customShippingFee, isNull);
    });

    test('null stays null', () {
      expect(
        Product.fromJson(_product({'customShippingFee': null}))
            .customShippingFee,
        isNull,
      );
    });

    test('full shape', () {
      final p = Product.fromJson(_product({
        'shippingFeeId': 'ca_main1',
        'customShippingFee': {
          'home': 600,
          'desk': 400,
          'states': {
            '16': {'home': 500, 'desk': 300},
            '31': {'desk': 0},
          },
        },
      }));
      final fee = p.customShippingFee!;
      expect(fee.home, 600);
      expect(fee.desk, 400);
      expect(fee.states['16'], const ShippingFeePair(home: 500, desk: 300));
      expect(fee.states['31'], const ShippingFeePair(desk: 0));
      expect(fee.customisedStateCount, 2);
      expect(p.shippingFeeId, 'ca_main1');
    });

    test('lenient: JSON string, numeric strings, junk dropped', () {
      final fee = CustomShippingFee.tryParse(
        '{"home":"600","desk":-5,"states":{"16":{"home":"x"},"": {"home":1},'
        '"9":"bad","5":{"desk":250}}}',
      )!;
      expect(fee.home, 600);
      expect(fee.desk, isNull);
      expect(fee.states.keys, containsAll(['16', '5']));
      expect(fee.states['16']!.isEmpty, isTrue);
      expect(fee.states['5'], const ShippingFeePair(desk: 250));
      expect(CustomShippingFee.tryParse('not json'), isNull);
      expect(CustomShippingFee.tryParse(42), isNull);
    });
  });

  group('CustomShippingFee writing', () {
    test('toJson omits empty sides, empty states and empty entries', () {
      const fee = CustomShippingFee(
        home: 600,
        states: {
          '16': ShippingFeePair(home: 500),
          '31': ShippingFeePair(),
        },
      );
      expect(fee.toJson(), {
        'home': 600,
        'states': {
          '16': {'home': 500},
        },
      });
      expect(const CustomShippingFee(desk: 0).toJson(), {'desk': 0});
    });

    test('normalized: nothing set is null', () {
      expect(const CustomShippingFee().normalized(), isNull);
      expect(
        const CustomShippingFee(states: {'16': ShippingFeePair()})
            .normalized(),
        isNull,
      );
      expect(
        const CustomShippingFee(
          home: 1,
          states: {'16': ShippingFeePair()},
        ).normalized(),
        const CustomShippingFee(home: 1),
      );
    });

    test('round trip through Product.toJson', () {
      const fee = CustomShippingFee(
        home: 600,
        desk: 400,
        states: {'16': ShippingFeePair(home: 500)},
      );
      final p = Product.fromJson(_product()).copyWith(customShippingFee: fee);
      expect(Product.fromJson(p.toJson()).customShippingFee, fee);
    });

    test('ProductUpdate leaves the column alone unless asked to clear it', () {
      expect(
        const ProductUpdate(name: 'x').toUpdateJson().containsKey(
              'customShippingFee',
            ),
        isFalse,
      );
      final cleared = const ProductUpdate(
        setToNull: ['customShippingFee'],
      ).toUpdateJson();
      expect(cleared.containsKey('customShippingFee'), isTrue);
      expect(cleared['customShippingFee'], isNull);
      expect(
        const ProductUpdate(
          customShippingFee: CustomShippingFee(home: 600),
        ).toUpdateJson()['customShippingFee'],
        {'home': 600},
      );
    });
  });

  group('feeFor (display resolution)', () {
    const fee = CustomShippingFee(
      home: 600,
      desk: 400,
      states: {'16': ShippingFeePair(home: 500), '31': ShippingFeePair(desk: 0)},
    );
    test('state entry wins per field', () {
      expect(fee.feeFor(home: true, stateCode: '16'), 500);
      expect(fee.feeFor(home: false, stateCode: '16'), 400);
      expect(fee.feeFor(home: false, stateCode: '31'), 0);
      expect(fee.feeFor(home: true, stateCode: '5'), 600);
      expect(const CustomShippingFee().feeFor(home: true), isNull);
    });
  });

  group('mixedCourierAccountsFrom', () {
    test('single ship 409 body', () {
      expect(
        mixedCourierAccountsFrom({
          'code': 'MIXED_COURIER_ACCOUNTS',
          'message': 'Order products default to different courier accounts',
          'accounts': ['ca_a', 'ca_b'],
        }),
        ['ca_a', 'ca_b'],
      );
    });

    test('sendMany failed row', () {
      expect(
        mixedCourierAccountsFrom({
          'orderId': 'o1',
          'code': 'MIXED_COURIER_ACCOUNTS',
          'details': {
            'accounts': ['ca_a', 'ca_b'],
          },
        }),
        ['ca_a', 'ca_b'],
      );
    });

    test('DioException 409', () {
      final req = RequestOptions(path: '/x');
      final e = DioException(
        requestOptions: req,
        response: Response(
          requestOptions: req,
          statusCode: 409,
          data: {
            'code': 'MIXED_COURIER_ACCOUNTS',
            'accounts': ['ca_a'],
          },
        ),
      );
      expect(mixedCourierAccountsFrom(e), ['ca_a']);
    });

    test('other errors are null', () {
      expect(mixedCourierAccountsFrom({'code': 'CARRIER_ACCOUNT_REQUIRED'}),
          isNull);
      expect(mixedCourierAccountsFrom('boom'), isNull);
      expect(mixedCourierAccountsFrom(null), isNull);
    });
  });
}
