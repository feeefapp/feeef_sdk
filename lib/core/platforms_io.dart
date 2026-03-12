// Platform detection using dart:io (VM / mobile / desktop).
import 'dart:io' show Platform;

/// Platform detection for VM/IO (not web). Use via conditional export from [platforms.dart].
abstract class Platforms {
  static bool get isAndroid => Platform.isAndroid;
  static bool get isIOS => Platform.isIOS;
  static bool get isWeb => false;
  static bool get isMacOS => Platform.isMacOS;
}
