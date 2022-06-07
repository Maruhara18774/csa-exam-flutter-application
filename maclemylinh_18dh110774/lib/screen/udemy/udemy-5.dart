import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test-body.dart';

class Udemy5Page extends StatefulWidget {
  static String routeName = "/udemy5";
  const Udemy5Page({Key? key}) : super(key: key);

  @override
  State<Udemy5Page> createState() => _Udemy5PageState();
}

class _Udemy5PageState extends State<Udemy5Page> {
  String key = "udemy-5";
  String name = "Udemy 5";

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
