class MyFormatException implements Exception {
  const MyFormatException();

  String get message => 'Invalid format. Please check your input and try again.';
}
