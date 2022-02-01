import 'package:correctionfirebase/Screen/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAUy2DdUTnb1wsA_vrhXPjKCe_k8AKrDXc",
          appId: "1:526325187360:web:4e23eb404b81c087ac8d45",
          messagingSenderId: "526325187360",
          projectId: "correctionfirebase"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    home: LoginScreen(),
  ));
}
