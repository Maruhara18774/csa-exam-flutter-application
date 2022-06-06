import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test/test-body.dart';

class Test4Page extends StatefulWidget {
  static String routeName = "/test4";
  const Test4Page({Key? key}) : super(key: key);

  @override
  State<Test4Page> createState() => _Test4PageState();
}

class _Test4PageState extends State<Test4Page> {
  String key = "test-4";
  String name = "Test 4";

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
