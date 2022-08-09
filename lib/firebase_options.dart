// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB5vnsKG8JyFt1Ci7Zdjf1yJ8iu26-4_8o',
    appId: '1:1035357080833:android:528530e87ef4bb47b01f00',
    messagingSenderId: '1035357080833',
    projectId: 'drecipe',
    storageBucket: 'drecipe.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzciKulCf4rtZqLHZJvuO2LD5U316Lj60',
    appId: '1:1035357080833:ios:1d036d148d52045cb01f00',
    messagingSenderId: '1035357080833',
    projectId: 'drecipe',
    storageBucket: 'drecipe.appspot.com',
    androidClientId: '1035357080833-cevmc3233458cg9m1sk78333ekn7rq2a.apps.googleusercontent.com',
    iosClientId: '1035357080833-hsaer7ai9c8ck50f5tggp71um352huc9.apps.googleusercontent.com',
    iosBundleId: 'com.drecipe.drecipe',
  );
}