import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Item extends StatefulWidget {
  Item({this.icn,this.txt});
  IconData icn ;
  final txt ;
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05),
          child: Icon(
            widget.icn,
            color: Color(0xff0c6d630),
            size: 26,
          ),
        ),
        Expanded(child: Text(widget.txt, style: TextStyle(color: Color(0xff0c6d630)))),
      ],
    );
  }
}
