import 'package:drecipe/core/di/providers.dart';
import 'package:drecipe/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FirebaseInitPage extends ConsumerWidget {
  const FirebaseInitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initializeFirebase = ref.watch(firebaseInitProvider);
    return initializeFirebase.when(
      loading: () => Container(),
      data: (data) => const SplashPage(),
      error: (error, stackTrace) => const SplashPage(),
    );
  }
}
