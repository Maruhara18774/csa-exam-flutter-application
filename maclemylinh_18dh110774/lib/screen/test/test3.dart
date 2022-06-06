import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test/test-body.dart';

class Test3Page extends StatefulWidget {
  static String routeName = "/test3";
  const Test3Page({Key? key}) : super(key: key);

  @override
  State<Test3Page> createState() => _Test3PageState();
}

class _Test3PageState extends State<Test3Page> {
  String key = "test-3";
  String name = "Test 3";

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
          title: Text(this.name),
        ),
        body: TestBody(testKey: this.key)
    );
  }
}
