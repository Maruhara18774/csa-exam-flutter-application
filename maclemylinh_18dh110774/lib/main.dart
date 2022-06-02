import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/routes.dart';
import 'package:maclemylinh_18dh110774/screen/drawer.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSA Exam',
      theme: ThemeData(
        primaryColor: Colors.purple,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 14.0),
          button: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),
        )
      ),
      home: HomePage(),
      routes: routes,
    );
  }
}