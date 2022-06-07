import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test-body.dart';

class Udemy2Page extends StatefulWidget {
  static String routeName = "/udemy2";
  const Udemy2Page({Key? key}) : super(key: key);

  @override
  State<Udemy2Page> createState() => _Udemy2PageState();
}

class _Udemy2PageState extends State<Udemy2Page> {
  String key = "udemy-2";
  String name = "Udemy 2";

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
