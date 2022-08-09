import 'package:drecipe/core/di/providers.dart';
import 'package:drecipe/features/splash/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FirebaseInitScreen extends ConsumerWidget {
  const FirebaseInitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initializeFirebase = ref.watch(firebaseInitProvider);
    return initializeFirebase.when(
      loading: () => const SplashScreen(),
      data: (data) => const SplashScreen(),
      error: (error, stackTrace) => const SplashScreen(),
    );
  }
}
