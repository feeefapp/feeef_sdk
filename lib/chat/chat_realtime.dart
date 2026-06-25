import 'dart:async';

import 'package:feeef/chat/chat_models.dart';
import 'package:feeef/chat/chat_repository.dart';

/// Helpers for bridging Transmit events and poll snapshots into UI state.
class ChatRealtimeBridge {
  /// Merges a polled [ChatGenerationSnapshot] into ordered transcript parts.
  static List<Map<String, dynamic>> mergeSnapshotTranscriptParts(
    List<Map<String, dynamic>> current,
    ChatGenerationSnapshot snapshot,
  ) {
    final byId = <String, Map<String, dynamic>>{
      for (final part in current)
        if (part['id'] != null) part['id'] as String: Map<String, dynamic>.from(part),
    };

    for (final part in snapshot.parts) {
      byId[part.id] = {
        'id': part.id,
        'type': part.type,
        'state': part.state,
        'content': Map<String, dynamic>.from(part.content),
        'position': part.position,
      };
    }

    final merged = byId.values.toList()
      ..sort((a, b) => ((a['position'] as int?) ?? 0).compareTo((b['position'] as int?) ?? 0));
    return merged;
  }

  /// Legacy: merges text deltas into a partId → text map.
  static Map<String, String> mergeSnapshotParts(
    Map<String, String> current,
    ChatGenerationSnapshot snapshot,
  ) {
    final next = Map<String, String>.from(current);
    for (final part in snapshot.parts) {
      if (part.type == 'text' || part.type == 'agent_note') {
        next[part.id] = part.text;
      }
    }
    return next;
  }

  /// Legacy: extracts ui_block contents from snapshot parts.
  static List<Map<String, dynamic>> blocksFromSnapshot(ChatGenerationSnapshot snapshot) {
    return transcriptPartsFromSnapshot(snapshot)
        .where((p) => p['type'] == 'ui_block' || p['type'] == 'tool_invocation')
        .map((p) {
          if (p['type'] == 'tool_invocation') {
            final content = Map<String, dynamic>.from(p['content'] as Map? ?? {});
            return {
              'type': 'tool_confirm',
              'props': content,
              '_partId': p['id'],
            };
          }
          return {
            ...Map<String, dynamic>.from(p['content'] as Map? ?? {}),
            '_partId': p['id'],
          };
        })
        .toList();
  }

  static List<Map<String, dynamic>> transcriptPartsFromSnapshot(
    ChatGenerationSnapshot snapshot,
  ) {
    return snapshot.parts
        .map(
          (p) => {
            'id': p.id,
            'type': p.type,
            'state': p.state,
            'content': Map<String, dynamic>.from(p.content),
            'position': p.position,
          },
        )
        .toList()
      ..sort((a, b) => ((a['position'] as int?) ?? 0).compareTo((b['position'] as int?) ?? 0));
  }

  /// Ensures a transcript row exists before the first [ChatGenerationEvent.isPartDelta].
  static List<Map<String, dynamic>> ensureTranscriptPartForDelta(
    List<Map<String, dynamic>> current,
    ChatGenerationEvent event,
  ) {
    if (!event.isPartDelta) return current;
    final partId = event.data['partId'] as String? ?? '';
    if (partId.isEmpty || current.any((p) => p['id'] == partId)) return current;
    return [
      ...current,
      {
        'id': partId,
        'type': 'text',
        'state': 'streaming',
        'content': <String, dynamic>{'text': ''},
        'position': current.length,
      },
    ];
  }

  /// Applies a single Transmit [ChatGenerationEvent] to part text map.
  static Map<String, String> applyEvent(
    Map<String, String> current,
    ChatGenerationEvent event,
  ) {
    if (!event.isPartDelta) return current;
    final partId = event.data['partId'] as String?;
    final delta = event.data['text'] as String? ?? '';
    if (partId == null) return current;
    final next = Map<String, String>.from(current);
    next[partId] = (next[partId] ?? '') + delta;
    return next;
  }

  /// Applies PART_START for any transcript part type.
  static List<Map<String, dynamic>> applyPartStart(
    List<Map<String, dynamic>> current,
    ChatGenerationEvent event,
  ) {
    if (!event.isPartStart) return current;
    final type = event.data['type'] as String?;
    if (type == null) return current;
    final partId = event.data['partId'] as String? ?? '';
    if (partId.isEmpty) return current;
    if (current.any((p) => p['id'] == partId)) return current;

    return [
      ...current,
      {
        'id': partId,
        'type': type,
        'state': 'streaming',
        'content': <String, dynamic>{},
        'position': (event.data['position'] as num?)?.toInt() ?? current.length,
      },
    ];
  }

  /// Applies PART_PATCH to transcript parts (tool_invocation, summaries, ui_block, etc.).
  static List<Map<String, dynamic>> applyPartPatch(
    List<Map<String, dynamic>> current,
    ChatGenerationEvent event,
  ) {
    if (!event.isPartPatch) return current;
    final partId = event.data['partId'] as String? ?? '';
    final type = event.data['type'] as String?;
    final content = event.data['content'];
    if (partId.isEmpty) return current;

    final next = [...current];
    final idx = next.indexWhere((p) => p['id'] == partId);
    final patchContent = content is Map ? Map<String, dynamic>.from(content) : <String, dynamic>{};

    if (idx >= 0) {
      final prev = Map<String, dynamic>.from(next[idx]);
      final prevContent = Map<String, dynamic>.from(prev['content'] as Map? ?? {});
      next[idx] = {
        ...prev,
        if (type != null) 'type': type,
        'content': {...prevContent, ...patchContent},
        if (event.data['position'] != null)
          'position': (event.data['position'] as num?)?.toInt(),
        if (event.data['state'] != null) 'state': event.data['state'],
      };
    } else {
      next.add({
        'id': partId,
        'type': type ?? 'text',
        'content': patchContent,
        'position': (event.data['position'] as num?)?.toInt() ?? next.length,
      });
    }

    next.sort((a, b) => ((a['position'] as int?) ?? 0).compareTo((b['position'] as int?) ?? 0));
    return next;
  }

  /// Legacy alias — applies PART_PATCH for ui_block parts.
  static List<Map<String, dynamic>> applyBlockPatch(
    List<Map<String, dynamic>> current,
    ChatGenerationEvent event,
  ) => applyPartPatch(current, event);

  /// Poll loop with exponential backoff when [poll] throws or returns a terminal failure.
  static Future<void> pollWithRetry({
    required Future<bool> Function() poll,
    required bool Function() shouldContinue,
    Duration initialInterval = const Duration(seconds: 2),
    Duration maxInterval = const Duration(seconds: 10),
    double backoffMultiplier = 1.5,
  }) async {
    var interval = initialInterval;
    while (shouldContinue()) {
      try {
        final done = await poll();
        interval = initialInterval;
        if (done) return;
      } catch (_) {
        final nextMs = (interval.inMilliseconds * backoffMultiplier).round();
        interval = Duration(
          milliseconds: nextMs.clamp(
            initialInterval.inMilliseconds,
            maxInterval.inMilliseconds,
          ),
        );
      }
      await Future<void>.delayed(interval);
    }
  }
}
