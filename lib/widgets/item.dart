import 'package:flutter/material.dart';
import 'package:tech/constants.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
  Item({this.icn, this.txt, this.fun});
  IconData icn;
  final txt;
  final Function fun;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Icon(
                icn,
                color: primaryColor,
                size: 28,
              ),
            SizedBox(width: 10,),
            Expanded(
                child: Text(txt,
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ))),
          ],
        ),
      ),
    );
  }
}
