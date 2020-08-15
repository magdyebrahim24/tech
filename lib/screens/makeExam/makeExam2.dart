import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech/constants.dart';
import 'package:tech/screens/home.dart';
import 'package:tech/screens/makeExam/makeExam1.dart';
import 'package:tech/widgets/buttons.dart';
import 'package:tech/widgets/makeExamInfoItem.dart';

class MakeExamP2 extends StatefulWidget {
  @override
  _MakeExamP2State createState() => _MakeExamP2State();
}

class _MakeExamP2State extends State<MakeExamP2> {
  int showAlert = 0 ;
  var rng = new Random(examCode);
  static var examCode = 0000;
  String question = '';
  String questionAnswer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: showAlert == 0 ? AppBar(
        elevation: 0.0,
        backgroundColor: primaryColor,
        title: Text(
          'tech',
        ),
        leading: CircleButton(
          icn: Icons.arrow_back_ios,
          clor: backgroundColor,
          fun: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MakeExamP1(),
                ));
          },
        ),
        centerTitle: true,
      ) : AppBar(elevation: 0,backgroundColor: thirdColor,),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
              ),
              border: Border.all(
                width: 2,
                color: primaryColor,
              ),
//                border: Border(right: BorderSide(width: 2,color: primaryColor,style: BorderStyle.solid)),
              color: Colors.white,
            ),
          ),
          ListView(
            padding: EdgeInsets.only(top: 30),
            children: <Widget>[
              MakeExamInfoItem(
                labelText: 'Please Write Question Here :',
                child: TextFormField(
                  maxLines: 5,
                  minLines: 3,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {
                      question = value;
                    });
                  },
                  cursorColor: primaryColor,
                  style: KTextFormStyle,
                  decoration: kTextFormDecrotion.copyWith(
                    hintText: 'write your question her',
                  ),
                ),
              ),
              MakeExamInfoItem(
                labelText: 'Please Write Answer Here',
                child: TextFormField(
                  maxLines: 5,
                  minLines: 3,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {
                      questionAnswer = value;
                    });
                  },
                  cursorColor: primaryColor,
                  style: KTextFormStyle,
                  decoration: kTextFormDecrotion.copyWith(
                    hintText: 'Write answer her',
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .27,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: RoundedButton(
                    text: 'Finish',
                    fun: () {
                      setState(() {
                        showAlert = 1;
                      });
//                      Navigator.pushReplacement(
//                          context,
//                          MaterialPageRoute(
//                            builder: (context) => Home(),
//                          ));
                    },
                  )),
            ],
          ),
         showAlert == 1 ? Alert(examCode: examCode) : SizedBox(),

        ],
      ),
    );
  }
}

class Alert extends StatelessWidget {
  const Alert({
    Key key,
    @required this.examCode,
  }) : super(key: key);

  final int examCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: thirdColor,
      alignment: Alignment.center,
      child: SizedBox(
        height: 160,
        child: Card(
//          margin: EdgeInsets.symmetric(vertical: 100,horizontal: 20),
          elevation: 3,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Text('Notify'),
                SizedBox(width:220,child: Text(' Any one can enter your exam With your exam code',textAlign: TextAlign.center,)),
                Text('Your Exam Code Is : $examCode'),
                FlatButton(child: Text('Ok',style: TextStyle(color: primaryColor),),onPressed: (){
                  Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ));
                },)
            ],),
          ),
        ),
      ),
    );
  }
}
