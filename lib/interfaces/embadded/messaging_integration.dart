/// WhatsApp & SMS order messages (Feeef Cloud Messaging), kept in
/// `store.integrations.messaging` (backend `services/integrations/messaging_rules.ts`).
///
/// - **Rules**: like ad pixel rules. When an order reaches [MessagingRule.on] (a phase, a
///   catalog status or paid) an approved WhatsApp template is sent, falling back to SMS when
///   the rule allows it.
/// - **Confirmation**: when an order is placed, a template with Confirm / Cancel quick
///   replies goes out; the customer's tap applies the chosen catalog status.
///
/// Triggers use [PixelTrigger] (same strings as pixel rules).
library;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'pixel_events.dart';

part 'messaging_integration.freezed.dart';
part 'messaging_integration.g.dart';

/// Channels a rule may use, tried in order.
abstract final class MessagingChannels {
  static const whatsapp = 'whatsapp';
  static const sms = 'sms';
  static const all = [whatsapp, sms];
}

/// Max rules a store keeps (backend `MAX_MESSAGING_RULES`).
const kMaxMessagingRules = 20;

/// Order details a template slot can take as `{{chip}}` tokens (backend `MESSAGING_VARIABLES`;
/// the templates endpoint also returns them).
const kMessagingVariables = [
  'customer_name',
  'customer_phone',
  'order_id',
  'total',
  'store_name',
  'tracking',
  'wilaya',
  'commune',
  'product_name',
];

/// `store.integrations.messaging`. Nulls are written as nulls on purpose: `senderId: null`
/// means Feeef's shared senders, `confirmation: null` means no confirmation question.
@freezed
abstract class MessagingIntegration with _$MessagingIntegration {
  const factory MessagingIntegration({
    @Default(false) bool active,

    /// The store's own WhatsApp sender in Cloud (`snd_…`); null = Feeef's shared senders.
    String? senderId,
    @Default([]) List<MessagingRule> rules,
    MessagingConfirmation? confirmation,
  }) = _MessagingIntegration;

  factory MessagingIntegration.fromJson(Map<String, dynamic> json) =>
      _$MessagingIntegrationFromJson(json);
}

/// "When the order reaches [on], send [template] in [locale] on the first channel that works."
@freezed
abstract class MessagingRule with _$MessagingRule {
  const MessagingRule._();

  const factory MessagingRule({
    required String id,

    /// `phase:<draft|open|pack|ship|done|fail>`, `status:<statusId>` or `paid`.
    required String on,
    required String template,
    required String locale,

    /// Slot values in the template's order (header, body, buttons): `{{chip}}` tokens or text.
    @Default([]) List<String> variables,

    /// [MessagingChannels] values, 1–2, distinct; WhatsApp first is the usual choice.
    @Default([MessagingChannels.whatsapp]) List<String> channels,
  }) = _MessagingRule;

  factory MessagingRule.fromJson(Map<String, dynamic> json) =>
      _$MessagingRuleFromJson(json);

  PixelTrigger? get trigger => PixelTrigger.parse(on);
}

/// The order confirmation question: sent when the order is placed, the customer's tap
/// confirms or cancels it.
@freezed
abstract class MessagingConfirmation with _$MessagingConfirmation {
  const factory MessagingConfirmation({
    @Default(false) bool enabled,

    /// Always `phase:open` (placed orders; never drafts).
    @Default('phase:open') String on,
    required String template,
    required String locale,
    @Default([]) List<String> variables,

    /// Quick-reply ids as Cloud reports them: `q` + position among all the template's buttons.
    required String confirmButton,
    String? cancelButton,

    /// Catalog statuses to apply; null = the store's default confirmed / cancelled status.
    String? confirmStatusId,
    String? cancelStatusId,

    /// Taps after this many hours are recorded but not applied (0.25–72).
    @Default(24) double waitHours,
  }) = _MessagingConfirmation;

  factory MessagingConfirmation.fromJson(Map<String, dynamic> json) =>
      _$MessagingConfirmationFromJson(json);
}
