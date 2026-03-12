/// Abstraction for persistent key-value storage used by the SDK (e.g. auth token).
///
/// The SDK does not depend on Flutter or shared_preferences. The host app
/// provides an implementation (e.g. wrapping SharedPreferences, or a Dart-only
/// store).
abstract class FeeefStorage {
  Future<String?> get(String key);
  Future<void> set(String key, String value);
  Future<void> remove(String key);
}
