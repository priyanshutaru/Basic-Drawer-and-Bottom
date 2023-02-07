import 'package:flutter/material.dart';

class BottomGetdeals extends StatelessWidget {
  const BottomGetdeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Get Deals Here",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
