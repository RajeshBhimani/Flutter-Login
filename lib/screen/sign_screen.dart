import 'package:flutter/material.dart';
import 'package:flutter_login/screen/login_screen.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  final _keyForm = GlobalKey<FormState>();
  final firstController = TextEditingController();
  final lastController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final cPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final firstField = TextFormField(
      autofocus: false,
      controller: firstController,
      onSaved: (value) {
        firstController.text = value!;
      },
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_box_outlined),
          hintText: 'First Name',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          contentPadding: EdgeInsets.all(20)),
      textInputAction: TextInputAction.next,
    );
    final lastField = TextFormField(
      autofocus: false,
      controller: lastController,
      onSaved: (value) {
        lastController.text = value!;
      },
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_box),
          hintText: 'Last Name',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          contentPadding: EdgeInsets.all(20)),
      textInputAction: TextInputAction.next,
    );
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
      textInputAction: TextInputAction.next,
    );
    final cPassField = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: cPassController,
      onSaved: (value) {
        cPassController.text = value!;
      },
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_box),
          hintText: 'Confirm Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          contentPadding: EdgeInsets.all(20)),
      textInputAction: TextInputAction.done,
    );
    final signButton = Material(
      color: Colors.blueAccent,
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: MaterialButton(
        onPressed: () {},
        minWidth: MediaQuery.of(context).size.width,
        child: Text('Sign Up',
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
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/logo_main.png'),
                ),
                SizedBox(
                  height: 15.0,
                ),
                firstField,
                SizedBox(
                  height: 15.0,
                ),
                lastField,
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
                cPassField,
                SizedBox(
                  height: 15.0,
                ),
                signButton,
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('You have an Account?'),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        ' Login',
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
