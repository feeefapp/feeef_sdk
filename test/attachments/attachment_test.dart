import 'package:feeef/attachments/attachment.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Attachment subclasses', () {
    test('ImageAttachment typeId and value', () {
      const a = ImageAttachment(url: 'https://x.com/i.png', label: 'ref');
      expect(a.typeId, 'image');
      expect(a.value, 'https://x.com/i.png');
      expect(a.label, 'ref');
    });

    test('StoreAttachment', () {
      const a = StoreAttachment(value: 'store-1');
      expect(a.typeId, 'store');
      expect(a.value, 'store-1');
    });

    test('ProductAttachment', () {
      const a = ProductAttachment(value: 'prod-2', prompt: 'use this');
      expect(a.typeId, 'product');
      expect(a.prompt, 'use this');
    });

    test('UrlAttachment', () {
      const a = UrlAttachment(url: 'https://example.com');
      expect(a.typeId, 'url');
      expect(a.value, 'https://example.com');
    });

    test('AudioAttachment', () {
      const a = AudioAttachment(url: 'https://x.com/a.mp3');
      expect(a.typeId, 'audio');
    });
  });

  group('Attachment.toJson', () {
    test('includes type and value', () {
      const a = ImageAttachment(url: 'u');
      final j = a.toJson();
      expect(j['type'], 'image');
      expect(j['value'], 'u');
    });

    test('omits empty label and prompt', () {
      const a = ImageAttachment(url: 'u');
      final j = a.toJson();
      expect(j.containsKey('label'), isFalse);
      expect(j.containsKey('prompt'), isFalse);
    });

    test('includes non-empty label and prompt', () {
      const a = ImageAttachment(url: 'u', label: 'l', prompt: 'p');
      final j = a.toJson();
      expect(j['label'], 'l');
      expect(j['prompt'], 'p');
    });
  });

  group('Attachment.fromJson', () {
    test('returns null for null or missing value or type', () {
      expect(Attachment.fromJson(null), isNull);
      expect(Attachment.fromJson({'type': 'image'}), isNull);
      expect(Attachment.fromJson({'type': null, 'value': 'v'}), isNull);
      expect(Attachment.fromJson({'value': 'v'}), isNull);
      expect(Attachment.fromJson({'type': 'image', 'value': ''}), isNull);
    });

    test('parses image type', () {
      final a = Attachment.fromJson({'type': 'image', 'value': 'https://x.com'});
      expect(a, isA<ImageAttachment>());
      expect(a!.value, 'https://x.com');
    });

    test('parses store, product, url, audio', () {
      expect(Attachment.fromJson({'type': 'store', 'value': 's1'}), isA<StoreAttachment>());
      expect(Attachment.fromJson({'type': 'product', 'value': 'p1'}), isA<ProductAttachment>());
      expect(Attachment.fromJson({'type': 'url', 'value': 'https://u'}), isA<UrlAttachment>());
      expect(Attachment.fromJson({'type': 'audio', 'value': 'https://a'}), isA<AudioAttachment>());
    });

    test('returns null for unknown type', () {
      expect(Attachment.fromJson({'type': 'unknown', 'value': 'v'}), isNull);
    });

    test('round-trip', () {
      const a = StoreAttachment(value: 'id', label: 'L', prompt: 'P');
      final j = a.toJson();
      final b = Attachment.fromJson(j);
      expect(b, isA<StoreAttachment>());
      expect(b!.value, a.value);
      expect(b.label, a.label);
      expect(b.prompt, a.prompt);
    });
  });

  group('Attachment.from', () {
    test('builds correct subclass by typeId', () {
      expect(Attachment.from('image', 'v'), isA<ImageAttachment>());
      expect(Attachment.from('store', 'v'), isA<StoreAttachment>());
      expect(Attachment.from('product', 'v'), isA<ProductAttachment>());
      expect(Attachment.from('url', 'v'), isA<UrlAttachment>());
      expect(Attachment.from('audio', 'v'), isA<AudioAttachment>());
    });

    test('unknown typeId defaults to ImageAttachment', () {
      final a = Attachment.from('other', 'url-value');
      expect(a, isA<ImageAttachment>());
      expect(a.value, 'url-value');
    });
  });

  group('Attachment equality and copyWith', () {
    test('equality uses typeId, value, label, prompt', () {
      const a = ImageAttachment(url: 'u', label: 'l');
      const b = ImageAttachment(url: 'u', label: 'l');
      expect(a, equals(b));
      expect(a.hashCode, b.hashCode);
    });

    test('identical instances are equal', () {
      const a = ImageAttachment(url: 'u');
      expect(a == a, isTrue);
    });

    test('different value breaks equality', () {
      const a = ImageAttachment(url: 'u1');
      const b = ImageAttachment(url: 'u2');
      expect(a == b, isFalse);
    });

    test('non-Attachment is not equal', () {
      const a = ImageAttachment(url: 'u');
      expect(a == 'u', isFalse);
    });

    test('copyWith preserves unchanged fields', () {
      const a = ImageAttachment(url: 'u', label: 'l', prompt: 'p');
      final b = a.copyWith(prompt: 'p2');
      expect(b.url, 'u');
      expect(b.label, 'l');
      expect(b.prompt, 'p2');
    });
  });

  group('Attachment toJson edge cases', () {
    test('omits label when empty string', () {
      const a = ImageAttachment(url: 'u', label: '');
      final j = a.toJson();
      expect(j.containsKey('label'), isFalse);
    });

    test('omits prompt when empty string', () {
      const a = ImageAttachment(url: 'u', prompt: '');
      final j = a.toJson();
      expect(j.containsKey('prompt'), isFalse);
    });
  });
}
