import 'package:feeef/attachments/attachment.dart';
import 'package:feeef/files/services/generate_image_landing_page_request.dart';
import 'package:test/test.dart';

void main() {
  group('buildGenerateImageLandingPageRequestData', () {
    test('always includes trimmed text', () {
      final body = buildGenerateImageLandingPageRequestData(
        text: '  hello landing page  ',
      );
      expect(body[ImageLandingPageRequestKeys.text], 'hello landing page');
      expect(body.keys, [ImageLandingPageRequestKeys.text]);
    });

    test('omits empty optional strings but keeps empty text key', () {
      final body = buildGenerateImageLandingPageRequestData(
        text: '',
        aspectRatio: '  ',
        imageModel: null,
        background: '',
      );
      expect(body[ImageLandingPageRequestKeys.text], '');
      expect(body.containsKey(ImageLandingPageRequestKeys.aspectRatio), isFalse);
      expect(body.containsKey(ImageLandingPageRequestKeys.imageModel), isFalse);
      expect(body.containsKey(ImageLandingPageRequestKeys.background), isFalse);
    });

    test('serializes all major params for a full studio request', () {
      final body = buildGenerateImageLandingPageRequestData(
        text: 'Premium serum landing page',
        attachments: [
          const ProductAttachment(value: 'prod_1', label: 'Serum', prompt: 'hero'),
          const ImageAttachment(url: 'https://cdn.example/a.jpg', label: 'pack'),
          const StoreAttachment(value: 'store_1', label: 'Feeef'),
        ],
        templateData: {
          'name': 'Luxury',
          'prompt': 'Use gold accents',
        },
        aspectRatio: '9:32',
        imageModel: 'gemini-3.1-flash-image-preview',
        textModel: 'gemini-3.1-flash-lite-preview',
        mediaResolution: 'MEDIA_RESOLUTION_HIGH',
        imageSize: '2K',
        background: 'opaque',
        loadProductImage: false,
        sectionsCount: 7,
      );

      expect(body[ImageLandingPageRequestKeys.text], 'Premium serum landing page');
      expect(body[ImageLandingPageRequestKeys.aspectRatio], '9:32');
      expect(body[ImageLandingPageRequestKeys.imageModel], 'gemini-3.1-flash-image-preview');
      expect(body[ImageLandingPageRequestKeys.textModel], 'gemini-3.1-flash-lite-preview');
      expect(body[ImageLandingPageRequestKeys.mediaResolution], 'MEDIA_RESOLUTION_HIGH');
      expect(body[ImageLandingPageRequestKeys.imageSize], '2K');
      expect(body[ImageLandingPageRequestKeys.background], 'opaque');
      expect(body[ImageLandingPageRequestKeys.loadProductImage], isFalse);
      expect(body[ImageLandingPageRequestKeys.sectionsCount], 7);
      expect(body[ImageLandingPageRequestKeys.templateData], {
        'name': 'Luxury',
        'prompt': 'Use gold accents',
      });

      final attachments = body[ImageLandingPageRequestKeys.attachments] as List;
      expect(attachments, hasLength(3));
      expect(attachments[0]['type'], 'product');
      expect(attachments[0]['prompt'], 'hero');
      expect(attachments[1]['type'], 'image');
      expect(attachments[2]['type'], 'store');
    });

    test('attachments-only request still sends empty text (backend allows)', () {
      final body = buildGenerateImageLandingPageRequestData(
        text: '   ',
        attachments: [
          const ImageAttachment(url: 'https://cdn.example/p.png'),
        ],
        loadProductImage: true,
        sectionsCount: 5,
      );
      expect(body[ImageLandingPageRequestKeys.text], '');
      expect(body[ImageLandingPageRequestKeys.attachments], isNotEmpty);
      expect(body[ImageLandingPageRequestKeys.loadProductImage], isTrue);
      expect(body[ImageLandingPageRequestKeys.sectionsCount], 5);
    });

    test('aspect ratio contract list matches known backend set', () {
      expect(
        kImageLandingPageAspectRatios,
        containsAll(['1:8', '1:4', '9:32', '9:16', '1:1', '32:9']),
      );
      expect(kImageLandingPageAspectRatios.toSet().length, kImageLandingPageAspectRatios.length);
    });
  });
}
