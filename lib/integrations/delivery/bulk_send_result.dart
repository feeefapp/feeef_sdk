/// Canonical failed row from Feeef `POST .../integrations/*/sendMany` (`data.failed[]`).
class DeliveryBulkFailedItem {
  const DeliveryBulkFailedItem({
    required this.reference,
    required this.message,
    this.error,
    this.code,
    this.fields,
    this.details,
    this.externalId,
  });

  final String reference;
  final String message;
  /// Legacy alias for [message].
  final String? error;
  final String? code;
  final Map<String, List<String>>? fields;
  final Object? details;
  final String? externalId;

  String get effectiveMessage => message.isNotEmpty ? message : (error ?? message);

  static DeliveryBulkFailedItem? tryParse(dynamic raw) {
    if (raw is! Map) return null;
    final m = Map<String, dynamic>.from(raw);
    final ref = m['reference']?.toString() ??
        m['externalId']?.toString() ??
        m['order_id']?.toString() ??
        '';
    final msg = m['message']?.toString() ?? m['error']?.toString() ?? '';
    if (ref.isEmpty && msg.isEmpty && m.isEmpty) return null;

    Map<String, List<String>>? fields;
    final f = m['fields'];
    if (f is Map) {
      fields = {};
      for (final e in f.entries) {
        final v = e.value;
        if (v is List) {
          fields[e.key.toString()] = v.map((x) => x.toString()).toList();
        }
      }
      if (fields.isEmpty) fields = null;
    }

    return DeliveryBulkFailedItem(
      reference: ref,
      message: msg.isNotEmpty ? msg : (m['error']?.toString() ?? 'فشل الإرسال'),
      error: m['error']?.toString(),
      code: m['code']?.toString(),
      fields: fields,
      details: m['details'],
      externalId: m['externalId']?.toString(),
    );
  }
}

/// Parsed `data` + `summary` from a bulk-send HTTP 200 body.
class DeliveryBulkSendApiResult {
  const DeliveryBulkSendApiResult({
    required this.created,
    required this.failed,
    required this.skipped,
    required this.summary,
  });

  final List<Map<String, dynamic>> created;
  final List<Map<String, dynamic>> failed;
  final List<Map<String, dynamic>> skipped;
  final Map<String, dynamic> summary;

  /// Shape expected by older app code (`result['created']`, etc.).
  Map<String, dynamic> get asLegacyMap => {
        'created': created,
        'failed': failed,
        'skipped': skipped,
        'summary': summary,
      };

  /// Parse top-level JSON from Feeef API (e.g. `response.data`).
  factory DeliveryBulkSendApiResult.fromHttpBody(Map<String, dynamic> body) {
    final data = body['data'];
    final dataMap =
        data is Map ? Map<String, dynamic>.from(data) : <String, dynamic>{};
    final created = _mapList(dataMap['created']);
    final failed = _mapList(dataMap['failed']);
    final skipped = _mapList(dataMap['skipped']);
    final summaryRaw = body['summary'];
    final summary = summaryRaw is Map
        ? Map<String, dynamic>.from(summaryRaw)
        : <String, dynamic>{};
    return DeliveryBulkSendApiResult(
      created: created,
      failed: failed,
      skipped: skipped,
      summary: summary,
    );
  }

  static List<Map<String, dynamic>> _mapList(dynamic list) {
    if (list is! List) return [];
    return list
        .whereType<Map>()
        .map((e) => Map<String, dynamic>.from(e))
        .toList();
  }
}

/// User-facing text for one bulk failure row (Vine/Laravel-style: summary + field lines).
///
/// When [DeliveryBulkFailedItem.fields] is set, [details] is not merged (avoids duplicate JSON).
String deliveryBulkFailedUserMessage(DeliveryBulkFailedItem item) {
  final lines = <String>[];
  final seen = <String>{};

  void emit(String? s) {
    final t = (s ?? '').trim();
    if (t.isEmpty || seen.contains(t)) return;
    seen.add(t);
    lines.add(t);
  }

  var summary = item.effectiveMessage.trim();
  if (summary == 'فشل الإرسال') summary = '';

  final fields = item.fields;
  if (fields != null && fields.isNotEmpty) {
    if (summary.isNotEmpty) emit(summary);
    final keys = fields.keys.toList()..sort();
    for (final k in keys) {
      final vs = fields[k]!
          .map((e) => e.trim())
          .where((e) => e.isNotEmpty)
          .toList();
      if (vs.isEmpty) continue;
      emit('$k: ${vs.join(", ")}');
    }
    return lines.isEmpty ? 'فشل الإرسال' : lines.join('\n');
  }

  if (summary.isNotEmpty) emit(summary);
  _emitReadableBulkDetails(item.details, emit);
  return lines.isEmpty ? 'فشل الإرسال' : lines.join('\n');
}

/// Pulls human strings from [details] (e.g. `{ carrier: {...} }`) without dumping raw JSON.
void _emitReadableBulkDetails(Object? details, void Function(String?) emit) {
  if (details is! Map) return;
  final m = Map<String, dynamic>.from(details);

  void fromMap(Map<String, dynamic> d) {
    final msg = d['message']?.toString().trim();
    if (msg != null && msg.isNotEmpty) emit(msg);
    final err = d['error']?.toString().trim();
    if (err != null && err.isNotEmpty) emit(err);

    final nested = d['errors'];
    if (nested is Map) {
      for (final e in nested.entries) {
        final v = e.value;
        if (v is List && v.isNotEmpty) {
          emit('${e.key}: ${v.map((x) => x.toString()).join(", ")}');
        } else if (v != null && '$v'.trim().isNotEmpty) {
          emit('${e.key}: $v');
        }
      }
    } else if (nested is String && nested.trim().isNotEmpty) {
      emit(nested.trim());
    }

    for (final k in const ['commune', 'to_commune_name', 'city', 'district']) {
      final s = d[k]?.toString().trim();
      if (s != null && s.isNotEmpty) emit('$k: $s');
    }
  }

  fromMap(m);

  final carrier = m['carrier'];
  if (carrier is Map) {
    fromMap(Map<String, dynamic>.from(carrier));
  }
}

/// Build [DeliveryBulkFailedItem] from a raw failed map (e.g. `data.failed[i]`).
DeliveryBulkFailedItem deliveryBulkFailedItemFromMap(Map<String, dynamic> raw) {
  return DeliveryBulkFailedItem.tryParse(raw) ??
      DeliveryBulkFailedItem(
        reference: raw['reference']?.toString() ?? '',
        message: raw['message']?.toString() ?? raw['error']?.toString() ?? 'فشل الإرسال',
        error: raw['error']?.toString(),
      );
}
