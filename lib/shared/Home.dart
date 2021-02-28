import 'package:flutter/material.dart';
import 'package:fypproject/login_phone.dart';

import '../login_email.dart';
import '../sign_up.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  //ignore: override_on_non_overriding_member
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        centerTitle: true,
        elevation: 1.0,
        title: new Text(
          "WELCOME",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Georgia',
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body:
      //  Center(
      //   child: new Image.network(
      //       "https://i.pinimg.com/originals/e9/b1/d2/e9b1d2fa679e10e73d2c111ad879f5e6.png"),)
      //        :
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Stack(children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 150.0, bottom: 12.0),
                  child: Text("Green Pakistan",
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green)),
                ),
              ])),
          SizedBox(height: 0.0),
          Container(
            padding: EdgeInsets.only(left: 30, right: 20),
            child: Column(children: <Widget>[
              SizedBox(height: 80.0),
              Container(
                height: 50.0,
                width: 250.0,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.transparent,
                        style: BorderStyle.solid,
                        width: 0.0,
                      ),
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(20.0)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()),
                      );

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        SizedBox(width: 0.0),
                        Center(
                          child: Text(
                            'SIGN_UP AS BUYER',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Montserrat'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Container(
                      height: 50.0,
                      width: 250.0,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.transparent,
                              style: BorderStyle.solid,
                              width: 0.0,
                            ),
                            color: Colors.green[400],
                            borderRadius: BorderRadius.circular(20.0)),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPhone()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              SizedBox(width: 0.0),
                              Center(
                                child: Text(
                                  'SIGN_UP AS SELLER',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      fontFamily: 'Montserrat'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "already have account? ",
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => signIn()),
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text("Login",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                                decoration: TextDecoration.underline))),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

