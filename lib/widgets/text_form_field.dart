import 'package:tech/widgets/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech/constants.dart';

// ignore: must_be_immutable
class TextFrmField extends StatefulWidget {
  TextFrmField({
    @required this.icon,
    @required this.obSecure,
    @required this.hintText,
    @required this.showPasswordIcon,
    this.error,
    this.textInptType,
    this.textFieldController,
    this.inputTextFunction,
    this.errorText,
    this.errorBorderColor
  }) ;

  Function inputTextFunction ;
  final IconData icon;
  bool obSecure = false;
  final bool showPasswordIcon;
  final bool error;
  final String hintText;
  final String errorText;
  final Color errorBorderColor ;
  final TextInputType textInptType;
  final TextEditingController textFieldController ;
  @override
  _TextFrmFieldState createState() => _TextFrmFieldState();
}

class _TextFrmFieldState extends State<TextFrmField> {
  bool enableTextFieldBorder = false ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              side:  BorderSide(color: widget.errorBorderColor, width: 2.0),
              borderRadius: BorderRadius.circular(22.0),
            ),
            elevation: 6.0,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 13.0),
                  child: Icon(
                    widget.icon,
                    color: primaryColor,
                  ),
                ),
                Container(
                  height: 25.0,
                  width: 2.0,
                  color: primaryColor,
                  margin:  EdgeInsets.only(left: 00.0, right: 10.0),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){setState(() {
                      enableTextFieldBorder = true;
                    });},
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    child: TextFormField(
                      onChanged: (value) {widget.inputTextFunction(value);},
                      controller: widget.textFieldController,
                      cursorColor: primaryColor,
                      keyboardType: widget.textInptType,
                      style: KTextFormStyle,
                      obscureText: widget.obSecure,
                      decoration: kTextFormDecrotion.copyWith(
                        hintText: widget.hintText,
                      ),

                    ),
                  ),
                ),
                widget.showPasswordIcon == true
                    ? CircleButton(
                        icn: widget.obSecure ? Icons.remove_red_eye : Icons.remove,
                        clor: primaryColor,
                        fun: () {
                          if (widget.obSecure == true) {
                            setState(() {
                              widget.obSecure = false;
                            });
                          } else {
                            widget.obSecure = true;
                          }
                        },
                      )
                    : SizedBox(),
              ],
            ),
          ),
          widget.error ? Text(widget.errorText,style: TextStyle(color: errorColor,fontSize: 13),) :SizedBox(height: 3,),
        ],
      ),
    );
  }
}

















//class TextFormFieeld extends StatelessWidget {
//  TextFormFieeld({
//    this.icon,
//    this.child,
//  });
//  final Widget child;
//  final IconData icon;
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
//      child: Card(
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(22.0),
//        ),
//        elevation: 6.0,
//        child: Row(
//          children: <Widget>[
//            Padding(
//              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 13.0),
//              child: Icon(
//                icon,
//                color: Colors.teal,
//              ),
//            ),
//            Container(
//              height: 25.0,
//              width: 2.0,
//              color: Colors.teal,
//              margin: const EdgeInsets.only(left: 00.0, right: 10.0),
//            ),
//            Expanded(
//              child: child,
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}

// ignore: must_be_immutable

