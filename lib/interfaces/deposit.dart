import '../deposits/models/deposit.dart';

abstract class DepositEntity {
  String get id;
  String? get externalId;
  String get userId;
  num get amount;
  String get currency;
  String? get paymentMethod;
  String? get attachment;
  DepositStatus get status;
  String? get note;
  Map<String, dynamic> get metadata;
  List<DepositHistory> get history;
  DateTime get createdAt;
  DateTime get updatedAt;
}
