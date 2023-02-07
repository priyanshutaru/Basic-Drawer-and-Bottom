import 'package:flutter/material.dart';

class BottomLogin extends StatelessWidget {
  const BottomLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Login",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      )),
    );
  }
}
