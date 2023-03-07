import 'package:drecipe/main/env/env.dart';
import 'package:drecipe/main/env/widget/environment.dart';
import 'package:drecipe/core/log/provider_logger.dart';
import 'package:drecipe/features/common/data/storage/hive_setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drecipe/core/di/providers.dart';
import 'package:drecipe/features/common/ui/sizes/sizes.dart';
import 'package:drecipe/features/profile/di/providers.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void configureAndRunApp(Env env) async {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool inDebug = false;
    assert(
      () {
        inDebug = true;
        return true;
      }(),
    );

    return inDebug
        ? ErrorWidget(details.exception)
        : Container(
            alignment: Alignment.center,
            child: Text(
              'Error\n ${details.exception}',
              textAlign: TextAlign.center,
            ),
          );
  };
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await configureDatabase();
  runApp(
    Environment(
      env,
      child: const ProviderScope(
        observers: [ProviderLogger()],
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeNotifierProvider);
    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(themeModeNotifierProvider);
    return ScreenUtilInit(
      designSize: const Size(Sizes.designWidth, Sizes.designHeight),
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        builder: (context, child) {
          ref.read(themeModeNotifierProvider.notifier).initThemeMode(
              platformBrightness: MediaQuery.of(context).platformBrightness);
          return child!;
        },
        themeMode: themeMode,
        theme: ref.watch(themeProvider).lightTheme,
        darkTheme: ref.watch(themeProvider).darkTheme,
        title: E.of(context).env.appName,
        locale: locale,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
