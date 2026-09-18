import 'package:feeef/finance/models/finance_models.dart';
import 'package:test/test.dart';

void main() {
  group('Feeef payout types', () {
    test('confermer defaults to agent; editors/owners to salary', () {
      expect(inferPayoutTypeFromMemberRole('confermer'), 'agent');
      expect(inferPayoutTypeFromMemberRole('editor'), 'salary');
      expect(inferPayoutTypeFromMemberRole('owner'), 'salary');
      expect(inferPayoutTypeFromMemberRole(null), 'salary');
    });

    test('legacy marketer is remapped; explicit agent is kept for editors', () {
      expect(
        normalizeCreatePayoutType('marketer',
            memberRole: 'confermer', hasPayeeUser: true),
        'agent',
      );
      expect(
        normalizeCreatePayoutType('marketer',
            memberRole: 'editor', hasPayeeUser: true),
        'salary',
      );
      expect(
        normalizeCreatePayoutType('agent',
            memberRole: 'editor', hasPayeeUser: true),
        'agent',
      );
      expect(
        normalizeCreatePayoutType(null, hasPayeeUser: false),
        'provider',
      );
    });

    test('payee json infers defaultPayoutType from confermer role', () {
      final payee = FinancePayee.fromJson({
        'id': 'u1',
        'userId': 'u1',
        'name': 'Sara',
        'role': 'confermer',
      });
      expect(payee.defaultPayoutType, 'agent');
      expect(isTeamPayoutType('agent'), isTrue);
      expect(isTeamPayoutType('marketer'), isTrue);
      expect(isOtherPayoutType('provider'), isTrue);
      expect(kTeamPayoutTypeFilter, 'team');
      expect(kOtherPayoutTypeFilter, 'other');
    });
  });
}
