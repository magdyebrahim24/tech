import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tech/make-exam.dart';
import 'package:tech/widgets/buttons.dart';

import 'home.dart';
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundedButton(fun: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MakeExam()));
            },text: 'Make Exam',),
            RoundedButton(fun: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },text: 'Start Exam',),
          ],
        ),
      ),
    );
  }
}
