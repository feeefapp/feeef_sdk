// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messaging_integration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessagingIntegration _$MessagingIntegrationFromJson(
  Map<String, dynamic> json,
) => _MessagingIntegration(
  active: json['active'] as bool? ?? false,
  senderId: json['senderId'] as String?,
  rules:
      (json['rules'] as List<dynamic>?)
          ?.map((e) => MessagingRule.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  confirmation: json['confirmation'] == null
      ? null
      : MessagingConfirmation.fromJson(
          json['confirmation'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$MessagingIntegrationToJson(
  _MessagingIntegration instance,
) => <String, dynamic>{
  'active': instance.active,
  'senderId': instance.senderId,
  'rules': instance.rules.map((e) => e.toJson()).toList(),
  'confirmation': instance.confirmation?.toJson(),
};

_MessagingRule _$MessagingRuleFromJson(
  Map<String, dynamic> json,
) => _MessagingRule(
  id: json['id'] as String,
  on: json['on'] as String,
  template: json['template'] as String,
  locale: json['locale'] as String,
  variables:
      (json['variables'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  channels:
      (json['channels'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [MessagingChannels.whatsapp],
);

Map<String, dynamic> _$MessagingRuleToJson(_MessagingRule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'on': instance.on,
      'template': instance.template,
      'locale': instance.locale,
      'variables': instance.variables,
      'channels': instance.channels,
    };

_MessagingConfirmation _$MessagingConfirmationFromJson(
  Map<String, dynamic> json,
) => _MessagingConfirmation(
  enabled: json['enabled'] as bool? ?? false,
  on: json['on'] as String? ?? 'phase:open',
  template: json['template'] as String,
  locale: json['locale'] as String,
  variables:
      (json['variables'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  confirmButton: json['confirmButton'] as String,
  cancelButton: json['cancelButton'] as String?,
  confirmStatusId: json['confirmStatusId'] as String?,
  cancelStatusId: json['cancelStatusId'] as String?,
  waitHours: (json['waitHours'] as num?)?.toDouble() ?? 24,
);

Map<String, dynamic> _$MessagingConfirmationToJson(
  _MessagingConfirmation instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'on': instance.on,
  'template': instance.template,
  'locale': instance.locale,
  'variables': instance.variables,
  'confirmButton': instance.confirmButton,
  'cancelButton': instance.cancelButton,
  'confirmStatusId': instance.confirmStatusId,
  'cancelStatusId': instance.cancelStatusId,
  'waitHours': instance.waitHours,
};
