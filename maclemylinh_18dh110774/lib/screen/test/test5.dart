import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test/test-body.dart';

class Test5Page extends StatefulWidget {
  static String routeName = "/test5";
  const Test5Page({Key? key}) : super(key: key);

  @override
  State<Test5Page> createState() => _Test5PageState();
}

class _Test5PageState extends State<Test5Page> {
  String key = "test-5";
  String name = "Test 5";

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
