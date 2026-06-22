import 'package:feeef/chat/chat_models.dart';
import 'package:feeef/chat/chat_realtime.dart';
import 'package:test/test.dart';

void main() {
  test('ChatRealtimeBridge merges part deltas', () {
    var parts = <String, String>{};
    parts = ChatRealtimeBridge.applyEvent(
      parts,
      ChatGenerationEvent(
        event: 'chat.part.delta',
        data: {'partId': 'p1', 'text': 'Hello'},
      ),
    );
    parts = ChatRealtimeBridge.applyEvent(
      parts,
      ChatGenerationEvent(
        event: 'chat.part.delta',
        data: {'partId': 'p1', 'text': ' world'},
      ),
    );
    expect(parts['p1'], 'Hello world');
  });

  test('ChatRealtimeBridge creates transcript row for orphan part delta', () {
    final transcript = ChatRealtimeBridge.ensureTranscriptPartForDelta(
      const [],
      const ChatGenerationEvent(
        event: 'chat.part.delta',
        data: {'partId': 'p1', 'text': 'Hi'},
      ),
    );
    expect(transcript, hasLength(1));
    expect(transcript.first['id'], 'p1');
    expect(transcript.first['type'], 'text');
  });

  test('ChatRealtimeBridge merges snapshot parts', () {
    final snap = ChatGenerationSnapshot(
      id: 'g1',
      conversationId: 'c1',
      status: 'streaming',
      seq: 1,
      parts: const [
        ChatMessagePart(id: 'p1', type: 'text', content: {'text': 'Done'}),
      ],
      jobs: const [],
    );
    final merged = ChatRealtimeBridge.mergeSnapshotParts({}, snap);
    expect(merged['p1'], 'Done');
  });
}
