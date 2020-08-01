import 'package:flutter/material.dart';

class MakeExamInfoItem extends StatelessWidget {
  MakeExamInfoItem({
    this.labelText,
    this.child,
  });
  final Widget child;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27, vertical: 5),
      child: Material(
        elevation: 1.3,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          topLeft: Radius.circular(27),
          bottomRight: Radius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 11, left: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                labelText,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
