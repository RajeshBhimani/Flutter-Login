import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _keyForm = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 180,
              width: 180,
              child: Image.asset('assets/logo.png'),
            )
          ],
        ),
      ),
    );
  }
}
