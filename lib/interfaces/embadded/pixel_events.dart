/// Ad pixel event rules (backend `services/integrations/pixel_rules.ts`): one list per store,
/// shared by Meta, TikTok and Snapchat; a product may carry its own for its single-product
/// orders.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixel_events.freezed.dart';
part 'pixel_events.g.dart';

/// `store.integrations.pixelEvents` / `product.integrationsData.pixelEvents`.
@freezed
abstract class PixelEvents with _$PixelEvents {
  const factory PixelEvents({@Default([]) List<PixelEventRule> rules}) =
      _PixelEvents;

  factory PixelEvents.fromJson(Map<String, dynamic> json) =>
      _$PixelEventsFromJson(json);
}

/// "When the order reaches [on], send each named platform its event." A platform with no
/// event is not sent. Event names are the platforms' own (`Purchase`, `PURCHASE`).
@freezed
abstract class PixelEventRule with _$PixelEventRule {
  const PixelEventRule._();

  @JsonSerializable(includeIfNull: false)
  const factory PixelEventRule({
    required String id,

    /// `phase:<draft|open|pack|ship|done|fail>`, `status:<statusId>` or `paid`.
    required String on,
    String? meta,
    String? tiktok,
    String? snapchat,
  }) = _PixelEventRule;

  factory PixelEventRule.fromJson(Map<String, dynamic> json) =>
      _$PixelEventRuleFromJson(json);

  PixelTrigger? get trigger => PixelTrigger.parse(on);
}

/// What a rule waits for.
sealed class PixelTrigger {
  const PixelTrigger();

  /// The order enters a phase of the rooms model.
  const factory PixelTrigger.phase(String phase) = PixelPhaseTrigger;

  /// The order gets a status of the store's catalog.
  const factory PixelTrigger.status(String statusId) = PixelStatusTrigger;

  /// The order is paid.
  const factory PixelTrigger.paid() = PixelPaidTrigger;

  static const phases = ['draft', 'open', 'pack', 'ship', 'done', 'fail'];

  static PixelTrigger? parse(String on) {
    if (on == 'paid') return const PixelTrigger.paid();
    if (on.startsWith('phase:') && phases.contains(on.substring(6))) {
      return PixelTrigger.phase(on.substring(6));
    }
    final id = on.startsWith('status:') ? on.substring(7) : '';
    return RegExp(r'^[A-Za-z0-9_-]{1,64}$').hasMatch(id)
        ? PixelTrigger.status(id)
        : null;
  }

  /// The stored form (`phase:done`, `status:<id>`, `paid`).
  String get value => switch (this) {
    PixelPhaseTrigger(:final phase) => 'phase:$phase',
    PixelStatusTrigger(:final statusId) => 'status:$statusId',
    PixelPaidTrigger() => 'paid',
  };
}

final class PixelPhaseTrigger extends PixelTrigger {
  const PixelPhaseTrigger(this.phase);
  final String phase;
}

final class PixelStatusTrigger extends PixelTrigger {
  const PixelStatusTrigger(this.statusId);
  final String statusId;
}

final class PixelPaidTrigger extends PixelTrigger {
  const PixelPaidTrigger();
}

/// What a store sends before it saves rules of its own (backend `DEFAULT_PIXEL_RULES`).
const kDefaultPixelEventRules = [
  PixelEventRule(
    id: 'checkout-draft',
    on: 'phase:draft',
    meta: 'Lead',
    tiktok: 'Lead',
    snapchat: 'START_CHECKOUT',
  ),
  PixelEventRule(
    id: 'checkout-open',
    on: 'phase:open',
    meta: 'Purchase',
    tiktok: 'Purchase',
    snapchat: 'PURCHASE',
  ),
];
