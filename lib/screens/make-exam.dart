import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tech/screens/home.dart';
import 'package:tech/widgets/buttons.dart';
import 'package:tech/widgets/makeExamInfoItem.dart';

import '../constants.dart';

class MakeExam extends StatefulWidget {
  @override
  _MakeExamState createState() => _MakeExamState();
}

class _MakeExamState extends State<MakeExam> {
  String examSubTittle;
  String examTime;
  String instractorName;
  String instractorEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primaryColor,
        title: Text(
          'tech',
//          style: KMegaText
        ),
        leading: CircleButton(
          icn: Icons.arrow_back_ios,
          clor: backgroundColor,
          fun: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ));
          },
        ),
        centerTitle: true,
      ),
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
                labelText: 'Exam Subjet Tittle :',
                child: TextFormField(
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {
                      examSubTittle = value;
                    });
                  },
                  cursorColor: primaryColor,
                  style: KTextFormStyle,
                  decoration: kTextFormDecrotion.copyWith(
                    hintText: 'write exam subjet tittle her',
                  ),
                ),
              ),
              MakeExamInfoItem(
                labelText: 'Exam Time :',
                child: TextFormField(
                  maxLines: 1,
                  keyboardType: TextInputType.datetime,
                  onChanged: (value) {
                    setState(() {
                      examTime = value;
                    });
                  },
                  cursorColor: primaryColor,
                  style: KTextFormStyle,
                  decoration: kTextFormDecrotion.copyWith(
                    hintText: 'Write exam time her',
                  ),
                ),
              ),
              MakeExamInfoItem(
                labelText: 'Instractor Name Tittle :',
                child: TextFormField(
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {
                      instractorName = value;
                    });
                  },
                  cursorColor: primaryColor,
                  style: KTextFormStyle,
                  decoration: kTextFormDecrotion.copyWith(
                    hintText: 'Write instractor name her',
                  ),
                ),
              ),
              MakeExamInfoItem(
                labelText: 'Instractor Email :',
                child: TextFormField(
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    setState(() {
                      instractorEmail = value;
                    });
                  },
                  cursorColor: primaryColor,
                  style: KTextFormStyle,
                  decoration: kTextFormDecrotion.copyWith(
                    hintText: 'write instractor email her',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'By creating an Exam you agree to our',
                      style: KText.copyWith(),
                    ),
                    Text(
                      'Terms Of Service and Privacy Policy',
                      style: KText,
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: RoundedButton(
                    text: 'Next',
                    fun: () {},
                  ))
            ],
          ),
          
        ],
      ),
    );
  }
}
