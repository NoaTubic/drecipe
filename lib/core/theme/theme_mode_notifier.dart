import 'dart:developer';
import 'package:drecipe/core/theme/data/theme_mode_constants.dart';
import 'package:drecipe/core/theme/data/theme_mode_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier(this._themeModeRepository) : super(ThemeMode.dark);

  final IThemeModeRepository _themeModeRepository;

  Future<ThemeMode?> initThemeMode(
      {required Brightness platformBrightness}) async {
    final themeMode = await _themeModeRepository.loadThemeMode();

    if (themeMode.isEmpty) {
      final themeModeKey =
          getSystemThemeMode(platformBrightness: platformBrightness);
      state = ThemeMode.system;
      setThemeMode(themeModeKey);
    } else {
      state = themeMode == ThemeModeConstants.darkMode
          ? ThemeMode.dark
          : ThemeMode.light;
    }
    return state;
  }

  Future<void> changeTheme() async {
    state = (state == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
    log(state.toString());
    await setThemeMode(state.getThemeModeString());
  }

  Future<void> setThemeMode(String themeMode) async {
    await _themeModeRepository.changeThemeMode(themeMode: themeMode);
  }
}

String getSystemThemeMode({required Brightness platformBrightness}) {
  if (platformBrightness == Brightness.dark) {
    return ThemeMode.dark.getThemeModeString();
  }
  return ThemeMode.light.getThemeModeString();
}

extension ThemeModeExtension on ThemeMode {
  String getThemeModeString() {
    switch (this) {
      case ThemeMode.dark:
        return ThemeModeConstants.darkMode;
      case ThemeMode.light:
        return ThemeModeConstants.lightMode;
      default:
        return '';
    }
  }
}
