import 'dart:async';

import 'package:feeef/chat/chat_models.dart';
import 'package:feeef/chat/chat_realtime.dart';
import 'package:test/test.dart';

ChatMessagePart _part(String id, {int position = 0, String type = 'text'}) {
  return ChatMessagePart(
    id: id,
    type: type,
    state: 'done',
    content: {'text': id},
    position: position,
  );
}

ChatGenerationSnapshot _snapshot(List<ChatMessagePart> parts, {int seq = 1}) {
  return ChatGenerationSnapshot(
    id: 'gen_1',
    conversationId: 'conv_1',
    status: 'streaming',
    seq: seq,
    parts: parts,
    jobs: const [],
  );
}

void main() {
  group('transcript part ordering', () {
    // A long multi-tool generation is exactly the case that broke: enough parts
    // for List.sort to leave insertion sort, all sharing position 0 because the
    // backend used to omit the field.
    const partCount = 64;

    test('keeps server order when every position ties', () {
      final parts = [
        for (var i = 0; i < partCount; i++) _part('p$i'),
      ];

      final ordered = ChatRealtimeBridge.transcriptPartsFromSnapshot(
        _snapshot(parts),
      );

      expect(
        ordered.map((p) => p['id']).toList(),
        [for (var i = 0; i < partCount; i++) 'p$i'],
      );
    });

    test('merging the same snapshot repeatedly never reshuffles', () {
      final parts = [
        for (var i = 0; i < partCount; i++) _part('p$i'),
      ];

      var merged = <Map<String, dynamic>>[];
      for (var round = 0; round < 5; round++) {
        merged = ChatRealtimeBridge.mergeSnapshotTranscriptParts(
          merged,
          _snapshot(parts, seq: round + 1),
        );
      }

      expect(
        merged.map((p) => p['id']).toList(),
        [for (var i = 0; i < partCount; i++) 'p$i'],
      );
    });

    test('real positions still win over arrival order', () {
      final ordered = ChatRealtimeBridge.transcriptPartsFromSnapshot(
        _snapshot([
          _part('third', position: 2),
          _part('first', position: 0),
          _part('second', position: 1),
        ]),
      );

      expect(ordered.map((p) => p['id']).toList(), [
        'first',
        'second',
        'third',
      ]);
    });

    test('new parts from a later snapshot append after known ones', () {
      var merged = ChatRealtimeBridge.mergeSnapshotTranscriptParts(
        const [],
        _snapshot([_part('text_1'), _part('tool_1', type: 'tool_invocation')]),
      );
      merged = ChatRealtimeBridge.mergeSnapshotTranscriptParts(
        merged,
        _snapshot([
          _part('text_1'),
          _part('tool_1', type: 'tool_invocation'),
          _part('tool_2', type: 'tool_invocation'),
          _part('text_2'),
        ], seq: 2),
      );

      expect(merged.map((p) => p['id']).toList(), [
        'text_1',
        'tool_1',
        'tool_2',
        'text_2',
      ]);
    });
  });

  group('pollWithRetry connection handling', () {
    test('reports consecutive failures and recovery', () async {
      final failures = <int>[];
      var recoveries = 0;
      var attempt = 0;

      await ChatRealtimeBridge.pollWithRetry(
        initialInterval: Duration.zero,
        maxInterval: Duration.zero,
        shouldContinue: () => attempt < 5,
        poll: () async {
          attempt += 1;
          // Drop the connection for attempts 2 and 3, then recover.
          if (attempt == 2 || attempt == 3) throw StateError('offline');
          return attempt >= 5;
        },
        onFailure: (count, _) => failures.add(count),
        onSuccess: () => recoveries += 1,
      );

      expect(failures, [1, 2], reason: 'failures must count consecutively');
      expect(recoveries, 1, reason: 'recovery fires once when polls resume');
    });

    test('failure counter resets after each success', () async {
      final failures = <int>[];
      var attempt = 0;

      await ChatRealtimeBridge.pollWithRetry(
        initialInterval: Duration.zero,
        maxInterval: Duration.zero,
        shouldContinue: () => attempt < 6,
        poll: () async {
          attempt += 1;
          if (attempt.isEven) throw StateError('flaky');
          return attempt >= 6;
        },
        onFailure: (count, _) => failures.add(count),
      );

      expect(failures, [1, 1, 1]);
    });

    test('stops as soon as shouldContinue goes false', () async {
      var polls = 0;
      var live = true;

      await ChatRealtimeBridge.pollWithRetry(
        initialInterval: Duration.zero,
        maxInterval: Duration.zero,
        shouldContinue: () => live,
        poll: () async {
          polls += 1;
          if (polls == 3) live = false;
          return false;
        },
      );

      expect(polls, 3);
    });

    test('a poll that keeps throwing never escapes the loop', () async {
      var attempt = 0;

      await expectLater(
        ChatRealtimeBridge.pollWithRetry(
          initialInterval: Duration.zero,
          maxInterval: Duration.zero,
          shouldContinue: () => attempt < 4,
          poll: () async {
            attempt += 1;
            throw TimeoutException('down');
          },
        ),
        completes,
      );
      expect(attempt, 4);
    });
  });
}
