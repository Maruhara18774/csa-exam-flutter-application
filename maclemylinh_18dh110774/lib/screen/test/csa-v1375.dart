import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test/test-body.dart';

class CsaV1375Page extends StatefulWidget {
  static String routeName = "/csa-v1375";
  const CsaV1375Page({Key? key}) : super(key: key);

  @override
  State<CsaV1375Page> createState() => _CsaV1375PageState();
}

class _CsaV1375PageState extends State<CsaV1375Page> {
  String key = "csa-v1375";
  String name = "CSA V13.75";

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
