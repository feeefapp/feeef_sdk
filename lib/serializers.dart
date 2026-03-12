// color serializer: store as ARGB int (Dart-only, no Flutter).
import 'package:freezed_annotation/freezed_annotation.dart';

/// Serializes color as int (0xAARRGGBB). Use for [StoreDecoration] and other models.
class ColorSerializer implements JsonConverter<int, int> {
  const ColorSerializer();

  @override
  int fromJson(int json) => json;

  @override
  int toJson(int object) => object;
}
