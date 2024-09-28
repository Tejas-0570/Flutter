class MyPlatformException implements Exception {
  final String code;

  MyPlatformException(this.code);

  String get message {
    switch (code) {
      case 'network_error':
        return 'Network error. Please check your internet connection.';
      case 'not-implemented':
        return 'This feature is not implemented on this platform.';
      default:
        return 'A platform-specific error occurred. Please try again.';
    }
  }
}
