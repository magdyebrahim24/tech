import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen1State();
  }
}
class Screen1State extends State<Screen1> {
  final GlobalKey<ScaffoldState>mainkey=GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: mainkey,
        drawer: Drawer(
        ),

        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading:Container(
            child: InkWell(
              onTap: (){
                mainkey.currentState.openDrawer();
              },
              child: Icon(Icons.format_align_justify,color: Colors.black45,),
            ),
          ),
          actions: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 40),
                child: InkWell(
                  child: Icon(Icons.arrow_forward,color: Colors.black45,size: 30,),
                  onTap: (){},
                )
            ),
          ],

          title: Text("teach",style: TextStyle(color: Colors.indigo[900],fontSize: 23,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50,left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Text("An Education Product",style: TextStyle(color: Colors.indigo[900],fontSize: 28,fontWeight: FontWeight.bold),),
                  Text("like no other",style: TextStyle(color: Colors.indigo[900],fontSize: 28,fontWeight: FontWeight.bold),),
                  Container(padding: EdgeInsets.only(top: 10),child: Text("World-class education for anyone,anywhere",style: TextStyle(color: Colors.orange[300],fontSize: 18),))
                ],
              ),
            ),
            Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image:  AssetImage("images/img1.png"),
                  fit: BoxFit.fill
                )
              ),
              padding: EdgeInsets.only(left: 10,right: 10),
              ),
        Container(
            padding: EdgeInsets.only(right: 40,left: 40,top: 10),
            margin: EdgeInsets.only(top: 10),
            child: InkWell(
              onTap: (){},
              child: Container(
                height: 55,
                width: 50,
                decoration: BoxDecoration(

                    color: Colors.deepOrange[300],
                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 130),
                      child: Text("Let's Go",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
            ),


        )])

        ),




    );
  }
}