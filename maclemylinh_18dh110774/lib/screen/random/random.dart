import 'dart:math';

import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/random/random-body.dart';

class CsaRandomPage extends StatefulWidget {
  static String routeName = "/random60";
  const CsaRandomPage({Key? key}) : super(key: key);

  @override
  State<CsaRandomPage> createState() => _CsaRandomPageState();
}

class _CsaRandomPageState extends State<CsaRandomPage> {
  String name = "Random 60";

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
        body: RandomBody(questionCount: 60)
    );
  }
}
