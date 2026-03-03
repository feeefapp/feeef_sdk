/// Configuration abstraction for the Feeef SDK.
///
/// When the SDK is extracted to its own package, the host app can implement
/// this interface and pass it to the client instead of the SDK reading
/// app-level config (e.g. [configs], [main]).
///
/// For now, the SDK may still use app globals; this type exists to prepare
/// for decoupling.
abstract class FeeefConfig {
  /// Base URL for the API (e.g. `https://api.feeef.org`).
  String get baseUrl;

  /// Whether the app is in production (affects realtime URL, etc.).
  bool get isProduction;

  /// Whether debug mode is enabled (e.g. for logging).
  bool get debugMode;
}
