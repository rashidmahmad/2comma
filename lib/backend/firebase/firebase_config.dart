import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA0jcr7WnD27CKgR1FAGSFGemDDt_M1aBQ",
            authDomain: "comma-4a4a0.firebaseapp.com",
            projectId: "comma-4a4a0",
            storageBucket: "comma-4a4a0.firebasestorage.app",
            messagingSenderId: "433667619370",
            appId: "1:433667619370:web:043c06f443155c51fe6153"));
  } else {
    await Firebase.initializeApp();
  }
}
