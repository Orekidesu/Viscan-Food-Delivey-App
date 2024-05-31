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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBRnEJ5xGJgBbaeeVar3EyFe3iCY11wRLw',
    appId: '1:1045414693570:web:570f2e8205e4a1670dc95b',
    messagingSenderId: '1045414693570',
    projectId: 'viscan-food-delivery-app',
    authDomain: 'viscan-food-delivery-app.firebaseapp.com',
    storageBucket: 'viscan-food-delivery-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDofgu8_2kg__qMJgrVqzYveUGZRoVdTuA',
    appId: '1:1045414693570:android:69b087d1b690063e0dc95b',
    messagingSenderId: '1045414693570',
    projectId: 'viscan-food-delivery-app',
    storageBucket: 'viscan-food-delivery-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPcY1ZEQPoSwdXK_HkaxDuHHg0r20ST54',
    appId: '1:1045414693570:ios:87980aa8947dae5c0dc95b',
    messagingSenderId: '1045414693570',
    projectId: 'viscan-food-delivery-app',
    storageBucket: 'viscan-food-delivery-app.appspot.com',
    iosBundleId: 'com.example.viscanFoodDeliveryApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAPcY1ZEQPoSwdXK_HkaxDuHHg0r20ST54',
    appId: '1:1045414693570:ios:87980aa8947dae5c0dc95b',
    messagingSenderId: '1045414693570',
    projectId: 'viscan-food-delivery-app',
    storageBucket: 'viscan-food-delivery-app.appspot.com',
    iosBundleId: 'com.example.viscanFoodDeliveryApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBRnEJ5xGJgBbaeeVar3EyFe3iCY11wRLw',
    appId: '1:1045414693570:web:6b16a3f37985fce10dc95b',
    messagingSenderId: '1045414693570',
    projectId: 'viscan-food-delivery-app',
    authDomain: 'viscan-food-delivery-app.firebaseapp.com',
    storageBucket: 'viscan-food-delivery-app.appspot.com',
  );
}
