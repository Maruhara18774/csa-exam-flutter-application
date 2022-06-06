import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test/test-body.dart';

class CsaRandomPage extends StatefulWidget {
  static String routeName = "/random";
  const CsaRandomPage({Key? key}) : super(key: key);

  @override
  State<CsaRandomPage> createState() => _CsaRandomPageState();
}

class _CsaRandomPageState extends State<CsaRandomPage> {
  String name = "Random";

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
        body: Text(this.name)
    );
  }
}
