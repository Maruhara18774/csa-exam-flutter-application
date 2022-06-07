import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test-body.dart';

class Udemy3Page extends StatefulWidget {
  static String routeName = "/udemy3";
  const Udemy3Page({Key? key}) : super(key: key);

  @override
  State<Udemy3Page> createState() => _Udemy3PageState();
}

class _Udemy3PageState extends State<Udemy3Page> {
  String key = "udemy-3";
  String name = "Udemy 3";

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
