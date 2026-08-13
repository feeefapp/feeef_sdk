import 'package:feeef/auth/models/token.dart';
import 'package:feeef/auth/models/user_auth_response.dart';
import 'package:feeef/interfaces/embadded/member_permissions.dart';
import 'package:feeef/interfaces/embadded/store.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/stores/models/store.dart';
import 'package:test/test.dart';

/// Minimal signed-in user for [AuthResponse].
class _TestUser implements Model {
  _TestUser(this.id);
  @override
  final String id;
}

StoreMember _member(
  StoreMemberRole role,
  List<String> scopes, {
  bool active = true,
  DateTime? expiredAt,
}) {
  return StoreMember(
    userId: 'member-1',
    name: 'Member',
    role: role,
    createdAt: DateTime.utc(2024, 1, 1),
    active: active,
    expiredAt: expiredAt,
    scopes: scopes,
  );
}

Store _store({Map<String, StoreMember> members = const {}}) {
  final now = DateTime.utc(2024, 1, 1);
  return Store(
    id: 'store-1',
    createdAt: now,
    updatedAt: now,
    slug: 'shop',
    name: 'Shop',
    userId: 'owner-1',
    members: members,
  );
}

AuthResponse<_TestUser> _auth(String userId) {
  return AuthResponse(
    user: _TestUser(userId),
    token: AuthToken(
      type: 'bearer',
      name: null,
      abilities: const ['*'],
      lastUsedAt: null,
      expiresAt: null,
    ),
  );
}

final _writePermissions = StorePermission.values
    .where((p) =>
        p.name.endsWith('Write') ||
        p.name.endsWith('Delete') ||
        p.name.endsWith('Assign'))
    .toList();

void main() {
  group('roleAllowsPermission (matrix parity with API)', () {
    test('viewer never holds a write permission', () {
      for (final p in _writePermissions) {
        expect(roleAllowsPermission(StoreMemberRole.viewer, p), isFalse,
            reason: p.name);
      }
      expect(
        roleAllowsPermission(
            StoreMemberRole.viewer, StorePermission.integrationsBilling),
        isFalse,
      );
      expect(
        roleAllowsPermission(
            StoreMemberRole.viewer, StorePermission.integrationsDispatch),
        isFalse,
      );
    });

    test('editor holds everything except owner-only', () {
      for (final p in StorePermission.values) {
        if (p == StorePermission.storeDelete) continue;
        expect(roleAllowsPermission(StoreMemberRole.editor, p), isTrue,
            reason: p.name);
      }
      expect(
        roleAllowsPermission(StoreMemberRole.editor, StorePermission.storeDelete),
        isFalse,
      );
    });

    test('confermer: order workflow yes, manager surfaces no', () {
      const c = StoreMemberRole.confermer;
      expect(roleAllowsPermission(c, StorePermission.ordersRead), isTrue);
      expect(roleAllowsPermission(c, StorePermission.ordersWrite), isTrue);
      expect(
          roleAllowsPermission(c, StorePermission.integrationsDispatch), isTrue);
      expect(roleAllowsPermission(c, StorePermission.storeEventsSend), isTrue);

      expect(roleAllowsPermission(c, StorePermission.ordersAssign), isFalse);
      expect(roleAllowsPermission(c, StorePermission.productsWrite), isFalse);
      expect(
          roleAllowsPermission(c, StorePermission.productsAnalytics), isFalse);
      expect(
          roleAllowsPermission(c, StorePermission.integrationsWrite), isFalse);
      expect(roleAllowsPermission(c, StorePermission.membersWrite), isFalse);
    });
  });

  group('memberAllowsPermission', () {
    test('editor with legacy empty scopes has full working access', () {
      final m = _member(StoreMemberRole.editor, const []);
      expect(
          memberAllowsPermission(m, StorePermission.integrationsWrite), isTrue);
      expect(memberAllowsPermission(m, StorePermission.productsWrite), isTrue);
      expect(memberAllowsPermission(m, StorePermission.membersWrite), isTrue);
      expect(memberAllowsPermission(m, StorePermission.storeDelete), isFalse);
    });

    test('viewer with empty scopes reads everything, writes nothing', () {
      final m = _member(StoreMemberRole.viewer, const []);
      expect(memberAllowsPermission(m, StorePermission.ordersRead), isTrue);
      expect(
          memberAllowsPermission(m, StorePermission.integrationsRead), isTrue);
      for (final p in _writePermissions) {
        expect(memberAllowsPermission(m, p), isFalse, reason: p.name);
      }
    });

    test('scope narrowing: orders.read only', () {
      final m = _member(StoreMemberRole.editor, const ['orders.read']);
      expect(memberAllowsPermission(m, StorePermission.ordersRead), isTrue);
      expect(memberAllowsPermission(m, StorePermission.ordersWrite), isFalse);
      expect(memberAllowsPermission(m, StorePermission.productsRead), isFalse);
    });

    test('store.integrations implies pro modules (inventory/finance)', () {
      final m = _member(StoreMemberRole.editor, const ['store.integrations']);
      expect(
          memberAllowsPermission(m, StorePermission.integrationsWrite), isTrue);
      expect(memberAllowsPermission(m, StorePermission.inventoryWrite), isTrue);
      expect(memberAllowsPermission(m, StorePermission.financeRead), isTrue);
      expect(memberAllowsPermission(m, StorePermission.ordersRead), isFalse);
    });

    test('inactive or expired members are denied', () {
      final inactive = _member(StoreMemberRole.editor, const [], active: false);
      expect(memberIsActive(inactive), isFalse);
      expect(
          memberAllowsPermission(inactive, StorePermission.ordersRead), isFalse);

      final expired = _member(
        StoreMemberRole.editor,
        const [],
        expiredAt: DateTime.now().subtract(const Duration(minutes: 1)),
      );
      expect(memberIsActive(expired), isFalse);
      expect(
          memberAllowsPermission(expired, StorePermission.ordersRead), isFalse);

      final future = _member(
        StoreMemberRole.editor,
        const [],
        expiredAt: DateTime.now().add(const Duration(days: 1)),
      );
      expect(memberIsActive(future), isTrue);
      expect(
          memberAllowsPermission(future, StorePermission.ordersRead), isTrue);
    });

    test('null member denied', () {
      expect(memberAllowsPermission(null, StorePermission.ordersRead), isFalse);
    });
  });

  group('StorePermissionAccess.canOnStore', () {
    test('owner always allowed, including owner-only permissions', () {
      final store = _store();
      final owner = _auth('owner-1');
      expect(owner.canOnStore(store, StorePermission.storeDelete), isTrue);
      expect(
          owner.canOnStore(store, StorePermission.integrationsWrite), isTrue);
    });

    test('member goes through the matrix', () {
      final store = _store(members: {
        'member-1': _member(StoreMemberRole.viewer, const []),
      });
      final viewer = _auth('member-1');
      expect(viewer.canOnStore(store, StorePermission.ordersRead), isTrue);
      expect(viewer.canOnStore(store, StorePermission.ordersWrite), isFalse);
      expect(
        viewer.canAnyOnStore(store, const [
          StorePermission.ordersWrite,
          StorePermission.ordersRead,
        ]),
        isTrue,
      );
    });

    test('strangers are denied', () {
      final store = _store();
      final stranger = _auth('someone-else');
      expect(stranger.canOnStore(store, StorePermission.ordersRead), isFalse);
      expect(
        stranger.canAnyOnStore(store, const [StorePermission.ordersRead]),
        isFalse,
      );
    });
  });
}
