import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test-body.dart';

class Test2Page extends StatefulWidget {
  static String routeName = "/test2";
  const Test2Page({Key? key}) : super(key: key);

  @override
  State<Test2Page> createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {
  String key = "test-2";
  String name = "Test 2";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
