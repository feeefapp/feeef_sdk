import 'package:transmit_client/transmit.dart';

class Realtime {
  final Transmit transmit;

  Realtime({required this.transmit});

  Map<String, Subscription> subscriptions = {};

  Future<Subscription> subscribe(String channel) async {
    if (subscriptions.containsKey(channel)) {
      await unsubscribe(channel);
    }
    final subscription = transmit.subscription(channel);
    subscriptions[channel] = subscription;
    await subscription.create();
    print('Subscription created: $channel');
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
    print('Subscription deleted: $channel');
  }

  Future<void> init() async {
    transmit.on('connected', () {
      print('Connected to realtime');
    });
    transmit.on('disconnected', () {
      print('Disconnected from realtime');
    });
    transmit.on('reconnecting', () {
      print('Reconnecting to realtime');
    });
  }
}
