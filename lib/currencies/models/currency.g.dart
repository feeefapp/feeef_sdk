// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Currency _$CurrencyFromJson(Map<String, dynamic> json) => _Currency(
  code: json['code'] as String,
  name: json['name'] as String,
  symbol: json['symbol'] as String?,
  decimals: (json['decimals'] as num).toInt(),
  rate: json['rate'] as num,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$CurrencyToJson(_Currency instance) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'symbol': instance.symbol,
  'decimals': instance.decimals,
  'rate': instance.rate,
  'metadata': instance.metadata,
  'createdAt': instance.createdAt.toIso8601String(),
};

_CurrencyCreate _$CurrencyCreateFromJson(Map<String, dynamic> json) =>
    _CurrencyCreate(
      code: json['code'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String?,
      decimals: (json['decimals'] as num).toInt(),
      rate: json['rate'] as num,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$CurrencyCreateToJson(_CurrencyCreate instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'symbol': instance.symbol,
      'decimals': instance.decimals,
      'rate': instance.rate,
      'metadata': instance.metadata,
    };

_CurrencyUpdate _$CurrencyUpdateFromJson(Map<String, dynamic> json) =>
    _CurrencyUpdate(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
      decimals: (json['decimals'] as num?)?.toInt(),
      rate: json['rate'] as num?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      setToNull:
          (json['setToNull'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CurrencyUpdateToJson(_CurrencyUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
      'decimals': instance.decimals,
      'rate': instance.rate,
      'metadata': instance.metadata,
      'setToNull': instance.setToNull,
    };
