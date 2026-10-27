// Stub for web (no dart:io). Used when dart.library.js_interop is available (dart2js and dart2wasm;
// dart.library.html is false under dart2wasm).
/// Platform detection for web. Use via conditional export from [platforms.dart].
abstract class Platforms {
  static bool get isAndroid => false;
  static bool get isIOS => false;
  static bool get isWeb => true;
  static bool get isMacOS => false;
}
