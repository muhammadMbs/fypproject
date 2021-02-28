import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fypproject/services/auth.dart';
import 'package:fypproject/services/wrapper.dart';
import 'package:fypproject/shared/Home.dart';
import 'package:provider/provider.dart';

import 'models/uSer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  StreamProvider<uSer>.value(
      value: authenticate().people,
      child: MaterialApp(
        title: 'Green Pakistan',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.green),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:Homepage(),
      ),
    );
  }
}

