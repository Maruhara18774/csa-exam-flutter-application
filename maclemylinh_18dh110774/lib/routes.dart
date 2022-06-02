import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test/test1.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => const HomePage(),
  Test1Page.routeName: (context) => const Test1Page()
};
