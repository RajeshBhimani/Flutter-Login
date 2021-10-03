import 'package:flutter/material.dart';
import 'package:flutter_login/screen/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final LogoutButton = Material(
      color: Colors.blueAccent,
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Row(
          children: [
            Icon(
              Icons.logout,
              color: Colors.white,
            ),
            Text(' Log Out',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white)),
          ],
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset('assets/logo_main.png'),
              ),
              Text('User Name: '),
              SizedBox(
                height: 10,
              ),
              Text('Email ID: '),
              SizedBox(
                height: 10,
              ),
              Container(width: 150, child: LogoutButton)
            ],
          ),
        ),
      ),
    );
  }
}
