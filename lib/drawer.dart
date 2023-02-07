import 'package:day2/bottom_nav_bar/bottom_login.dart';
import 'package:day2/home.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
            child: Text('Sign In'),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.search,
            ),
            title: const Text('Explor Menus'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.people_alt,
            ),
            title: const Text('Vendors'),
            onTap: () {
              Navigator.push(context,new MaterialPageRoute(builder: (context) => new BottomLogin()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.leave_bags_at_home,
            ),
            title: const Text('Packages'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.camera_alt,
            ),
            title: const Text('Blog'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.ring_volume_outlined,
            ),
            title: const Text('Real Wedding'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.shop,
            ),
            title: const Text('Shop'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.question_mark,
            ),
            title: const Text('Why Wed Arranger??'),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          /* ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Page 9'),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Page 10'),
            onTap: () {
              Navigator.pop(context);
            },
          ),*/
        ],
      ),
    );
  }
}
