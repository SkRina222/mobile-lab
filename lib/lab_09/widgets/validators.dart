// Функції-валідатори для полів форм.
// Повертають текст помилки або null, якщо значення коректне.
class Validators {
  static String? required(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  static String? email(String? value) {
    final empty = required(value);
    if (empty != null) {
      return empty;
    }
    final regex = RegExp(r'^[\w.+-]+@[\w-]+(\.[\w-]+)+$');
    if (!regex.hasMatch(value!.trim())) {
      return 'Enter a valid email';
    }
    return null;
  }

  static String? password(String? value) {
    final empty = required(value);
    if (empty != null) {
      return empty;
    }
    if (value!.length < 7) {
      return 'Password must be at least 7 characters';
    }
    return null;
  }
}
