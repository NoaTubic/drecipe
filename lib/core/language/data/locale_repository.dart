import 'package:drecipe/core/language/data/locale_constants.dart';
import 'package:drecipe/core/security/data/secure_storage.dart';
import 'package:drecipe/core/security/data/secure_storage_keys.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';

abstract class ILanguageRepository {
  Future<void> changeLanguage(Locale language);
  Future<String> loadLanguage();
}

class LanguageRepository implements ILanguageRepository {
  final ISecureStorage _secureStorage;

  LanguageRepository(this._secureStorage);

  @override
  Future<void> changeLanguage(Locale language) async {
    await _secureStorage.write(
      key: SecureStorageKeys.language,
      value: language.toLanguageTag(),
    );
  }

  @override
  Future<String> loadLanguage() async {
    final String languageTag = await _secureStorage.read(
      key: SecureStorageKeys.language,
      defaultValue: LocaleConstants.defaultLanguage,
    );
    _loadLanguage(Locale(languageTag));
    return languageTag;
  }

  Future<void> _loadLanguage(Locale language) async {
    S.load(language);
  }
}
