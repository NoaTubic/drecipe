import 'dart:ui';

abstract class LocaleConstants {
  static const croatianLanguage = 'hr';
  static const defaultLanguage = 'en';
  static const englishLanguage = 'en';
}

class LanguageItem {
  LanguageItem({
    required this.locale,
    required this.language,
  });

  final String language;
  final Locale locale;
}
