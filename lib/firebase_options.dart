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
    apiKey: 'AIzaSyDD3V-oVW5jYwM46GCXL2z_t5A0CzIje7U',
    appId: '1:747961249218:web:d3f44429e57ccf76fffa5b',
    messagingSenderId: '747961249218',
    projectId: 'crudoperations-b0399',
    authDomain: 'crudoperations-b0399.firebaseapp.com',
    databaseURL: 'https://crudoperations-b0399.firebaseio.com',
    storageBucket: 'crudoperations-b0399.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBasoHBpeX5xcXslomNZuCCv7QQoSpi1Kc',
    appId: '1:747961249218:android:3b4c47e3f53f3b17fffa5b',
    messagingSenderId: '747961249218',
    projectId: 'crudoperations-b0399',
    databaseURL: 'https://crudoperations-b0399.firebaseio.com',
    storageBucket: 'crudoperations-b0399.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBAjwrHGgQ7baJtwRu82W3UpqtUSATM1KE',
    appId: '1:747961249218:ios:69e64b7c2e0a6978fffa5b',
    messagingSenderId: '747961249218',
    projectId: 'crudoperations-b0399',
    databaseURL: 'https://crudoperations-b0399.firebaseio.com',
    storageBucket: 'crudoperations-b0399.appspot.com',
    iosBundleId: 'com.example.flutterUiPlayground',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBAjwrHGgQ7baJtwRu82W3UpqtUSATM1KE',
    appId: '1:747961249218:ios:16011aef2c97827efffa5b',
    messagingSenderId: '747961249218',
    projectId: 'crudoperations-b0399',
    databaseURL: 'https://crudoperations-b0399.firebaseio.com',
    storageBucket: 'crudoperations-b0399.appspot.com',
    iosBundleId: 'com.example.flutterUiPlayground.RunnerTests',
  );
}