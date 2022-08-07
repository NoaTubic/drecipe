import 'package:drecipe/core/app/app.dart';
import 'package:drecipe/core/env/env.dart';
import 'package:drecipe/core/env/widget/environment.dart';
import 'package:drecipe/core/log/provider_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void configureAndRunApp(Env env) {
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
