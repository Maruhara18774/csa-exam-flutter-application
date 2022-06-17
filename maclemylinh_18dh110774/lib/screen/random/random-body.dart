import 'dart:math';

import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/model/question.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:maclemylinh_18dh110774/screen/complete.dart';

class RandomBody extends StatefulWidget {
  final int questionCount;
  const RandomBody({Key? key, required this.questionCount}) : super(key: key);

  @override
  State<RandomBody> createState() => _RandomBodyState();
}

class _RandomBodyState extends State<RandomBody> {
  String URL = "https://script.google.com/macros/s/AKfycbxLIt26o0NW8_KJ5X1zcfWDb7uq24djJxRkUFWX48906qFiRcbTLvfzKgh2xw_RVK4/exec";
  List<Question> _list = [];
  int currentQuestion = 0;
  int correct = 0;
  bool option1 = false;
  bool option2 = false;
  bool option3 = false;
  bool option4 = false;
  bool option5 = false;
  bool option6 = false;
  double percentage = 0;
  bool isShowProcess = false;
  bool isShowHint = false;
  double percentagePerQues = 0;
  List<int> corrrectAnswerAt = [];

  @override
  void initState() {
    super.initState();
    getDataFromSheet();
  }

  getDataFromSheet() async {
    List<Question> rawList = [];
    List<Question> list = [];
    var raw = await http.get( Uri.parse(this.URL +"?test=all")).catchError((err){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Failed to load data. Please load again."),
      ));
    });
    var jsonResult = convert.jsonDecode(raw.body);
    jsonResult.forEach((element){
      rawList.add(Question.fromJson(element));
    });
    for(var i = 0;i<widget.questionCount;i++){
      final random = new Random();
      var randNum = random.nextInt(rawList.length);
      var element = rawList[randNum];
      list.add(element);
      rawList.remove(element);
    }
    setState(() {
      this._list = list;
      this.currentQuestion = 0;
      this.correct = 0;
      this.percentagePerQues = 100 / list.length;
    });
  }

  showProcess(){
    setState(() {
      this.isShowProcess = true;
    });
  }

  hideProcess(){
    setState(() {
      this.isShowProcess = false;
    });
  }

  showHint(){
    setState(() {
      this.isShowHint = true;
    });
  }

  hideHint(){
    setState(() {
      this.isShowHint = false;
    });
  }

  nextQuestion(){
    this.checkQuestion();
    this.refresh();
    setState(() {
      this.currentQuestion = this.currentQuestion + 1;
      this.percentage = this.percentage + this.percentagePerQues;
    });
  }
  preQuestion(){
    this.refresh();
    setState(() {
      if(this.corrrectAnswerAt.contains(currentQuestion - 1)){
        this.correct = this.correct - 1;
        this.corrrectAnswerAt.remove(currentQuestion - 1);
      }
      this.currentQuestion = this.currentQuestion - 1;
      this.percentage = this.percentage - this.percentagePerQues;
    });
  }

  checkQuestion(){
    final split = _list[currentQuestion].answer!.split(',');
    final Map<int, String> values = {
      for (int i = 0; i < split.length; i++)
        i: split[i]
    };
    int count = 0;
    if(this.option1 != false && values.containsValue(_list[currentQuestion].option1)){
      count = count + 1;
    }
    if(this.option2 != false && values.containsValue(_list[currentQuestion].option2)){
      count = count + 1;
    }
    if(this.option3 != false && values.containsValue(_list[currentQuestion].option3)){
      count = count + 1;
    }
    if(this.option4 != false && values.containsValue(_list[currentQuestion].option4)){
      count = count + 1;
    }
    if(this.option5 != false && values.containsValue(_list[currentQuestion].option5)){
      count = count + 1;
    }
    if(this.option6 != false && values.containsValue(_list[currentQuestion].option6)){
      count = count + 1;
    }
    // Check result
    if(count == values.length){
      setState(() {
        this.correct = this.correct + 1;
        this.corrrectAnswerAt.add(currentQuestion);
      });
    }
  }

  refresh(){
    setState(() {
      option1 = false;
      option2 = false;
      option3 = false;
      option4 = false;
      option5 = false;
      option6 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0, bottom: 10.0),
      child: Container(
        child: _list.length == 0 ? Row(
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              color: Colors.purple,
              strokeWidth: 5,
            ),
            SizedBox(width: 20),
            Text("Loading ...")
          ],
        ):
        SingleChildScrollView(
          child: Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Question '+ (this.currentQuestion + 1).toString(), style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text(_list[currentQuestion].question!, style: TextStyle(fontSize: 20.0)),

                _list[currentQuestion].option1! != "" ? Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: CheckboxListTile(
                    title: Text(_list[currentQuestion].option1!),
                    value: this.option1,
                    onChanged: (newValue) {
                      setState(() {
                        this.option1 = newValue == null ? false : newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.purple,
                  ),
                ) : SizedBox(),

                _list[currentQuestion].option2! != "" ? Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: CheckboxListTile(
                    title: Text(_list[currentQuestion].option2!),
                    value: this.option2,
                    onChanged: (newValue) {
                      setState(() {
                        this.option2 = newValue == null ? false : newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.purple,
                  ),
                ): SizedBox(),

                _list[currentQuestion].option3! != "" ? Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: CheckboxListTile(
                    title: Text(_list[currentQuestion].option3!),
                    value: this.option3,
                    onChanged: (newValue) {
                      setState(() {
                        this.option3 = newValue == null ? false : newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.purple,
                  ),
                ): SizedBox(),

                _list[currentQuestion].option4! != "" ? Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: CheckboxListTile(
                    title: Text(_list[currentQuestion].option4!),
                    value: this.option4,
                    onChanged: (newValue) {
                      setState(() {
                        this.option4 = newValue == null ? false : newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.purple,
                  ),
                ):SizedBox(),

                _list[currentQuestion].option5! != "" ? Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: CheckboxListTile(
                    title: Text(_list[currentQuestion].option5!),
                    value: this.option5,
                    onChanged: (newValue) {
                      setState(() {
                        this.option5 = newValue == null ? false : newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.purple,
                  ),
                ): SizedBox(),

                _list[currentQuestion].option6! != "" ? Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: CheckboxListTile(
                    title: Text(_list[currentQuestion].option6!),
                    value: this.option6,
                    onChanged: (newValue) {
                      setState(() {
                        this.option6 = newValue == null ? false : newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.purple,
                  ),
                ): SizedBox(),
                SizedBox(height: 5),
                Row(
                  children: [
                    this.currentQuestion != 0 ? ElevatedButton(
                      onPressed: (){
                        preQuestion();
                      },
                      child: Text("Previous"),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
                    ) : SizedBox(),
                    SizedBox(width: 5),
                    !this.isShowProcess ?
                    ElevatedButton(
                      onPressed: (){
                        showProcess();
                      },
                      child: Text("Show process"),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
                    ):
                    ElevatedButton(
                      onPressed: (){
                        hideProcess();
                      },
                      child: Text("Hide process"),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
                    ),
                    SizedBox(width: 5),
                    this.currentQuestion + 1 != _list.length ? ElevatedButton(
                      onPressed: (){
                        nextQuestion();
                      },
                      child: Text("Next"),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
                    ): SizedBox(),
                    this.currentQuestion + 1 == _list.length ? ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, CompletePage.routeName,arguments: (this.correct/_list.length)*100);
                      },
                      child: Text("Submit"),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
                    ): SizedBox(),
                    SizedBox(width: 5),
                    !this.isShowHint ?
                    ElevatedButton(
                      onPressed: (){
                        showHint();
                      },
                      child: Text("Show hint"),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
                    ):
                    ElevatedButton(
                      onPressed: (){
                        hideHint();
                      },
                      child: Text("Hide hint"),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
                    ),
                  ],
                ),
                this.isShowProcess ? Column(
                  children: [
                    SizedBox(height: 20),
                    Text("Passed: "+ ((this.correct/_list.length)*100).round().toString()+"% / "+this.percentage.round().toString()+"%")
                  ],
                ): SizedBox(),
                this.isShowHint ? Column(
                  children: [
                    SizedBox(height: 20),
                    Text(_list[currentQuestion].test! + " - Question "+_list[currentQuestion].order.toString()),
                  ],
                ): SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
