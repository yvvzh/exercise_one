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
    apiKey: 'AIzaSyDJWQZ_w4i6Ff4rgC8He7xYDip3hUnsbsw',
    appId: '1:545746318691:web:6a04e572972e8834b5cf56',
    messagingSenderId: '545746318691',
    projectId: 'cocktails-e1ceb',
    authDomain: 'cocktails-e1ceb.firebaseapp.com',
    databaseURL: 'https://cocktails-e1ceb-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'cocktails-e1ceb.appspot.com',
    measurementId: 'G-QD5PGKDZ2E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCB8B96aWzGi-6wWZiyjtICdLaq2fGnpJ0',
    appId: '1:545746318691:android:396db7a20aaa488ab5cf56',
    messagingSenderId: '545746318691',
    projectId: 'cocktails-e1ceb',
    databaseURL: 'https://cocktails-e1ceb-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'cocktails-e1ceb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDeK70pxI0o4x61ifVs4DBJ8ZBoNHfO0EU',
    appId: '1:545746318691:ios:592922ee9645f9b8b5cf56',
    messagingSenderId: '545746318691',
    projectId: 'cocktails-e1ceb',
    databaseURL: 'https://cocktails-e1ceb-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'cocktails-e1ceb.appspot.com',
    iosClientId: '545746318691-3l9lebbjc17hdpg3413t6v3ja1v7cas7.apps.googleusercontent.com',
    iosBundleId: 'com.example.exerciseOne',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDeK70pxI0o4x61ifVs4DBJ8ZBoNHfO0EU',
    appId: '1:545746318691:ios:b62a132d2ef5ddc3b5cf56',
    messagingSenderId: '545746318691',
    projectId: 'cocktails-e1ceb',
    databaseURL: 'https://cocktails-e1ceb-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'cocktails-e1ceb.appspot.com',
    iosClientId: '545746318691-7orqdcfqj8067a613gi9f2eafep86s21.apps.googleusercontent.com',
    iosBundleId: 'com.example.exerciseOne.RunnerTests',
  );
}
