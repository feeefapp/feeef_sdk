// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Deposit _$DepositFromJson(Map<String, dynamic> json) => _Deposit(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  externalId: json['externalId'] as String?,
  userId: json['userId'] as String,
  amount: json['amount'] as num,
  currency: json['currency'] as String,
  paymentMethod: json['paymentMethod'] as String?,
  attachment: json['attachment'] as String?,
  status:
      $enumDecodeNullable(_$DepositStatusEnumMap, json['status']) ??
      DepositStatus.pending,
  note: json['note'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  history:
      (json['history'] as List<dynamic>?)
          ?.map((e) => DepositHistory.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$DepositToJson(_Deposit instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'externalId': instance.externalId,
  'userId': instance.userId,
  'amount': instance.amount,
  'currency': instance.currency,
  'paymentMethod': instance.paymentMethod,
  'attachment': instance.attachment,
  'status': _$DepositStatusEnumMap[instance.status]!,
  'note': instance.note,
  'metadata': instance.metadata,
  'history': instance.history.map((e) => e.toJson()).toList(),
};

const _$DepositStatusEnumMap = {
  DepositStatus.pending: 'pending',
  DepositStatus.completed: 'completed',
  DepositStatus.failed: 'failed',
  DepositStatus.cancelled: 'cancelled',
};

_DepositCreate _$DepositCreateFromJson(Map<String, dynamic> json) =>
    _DepositCreate(
      id: json['id'] as String?,
      externalId: json['externalId'] as String?,
      userId: json['userId'] as String,
      amount: json['amount'] as num,
      currency: json['currency'] as String,
      paymentMethod: json['paymentMethod'] as String?,
      attachment: json['attachment'] as String?,
      status:
          $enumDecodeNullable(_$DepositStatusEnumMap, json['status']) ??
          DepositStatus.pending,
      note: json['note'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$DepositCreateToJson(_DepositCreate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'externalId': instance.externalId,
      'userId': instance.userId,
      'amount': instance.amount,
      'currency': instance.currency,
      'paymentMethod': instance.paymentMethod,
      'attachment': instance.attachment,
      'status': _$DepositStatusEnumMap[instance.status]!,
      'note': instance.note,
      'metadata': instance.metadata,
    };

_DepositUpdate _$DepositUpdateFromJson(Map<String, dynamic> json) =>
    _DepositUpdate(
      externalId: json['externalId'] as String?,
      userId: json['userId'] as String?,
      amount: json['amount'] as num?,
      currency: json['currency'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      attachment: json['attachment'] as String?,
      status: $enumDecodeNullable(_$DepositStatusEnumMap, json['status']),
      note: json['note'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      history: (json['history'] as List<dynamic>?)
          ?.map((e) => DepositHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DepositUpdateToJson(_DepositUpdate instance) =>
    <String, dynamic>{
      'externalId': instance.externalId,
      'userId': instance.userId,
      'amount': instance.amount,
      'currency': instance.currency,
      'paymentMethod': instance.paymentMethod,
      'attachment': instance.attachment,
      'status': _$DepositStatusEnumMap[instance.status],
      'note': instance.note,
      'metadata': instance.metadata,
      'history': instance.history?.map((e) => e.toJson()).toList(),
    };

_DepositHistory _$DepositHistoryFromJson(Map<String, dynamic> json) =>
    _DepositHistory(
      status: json['status'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$DepositHistoryToJson(_DepositHistory instance) =>
    <String, dynamic>{
      'status': instance.status,
      'timestamp': instance.timestamp.toIso8601String(),
      'note': instance.note,
    };
