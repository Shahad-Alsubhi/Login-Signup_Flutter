import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bnan/login.dart';
import 'package:bnan/signup.dart';
import 'package:bnan/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'bnan', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 55,
        ),
        Column(
          children: <Widget>[
            Image.asset(
              'assets/welcome.png',
              width: 250,
            ),
            SizedBox(
              height: 80,
            ),
            MaterialButton(
                elevation: 5,
                minWidth: double.infinity,
                height: 60,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
                color: Color(0xff0095ff),
                elevation: 5,
                minWidth: double.infinity,
                height: 60,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xff0095ff),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                }),
          ],
        ),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 60,
          ),
          child: column,
        ),
      ),
    );
  }
}
