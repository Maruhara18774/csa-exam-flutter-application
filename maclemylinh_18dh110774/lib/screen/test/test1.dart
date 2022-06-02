import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/model/question.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:maclemylinh_18dh110774/screen/home.dart';

class Test1Page extends StatefulWidget {
  static String routeName = "/test1";
  const Test1Page({Key? key}) : super(key: key);

  @override
  State<Test1Page> createState() => _Test1PageState();
}

class _Test1PageState extends State<Test1Page> {
  List<Question> _list = [];
  int currentQuestion = 0;
  int correct = 0;
  bool option1 = false;
  bool option2 = false;
  bool option3 = false;
  bool option4 = false;

  @override
  void initState() {
    super.initState();
    getDataFromSheet();
  }

  getDataFromSheet() async {
    List<Question> list = [];
    var raw = await http.get( Uri.parse("https://script.google.com/macros/s/AKfycbwlY_5C_pPYKJgH_tJKdewl7hKe89nHtbA9VtbuEbuB79oHKopVYeq6BdjjeO0NiXIr/exec"));
    var jsonResult = convert.jsonDecode(raw.body);
    jsonResult.forEach((element){
      list.add(Question.fromJson(element));
    });
    setState(() {
      this._list = list;
      this.currentQuestion = 0;
      this.correct = 0;
    });
  }

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
      ),
      body: _list.length == 0 ? Text("Loading ..."):
          Container(
            width: width,
            child: Text(this._list[this.currentQuestion].question!),
          )
    );
  }
}
