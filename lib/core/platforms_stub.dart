import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Stub for platform detection (used by config feature rules).
/// Mirrors the API of package:lib/utils/platforms.dart so the SDK works standalone.
abstract class Platforms {
  static bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
  static bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;
  static bool get isWeb => kIsWeb;
  static bool get isMacOS => defaultTargetPlatform == TargetPlatform.macOS;
}
