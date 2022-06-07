import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/random/random15.dart';
import 'package:maclemylinh_18dh110774/screen/random/random30.dart';
import 'package:maclemylinh_18dh110774/screen/real/real-1.dart';
import 'package:maclemylinh_18dh110774/screen/test/csa-m1.dart';
import 'package:maclemylinh_18dh110774/screen/test/csa-v1375.dart';
import 'package:maclemylinh_18dh110774/screen/random/random.dart';
import 'package:maclemylinh_18dh110774/screen/extend/sandiego.dart';
import 'package:maclemylinh_18dh110774/screen/test/test2.dart';
import 'package:maclemylinh_18dh110774/screen/test/test3.dart';
import 'package:maclemylinh_18dh110774/screen/test/test4.dart';
import 'package:maclemylinh_18dh110774/screen/test/test5.dart';
import 'package:maclemylinh_18dh110774/screen/udemy/udemy-1.dart';
import 'package:maclemylinh_18dh110774/screen/udemy/udemy-2.dart';
import 'package:maclemylinh_18dh110774/screen/udemy/udemy-3.dart';
import 'package:maclemylinh_18dh110774/screen/udemy/udemy-4.dart';
import 'package:maclemylinh_18dh110774/screen/udemy/udemy-5.dart';

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
              image: DecorationImage(
                image: NetworkImage('https://i.pinimg.com/600x315/4e/12/cf/4e12cf45d8719a39e31c3f4726e1b2c2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Text('CSA Exam', style: TextStyle(fontSize: 20.0),),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
          ),
          ExpansionTile(
            title: Text('Basic'),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
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
                    ],
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Udemy'),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: const Text('Udemy 1'),
                        onTap: () {
                          Navigator.pushNamed(context, Udemy1Page.routeName);
                        },
                      ),
                      ListTile(
                        title: const Text('Udemy 2'),
                        onTap: () {
                          Navigator.pushNamed(context, Udemy2Page.routeName);
                        },
                      ),
                      ListTile(
                        title: const Text('Udemy 3'),
                        onTap: () {
                          Navigator.pushNamed(context, Udemy3Page.routeName);
                        },
                      ),
                      ListTile(
                        title: const Text('Udemy 4'),
                        onTap: () {
                          Navigator.pushNamed(context, Udemy4Page.routeName);
                        },
                      ),
                      ListTile(
                        title: const Text('Udemy 5'),
                        onTap: () {
                          Navigator.pushNamed(context, Udemy5Page.routeName);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Real'),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: const Text('Real 1'),
                        onTap: () {
                          Navigator.pushNamed(context, Real1Page.routeName);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Extend'),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: const Text('Sandiego'),
                        onTap: () {
                          Navigator.pushNamed(context, CsaSandPage.routeName);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Random'),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: const Text('Random 15'),
                        onTap: () {
                          Navigator.pushNamed(context, CsaRandom15Page.routeName);
                        },
                      ),
                      ListTile(
                        title: const Text('Random 30'),
                        onTap: () {
                          Navigator.pushNamed(context, CsaRandom30Page.routeName);
                        },
                      ),
                      ListTile(
                        title: const Text('Random 60'),
                        onTap: () {
                          Navigator.pushNamed(context, CsaRandomPage.routeName);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
