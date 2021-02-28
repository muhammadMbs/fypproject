import 'package:flutter/material.dart';
import 'package:fypproject/models/Brew.dart';

class brewTile extends StatelessWidget {
  final Brew brew;

  //constructor
  brewTile({this.brew});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown[brew.strength],
            backgroundImage: AssetImage(
                'assets/coffee_icon.png'), //we write brew.strength because we gave the value 100 in auth class which depicts it's dark or light color of strength
            radius: 30.0,
          ),
          title: Text(brew.name), //the value that comes in name comes here
          subtitle: Text('Takes ${brew.sugar} sugar'),
        ),
      ),
    );
  }
}
