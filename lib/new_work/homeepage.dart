import 'package:flutter/material.dart';
import 'package:fypproject/models/Brew.dart';
import 'package:fypproject/services/auth.dart';
import 'package:fypproject/services/database.dart';
import 'package:provider/provider.dart';

import 'Setting_Form.dart';
import 'brewList.dart';


class Homeepage extends StatelessWidget {
  final authenticate _auth =
  authenticate(); //making an instance of auth.dart class to access it in it
  @override
  Widget build(BuildContext context) {
    void _showSettingpanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: Setting_Form(),
            );
          });
    }

    return StreamProvider<List<Brew>>.value(
      value: database().brew,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('brew crew'),
          backgroundColor: Colors.amber,
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () async {
                  await _auth.signOut();
                },
                icon: Icon(Icons.person),
                label: Text('Logout')),
            FlatButton.icon(
              icon: Icon(Icons.settings),
              label: Text('setting'),
              onPressed: () {
                _showSettingpanel();
              },
            )
          ],
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/coffee_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: brewList()),
      ),
    );
  }
}
