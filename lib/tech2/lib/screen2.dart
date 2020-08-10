import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final GlobalKey<ScaffoldState>_mainkey=GlobalKey<ScaffoldState>();
  int Index=1;
  List l1=["Final 1","Final 2","Final 3","Final 4","Final 5","Final 6","Final 7","Final 8","Final 9","Final 10"];
  @override
  // TODO: implement widget
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
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.white,
       onPressed: () {},
        child: Icon(Icons.arrow_forward_ios,color: Colors.black45,),
      ),
    key: _mainkey,
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
            padding: EdgeInsets.symmetric(vertical: 50,horizontal: 40)
            ,child: Text("teach",style: TextStyle(color: Colors.indigo[700],fontSize: 28,fontWeight: FontWeight.bold),)),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: 240,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[700],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text("Start Exam",style: TextStyle(color: Colors.white,fontSize: 25),),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: 240,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text("Show Result",style: TextStyle(color: Colors.indigo[900],fontSize: 25),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 30)
              ,child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.home,color: Colors.indigo[900],),
                  SizedBox(
                    width: 10,
                  )
                  ,Text("Home",style: TextStyle(color: Colors.indigo[900],fontSize: 20,fontWeight: FontWeight.bold),)

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 30)
              ,child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.line_style,color: Colors.indigo[900],),
                SizedBox(
                  width: 10,
                )
                ,Text("Library",style: TextStyle(color: Colors.indigo[900],fontSize: 20,fontWeight: FontWeight.bold),)

              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 30)
              ,child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.event,color: Colors.indigo[900],),
                SizedBox(
                  width: 10,
                )
                ,Text("Courses",style: TextStyle(color: Colors.indigo[900],fontSize: 20,fontWeight: FontWeight.bold),)

              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 30)
              ,child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.settings,color: Colors.indigo[900],),
                SizedBox(
                  width: 10,
                )
                ,Text("Settings",style: TextStyle(color: Colors.indigo[900],fontSize: 20,fontWeight: FontWeight.bold),)

              ],
            ),
            ),
            SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: 240,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text("Help",style: TextStyle(color: Colors.indigo[900],fontSize: 25),),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
       leading:
          InkWell(
            child:  Icon(Icons.format_align_justify,color: Colors.black45,),
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
              height: 30,
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
