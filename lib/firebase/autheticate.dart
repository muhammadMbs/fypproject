import "package:flutter/material.dart";



import '../login_email.dart';
import '../sign_up.dart';

class autheticator extends StatefulWidget {
  @override
  _autheticatorState createState() => _autheticatorState();
}

class _autheticatorState extends State<autheticator> {
  bool showsignin = true;

  void toggleView() {
    setState(() => showsignin = !showsignin);
  }

  @override
  Widget build(BuildContext context) {
    if (showsignin) {
      return signIn(toggleView: toggleView);
    } else
      return SignUp(toggleView: toggleView);
  }
}
