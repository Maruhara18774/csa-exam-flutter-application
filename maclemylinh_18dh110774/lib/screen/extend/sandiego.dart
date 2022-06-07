import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test-body.dart';

class CsaSandPage extends StatefulWidget {
  static String routeName = "/sand";
  const CsaSandPage({Key? key}) : super(key: key);

  @override
  State<CsaSandPage> createState() => _CsaSandPageState();
}

class _CsaSandPageState extends State<CsaSandPage> {
  String key = "sad";
  String name = "Sandiego Version";

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
