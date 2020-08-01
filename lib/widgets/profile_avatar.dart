import 'package:flutter/material.dart';

class ProfileAvatar extends StatefulWidget {
  @override
  _ProfileAvatarState createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
         child: Stack(fit: StackFit.loose, children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                    width: MediaQuery.of(context).size.width * .28,
                    height: MediaQuery.of(context).size.height * .16,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
//                      image: new DecorationImage(
//                        image: new ExactAssetImage('img/as.png'),
//                        fit: BoxFit.cover,
//                      ),
                    ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'img/as.png',
                      fit: BoxFit.fill,
                      height: 150,
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .1,
                  left: MediaQuery.of(context).size.width * .2,
                ),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20.0,
                      child: new Icon(
                        Icons.photo_camera,
                        color: Color(0xff0c6d630),
                      ),
                    )
                  ],
                )),
          ]),
    );
  }
}
