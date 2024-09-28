class MyFirebaseException implements Exception {
  final String code;

  MyFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'permission-denied':
        return 'You do not have permission to perform this action.';
      case 'unavailable':
        return 'The service is currently unavailable. Please try again later.';
      default:
        return 'A Firebase error occurred. Please try again.';
    }
  }
}
