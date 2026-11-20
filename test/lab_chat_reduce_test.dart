import 'dart:convert';
import 'dart:typed_data';

import 'package:feeef/lab/lab.dart';
import 'package:test/test.dart';

void main() {
  final chunks = <LabChunk>[
    {'type': 'start', 'messageId': 'm1'},
    {'type': 'start-step'},
    {'type': 'reasoning-start', 'id': 'r'},
    {'type': 'reasoning-delta', 'id': 'r', 'delta': 'think'},
    {'type': 'reasoning-end', 'id': 'r'},
    {'type': 'text-start', 'id': 't'},
    {'type': 'text-delta', 'id': 't', 'delta': 'Hel'},
    {'type': 'text-delta', 'id': 't', 'delta': 'lo'},
    {'type': 'tool-input-start', 'toolCallId': 'c1', 'toolName': 'fetch_url'},
    {'type': 'tool-input-delta', 'toolCallId': 'c1', 'inputTextDelta': '{"u'},
    {'type': 'tool-input-available', 'toolCallId': 'c1', 'toolName': 'fetch_url', 'input': {'u': 1}},
    {'type': 'tool-approval-request', 'toolCallId': 'c1', 'approvalId': 'a1'},
    {'type': 'tool-approval-response', 'toolCallId': 'c1', 'approvalId': 'a1', 'approved': true},
    {'type': 'tool-output-available', 'toolCallId': 'c1', 'output': 'ok'},
    {'type': 'data-feeef-wait', 'id': 'w', 'data': {'id': 'w', 'toolCallId': 'c1', 'status': 'waiting'}},
    {'type': 'data-feeef-progress', 'id': 'w', 'data': {'toolCallId': 'c1', 'progress': 2}},
    {'type': 'data-feeef-wait', 'id': 'w', 'data': {'id': 'w', 'toolCallId': 'c1', 'status': 'done'}},
    {'type': 'data-x', 'transient': true, 'data': 1},
    {'type': 'unknown-chunk'},
    {'type': 'finish'},
  ];

  test('reduceChunks folds like the web reducer', () {
    final parts = reduceChunks(chunks);
    expect(parts.map((p) => p['type']).toList(), [
      'step-start',
      'reasoning',
      'text',
      'dynamic-tool',
      'data-feeef-wait',
      'data-feeef-progress',
    ]);
    expect(parts[2], {'type': 'text', 'text': 'Hello', 'state': 'done'});
    expect(parts[3]['state'], 'output-available');
    expect(parts[3]['approval'], {'id': 'a1', 'approved': true});
    expect(parts[3].containsKey('inputText'), isFalse);
    final waits = waitStates(parts);
    expect(waits.single.status, 'done');
    expect(waits.single.progress, 1);
    expect(previewOf(parts), 'Hello');
  });

  test('folder snapshots keep untouched parts identical', () {
    final folder = LabChunkFolder();
    for (final c in chunks.take(8)) {
      folder.push(c);
    }
    final a = folder.snapshot();
    folder.push({'type': 'text-delta', 'id': 't', 'delta': '!'});
    final b = folder.snapshot();
    expect(identical(a[1], b[1]), isTrue);
    expect(identical(a[2], b[2]), isFalse);
    expect(b[2]['text'], 'Hello!');
  });

  test('SSE frames parse ids, multi-line data and CRLF', () async {
    final body = 'id: 3\r\ndata: {"type":"start"}\r\n\r\n: ping\n\nid: 4\ndata: a\ndata: b\n\ndata: [DONE]\n\n';
    final bytes = utf8.encode(body);
    final stream = Stream.fromIterable([
      Uint8List.fromList(bytes.sublist(0, 7)),
      Uint8List.fromList(bytes.sublist(7)),
    ]);
    final frames = await labSseFrames(stream).toList();
    expect(frames.map((f) => (f.id, f.data)).toList(), [
      (3, '{"type":"start"}'),
      (4, 'a\nb'),
      (null, '[DONE]'),
    ]);
  });
}
