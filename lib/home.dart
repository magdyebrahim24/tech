import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List questionList = [
    'A True False Question1 .....',
    'A True False Question2 .....',
    'A True False Question3 .....',
    'A True False Question3 .....'
  ];
  List answer = ['Answer A', 'Answer B', ' Answer C', 'Answer D'];
  List letterOrder = ['A', 'B', 'C', 'D'];
  int selectAnswer ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tech',
        ),
        centerTitle: true,
      ),
      body: ListView.builder(

        itemCount: questionList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${index + 1} ) ${questionList[index]}',
                  style: TextStyle(fontSize: 15.5),
                ),
                for (var i = 0 ; i< answer.length;  i++)
                  Row(
                    children: <Widget>[
                      Radio(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: selectAnswer,
                        groupValue: i,
                        onChanged: (i){setState(() {
                          i=0;
                        });}
                      ),
                      Container(
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.black12,
                        ),
//                        width: 300,
                        margin: EdgeInsets.only(
                            left: 0, right: 20, bottom: 3, top: 5),
                        padding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Text(
                          '${letterOrder[i]}) ${answer[i]}',
                          style: TextStyle(fontSize: 15.5),
                        ),
                      ),
                    ],
                  )


              ],
            ),
          );
        },
      ),
    );
  }
}
