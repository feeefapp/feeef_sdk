import 'dart:developer' as developer;

import 'package:transmit_client/transmit.dart';

class Realtime {
  final Transmit transmit;

  Realtime({required this.transmit});

  Map<String, Subscription> subscriptions = {};

  /// Mirrors [Transmit.statusStream] (connected / reconnecting / disconnected).
  Stream<TransmitStatus> get statusStream => transmit.statusStream;

  bool get isConnected => transmit.isConnected;
  bool get isReconnecting => transmit.isReconnecting;

  Future<Subscription> subscribe(String channel) async {
    if (subscriptions.containsKey(channel)) {
      await unsubscribe(channel);
    }
    final subscription = transmit.subscription(channel);
    subscriptions[channel] = subscription;
    await subscription.create();
    developer.log('Subscription created: $channel', name: 'feeef.realtime');
    return subscription;
  }

  Future<void> unsubscribe(String channel) async {
    if (!subscriptions.containsKey(channel)) {
      return;
    }
    await subscriptions[channel]!.delete();
    subscriptions.remove(channel);
    // Also remove from transmit's internal map to prevent re-registration on reconnect
    transmit.removeSubscription(channel);
    developer.log('Subscription deleted: $channel', name: 'feeef.realtime');
  }

  Future<void> init() async {
    transmit.on('connected', () {
      developer.log('Connected to realtime', name: 'feeef.realtime');
    });
    transmit.on('disconnected', () {
      developer.log('Disconnected from realtime', name: 'feeef.realtime');
    });
    transmit.on('reconnecting', () {
      developer.log('Reconnecting to realtime', name: 'feeef.realtime');
    });
  }
}
