import 'package:feeef/auth/models/token.dart';
import 'package:feeef/interfaces/embadded/member_scope.dart';
import 'package:feeef/interfaces/embadded/store.dart';
import 'package:feeef/interfaces/helpers.dart';
import 'package:feeef/stores/models/store.dart';

class AuthResponse<T extends Model> {
  final T user;
  final AuthToken token;
  const AuthResponse({required this.user, required this.token});

  factory AuthResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    return AuthResponse(
      user: fromJson(json['user']),
      token: AuthToken.fromJson(json['token']),
    );
  }

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T) toJson) {
    return {'user': toJson(user), 'token': token};
  }

  AuthResponse<T> copyWith({T? user, AuthToken? token}) {
    return AuthResponse(user: user ?? this.user, token: token ?? this.token);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthResponse<T> &&
        other.user == user &&
        other.token == token;
  }

  @override
  int get hashCode => user.hashCode ^ token.hashCode;
}

extension AuthResponseExtension<T extends Model> on AuthResponse<T> {
  bool get isSignedIn => user != null;
  bool isEditor(Store store) {
    return store.members[user.id]?.role == StoreMemberRole.editor;
  }

  bool isViewer(Store store) {
    return store.members[user.id]?.role == StoreMemberRole.viewer;
  }

  bool isConfermer(Store store) {
    return store.members[user.id]?.role == StoreMemberRole.confermer;
  }

  bool isOwner(Store store) {
    return store.userId == user.id;
  }

  /// Whether the signed-in user has [requiredScope] on [store] (owner always true).
  bool hasScope(Store store, String requiredScope) {
    if (isOwner(store)) return true;
    final member = store.members[user.id];
    return memberHasScope(member, requiredScope);
  }
}
