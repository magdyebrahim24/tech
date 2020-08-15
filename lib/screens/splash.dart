import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tech/constants.dart';
import 'package:tech/screens/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState() {
    Timer(
      Duration(seconds: 2),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      ),
    );
    super.initState();
  }

  void dispose(){
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'tech',
          style: KLogoText,
        ),
      ),

//      body: SizedBox(
//        height: MediaQuery.of(context).size.height,
//        width: MediaQuery.of(context).size.width,
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            RoundedButton(fun: (){
//              Navigator.pushReplacement(
//                  context, MaterialPageRoute(builder: (context) => MakeExam()));
//            },text: 'Make Exam',),
//            RoundedButton(fun: (){
//              Navigator.pushReplacement(
//                  context, MaterialPageRoute(builder: (context) => Screen2()));
//            },text: 'Start Exam',),
//          ],
//        ),
//      ),
    );
  }
}
