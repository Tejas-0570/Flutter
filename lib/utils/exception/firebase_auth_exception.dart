class MyFirebaseAuthException implements Exception {
  final String code;

  MyFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'This email is already in use.';
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'weak-password':
        return 'The password is too weak.';
      case 'user-not-found':
        return 'No user found for this email.';
      case 'wrong-password':
        return 'Incorrect password.';
      default:
        return 'An unknown error occurred. Please try again.';
    }
  }
}
