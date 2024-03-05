import 'package:bnan/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
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
          padding: EdgeInsets.only(top: 30),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        makeInput(
                          lable: "Email",
                          hintText: "Enter your email",
                          icon: Icon(
                            Icons.email_outlined,
                            size: 20,
                            color: const Color.fromARGB(255, 140, 139, 139),
                          ),
                        ),
                        makeInput(
                            lable: "Password",
                            hintText: "Enter your password",
                            icon: Icon(
                              Icons.lock,
                              size: 20,
                              color: const Color.fromARGB(255, 140, 139, 139),
                            ),
                            obscureText: true)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 40, right: 40),
                    child: Container(
                      child: MaterialButton(
                          elevation: 5,
                          minWidth: double.infinity,
                          height: 55,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xff0095ff)),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          color: Color(0xff0095ff),
                          onPressed: () {}),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                            // fontSize: 18,
                            // fontWeight: FontWeight.bold,
                            ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup(),
                          ),
                        ),
                        child: Text(
                          "Sing up",
                          style: TextStyle(
                            color: Color(0xff0095ff),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: Image.asset(
                      'assets/background.png',
                      width: 300,
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

Widget makeInput({lable, hintText, icon, obscureText = false}) {
  return Column(
    children: [
      TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: lable,
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 42),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(28),
              gapPadding: 10),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(28),
              gapPadding: 10),
          suffixIcon: icon,
        ),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}
