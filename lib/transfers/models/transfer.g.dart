// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Transfer _$TransferFromJson(Map<String, dynamic> json) => _Transfer(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  debitAccountId: json['debitAccountId'] as String,
  creditAccountId: json['creditAccountId'] as String,
  amount: json['amount'] as num,
  type: $enumDecode(_$TransferTypeEnumMap, json['type']),
  referenceId: json['referenceId'] as String?,
  description: json['description'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$TransferToJson(_Transfer instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'debitAccountId': instance.debitAccountId,
  'creditAccountId': instance.creditAccountId,
  'amount': instance.amount,
  'type': _$TransferTypeEnumMap[instance.type]!,
  'referenceId': instance.referenceId,
  'description': instance.description,
  'metadata': instance.metadata,
};

const _$TransferTypeEnumMap = {
  TransferType.deposit: 'deposit',
  TransferType.subscription: 'subscription',
  TransferType.points: 'points',
  TransferType.storeDue: 'store_due',
  TransferType.userTransfer: 'user_transfer',
  TransferType.aiGeneration: 'ai_generation',
  TransferType.refund: 'refund',
  TransferType.adjustment: 'adjustment',
};
