// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:signin_and_register_app/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//$$$$$$$$$$$$$$$$$$$$$$$$$
//** Instagram :
//  ** @CodeWithFlexz
// ----------------
//** Github :
//  ** AmirBayat0
// ----------------
//** Youtube :
//  ** Programming with Flexz
//$$$$$$$$$$$$$$$$$$$$$$$$$

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}
