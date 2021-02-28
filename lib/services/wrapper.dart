import 'package:flutter/material.dart';
import 'package:fypproject/firebase/autheticate.dart';
import 'package:fypproject/models/uSer.dart';
import 'package:fypproject/new_work/homeepage.dart';
import 'package:provider/provider.dart';
class wrapper extends StatelessWidget {
@override
Widget build(BuildContext context) {
  final user = Provider.of<uSer>(context);

  //return whether authenticate or home widget
  if (user == null) {
    return autheticator();
  } else
    return Homeepage();
}
}
