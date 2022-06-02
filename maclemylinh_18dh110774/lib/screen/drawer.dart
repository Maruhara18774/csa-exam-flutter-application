import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test/test1.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Text('CSA Exam'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
          ),
          ListTile(
            title: const Text('Test 1'),
            onTap: () {
              Navigator.pushNamed(context, Test1Page.routeName);
            },
          ),
          ListTile(
            title: const Text('Test 2'),
            onTap: () {

            },
          ),
        ],
      ),
    );
  }
}
