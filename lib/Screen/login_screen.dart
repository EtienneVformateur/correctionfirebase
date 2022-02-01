import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();
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
                  onPressed: () {
                    print(password_controller.text);
                  },
                  child: Text("Se connecter")),
            )
          ],
        ),
      ),
    );
  }
}
