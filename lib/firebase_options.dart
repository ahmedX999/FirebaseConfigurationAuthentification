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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDCeAUBh5oJCOBPkWG1xZakg5QlyxnMfwQ',
    appId: '1:403019555868:web:ce1d61cff4a8a7891e2bd9',
    messagingSenderId: '403019555868',
    projectId: 'atelier4-a-aittaleb-iir5g6',
    authDomain: 'atelier4-a-aittaleb-iir5g6.firebaseapp.com',
    storageBucket: 'atelier4-a-aittaleb-iir5g6.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC8GmHvFZaMAL80t24MDOCJOnSx1gmTEao',
    appId: '1:403019555868:android:3a283c27a9fcb6371e2bd9',
    messagingSenderId: '403019555868',
    projectId: 'atelier4-a-aittaleb-iir5g6',
    storageBucket: 'atelier4-a-aittaleb-iir5g6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBT4hd65BjykEvgCSUwbcmPUwQ5ogttU_w',
    appId: '1:403019555868:ios:bc8ffaa06b209b461e2bd9',
    messagingSenderId: '403019555868',
    projectId: 'atelier4-a-aittaleb-iir5g6',
    storageBucket: 'atelier4-a-aittaleb-iir5g6.appspot.com',
    iosBundleId: 'com.example.atelier4AAittalebIir5g6',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBT4hd65BjykEvgCSUwbcmPUwQ5ogttU_w',
    appId: '1:403019555868:ios:6b19d57f4f0378471e2bd9',
    messagingSenderId: '403019555868',
    projectId: 'atelier4-a-aittaleb-iir5g6',
    storageBucket: 'atelier4-a-aittaleb-iir5g6.appspot.com',
    iosBundleId: 'com.example.atelier4AAittalebIir5g6.RunnerTests',
  );
}