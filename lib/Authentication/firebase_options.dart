// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCPm81GbiJxnDXQeUX8Yes_u_8No7b8AuY',
    appId: '1:302090612753:web:b8caba563f6f589973c1b0',
    messagingSenderId: '302090612753',
    projectId: 'naarisafety-e390b',
    authDomain: 'naarisafety-e390b.firebaseapp.com',
    storageBucket: 'naarisafety-e390b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcCdj1I3UuYWJ-vDIU6aJVcD2b0Wi9gjw',
    appId: '1:302090612753:android:aebca41f20b9a24073c1b0',
    messagingSenderId: '302090612753',
    projectId: 'naarisafety-e390b',
    storageBucket: 'naarisafety-e390b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCz1VAFKxx5A7odr5zbnGiDAyMxCtRlLTg',
    appId: '1:302090612753:ios:319d9c9897bb7c1673c1b0',
    messagingSenderId: '302090612753',
    projectId: 'naarisafety-e390b',
    storageBucket: 'naarisafety-e390b.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
