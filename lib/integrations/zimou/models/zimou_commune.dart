import 'package:freezed_annotation/freezed_annotation.dart';

part 'zimou_commune.freezed.dart';
part 'zimou_commune.g.dart';

/// Zimou Commune (Municipality) Model
@freezed
abstract class ZimouCommune with _$ZimouCommune {
  const factory ZimouCommune({
    required int id,
    required String name,
    required int wilayaId,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ZimouCommune;

  factory ZimouCommune.fromJson(Map<String, dynamic> json) =>
      _$ZimouCommuneFromJson(json);
}
