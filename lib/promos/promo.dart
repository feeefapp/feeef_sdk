/// Promo code entity (list item from GET /promos).
class Promo {
  final String id;
  final String code;
  final List<List<int>> discount;
  final bool strict;
  final int? minMonths;
  final int count;
  final int? max;
  final DateTime? startsAt;
  final DateTime? endsAt;
  final String? referralId;
  final DateTime createdAt;
  final DateTime updatedAt;

  Promo({
    required this.id,
    required this.code,
    required this.discount,
    required this.strict,
    this.minMonths,
    required this.count,
    this.max,
    this.startsAt,
    this.endsAt,
    this.referralId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Promo.fromJson(Map<String, dynamic> json) {
    List<List<int>> discount = [];
    if (json['discount'] is List) {
      for (var e in json['discount'] as List) {
        if (e is List && e.length >= 2) {
          discount.add([(e[0] as num).toInt(), (e[1] as num).toInt()]);
        }
      }
    }
    return Promo(
      id: json['id'] as String,
      code: json['code'] as String,
      discount: discount,
      strict: json['strict'] as bool,
      minMonths: json['min_months'] != null ? (json['min_months'] as num).toInt() : null,
      count: (json['count'] as num).toInt(),
      max: json['max'] != null ? (json['max'] as num).toInt() : null,
      startsAt: json['starts_at'] != null ? DateTime.parse(json['starts_at'] as String) : null,
      endsAt: json['ends_at'] != null ? DateTime.parse(json['ends_at'] as String) : null,
      referralId: json['referral_id'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );
  }
}

/// Result of POST /promos/validate.
class PromoValidationResult {
  final bool valid;
  final String? reason;
  final String? code;
  final List<List<int>>? discount;
  final bool? strict;
  final int? minMonths;

  PromoValidationResult({
    required this.valid,
    this.reason,
    this.code,
    this.discount,
    this.strict,
    this.minMonths,
  });

  factory PromoValidationResult.fromJson(Map<String, dynamic> json) {
    List<List<int>>? discount;
    if (json['discount'] is List) {
      discount = [];
      for (var e in json['discount'] as List) {
        if (e is List && e.length >= 2) {
          discount.add([(e[0] as num).toInt(), (e[1] as num).toInt()]);
        }
      }
    }
    return PromoValidationResult(
      valid: json['valid'] as bool,
      reason: json['reason'] as String?,
      code: json['code'] as String?,
      discount: discount,
      strict: json['strict'] as bool?,
      minMonths: json['minMonths'] != null ? (json['minMonths'] as num).toInt() : null,
    );
  }
}
