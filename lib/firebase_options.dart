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
    apiKey: 'AIzaSyDz2AK0aXfMs9tdmwhJdRPRIj7cbt2ap8s',
    appId: '1:217108561613:web:31db23c0aadff17a9a3384',
    messagingSenderId: '217108561613',
    projectId: 'medica-73ede',
    authDomain: 'medica-73ede.firebaseapp.com',
    storageBucket: 'medica-73ede.appspot.com',
    measurementId: 'G-KH6W081QM5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAYan9iVV-EzZooR5ES4EeFXd067BY9XRM',
    appId: '1:217108561613:android:59ccc1165acf56f69a3384',
    messagingSenderId: '217108561613',
    projectId: 'medica-73ede',
    storageBucket: 'medica-73ede.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNjAFGt7yAHeXe-vhWzfAU7hlN9UiBAKc',
    appId: '1:217108561613:ios:21d637950c32aea59a3384',
    messagingSenderId: '217108561613',
    projectId: 'medica-73ede',
    storageBucket: 'medica-73ede.appspot.com',
    iosClientId: '217108561613-us5jdh6d6s2sk72jpcg7uu7pijg8sb0r.apps.googleusercontent.com',
    iosBundleId: 'com.example.medica',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCNjAFGt7yAHeXe-vhWzfAU7hlN9UiBAKc',
    appId: '1:217108561613:ios:21d637950c32aea59a3384',
    messagingSenderId: '217108561613',
    projectId: 'medica-73ede',
    storageBucket: 'medica-73ede.appspot.com',
    iosClientId: '217108561613-us5jdh6d6s2sk72jpcg7uu7pijg8sb0r.apps.googleusercontent.com',
    iosBundleId: 'com.example.medica',
  );
}
