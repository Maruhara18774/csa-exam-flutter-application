import 'package:flutter/material.dart';
import 'package:maclemylinh_18dh110774/screen/home.dart';

class CompletePage extends StatelessWidget {
  static String routeName = "/congrat";
  const CompletePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final args = ModalRoute.of(context)!.settings.arguments as double;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: width,
              width: width,
              child: Image.network("https://pngpress.com/wp-content/uploads/2020/08/uploads_confetti_confetti_PNG86957.png"),
            ),
            Text("Congratulations", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Text("You finished this exam with "+ args.round().toString()+"%",style: TextStyle(fontSize: 20.0)),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, HomePage.routeName);
            }, child: Text("Go to home"),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)))
          ],
        ),
      ),
    );
  }
}
