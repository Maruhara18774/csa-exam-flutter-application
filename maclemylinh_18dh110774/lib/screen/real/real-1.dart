import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test-body.dart';

class Real1Page extends StatefulWidget {
  static String routeName = "/real1";
  const Real1Page({Key? key}) : super(key: key);

  @override
  State<Real1Page> createState() => _Real1PageState();
}

class _Real1PageState extends State<Real1Page> {
  String key = "real-1";
  String name = "Real 1";

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
