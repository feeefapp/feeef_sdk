/// Confirmer-specific permissions stored in StoreMember.metadata.
///
/// Only applies when role == StoreMemberRole.confermer.
/// Editor and owner have implicit full permissions.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'store.dart';

part 'confermer_permissions.freezed.dart';
part 'confermer_permissions.g.dart';

/// Confirmer-specific permissions (stored in StoreMember.metadata['confermerPermissions']).
@freezed
abstract class ConfermerPermissions with _$ConfermerPermissions {
  const factory ConfermerPermissions({
    /// See all orders (unassigned + others'), not just unassigned + own.
    @Default(false) bool canSeeAllOrders,
    /// Assign unassigned orders to a confirmer.
    @Default(false) bool canAssignOrder,
    /// Reassign already-assigned orders to another confirmer.
    @Default(false) bool canReAssignOrder,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ConfermerPermissions;

  factory ConfermerPermissions.fromJson(Map<String, dynamic> json) =>
      _$ConfermerPermissionsFromJson(json);
}

/// Extension to read ConfermerPermissions from StoreMember.
extension StoreMemberConfermerX on StoreMember {
  /// Parses confermer permissions from metadata.
  /// Returns default (all false) if not a confirmer.
  ConfermerPermissions get confermerPermissions {
    if (role != StoreMemberRole.confermer) {
      return const ConfermerPermissions();
    }
    final m = metadata['confermerPermissions'];
    if (m is Map<String, dynamic>) {
      return ConfermerPermissions.fromJson(Map.from(m));
    }
    if (m is Map) {
      return ConfermerPermissions.fromJson(Map.from(m));
    }
    return ConfermerPermissions(
      canSeeAllOrders: metadata['canSeeAllOrders'] == true,
      canAssignOrder: metadata['canAssignOrder'] == true,
      canReAssignOrder: metadata['canReAssignOrder'] == true,
    );
  }
}
