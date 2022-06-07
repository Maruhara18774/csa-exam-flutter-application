import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test-body.dart';

class Udemy1Page extends StatefulWidget {
  static String routeName = "/udemy1";
  const Udemy1Page({Key? key}) : super(key: key);

  @override
  State<Udemy1Page> createState() => _Udemy1PageState();
}

class _Udemy1PageState extends State<Udemy1Page> {
  String key = "udemy-1";
  String name = "Udemy 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: Colors.purple,
          title: Text(this.name),
        ),
        body: TestBody(testKey: this.key)
    );
  }
}
