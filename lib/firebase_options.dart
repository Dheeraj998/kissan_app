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
    apiKey: 'AIzaSyCJuCjSfXgj-ErlvhVk7feoFjgl3xe8_Xo',
    appId: '1:1016118821291:web:7ecde4462a30cf3c4452ee',
    messagingSenderId: '1016118821291',
    projectId: 'kisan-bf8ec',
    authDomain: 'kisan-bf8ec.firebaseapp.com',
    storageBucket: 'kisan-bf8ec.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPc0VLZjK3W2jFw5SWW9aeftu9HU22mHI',
    appId: '1:1016118821291:android:61d95fe1d695d4684452ee',
    messagingSenderId: '1016118821291',
    projectId: 'kisan-bf8ec',
    storageBucket: 'kisan-bf8ec.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC9wUdIlHX-_g5YM6-jOk95EZjO_AkLiiA',
    appId: '1:1016118821291:ios:0ae0f8dbdf4b57cb4452ee',
    messagingSenderId: '1016118821291',
    projectId: 'kisan-bf8ec',
    storageBucket: 'kisan-bf8ec.appspot.com',
    iosClientId: '1016118821291-ko0pv9ai1fh0cak9v6ls06nfqt5o4p8a.apps.googleusercontent.com',
    iosBundleId: 'com.example.kisanApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC9wUdIlHX-_g5YM6-jOk95EZjO_AkLiiA',
    appId: '1:1016118821291:ios:0ae0f8dbdf4b57cb4452ee',
    messagingSenderId: '1016118821291',
    projectId: 'kisan-bf8ec',
    storageBucket: 'kisan-bf8ec.appspot.com',
    iosClientId: '1016118821291-ko0pv9ai1fh0cak9v6ls06nfqt5o4p8a.apps.googleusercontent.com',
    iosBundleId: 'com.example.kisanApp',
  );
}