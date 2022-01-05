// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signin_and_register_app/screens/signin_screen.dart';
import 'package:signin_and_register_app/constant.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int? groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color(0xff25242D),
            Color(0xff22202A),
          ], begin: Alignment.bottomLeft, end: Alignment.topRight),
        ),
        child: TweenAnimationBuilder(
          child: Column(
            children: [
              buildImage(),
              SizedBox(
                height: 20,
              ),
              buildTopText(),
              SizedBox(
                height: 2,
              ),
              buildMiddleText(),
              SizedBox(
                height: 2,
              ),
              buildCupertinoSlidingSegmentedControl(),
            ],
          ),
          tween: Tween<double>(begin: 0, end: 1),
          duration: Duration(milliseconds: 1200),
          builder: (BuildContext context, double _value, child) {
            return Opacity(
              opacity: _value,
              child: Padding(
                padding: EdgeInsets.only(top: _value * 35),
                child: child,
              ),
            );
          },
        ),
      ),
    );
  }

//*****************************
// * MAIN IMAGE COMPONENTS
//*****************************
  buildImage() {
    return Container(
      child: Image(
        image: AssetImage("assets/images/main.png"),
      ),
    );
  }

//*****************************
// * THE TOP TEXT COMPONENTS
//*****************************
  buildTopText() {
    return Container(
      width: 300,
      height: 80,
      child: Text(
        "Enterprise team\ncollaboration",
        textAlign: TextAlign.center,
        style: TextStyle(
          letterSpacing: 2.0,
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

//*****************************
// * THE MIDDLE TEXT COMPONENTS
//*****************************
  buildMiddleText() {
    return Container(
      width: 300,
      height: 80,
      child: Text(
        "Bring together your files, your tools, project and people. Including a new mobile and desktop application.",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 18, color: Colors.white70, fontWeight: FontWeight.w400),
      ),
    );
  }

//*****************************
// * CUPERTINOSLIDING COMPONENTS
//*****************************
  buildCupertinoSlidingSegmentedControl() {
    return CupertinoSlidingSegmentedControl<int>(
      thumbColor: mainColor,
      groupValue: groupValue,
      children: {
        0: registerCur(context),
        1: signinCur(context),
      },
      onValueChanged: (groupValue) => setState(
        () {
          this.groupValue = groupValue;
          isSelected(context);
        },
      ),
    );
  }

//*****************************
// * REGISTER BOTTON COMPONENTS
//*****************************
  registerCur(BuildContext context) {
    return Container(
      width: 120,
      height: 48,
      child: Center(
        child: Text(
          "Register",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: groupValue == 0 ? Color(0xff25242D) : mainColor),
        ),
      ),
    );
  }

//*****************************
// * SIGNIN BOTTON COMPONENTS
//*****************************
  signinCur(BuildContext context) {
    return Container(
      width: 120,
      height: 48,
      child: Center(
        child: Text(
          "Sign In",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: groupValue == 1 ? Color(0xff25242D) : mainColor,
          ),
        ),
      ),
    );
  }

//*****************************
// * CHANGE SCREEN METHODE
//*****************************
  isSelected(BuildContext context) {
    switch (groupValue) {
      case 0:
        return Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterScreen()),
        );
      case 1:
        return Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignInScreen()),
        );
    }
  }
}
