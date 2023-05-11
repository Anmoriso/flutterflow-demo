import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDHhpypmi-azMlgWDb_Nrq3NC4gP7LzxRE",
            authDomain: "flutterflowdemo2.firebaseapp.com",
            projectId: "flutterflowdemo2",
            storageBucket: "flutterflowdemo2.appspot.com",
            messagingSenderId: "348856656711",
            appId: "1:348856656711:web:b77a0fff9ae5882b0c6262",
            measurementId: "G-38LZ40BF4K"));
  } else {
    await Firebase.initializeApp();
  }
}
