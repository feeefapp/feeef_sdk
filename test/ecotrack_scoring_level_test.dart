import 'package:feeef/integrations/ecotrack/service.dart';
import 'package:test/test.dart';

void main() {
  group('EcotrackPhoneScore', () {
    test('maps levels to delivery confidence', () {
      expect(const EcotrackPhoneScore(level: 'high').deliveryConfidenceScore, 0.85);
      expect(const EcotrackPhoneScore(level: 'low').deliveryConfidenceScore, 0.2);
      expect(const EcotrackPhoneScore(level: 'average').deliveryConfidenceScore, 0.5);
      expect(const EcotrackPhoneScore(level: 'EXCELLENT').deliveryConfidenceScore, 0.95);
    });
  });
}
