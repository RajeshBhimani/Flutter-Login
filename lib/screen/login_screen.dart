import 'package:flutter/material.dart';
import 'package:flutter_login/screen/home_screen.dart';
import 'package:flutter_login/screen/sign_screen.dart';

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
    final emailField = TextFormField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      onSaved: (value) {
        emailController.text = value!;
      },
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail_rounded),
          hintText: 'Email',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          contentPadding: EdgeInsets.all(20)),
      textInputAction: TextInputAction.next,
    );
    final passField = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passController,
      onSaved: (value) {
        passController.text = value!;
      },
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_box),
          hintText: 'Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          contentPadding: EdgeInsets.all(20)),
      textInputAction: TextInputAction.done,
    );
    final LoginButton = Material(
      color: Colors.blueAccent,
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        minWidth: MediaQuery.of(context).size.width,
        child: Text('Login',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white)),
      ),
    );
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Image.asset('assets/logo_main.png'),
                ),
                SizedBox(
                  height: 15.0,
                ),
                emailField,
                SizedBox(
                  height: 15.0,
                ),
                passField,
                SizedBox(
                  height: 15.0,
                ),
                LoginButton,
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Haven\'t you an Account?'),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignScreen()));
                      },
                      child: Text(
                        ' Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blueAccent),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
