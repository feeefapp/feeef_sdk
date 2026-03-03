import 'package:flutter/foundation.dart';

/// Base for a single attachment in AI composer (image gen, voice, landing page, etc.).
/// API and backend use only [typeId] + [value]; when [typeId] is 'store', [value] is the store ID.
/// Optional [prompt] helps the AI understand how to use this attachment.
@immutable
sealed class Attachment {
  const Attachment({required this.value, this.label, this.prompt});

  final String value;
  final String? label;
  /// Optional instruction for the AI on how to use this attachment.
  final String? prompt;

  String get typeId;

  Attachment copyWith({String? value, String? label, String? prompt});

  /// Serializes this attachment for API requests (type, value, label, prompt).
  Map<String, dynamic> toJson() => {
        'type': typeId,
        'value': value,
        if (label != null && label!.isNotEmpty) 'label': label,
        if (prompt != null && prompt!.isNotEmpty) 'prompt': prompt,
      };

  /// Parses JSON into the correct subclass (ImageAttachment, StoreAttachment, …).
  static Attachment? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    final type = json['type'] as String?;
    final value = json['value'] as String?;
    if (type == null || value == null || value.isEmpty) return null;
    final label = json['label'] as String?;
    final prompt = json['prompt'] as String?;
    switch (type) {
      case 'image':
        return ImageAttachment(url: value, label: label, prompt: prompt);
      case 'store':
        return StoreAttachment(value: value, label: label, prompt: prompt);
      case 'product':
        return ProductAttachment(value: value, label: label, prompt: prompt);
      case 'url':
        return UrlAttachment(url: value, label: label, prompt: prompt);
      case 'audio':
        return AudioAttachment(url: value, label: label, prompt: prompt);
      default:
        return null;
    }
  }

  /// Builds the right subclass from typeId + value + label.
  static Attachment from(String typeId, String value, [String? label, String? prompt]) {
    switch (typeId) {
      case 'image':
        return ImageAttachment(url: value, label: label, prompt: prompt);
      case 'store':
        return StoreAttachment(value: value, label: label, prompt: prompt);
      case 'product':
        return ProductAttachment(value: value, label: label, prompt: prompt);
      case 'url':
        return UrlAttachment(url: value, label: label, prompt: prompt);
      case 'audio':
        return AudioAttachment(url: value, label: label, prompt: prompt);
      default:
        return ImageAttachment(url: value, label: label, prompt: prompt);
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Attachment &&
          typeId == other.typeId &&
          value == other.value &&
          label == other.label &&
          prompt == other.prompt);

  @override
  int get hashCode => Object.hash(typeId, value, label, prompt);
}

/// Image URL attachment (reference image for AI).
@immutable
final class ImageAttachment extends Attachment {
  const ImageAttachment({required this.url, super.label, super.prompt}) : super(value: url);

  final String url;

  @override
  String get typeId => 'image';

  @override
  ImageAttachment copyWith({String? value, String? label, String? prompt}) =>
      ImageAttachment(url: value ?? url, label: label ?? this.label, prompt: prompt ?? this.prompt);
}

/// Store ID attachment (resolved server-side to logo/icon). [value] is the store ID.
@immutable
final class StoreAttachment extends Attachment {
  const StoreAttachment({required super.value, super.label, super.prompt});

  @override
  String get typeId => 'store';

  @override
  StoreAttachment copyWith({String? value, String? label, String? prompt}) =>
      StoreAttachment(value: value ?? this.value, label: label ?? this.label, prompt: prompt ?? this.prompt);
}

/// Product ID attachment (resolved server-side to photo/media). [value] is the product ID.
@immutable
final class ProductAttachment extends Attachment {
  const ProductAttachment({required super.value, super.label, super.prompt});

  @override
  String get typeId => 'product';

  @override
  ProductAttachment copyWith({String? value, String? label, String? prompt}) =>
      ProductAttachment(value: value ?? this.value, label: label ?? this.label, prompt: prompt ?? this.prompt);
}

/// Generic URL attachment (e.g. link, page).
@immutable
final class UrlAttachment extends Attachment {
  const UrlAttachment({required this.url, super.label, super.prompt}) : super(value: url);

  final String url;

  @override
  String get typeId => 'url';

  @override
  UrlAttachment copyWith({String? value, String? label, String? prompt}) =>
      UrlAttachment(url: value ?? url, label: label ?? this.label, prompt: prompt ?? this.prompt);
}

/// Audio URL attachment (e.g. reference audio for voice gen).
@immutable
final class AudioAttachment extends Attachment {
  const AudioAttachment({required this.url, super.label, super.prompt}) : super(value: url);

  final String url;

  @override
  String get typeId => 'audio';

  @override
  AudioAttachment copyWith({String? value, String? label, String? prompt}) =>
      AudioAttachment(url: value ?? url, label: label ?? this.label, prompt: prompt ?? this.prompt);
}
