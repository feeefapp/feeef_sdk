/// Port of backend/inertia/components/lab/chat/reduce.ts (itself a mirror of the Cloud gateway
/// `agents/reduce.ts`): the same fold renders live and stored messages. Keep in sync.
///
/// Parts and chunks stay JSON maps (the wire contract, `types.ts`) so stored messages, live
/// streams and unknown `data-*` parts round-trip untouched. Use [LabPart] for typed reads.
library;

typedef LabChunk = Map<String, dynamic>;
typedef LabPartMap = Map<String, dynamic>;

const labTerminalRunStatuses = {'completed', 'failed', 'cancelled', 'reconciliation'};

/// Typed view over one message part map.
extension type const LabPart(Map<String, dynamic> raw) {
  String get type => raw['type'] as String? ?? '';
  bool get isText => type == 'text';
  bool get isReasoning => type == 'reasoning';
  bool get isTool => type == 'dynamic-tool';
  bool get isFile => type == 'file';
  bool get isStepStart => type == 'step-start';
  bool get isSource => type == 'source-url';
  bool get isData => type.startsWith('data-');
  String get text => raw['text'] as String? ?? '';
  bool get streaming => raw['state'] == 'streaming';

  /// Tool parts: `input-streaming`, `input-available`, `approval-requested`,
  /// `approval-responded`, `output-available`, `output-error`, `output-denied`.
  String get state => raw['state'] as String? ?? '';
  String get toolName => raw['toolName'] as String? ?? '';
  String get toolCallId => raw['toolCallId'] as String? ?? '';
  Object? get input => raw['input'];
  String? get inputText => raw['inputText'] as String?;
  Object? get output => raw['output'];
  String? get errorText => raw['errorText'] as String?;
  Map<String, dynamic>? get approval => (raw['approval'] as Map?)?.cast<String, dynamic>();
  String get url => raw['url'] as String? ?? '';
  String get mediaType => raw['mediaType'] as String? ?? '';
  String? get filename => raw['filename'] as String?;
  String? get title => raw['title'] as String?;
  String? get id => raw['id'] as String?;
  Object? get data => raw['data'];
}

LabPartMap _copy(LabPartMap p) => Map<String, dynamic>.of(p);

/// Fold UI message stream chunks into message parts. Pure and order-dependent; unknown chunk
/// types are ignored.
List<LabPartMap> reduceChunks(Iterable<LabChunk> chunks, [List<LabPartMap> initial = const []]) {
  final folder = LabChunkFolder(initial);
  for (final c in chunks) {
    folder.push(c);
  }
  return folder.snapshot();
}

/// Tool parts of the last step (after the final `step-start`).
List<LabPart> lastStepTools(List<LabPartMap> parts) {
  var start = 0;
  for (var i = 0; i < parts.length; i++) {
    if (parts[i]['type'] == 'step-start') start = i;
  }
  return parts.sublist(start).map(LabPart.new).where((p) => p.isTool).toList();
}

/// Short plaintext preview for lists and trees.
String previewOf(List<LabPartMap> parts, [int max = 160]) {
  final text = parts
      .where((p) => p['type'] == 'text')
      .map((p) => p['text'] as String? ?? '')
      .join(' ')
      .replaceAll(RegExp(r'\s+'), ' ')
      .trim();
  if (text.isNotEmpty) return text.length > max ? '${text.substring(0, max - 1)}…' : text;
  final files = parts.where((p) => p['type'] == 'file').length;
  if (files > 0) return '[$files file${files > 1 ? 's' : ''}]';
  final tools = parts.where((p) => p['type'] == 'dynamic-tool').length;
  return tools > 0 ? '[$tools tool call${tools > 1 ? 's' : ''}]' : '';
}

/// Incremental fold for live streams: [push] applies one chunk in O(1) amortized, [snapshot]
/// returns a new list where only parts touched since the previous snapshot are new map
/// instances, so `identical()`-keyed widgets of untouched parts skip rebuilding.
/// Produces exactly what [reduceChunks] would for the same chunks.
class LabChunkFolder {
  LabChunkFolder([List<LabPartMap> initial = const []])
    : _parts = initial.map(_copy).toList() {
    for (var i = 0; i < _parts.length; i++) {
      final p = _parts[i];
      final type = p['type'] as String? ?? '';
      if (type == 'dynamic-tool') _tools.putIfAbsent(p['toolCallId'] as String, () => i);
      final id = p['id'];
      if (type.startsWith('data-') && id is String) _dataIds.putIfAbsent('$type\u0000$id', () => i);
    }
    _fresh = {for (var i = 0; i < _parts.length; i++) i};
  }

  final List<LabPartMap> _parts;
  final _open = <String, int>{};
  final _tools = <String, int>{};
  final _dataIds = <String, int>{};
  Set<int> _fresh = {};

  int _add(LabPartMap part) {
    _parts.add(part);
    final index = _parts.length - 1;
    _fresh.add(index);
    return index;
  }

  /// Copy-on-write: the first change after a snapshot clones the part.
  LabPartMap _touch(int index) {
    if (!_fresh.contains(index)) {
      _parts[index] = _copy(_parts[index]);
      _fresh.add(index);
    }
    return _parts[index];
  }

  LabPartMap? _tool(String? id) {
    final index = id == null ? null : _tools[id];
    return index == null ? null : _touch(index);
  }

  void push(LabChunk c) {
    final type = c['type'];
    if (type is! String) return;
    switch (type) {
      case 'start-step':
        _add({'type': 'step-start'});
      case 'text-start' || 'reasoning-start':
        final kind = type == 'text-start' ? 'text' : 'reasoning';
        _open['$kind:${c['id']}'] = _add({'type': kind, 'text': '', 'state': 'streaming'});
      case 'text-delta' || 'reasoning-delta':
        final kind = type == 'text-delta' ? 'text' : 'reasoning';
        final key = '$kind:${c['id']}';
        final index = _open[key] ??= _add({'type': kind, 'text': '', 'state': 'streaming'});
        final part = _touch(index);
        part['text'] = '${part['text'] ?? ''}${c['delta'] ?? ''}';
      case 'text-end' || 'reasoning-end':
        final key = '${type == 'text-end' ? 'text' : 'reasoning'}:${c['id']}';
        final index = _open.remove(key);
        if (index != null) _touch(index)['state'] = 'done';
      case 'tool-input-start':
        final id = c['toolCallId'] as String;
        if (!_tools.containsKey(id)) {
          _tools[id] = _add({
            'type': 'dynamic-tool',
            'toolName': c['toolName'],
            'toolCallId': id,
            'state': 'input-streaming',
            'inputText': '',
          });
        }
      case 'tool-input-delta':
        final t = _tool(c['toolCallId'] as String?);
        if (t != null) t['inputText'] = '${t['inputText'] ?? ''}${c['inputTextDelta'] ?? ''}';
      case 'tool-input-available' || 'tool-input-error':
        final id = c['toolCallId'] as String;
        var t = _tool(id);
        if (t == null) {
          t = {
            'type': 'dynamic-tool',
            'toolName': c['toolName'],
            'toolCallId': id,
            'state': 'input-available',
          };
          _tools[id] = _add(t);
        }
        t['toolName'] = c['toolName'];
        t['input'] = c['input'];
        t.remove('inputText');
        if (type == 'tool-input-error') {
          t['state'] = 'output-error';
          t['errorText'] = c['errorText'];
        } else {
          t['state'] = 'input-available';
        }
      case 'tool-approval-request':
        final t = _tool(c['toolCallId'] as String?);
        if (t != null) {
          t['state'] = 'approval-requested';
          t['approval'] = {'id': c['approvalId']};
        }
      case 'tool-approval-response':
        final t = _tool(c['toolCallId'] as String?);
        if (t != null) {
          t['state'] = 'approval-responded';
          final reason = c['reason'];
          t['approval'] = {
            'id': c['approvalId'],
            'approved': c['approved'],
            if (reason is String && reason.isNotEmpty) 'reason': reason,
          };
        }
      case 'tool-output-available':
        final t = _tool(c['toolCallId'] as String?);
        if (t != null) {
          t['state'] = 'output-available';
          t['output'] = c['output'];
        }
      case 'tool-output-error':
        final t = _tool(c['toolCallId'] as String?);
        if (t != null) {
          t['state'] = 'output-error';
          t['errorText'] = c['errorText'];
        }
      case 'tool-output-denied':
        final t = _tool(c['toolCallId'] as String?);
        if (t != null) t['state'] = 'output-denied';
      case 'source-url':
        final title = c['title'];
        _add({
          'type': 'source-url',
          'sourceId': c['sourceId'],
          'url': c['url'],
          if (title is String && title.isNotEmpty) 'title': title,
        });
      case 'file':
        _add({'type': 'file', 'url': c['url'], 'mediaType': c['mediaType']});
      case 'finish' || 'abort' || 'error':
        for (final index in _open.values) {
          _touch(index)['state'] = 'done';
        }
        _open.clear();
      default:
        if (type.startsWith('data-') && c['transient'] != true) {
          final id = c['id'];
          final part = <String, dynamic>{
            'type': type,
            if (id is String && id.isNotEmpty) 'id': id,
            'data': c['data'],
          };
          final key = id is String && id.isNotEmpty ? '$type\u0000$id' : null;
          final existing = key == null ? null : _dataIds[key];
          if (existing != null) {
            _parts[existing] = part;
            _fresh.add(existing);
          } else {
            final index = _add(part);
            if (key != null) _dataIds[key] = index;
          }
        }
    }
  }

  List<LabPartMap> snapshot() {
    _fresh = {};
    return List.of(_parts);
  }
}

/// A run parked on an async job or timer (`data-feeef-wait`) with its latest progress.
class LabWaitState {
  LabWaitState(this.data, {this.progress, this.message});
  final Map<String, dynamic> data;
  final double? progress;
  final String? message;

  String get id => data['id'] as String? ?? '';
  String get toolCallId => data['toolCallId'] as String? ?? '';
  String get toolName => data['toolName'] as String? ?? '';
  String get kind => data['kind'] as String? ?? 'job';
  String? get label => data['label'] as String?;
  String get status => data['status'] as String? ?? 'waiting';
  DateTime? get startedAt => DateTime.tryParse(data['startedAt'] as String? ?? '');
  int? get etaMs => (data['etaMs'] as num?)?.toInt();
  String? get error => data['error'] as String?;
}

/// Pair each `data-feeef-wait` part with its `data-feeef-progress` (same part id), in order.
List<LabWaitState> waitStates(List<LabPartMap> parts) {
  final progress = <String, Map>{};
  for (final p in parts) {
    if (p['type'] == 'data-feeef-progress' && p['id'] is String && p['data'] is Map) {
      progress[p['id'] as String] = p['data'] as Map;
    }
  }
  final out = <LabWaitState>[];
  for (final p in parts) {
    if (p['type'] != 'data-feeef-wait' || p['data'] is! Map) continue;
    final pr = p['id'] is String ? progress[p['id']] : null;
    final value = pr?['progress'];
    final message = pr?['message'];
    out.add(
      LabWaitState(
        (p['data'] as Map).cast<String, dynamic>(),
        progress: value is num && value.isFinite ? value.toDouble().clamp(0, 1) : null,
        message: message is String && message.trim().isNotEmpty ? message : null,
      ),
    );
  }
  return out;
}
