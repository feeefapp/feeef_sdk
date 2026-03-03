// color serializer
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

class ColorSerializer implements JsonConverter<Color, int> {
  const ColorSerializer();

  @override
  Color fromJson(int json) {
    if (json <= 0xFFFFFF) return Color(0xFF000000 + json);
    return Color(json);
  }

  @override
  int toJson(Color object) {
    return object.value;
  }
}
