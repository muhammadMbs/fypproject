import 'package:flutter/material.dart';
import 'package:fypproject/Profile/accountProfile.dart';

import 'app_body.dart';

class UserWall extends StatefulWidget {
  //@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.green),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }

  _UserWallState createState() => _UserWallState();
}

class _UserWallState extends State<UserWall> {
  @override
  //ignore: override_on_non_overriding_member
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.search),
    title: new Text(
      "Green Pakistan",
      style: new TextStyle(
        color: Colors.black,
        fontFamily: 'Aveny',
      ),
    ),
    actions: <Widget>[
      Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: new IconButton(
            icon: Icon(Icons.send),
            onPressed: () {},
          )),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: topBar,
        body: new AppBody(),
        bottomNavigationBar: new Container(
            color: Colors.lightGreen,
            height: 50.0,
            child: new BottomAppBar(
                child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.green.shade400,
                    ),
                    onPressed: () {}),
                new IconButton(
                    icon: Icon(Icons.camera_alt, color: Colors.green.shade400),
                    onPressed: null),
                new IconButton(
                    icon: Icon(Icons.favorite, color: Colors.green.shade400),
                    onPressed: null),
                new IconButton(
                    icon: Icon(Icons.account_box_rounded,
                        color: Colors.green.shade400),
                    onPressed: (){ Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => SettingsPage()));
})
              ],
            ))));
  }
}
