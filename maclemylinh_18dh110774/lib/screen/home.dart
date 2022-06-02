import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/drawer.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Home"),
      drawer: MyDrawer(),
    );
  }
}
