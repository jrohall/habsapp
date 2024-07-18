import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBR6giAb6CS2_eR1Aasho8YaWiR1Ozfri8",
            authDomain: "habs-abcf0.firebaseapp.com",
            projectId: "habs-abcf0",
            storageBucket: "habs-abcf0.appspot.com",
            messagingSenderId: "272499821375",
            appId: "1:272499821375:web:34758284f59588cf40618a",
            measurementId: "G-WG98DX3447"));
  } else {
    await Firebase.initializeApp();
  }
}
