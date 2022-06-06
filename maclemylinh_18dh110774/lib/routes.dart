import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/test/complete.dart';
import 'package:maclemylinh_18dh110774/screen/test/csa-m1.dart';
import 'package:maclemylinh_18dh110774/screen/test/csa-v1375.dart';
import 'package:maclemylinh_18dh110774/screen/test/random.dart';
import 'package:maclemylinh_18dh110774/screen/test/sandiego.dart';
import 'package:maclemylinh_18dh110774/screen/test/test2.dart';
import 'package:maclemylinh_18dh110774/screen/test/test3.dart';
import 'package:maclemylinh_18dh110774/screen/test/test4.dart';
import 'package:maclemylinh_18dh110774/screen/test/test5.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => const HomePage(),
  Test2Page.routeName: (context) => const Test2Page(),
  Test3Page.routeName: (context) => const Test3Page(),
  Test4Page.routeName: (context) => const Test4Page(),
  Test5Page.routeName: (context) => const Test5Page(),
  CsaM1Page.routeName: (context) => const CsaM1Page(),
  CsaV1375Page.routeName: (context) => const CsaV1375Page(),
  CsaSandPage.routeName: (context) => const CsaSandPage(),
  CsaRandomPage.routeName: (context) => const CsaRandomPage(),
  CompletePage.routeName: (context) => const CompletePage()
};
