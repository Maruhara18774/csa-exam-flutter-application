import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test/csa-m1.dart';
import 'package:maclemylinh_18dh110774/screen/test/csa-v1375.dart';
import 'package:maclemylinh_18dh110774/screen/test/random.dart';
import 'package:maclemylinh_18dh110774/screen/test/sandiego.dart';
import 'package:maclemylinh_18dh110774/screen/test/test2.dart';
import 'package:maclemylinh_18dh110774/screen/test/test3.dart';
import 'package:maclemylinh_18dh110774/screen/test/test4.dart';
import 'package:maclemylinh_18dh110774/screen/test/test5.dart';

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
            title: const Text('Test 2'),
            onTap: () {
              Navigator.pushNamed(context, Test2Page.routeName);
            },
          ),
          ListTile(
            title: const Text('Test 3'),
            onTap: () {
              Navigator.pushNamed(context, Test3Page.routeName);
            },
          ),
          ListTile(
            title: const Text('Test 4'),
            onTap: () {
              Navigator.pushNamed(context, Test4Page.routeName);
            },
          ),
          ListTile(
            title: const Text('Test 5'),
            onTap: () {
              Navigator.pushNamed(context, Test5Page.routeName);
            },
          ),
          ListTile(
            title: const Text('CSA M1'),
            onTap: () {
              Navigator.pushNamed(context, CsaM1Page.routeName);
            },
          ),
          ListTile(
            title: const Text('CSA v13.75'),
            onTap: () {
              Navigator.pushNamed(context, CsaV1375Page.routeName);
            },
          ),
          ListTile(
            title: const Text('Sandiego'),
            onTap: () {
              Navigator.pushNamed(context, CsaSandPage.routeName);
            },
          ),
          ListTile(
            title: const Text('Random'),
            onTap: () {
              Navigator.pushNamed(context, CsaRandomPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
