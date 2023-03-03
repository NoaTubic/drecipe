import 'package:drecipe/core/app/app.dart';
import 'package:drecipe/core/env/env.dart';
import 'package:drecipe/core/env/widget/environment.dart';
import 'package:drecipe/core/log/provider_logger.dart';
import 'package:drecipe/features/common/data/storage/hive_setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
