/// Paginated list response from list-style API endpoints.
///
/// [data] holds the current page of items. [total], [page], and [limit] come from
/// backend meta when present. [hasMore] and [nextPage] help with paging. Use when
/// consuming repository [list] methods.
class ListResponse<T> {
  final List<T> data;
  final int? total;
  final int? page;
  final int? limit;

  ListResponse({required this.data, this.total, this.page, this.limit});

  factory ListResponse.fromJson(dynamic json, T Function(dynamic) fromJson) {
    if (json is List) {
      return ListResponse(data: json.map((e) => fromJson(e)).toList());
    }

    // Try to safely extract 'data'
    final rawData = json['data'];
    List<dynamic> listData = [];
    if (rawData is List) {
      listData = rawData;
    } else if (rawData is Map) {
      // In case the API wraps data strangely or returns a single object under data
      // Sometimes an array is serialized as {"0": {...}, "1": {...}}
      if (rawData.isNotEmpty &&
          rawData.keys.every((k) => int.tryParse(k.toString()) != null)) {
        listData = rawData.values.toList();
      } else {
        // If it's a map but not with integer keys, it's likely an error object
        // or a different response type. Returning an empty list is safer than
        // wrapping the map and crashing the item parsers.
        listData = [];
      }
    } else {
      // If there is no 'data' key, maybe the json itself is the data?
      // but we already checked if json is List.
      // If it's a paginated structure without 'data', it's empty.
      listData = [];
    }

    final meta = json['meta'];
    return ListResponse(
      data: listData.map((e) => fromJson(e)).toList(),
      total: meta?['total'] ?? json['total'],
      page: meta?['currentPage'] ?? meta?['current_page'],
      limit: meta?['perPage'] ?? meta?['per_page'],
    );
  }

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T) toJson) {
    return {
      'data': data.map((e) => toJson(e)).toList(),
      'total': total,
      'page': page,
      'limit': limit,
    };
  }

  // hasMore
  bool get hasMore {
    if (page == null) {
      return true;
    }
    return total! > page! * limit!;
  }

  // nextPage
  int get nextPage {
    if (page == null) {
      return 2;
    }
    return page! + 1;
  }
}
