//import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//class SocialIcons extends StatefulWidget {
//  @override
//  _SocialIconsState createState() => _SocialIconsState();
//}
//
//class _SocialIconsState extends State<SocialIcons> {
//  Widget socialIcons({IconData icon}) {
//    return Padding(
//      padding: EdgeInsets.symmetric(
//          horizontal: MediaQuery.of(context).size.width * .025),
//      child: Icon(
//        icon,
//        size: 20,
//        color: Color(0xff0c6d630),
//      ),
//    );
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Row(
//      crossAxisAlignment: CrossAxisAlignment.center,
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: <Widget>[
//        socialIcons(icon: FontAwesomeIcons.instagram),
//        socialIcons(icon: FontAwesomeIcons.twitter),
//        socialIcons(icon: FontAwesomeIcons.facebookF),
//        socialIcons(icon: FontAwesomeIcons.google),
//      ],
//    );
//  }
//}
