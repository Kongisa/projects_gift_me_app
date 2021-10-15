
import 'package:flutter/material.dart';
import 'package:project_sign_up/signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Welcome to gift me",
      home: SignUp(),
    );
  }
}