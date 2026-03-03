import 'package:freezed_annotation/freezed_annotation.dart';

import '../../interfaces/helpers.dart';
import '../../interfaces/transfer.dart';

part 'transfer.freezed.dart';
part 'transfer.g.dart';

@JsonEnum(alwaysCreate: true)
enum TransferType {
  deposit,
  subscription,
  points,

  @JsonValue('store_due')
  storeDue,

  @JsonValue('user_transfer')
  userTransfer,

  @JsonValue('ai_generation')
  aiGeneration,

  refund,
  adjustment,
}

@freezed
abstract class Transfer extends TransferEntity
    with _$Transfer
    implements Model, ModelMetadata {
  Transfer._();
  factory Transfer({
    required String id,
    required DateTime createdAt,
    required String debitAccountId,
    required String creditAccountId,
    required num amount,
    required TransferType type,
    String? referenceId,
    String? description,
    @Default({}) Map<String, dynamic> metadata,
  }) = _Transfer;

  factory Transfer.fromJson(Map<String, dynamic> json) =>
      _$TransferFromJson(json);
}
