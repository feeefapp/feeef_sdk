import '../users/models/user.dart';

abstract class UserEntity {
  String? get name;
  String get email;
  String? get phone;
  String? get photoUrl;
  DateTime? get emailVerifiedAt;
  DateTime? get phoneVerifiedAt;
  DateTime? get verifiedAt;
  DateTime? get blockedAt;
  DateTime? get partnerApprovedAt;
  EmbaddedWallet get wallet;
  Map<String, dynamic> get claims;
}
