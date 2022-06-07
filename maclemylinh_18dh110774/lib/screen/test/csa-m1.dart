import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test-body.dart';

class CsaM1Page extends StatefulWidget {
  static String routeName = "/csa-m1";
  const CsaM1Page({Key? key}) : super(key: key);

  @override
  State<CsaM1Page> createState() => _CsaM1PageState();
}

class _CsaM1PageState extends State<CsaM1Page> {
  String key = "csa-m1";
  String name = "CSA M1";

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
