/// CRUD events emitted over realtime channels.
enum RealtimeCrudEvents { created, updated, deleted }

/// A single realtime CRUD event with typed event and payload.
class RealtimeCrudEvent {
  final RealtimeCrudEvents event;
  final dynamic data;
  RealtimeCrudEvent({required this.event, required this.data});

  factory RealtimeCrudEvent.fromJson(Map<String, dynamic> json) {
    return RealtimeCrudEvent(
      event: RealtimeCrudEvents.values.byName(json['event']),
      data: json['data'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'event': event.name, 'data': data};
  }
}
