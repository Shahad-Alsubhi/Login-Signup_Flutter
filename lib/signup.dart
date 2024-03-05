import 'package:bnan/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 30, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Sign up",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Create an account, it's free!",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  children: <Widget>[
                    makeInput(
                      lable: "Username",
                      hintText: "Enter a username",
                      icon: Icon(
                        Icons.person,
                        color: const Color.fromARGB(255, 140, 139, 139),
                      ),
                    ),
                    makeInput(
                      lable: "Email",
                      hintText: "Enter your email",
                      icon: Icon(
                        Icons.email,
                        size: 20,
                        color: const Color.fromARGB(255, 140, 139, 139),
                      ),
                    ),
                    makeInput(
                      lable: "Password",
                      obscureText: true,
                      hintText: "Enter a password",
                      icon: Icon(
                        Icons.lock,
                        size: 20,
                        color: const Color.fromARGB(255, 140, 139, 139),
                      ),
                    ),
                    makeInput(
                      lable: "Confirm Password",
                      obscureText: true,
                      hintText: "Confirm the password",
                      icon: Icon(
                        Icons.lock,
                        size: 20,
                        color: const Color.fromARGB(255, 140, 139, 139),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: MaterialButton(
                    elevation: 5,
                    minWidth: double.infinity,
                    height: 55,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xff0095ff)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    color: Color(0xff0095ff),
                    onPressed: () {}),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Already have an account? ",
                    style: TextStyle(),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color(0xff0095ff),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
