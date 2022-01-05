// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signin_and_register_app/screens/register_screen.dart';
import 'package:signin_and_register_app/constant.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  int? groupValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color> [
              Color(0xff191720),
              Color(0xff25242D),
            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          ),
          child: TweenAnimationBuilder(
            child: Column(
              children: [
                buildBackIcon(),
                buildTopText(),
                SizedBox(
                  height: 2,
                ),
                buildMiddleText(),
                buildLastText(),
                SizedBox(
                  height: 40,
                ),
                buildUserTextField(),
                SizedBox(
                  height: 10,
                ),
                buildPasswordTextField(),
                SizedBox(
                  height: 20,
                ),
                buildForgotPasswordText(),
                SizedBox(height: 15),
                buildSignInBotton(),
                SizedBox(height: 20),
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
      ),
    );
  }

//*****************************
// * BACK ICON COMPONENTS
//*****************************
  buildBackIcon() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
            hoverColor: Colors.white,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterScreen(),
              ),
            ),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

//*****************************
// * TOP TEXT COMPONENTS
//*****************************
  buildTopText() {
    return Container(
      width: 300,
      height: 60,
      child: Center(
        child: Text(
          "Let\'s sign you in.",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: mainColor, fontSize: 35),
        ),
      ),
    );
  }

//*****************************
// * MIDDLE TEXT COMPONENTS
//*****************************
  buildMiddleText() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      width: 300,
      height: 40,
      child: Text(
        "Welcome back.",
        style: TextStyle(
            fontWeight: FontWeight.w400, color: mainColor, fontSize: 30),
      ),
    );
  }

//*****************************
// * LAST TEXT COMPONENTS
//*****************************
  buildLastText() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      width: 300,
      height: 40,
      child: Text(
        "You\'ve been missed!",
        style: TextStyle(
            fontWeight: FontWeight.w400, color: mainColor, fontSize: 30),
      ),
    );
  }

//*****************************
// * USER TEXTFIELD COMPONENTS
//*****************************
  buildUserTextField() {
    return Container(
      width: 300,
      height: 55,
      child: TextField(
        readOnly: true,
        style: TextStyle(color: Colors.white),
        showCursor: true,
        cursorColor: mainColor,
        decoration: InputDecoration(
          labelText: "Phone, email or username",
          hintText: "somthing@gmail.com ",
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
          labelStyle: TextStyle(
              color: Colors.white70, fontSize: 13, fontWeight: FontWeight.w400),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.3),
              borderRadius: BorderRadius.circular(15)),
          floatingLabelStyle: TextStyle(
            color: mainColor,
            fontSize: 16,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.3),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }

//*****************************
// * PASSWORD TEXTFIELD COMPONENTS
//*****************************
  buildPasswordTextField() {
    return Container(
      width: 300,
      height: 55,
      child: TextField(
        readOnly: true,
        style: TextStyle(color: Colors.white),
        showCursor: true,
        cursorColor: mainColor,
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "12345678 ",
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
          labelStyle: TextStyle(
              color: Colors.white70, fontSize: 13, fontWeight: FontWeight.w400),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.3),
              borderRadius: BorderRadius.circular(15)),
          floatingLabelStyle: TextStyle(
            color: mainColor,
            fontSize: 16,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.3),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }

//*****************************
// * FORGOT PASSWORF TEXT COMPONENTS
//*****************************
  buildForgotPasswordText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 30,
          child: Center(
            child: Text(
              "Don\'t have an account?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white70,
              ),
            ),
          ),
        ),
        Container(
          width: 60,
          height: 30,
          child: Center(
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterScreen(),
                  )),
              child: Text(
                "Register",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: mainColor),
              ),
            ),
          ),
        )
      ],
    );
  }

//*****************************
// * SIGNIN BOTTON COMPONENTS
//*****************************
  buildSignInBotton() {
    return Container(
      width: 280,
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        color: mainColor,
        child: Text(
          "Sign In",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xff25242D)),
        ),
        onPressed: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext context) => super.widget),
        ),
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
}
