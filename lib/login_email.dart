import 'package:flutter/material.dart';
import 'package:fypproject/services/auth.dart';
//import 'package:fypproject/sign_up.dart';
import 'package:fypproject/user_body.dart';

import 'main.dart';

class signIn extends StatefulWidget {
  final Function toggleView;
  signIn({this.toggleView});
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  final authenticate _auth =
      authenticate(); //to access the auth.dart file class authenticate in it, we have to make an instance
  final _formKey = GlobalKey<FormState>(); //global key
  String email = '';
  String password = '';
  String error = '';
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        leading: new IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white24),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            }),
        title: new Text(
          "Login",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Georgia',
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Stack(children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 90.0, 20.0, 0.0),
              child: Text("Green Pakistan",
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green)),
            )
          ])),
          Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                key: _formKey, //pass the global key
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Email'),
                      validator: (value) => value.isEmpty
                          ? 'Enter the correct email'
                          : null, //the written in the form is valid or not

                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Password'),
                      validator: (value) => value.length < 8
                          ? 'You enter an incorrect Password'
                          : null, //Password should be 8 or greater than 8 characters
                      obscureText: true,
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    RaisedButton(
                        color: Colors.amber,
                        child: Text(
                          'sign in',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState
                              .validate()) //Evalute if it is true or false
                          {
                            setState(() {
                              loading = true;
                                Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => UserWall()));

                            });
                            dynamic result = _auth.signInWithEmailAndPassword(
                                email, password);

                            if (result == null) {
                              setState(() {
                                error =
                                    'Please Enter the valid Email or password';
                                //loading = false => if we put it here the loading always remains in loading screen and does not comes back
                              });
                              loading = false;
                            }
                          }
                          // print(email);
                          // print(password);
                        }),

                    SizedBox(
                      height: 20.0,
                    ),

                    //Print the error message
                    Text(error,
                        style: TextStyle(fontSize: 20.0, color: Colors.red)),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
