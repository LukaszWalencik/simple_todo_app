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
    apiKey: 'AIzaSyBc6_etS8IG5qpozrCaFyutahJf2ozeShc',
    appId: '1:496830417198:web:dc21cc909e0c98f678d2bf',
    messagingSenderId: '496830417198',
    projectId: 'wasia-simple-todo-app',
    authDomain: 'wasia-simple-todo-app.firebaseapp.com',
    storageBucket: 'wasia-simple-todo-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-mib0stI6oohrynP8FfOk4ukYZKUUI80',
    appId: '1:496830417198:android:d23ac0973768908b78d2bf',
    messagingSenderId: '496830417198',
    projectId: 'wasia-simple-todo-app',
    storageBucket: 'wasia-simple-todo-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBEjthvw2KK1hbQJ7aPX7MVcVjDO7mG4fc',
    appId: '1:496830417198:ios:93542129a67fbab878d2bf',
    messagingSenderId: '496830417198',
    projectId: 'wasia-simple-todo-app',
    storageBucket: 'wasia-simple-todo-app.appspot.com',
    iosBundleId: 'com.example.simpleTodoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBEjthvw2KK1hbQJ7aPX7MVcVjDO7mG4fc',
    appId: '1:496830417198:ios:e1cd85db1f41653078d2bf',
    messagingSenderId: '496830417198',
    projectId: 'wasia-simple-todo-app',
    storageBucket: 'wasia-simple-todo-app.appspot.com',
    iosBundleId: 'com.example.simpleTodoApp.RunnerTests',
  );
}
