import 'package:drecipe/core/language/data/locale_repository.dart';
import 'package:drecipe/core/language/locale_notifier.dart';
import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/core/security/data/secure_storage.dart';
import 'package:drecipe/features/common/ui/themes/main_theme.dart';
import 'package:drecipe/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final themeProvider = Provider<AppTheme>((ref) => AppTheme());

final routerProvider = Provider<AppRouter>((ref) => AppRouter());

final secureStorageProvider = Provider<ISecureStorage>(
  (ref) => SecureStorage(
    const FlutterSecureStorage(),
  ),
);

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

final firebaseInitProvider = FutureProvider<FirebaseApp>(
  (ref) async => await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ),
);
