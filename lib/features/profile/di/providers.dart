import 'package:drecipe/core/di/providers.dart';
import 'package:drecipe/core/language/data/locale_repository.dart';
import 'package:drecipe/core/language/locale_notifier.dart';
import 'package:drecipe/core/theme/data/theme_mode_repository.dart';
import 'package:drecipe/features/profile/state/change_passcode/change_password_notifier.dart';
import 'package:drecipe/features/profile/state/change_passcode/change_password_state.dart';
import 'package:drecipe/core/theme/theme_mode_notifier.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final languageRepositoryProvider = Provider<ILanguageRepository>(
  (ref) => LanguageRepository(
    ref.read(secureStorageProvider),
  ),
);

final localeNotifierProvider = StateNotifierProvider<LocaleNotifier, Locale>(
  (ref) => LocaleNotifier(
    ref.read(
      languageRepositoryProvider,
    ),
  ),
);

final themeModeRepositoryProvider = Provider<IThemeModeRepository>(
  (ref) => ThemeModeRepository(
    ref.read(secureStorageProvider),
  ),
);

final themeModeNotifierProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) => ThemeModeNotifier(
    ref.read(themeModeRepositoryProvider),
  ),
);

final changePasswordNotifierProvider = StateNotifierProvider.autoDispose<
    ChangePasswordNotifier, ChangePasswordState>(
  (ref) => ChangePasswordNotifier(
    ref.read(authFacadeProvider),
  ),
);
