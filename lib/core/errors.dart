/// Custom exception for network-related errors that shouldn't log out the user.
///
/// Used when the SDK wants to signal a transient or non-auth network failure
/// so that the app can keep cached auth and retry instead of clearing session.
class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);

  @override
  String toString() => 'NetworkException: $message';
}
