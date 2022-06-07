import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/random/random-body.dart';

class CsaRandom15Page extends StatefulWidget {
  static String routeName = "/random15";
  const CsaRandom15Page({Key? key}) : super(key: key);

  @override
  State<CsaRandom15Page> createState() => _CsaRandom15PageState();
}

class _CsaRandom15PageState extends State<CsaRandom15Page> {
  String name = "Random 15";

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
        body: RandomBody(questionCount: 15)
    );
  }
}
