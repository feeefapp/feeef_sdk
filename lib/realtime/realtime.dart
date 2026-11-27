import 'dart:async';
import 'dart:developer' as developer;

import 'package:transmit_client/transmit.dart';

/// Thin wrapper around the Transmit (SSE) client.
///
/// Transmit has no message history: events broadcast while the stream is down
/// are lost. [onResync] tells listeners when that may have happened so they
/// can refetch from the API, which stays the source of truth.
/// See `docs/realtime.md` in the feeef.all workspace.
class Realtime {
  final Transmit transmit;

  /// Wait after the stream comes back before [onResync] fires. Transmit marks
  /// the stream connected *before* it re-registers channels, and may report
  /// `connected` twice (ready + open); this delay covers both.
  static const resyncDelay = Duration(milliseconds: 800);

  Realtime({required this.transmit}) {
    _statusSub = transmit.statusStream.listen(_onStatus);
  }

  Map<String, Subscription> subscriptions = {};

  final _resync = StreamController<void>.broadcast();
  StreamSubscription<TransmitStatus>? _statusSub;
  Timer? _resyncTimer;
  bool _wasConnected = false;
  bool _missedEvents = false;

  /// Mirrors [Transmit.statusStream] (connected / reconnecting / disconnected).
  Stream<TransmitStatus> get statusStream => transmit.statusStream;

  /// Fires once each time the stream is back after a drop (automatic
  /// reconnect or manual [Transmit.reconnect]), after channels re-register.
  /// Listeners should refetch whatever they show live. Never fires on the
  /// first connect.
  Stream<void> get onResync => _resync.stream;

  bool get isConnected => transmit.isConnected;
  bool get isReconnecting => transmit.isReconnecting;

  void _onStatus(TransmitStatus status) {
    switch (status) {
      case TransmitStatus.connected:
        if (_wasConnected && _missedEvents) {
          _resyncTimer?.cancel();
          _resyncTimer = Timer(resyncDelay, () {
            _missedEvents = false;
            developer.log('Resync after reconnect', name: 'feeef.realtime');
            if (!_resync.isClosed) _resync.add(null);
          });
        }
        _wasConnected = true;
      case TransmitStatus.disconnected:
      case TransmitStatus.reconnecting:
        _resyncTimer?.cancel();
        if (_wasConnected) _missedEvents = true;
      default:
        break;
    }
  }

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

  Future<void> dispose() async {
    _resyncTimer?.cancel();
    await _statusSub?.cancel();
    await _resync.close();
  }
}
