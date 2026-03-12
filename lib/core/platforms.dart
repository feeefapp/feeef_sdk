/// Platform detection (Dart-only). Exports IO implementation on VM, web stub on web.
///
/// Use [Platforms.isAndroid], [Platforms.isIOS], [Platforms.isWeb], [Platforms.isMacOS]
/// for feature rules and config. No Flutter dependency.
library;

export 'platforms_io.dart' if (dart.library.html) 'platforms_web.dart';
