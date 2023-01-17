import 'package:drecipe/core/di/providers.dart';
import 'package:drecipe/core/env/widget/environment.dart';
import 'package:drecipe/features/common/ui/sizes/sizes.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeNotifierProvider);
    final router = ref.watch(routerProvider);
    return ScreenUtilInit(
      designSize: const Size(Sizes.designWidth, Sizes.designHeight),
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        theme: ref.watch(themeProvider).lightTheme,
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
