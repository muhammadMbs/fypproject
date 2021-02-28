import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fypproject/models/uSer.dart';
import 'package:fypproject/services/database.dart';
import 'package:fypproject/shared/loading.dart';
import 'package:provider/provider.dart';

class Setting_Form extends StatefulWidget {
  @override
  _Setting_FormState createState() => _Setting_FormState();
}

class _Setting_FormState extends State<Setting_Form> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3'];

  //Form values
  String _currentName;
  String _currentSugars;
  int _currentStrength;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return StreamBuilder<userData>(
        stream: database(uId: user.uid).userdata,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            userData userdata = snapshot.data;
            return Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Text(
                    'Update your brew setting',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    initialValue: userdata.name,
                    decoration: InputDecoration(),
                    validator: (val) =>
                    val.isNotEmpty ? 'Please Enter the name' : null,
                    onChanged: (val) => setState(() => _currentName = val),
                  ),

                  //dropdown
                  DropdownButtonFormField(
                    decoration: InputDecoration(),
                    value: _currentSugars ?? userdata.sugars,
                    items: sugars.map((sugar) {
                      return DropdownMenuItem(
                        value: sugar,
                        child: Text('$sugar sugars'),
                      );
                    }).toList(),
                    onChanged: (val) => setState(() => _currentName = val),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  //Slider for the strength of the of coffee
                  Slider(
                    value: (_currentStrength ?? userdata.strength).toDouble(),
                    activeColor:
                    Colors.redAccent[_currentStrength ?? userdata.strength],
                    inactiveColor:
                    Colors.redAccent[_currentStrength ?? userdata.strength],
                    min: 100,
                    max: 900,
                    divisions: 8,
                    onChanged: (val) =>
                        setState(() => _currentStrength = val.round()),
                  ),
                  RaisedButton(
                    color: Colors.amber,
                    child: Text(
                      'save',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        await database(uId: user.uid).updateUserData(
                          _currentSugars ?? userdata.sugars,
                          _currentName ?? userdata.name,
                          _currentStrength ?? userdata.strength,
                        );
                        //after we click on done/update it will pop up from the screen
                        //Navigator.pop(context);
                        Navigator.of(context).pop();
                      }
                    },
                  ),
                ],
              ),
            );
          } else {
            return Loading();
          }
        });
  }
}
