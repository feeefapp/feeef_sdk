// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeeefValidationException _$FeeefValidationExceptionFromJson(
  Map<String, dynamic> json,
) => _FeeefValidationException(
  errors: (json['errors'] as List<dynamic>)
      .map((e) => FeeefViolation.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FeeefValidationExceptionToJson(
  _FeeefValidationException instance,
) => <String, dynamic>{
  'errors': instance.errors.map((e) => e.toJson()).toList(),
};

_FeeefViolation _$FeeefViolationFromJson(Map<String, dynamic> json) =>
    _FeeefViolation(
      message: json['message'] as String,
      rule: json['rule'] as String?,
      field: json['field'] as String?,
    );

Map<String, dynamic> _$FeeefViolationToJson(_FeeefViolation instance) =>
    <String, dynamic>{
      'message': instance.message,
      'rule': instance.rule,
      'field': instance.field,
    };
