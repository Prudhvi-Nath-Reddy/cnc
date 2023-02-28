import 'package:cnc/home.dart';
import 'package:cnc/profile.dart';
import 'package:cnc/sign_up.dart';
import 'package:flutter/material.dart';
import 'sign_in.dart';


 void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: profile() 
    );
  }
}
