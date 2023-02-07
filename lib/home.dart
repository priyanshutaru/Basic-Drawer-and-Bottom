import 'package:day2/drawer.dart';
import 'package:flutter/material.dart';
import 'bottom_nav_bar/bottom_home.dart';
import 'drawer.dart';
import 'package:day2/bottom_nav_bar/bottom_getdeals.dart';
import 'package:day2/bottom_nav_bar/bottom_login.dart';
import 'package:day2/bottom_nav_bar/bottom_packages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    BottomNav(),
    BottomPackage(),
    BottomGetdeals(),
    BottomLogin(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wed Arranger",
        ),
      ),
      drawer: MyDrawer(),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.shifting,
       // type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: Colors.white38,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: onTap,
        currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Packages',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake_outlined),
            label: 'Get Deals',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Login',
            backgroundColor: Colors.blue,
          ),
        ],
      ),

      //bottomNavigationBar: BottomNav(),
    );
  }
}
