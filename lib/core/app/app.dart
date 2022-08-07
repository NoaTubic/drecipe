import 'package:drecipe/core/env/widget/environment.dart';
import 'package:drecipe/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: E.of(context).env.appName,
      home: const MyHomePage(),
    );
  }
}
