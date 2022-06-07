import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test-body.dart';

class Udemy4Page extends StatefulWidget {
  static String routeName = "/udemy4";
  const Udemy4Page({Key? key}) : super(key: key);

  @override
  State<Udemy4Page> createState() => _Udemy4PageState();
}

class _Udemy4PageState extends State<Udemy4Page> {
  String key = "udemy-4";
  String name = "Udemy 4";

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
