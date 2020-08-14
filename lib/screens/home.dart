import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech/constants.dart';
import 'package:tech/screens/exam.dart';
import 'package:tech/screens/make-exam.dart';
import 'package:tech/widgets/buttons.dart';
import 'package:tech/widgets/item.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState>_mainkey=GlobalKey<ScaffoldState>();
  int index = 1;
  List l1=["Final 1","Final 2","Final 3","Final 4","Final 5","Final 6","Final 7","Final 8","Final 9","Final 10"];
  // TODO: implement widget
  // ignore: non_constant_identifier_names
  Widget _FinalCard(index){
    return InkWell(
      onTap: (){},
      child: Column(
        children: <Widget>[
          Container(
            width: 150,
            height: 130,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          Text(l1[index]),

      ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//    floatingActionButton: FloatingActionButton(
//      backgroundColor: Colors.white,
//       onPressed: () {},
//        child: Icon(Icons.arrow_forward_ios,color: Colors.black45,),
//      ),
    key: _mainkey,
      drawer: Drawer(
          child: DrawerContent(),
      ),
      appBar: AppBar(
       leading:
          InkWell(
            child:  Icon(Icons.format_align_justify,color: primaryColor,),
            onTap: (){
              _mainkey.currentState.openDrawer();
            },
          ),
        elevation: 0,
       backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
         Column(
          children: <Widget>[
            Directionality(
              textDirection: TextDirection.ltr,
              child:Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search in library",
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    ),
                  ),
                ),
            ),
            SizedBox(
              height: 25,
            ),
              Row( mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Start Exam In This Courses",style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 23,color: Colors.indigo[900]
                    ),),
                  ),
                ],
              ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              child: ListView.builder(itemCount: 10,
              scrollDirection: Axis.horizontal
              ,itemBuilder: (context,index){
                return _FinalCard(index);
              }),
            ),

            SizedBox(
              height: 50,
            ),
            Row( mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Your Courses",style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 23,color: Colors.indigo[900]
                  ),),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              child: ListView.builder(itemCount: 10,
                  scrollDirection: Axis.horizontal
                  ,itemBuilder: (context,index){
                    return _FinalCard(index);
                  }),
            )
          ],
        ),
        ]
      )
    );
  }
}



class DrawerContent extends StatelessWidget {
  const DrawerContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // logo
        Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
            child: Text(
              "teach",
              style: TextStyle(
                  color: Colors.indigo[700],
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            )),

        SizedBox(
          height: 10,
        ),
//              InkWell(
//                onTap: () {},
//                child: Container(
//                  margin: EdgeInsets.all(10),
//                  height: 50,
//                  width: 240,
//                  decoration: BoxDecoration(
//                    color: Colors.deepPurple[700],
//                    borderRadius: BorderRadius.circular(50),
//                  ),
//                  child: Center(
//                    child: Text(
//                      "Start Exam",
//                      style: TextStyle(color: Colors.white, fontSize: 25),
//                    ),
//                  ),
//                ),
//            ),

       /* make exam button
       * i created a button to use it in anywhere in project
       * you will find it in widget package => buttons file
       * */
        RoundedButton(fun: (){
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MakeExam()));
        },text: 'Make Exam',),
        SizedBox(
          height: 10,
        ),
        //start exam button
        RoundedButton(fun: (){
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Exam()));
        },text: 'Start Exam',),
//              InkWell(
//              onTap: (){},
//              child: Container(
//                margin: EdgeInsets.all(10),
//                height: 50,
//                width: 240,
//                decoration: BoxDecoration(
//                  color: Colors.black26,
//                  borderRadius: BorderRadius.circular(50),
//                ),
//                child: Center(
//                  child: Text("Show Result",style: TextStyle(color: Colors.indigo[900],fontSize: 25),),
//                ),
//              ),
//            ),
        SizedBox(
          height: 30,
        ),

        /* drawer items
        I created stateless class in widget package => item file */
        Item(icn: Icons.home,txt: 'Home',fun: (){},),
        Item(icn: Icons.line_style,txt: 'Library',fun: (){},),
        Item(icn: Icons.event,txt: 'Courses',fun: (){},),
        Item(icn: Icons.settings,txt: 'Settings',fun: (){},),
//            Padding(
//              padding: const EdgeInsets.only(left: 10,top: 30)
//              ,child: Row(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Icon(Icons.home,color: Colors.indigo[900],),
//                  SizedBox(
//                    width: 10,
//                  )
//                  ,Text("Home",style: TextStyle(color: Colors.indigo[900],fontSize: 20,fontWeight: FontWeight.bold),)
//
//                ],
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.only(left: 10,top: 30)
//              ,child: Row(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Icon(Icons.line_style,color: Colors.indigo[900],),
//                SizedBox(
//                  width: 10,
//                )
//                ,Text("Library",style: TextStyle(color: Colors.indigo[900],fontSize: 20,fontWeight: FontWeight.bold),)
//
//              ],
//            ),
//            ),
//            Padding(
//              padding: const EdgeInsets.only(left: 10,top: 30)
//              ,child: Row(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Icon(Icons.event,color: Colors.indigo[900],),
//                SizedBox(
//                  width: 10,
//                )
//                ,Text("Courses",style: TextStyle(color: Colors.indigo[900],fontSize: 20,fontWeight: FontWeight.bold),)
//
//              ],
//            ),
//            ),
//            Padding(
//              padding: const EdgeInsets.only(left: 10,top: 30)
//              ,child: Row(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Icon(Icons.settings,color: Colors.indigo[900],),
//                SizedBox(
//                  width: 10,
//                )
//                ,Text("Settings",style: TextStyle(color: Colors.indigo[900],fontSize: 20,fontWeight: FontWeight.bold),)
//
//              ],
//            ),
//            ),
//            SizedBox(
//              height: 80,
//            ),
//            InkWell(
//              onTap: (){},
//              child: Container(
//                margin: EdgeInsets.all(10),
//                height: 50,
//                width: 240,
//                decoration: BoxDecoration(
//                  color: Colors.black26,
//                  borderRadius: BorderRadius.circular(50),
//                ),
//                child: Center(
//                  child: Text("Help",style: TextStyle(color: Colors.indigo[900],fontSize: 25),),
//                ),
//              ),
//            ),
    ],
        );
  }
}
