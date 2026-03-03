import 'package:freezed_annotation/freezed_annotation.dart';

part 'zimou_wilaya.freezed.dart';
part 'zimou_wilaya.g.dart';

/// Zimou Wilaya (Province) Model
@freezed
abstract class ZimouWilaya with _$ZimouWilaya {
  const factory ZimouWilaya({
    required int id,
    required String name,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ZimouWilaya;

  factory ZimouWilaya.fromJson(Map<String, dynamic> json) =>
      _$ZimouWilayaFromJson(json);
}
