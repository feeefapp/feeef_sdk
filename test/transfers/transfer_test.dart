import 'package:feeef/transfers/models/transfer.dart';
import 'package:test/test.dart';

Map<String, dynamic> _transfer(String type) => {
  'id': 'transfer-1',
  'createdAt': '2026-11-08T20:00:00.000Z',
  'debitAccountId': 'buyer',
  'creditAccountId': 'revenue',
  'amount': 1200,
  'type': type,
};

void main() {
  test(
    'every backend wallet type decodes and round-trips without losing fields',
    () {
      for (final type in [
        'deposit',
        'subscription',
        'points',
        'store_due',
        'user_transfer',
        'ai_generation',
        'refund',
        'adjustment',
        'integration_subscription',
        'member_seats',
        'template_purchase',
      ]) {
        final transfer = Transfer.fromJson(_transfer(type));
        expect(transfer.toJson()['type'], type);
        expect(transfer.amount, 1200);
        expect(transfer.debitAccountId, 'buyer');
        expect(transfer.creditAccountId, 'revenue');
      }
    },
  );

  test(
    'a future server type does not break the entire transaction history',
    () {
      final transfer = Transfer.fromJson(_transfer('future_wallet_charge'));
      expect(transfer.type.name, 'unknown');
      expect(transfer.id, 'transfer-1');
      expect(transfer.amount, 1200);
    },
  );
}
