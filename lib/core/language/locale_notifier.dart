import 'package:drecipe/core/language/data/locale_constants.dart';
import 'package:drecipe/core/language/data/locale_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocaleNotifier extends StateNotifier<Locale> {
  final ILanguageRepository _languageRepository;

  LocaleNotifier(this._languageRepository)
      : super(
          const Locale(LocaleConstants.defaultLanguage),
        ) {
    loadLanguage();
  }

  Future<void> changeLanguage(Locale language) async {
    await _languageRepository.changeLanguage(language);
    state = language;
  }

  Future<void> loadLanguage() async {
    final locale = await _languageRepository.loadLanguage();
    state = Locale(locale);
  }
}
