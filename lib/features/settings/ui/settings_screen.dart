import 'package:drecipe/core/di/providers.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends ConsumerState<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final localeProvider = ref.read(localeNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).test,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  localeProvider.changeLanguage(const Locale('hr'));
                  localeProvider.loadLanguage();
                });
              },
              child: const Text('change language'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  localeProvider.changeLanguage(const Locale('en'));
                  localeProvider.loadLanguage();
                });
              },
              child: const Text('Promijeni jezik'),
            ),
          ],
        ),
      ),
    );
  }
}
