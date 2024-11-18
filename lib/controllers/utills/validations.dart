extension ValidationExtension on String {
  bool isValidEmail() {
    final RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );
    return emailRegex.hasMatch(this);
  }

  bool isMinLength() {
    return length >= 6;
  }
}
