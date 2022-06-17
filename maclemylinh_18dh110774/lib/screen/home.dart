import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/drawer.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to CSA Exam", style: TextStyle(fontSize: 20.0),),
            SizedBox(height: 5),
            Text("Version: 1.0.3 - 17/ 06/ 2022"),
            SizedBox(height: 5),
            Text("Developer: Linh Mac Le My"),
            SizedBox(height: 5),
            Text("Source material: CSA Exam Preparation - Batch 1 - 2022"),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
