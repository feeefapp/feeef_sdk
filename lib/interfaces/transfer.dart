import '../transfers/models/transfer.dart';

abstract class TransferEntity {
  String get id;
  String get debitAccountId;
  String get creditAccountId;
  num get amount;
  TransferType get type;
  String? get referenceId;
  String? get description;
  Map<String, dynamic> get metadata;
  DateTime get createdAt;
}
