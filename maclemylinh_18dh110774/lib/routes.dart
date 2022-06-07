import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';
import 'package:maclemylinh_18dh110774/screen/random/random15.dart';
import 'package:maclemylinh_18dh110774/screen/random/random30.dart';
import 'package:maclemylinh_18dh110774/screen/complete.dart';
import 'package:maclemylinh_18dh110774/screen/real/real-1.dart';
import 'package:maclemylinh_18dh110774/screen/test/csa-m1.dart';
import 'package:maclemylinh_18dh110774/screen/test/csa-v1375.dart';
import 'package:maclemylinh_18dh110774/screen/random/random.dart';
import 'package:maclemylinh_18dh110774/screen/extend/sandiego.dart';
import 'package:maclemylinh_18dh110774/screen/test/test2.dart';
import 'package:maclemylinh_18dh110774/screen/test/test3.dart';
import 'package:maclemylinh_18dh110774/screen/test/test4.dart';
import 'package:maclemylinh_18dh110774/screen/test/test5.dart';
import 'package:maclemylinh_18dh110774/screen/udemy/udemy-1.dart';
import 'package:maclemylinh_18dh110774/screen/udemy/udemy-2.dart';
import 'package:maclemylinh_18dh110774/screen/udemy/udemy-3.dart';
import 'package:maclemylinh_18dh110774/screen/udemy/udemy-4.dart';
import 'package:maclemylinh_18dh110774/screen/udemy/udemy-5.dart';

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
  CompletePage.routeName: (context) => const CompletePage(),
  CsaRandom30Page.routeName: (context) => const CsaRandom30Page(),
  CsaRandom15Page.routeName: (context) => const CsaRandom15Page(),
  Udemy1Page.routeName: (context) => const Udemy1Page(),
  Udemy2Page.routeName: (context) => const Udemy2Page(),
  Udemy3Page.routeName: (context) => const Udemy3Page(),
  Udemy4Page.routeName: (context) => const Udemy4Page(),
  Udemy5Page.routeName: (context) => const Udemy5Page(),
  Real1Page.routeName: (context) => const Real1Page()
};
