import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:drecipe/core/connectivity/state/connectivity_notifier.dart';
import 'package:drecipe/core/connectivity/state/connectivity_state.dart';
import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/core/security/data/secure_storage.dart';
import 'package:drecipe/features/common/ui/themes/main_theme.dart';
import 'package:drecipe/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

final themeProvider = Provider<AppTheme>((ref) => AppTheme());

final routerProvider = Provider<AppRouter>((ref) => AppRouter());

final secureStorageProvider = Provider<ISecureStorage>(
  (ref) => SecureStorage(
    const FlutterSecureStorage(),
  ),
);

final firebaseInitProvider = FutureProvider<FirebaseApp>(
  (ref) async => await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ),
);

final firebaseAuthProvider = Provider<FirebaseAuth>(
  (ref) => FirebaseAuth.instance,
);

final firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final hiveInitProvider = FutureProvider(
  (ref) => Hive.initFlutter,
);

final connectivityProvider = Provider<Connectivity>(
  (ref) => Connectivity(),
);

final connectivityNotifierProvider =
    StateNotifierProvider.autoDispose<ConnectivityNotifier, ConnectivityState>(
  (ref) => ConnectivityNotifier(
    ref.read(connectivityProvider),
  ),
);
