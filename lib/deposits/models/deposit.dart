import 'package:freezed_annotation/freezed_annotation.dart';

import '../../interfaces/helpers.dart';
import '../../interfaces/deposit.dart';

part 'deposit.freezed.dart';
part 'deposit.g.dart';

@freezed
abstract class Deposit extends DepositEntity
    with _$Deposit
    implements Model, ModelMetadata {
  Deposit._();
  factory Deposit({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? externalId,
    required String userId,
    required num amount,
    required String currency,
    String? paymentMethod,
    String? attachment,
    @Default(DepositStatus.pending) DepositStatus status,
    String? note,
    @Default({}) Map<String, dynamic> metadata,
    @Default([]) List<DepositHistory> history,
  }) = _Deposit;

  factory Deposit.fromJson(Map<String, dynamic> json) =>
      _$DepositFromJson(json);
}

@freezed
abstract class DepositCreate with _$DepositCreate implements ModelCreate {
  const factory DepositCreate({
    String? id,
    String? externalId,
    required String userId,
    required num amount,
    required String currency,
    String? paymentMethod,
    String? attachment,
    @Default(DepositStatus.pending) DepositStatus status,
    String? note,
    @Default({}) Map<String, dynamic> metadata,
  }) = _DepositCreate;

  factory DepositCreate.fromJson(Map<String, dynamic> json) =>
      _$DepositCreateFromJson(json);
}

@freezed
abstract class DepositUpdate with _$DepositUpdate implements ModelUpdate {
  const factory DepositUpdate({
    String? externalId,
    String? userId,
    num? amount,
    String? currency,
    String? paymentMethod,
    String? attachment,
    DepositStatus? status,
    String? note,
    Map<String, dynamic>? metadata,
    List<DepositHistory>? history,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _DepositUpdate;

  factory DepositUpdate.fromJson(Map<String, dynamic> json) =>
      _$DepositUpdateFromJson(json);
}

@freezed
abstract class DepositHistory with _$DepositHistory {
  const factory DepositHistory({
    required String status,
    required DateTime timestamp,
    String? note,
  }) = _DepositHistory;

  factory DepositHistory.fromJson(Map<String, dynamic> json) =>
      _$DepositHistoryFromJson(json);
}

enum DepositStatus { pending, completed, failed, cancelled }
