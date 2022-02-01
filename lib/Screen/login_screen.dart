import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Super connecté"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/image/profile_picture.jpg"),
                radius: 20,
              ),
            ),
            Expanded(
              child: TextFormField(
                controller: email_controller,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
            Expanded(
              child: TextFormField(
                controller: password_controller,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () async {
                    String pwd = password_controller.text;
                    String email = email_controller.text;
                    try {
                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .signInWithEmailAndPassword(
                              email: email, password: pwd);
                      print("ok");
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                  },
                  child: Text("Se connecter")),
            )
          ],
        ),
      ),
    );
  }
}
