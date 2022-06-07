import 'dart:math';

import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/random/random-body.dart';

class CsaRandom30Page extends StatefulWidget {
  static String routeName = "/random30";
  const CsaRandom30Page({Key? key}) : super(key: key);

  @override
  State<CsaRandom30Page> createState() => _CsaRandom30PageState();
}

class _CsaRandom30PageState extends State<CsaRandom30Page> {
  String name = "Random 30";

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
        body: RandomBody(questionCount: 30)
    );
  }
}
