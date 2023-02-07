import 'package:flutter/material.dart';

class BottomPackage extends StatelessWidget {
  const BottomPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Our Wedding Packages",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
